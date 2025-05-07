def undo_shuffle(data):
    unshuffled = [0] * len(data)
    for i in range(1, len(data), 2):
        unshuffled[i - 1] = data[i]

    for i in range(0, len(data) -1 , 2):
        unshuffled[i + 1] = data[i]        
    return unshuffled

def decrypt_flag(encoded_bytes, key):
    unshuffled = undo_shuffle(encoded_bytes)

    flag = bytearray()
    for i in range(len(unshuffled)):
        flag.append(unshuffled[i] ^ key[i % 8])

    return flag.decode() 


encoded = bytes([0x57,0x42,0x4b,0x45,0xcc,0xbb,0x81,0xcc,0x71,0x7a,0x71,0x66,0xdf,0xbb,0x86,0xcd,0x64,0x6f,0x6e,0x5c,0xf2,0xad,0x9a,0xd8,0x7e,0x6f])

key = bytes([0x01, 0x03, 0x03, 0x07, 0xde, 0xad, 0xbe, 0xef])

print(decrypt_flag(encoded, key))