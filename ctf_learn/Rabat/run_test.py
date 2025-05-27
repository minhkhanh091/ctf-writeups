import math

# # Sum 8 bytes

# rax = 0x525f6e6135356148
# rdx = 0
# for i in range(0, 8):
#   rdx += (rax >> i * 8) & 0xff

# # sum = 0x2a0
# # i = 7
# # res = 0xffffffffffffffff
# # while not sum:
# #   res &= ()

# print(hex(rdx))

# rbx = 0x37616261  # <-- bạn thay bằng giá trị thực RBX bạn thấy trong gdb hoặc phân tích
# quotient = 0x17cc632fa
# remainder = 0x7de5c8e

# rcx = (rbx * quotient) +  remainder

# print(f"RCX = 0x{rcx:x}")

# key = [0x52,0x5f,0x6e,0x61,0x35,0x35,0x61,0x48]
# print(("".join(chr(i) for i in key))[::-1])

print(hex(math.sqrt(0xBED4CFAAC5C9C25B - 0x239024f9f888d600a1669a478f0f1f10)))