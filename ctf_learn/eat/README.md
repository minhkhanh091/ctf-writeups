# eat

## 🧩 Challenge Info

- **Category**: reverse
- **Attachment(s)**: `eat.py`

---

## 🧠 Analysis

Describe how you analyzed the challenge. What files/tools did you look at?  
Any interesting clues? What made you suspicious?

- Tool(s) used: 
- Initial observations:
- ...
- Approach:
- ...

---

## 🔍 Solution

### Step 1: ...
First we need to rewrite some line of code to read more easily.
We, can use Replace Tool.

```python
EATEATEATEATEATEAT = str.isdigit

def EAt(eat, eats):
    print(eat)
    print(eats)
    eat1 = 0
    eat2 = 0
    eateat = 0
    res = ""
    while eat1 < len(eat) and eat2 < len(eats):
        if eateat % 3 == 1:
            res += eats[eat2]
            eat2 += 1
        else:
            res += eat[eat1]
            eat1 += 1
        eateat += 1
    return res

def Eating(eat):
    return str((int(eat) * 3))

def eaT(eat):
    return Eating(eat[:3]) + eat[::-1]

def Ate(eat):
    return "Eat" + "9" + eat[:3]

def Eat(eat):
    if len(eat) == 9:
        if EATEATEATEATEATEAT(eat[:3]) and EATEATEATEATEATEAT(eat[7:]):
                eateat = EAt(eaT(eat), Ate(eat[::-1])) 
                if eateat == "E10a23t9090t9ae0140":
                    flag = "eaten_" + eat
                    print("absolutely EATEN!!! CTFlearn{",flag,"}")
                else:
                    print("thats not the answer. you formatted it fine tho, here's what you got\n>>", eateat)
        else:
            print("thats not the answer. bad format :(\
            \n(hint: 123abc456 is an example of good format)")
    else:
        print("thats not the answer. bad length :(")

print("what's the answer")
eat = input()
Eat(eat)
```

### Step 2:
We define ```Eat(eat)``` as "main" fuction, "eat" is answer.

```if len(eat) == 9```: eat lenght = 9
```EATEATEATEATEATEAT(eat[:3]) and EATEATEATEATEATEAT(eat[7:]):```:  True if first three and last three character
of "eat" is digit.

### Step 3:
```
eateat = EAt(eaT(eat), Ate(eat[::-1]))

- eaT(eat)
    + Eating(eat[:3]): Take first three character of "eat" (digit) * 3 and turn it back to string.
    Return value: Eating(eat[:3]) + eat[::-1] (eat as reverse)
- Ate(eat[::-1])
    This function take eat as reverse.
    Return value: "Eat9" + first three character of "eat" reversed.
```

Eat = E10a23t9090t9ae0140
-> eaT(eat) = 1023900tae14
-> Ate(eat[::-1]) = Eat9900


### Step 4:

---

## 🔑 Flag: `341eat009`
