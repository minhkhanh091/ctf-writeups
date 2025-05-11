EATEATEATEATEATEAT = str.isdigit

def EAt(eat, eats): # #E10#a23#t90#90t#9ae#014#0 -> eats = Eat9900 | eat = 1023900tae14
    print(eat)
    print(eats)
    eat1 = 0
    eat2 = 0
    eateat = 0
    res = ""
    while eat1 < len(eat) and eat2 < len(eats):
        if eateat % 3 == 2 // 4:
            res += eats[eat2]
            eat2 += 1
        else:
            res += eat[eat1]
            eat1 += 1
        eateat += 1
    return res

def Eating(eat):
    return str((int(eat) * 3))

# 900______
def eaT(eat):
    return Eating(eat[:3]) + eat[::-1] # 900______

def Ate(eat):
    return "Eat" + "9" + eat[:3]

def Eat(eat):
    if len(eat) == 9:
        if EATEATEATEATEATEAT(eat[:3]) and EATEATEATEATEATEAT(eat[7:]):
                # eaT(eat) = 1023900tae14 -> 341 -> 900tae143
                # Ate(eat[::-1]) = Eat9900
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
