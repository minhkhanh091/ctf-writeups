# eat

## 🧩 Challenge Info

- **Category**: reverse
- **Attachment(s)**: `bite-code.txt`

---

## 🧠 Analysis

Given Java ByteCode. Try to find first argument of function "checkNum"

- Tool(s) used: ---
- Initial observations: ---
- Approach: Java ByteCode Instructions List: https://en.wikipedia.org/wiki/List_of_Java_bytecode_instructions

---

## 🔍 Solution

First, we define "x" as array that store value on Stack.
So "x[0]" is first function argument, that value we need to find.

### Step 1: ...
```
0: iload_0 -> push x[0] to Stack
1: iconst_3 -> push constant "3" to Stack
2: ishl -> x[0] << 3 and push result to Stack
3: istore_1 -> Assign Stack top to "x[1]" <=> x[1] = x[0] << 3
```

### Step 2: ...
Repeat for each logical part of the solution.

---

## 🔑 Flag: `-1352854872`
