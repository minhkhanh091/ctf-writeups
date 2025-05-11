# eat

## 🧩 Challenge Info

- **Category**: reverse
- **Attachment(s)**: `bite-code.txt`

---

## 🧠 Analysis

Given Java ByteCode. Try to find first argument of function "checkNum" that will make fuction return true

- Tool(s) used: ---
- Initial observations: ---
- Approach: Java ByteCode Instructions List: https://en.wikipedia.org/wiki/List_of_Java_bytecode_instructions

---

## 🔍 Solution

First, we define "x" as array that store value on Stack.
So "x[0]" is first function argument, that value we need to find.

### Step 1:
```
0: iload_0 -> push x[0] to Stack
1: iconst_3 -> push constant "3" to Stack
2: ishl -> x[0] << 3 and push result to Stack
3: istore_1 -> Assign Stack top to "x[1]" <=> x[1] = x[0] << 3
```

### Step 2:
```
4: iload_0 -> push x[0] to Stack
5: ldc #2 -> push constant "525024598" lên Stack
7: ixor -> Apply xor Stack top with "525024598" <=> x[0] ^ 525024598 push result to Stack
8: istore_2 -> Assign Stack top to "x[2]" <=> x[2] = x[0] ^ 525024598
```

### Step 3: 
```
9: iload_1 -> push x[1] to Stack
10: iload_2 -> load x[2] to Stack
11: ixor -> Apply xor x[1] ^ x[2] and push result to Stack
12: ldc #3 // push constant "-889275714" to Stack
```

### Step 4:
```
14: if_icmpne     21 -> Compare x[1] ^ x[2] == -889275714, if not equal jump to instruction "21"
17: iconst_1 -> push constant "1" to Stack
18: goto          22 -> Jump to instruction "22"
21: iconst_0 -> Push constant "0" to Stack
22: ireturn -> Return top Stack as result
```

### Step 5:
After walkthrough ByteCode.
If checkNum == true, so that
```
x[1] ^ x[2] == -889275714
<=> (x[0] << 3) ^ (x[0] ^ 525024598) = -889275714
Call A = x[0] << 3
=> A ^ (x[0] ^ 525024598) = -889275714
=> A = -889275714 ^ (x[0] ^ 525024598)
=> A = -709523480 ^ x[0]
=> x[0] << 3 = -709523480 ^ x[0]
```

So if checkNum == true => ```x[0] << 3 = -709523480 ^ x[0]```

### Step 6:
As "x[0]" is 32bit signed-integer, we can apply brute-froce x[0] = [-2^31 - 1, 2^31]

"use C instead of Python"

---

## 🔑 Flag: `-1352854872`
