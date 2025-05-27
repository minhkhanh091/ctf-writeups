# picker-III

## Info

- **Category**: Reverse Engineering
- **Attachment(s)**: `picker-III.py`

---

## Documents

- https://docs.python.org/3/library/functions.html#eval
- https://docs.python.org/3/library/functions.html#exec

---

## Solution

The goal of this challenge is excute win() function to get the flag!
First, we need read over the code, and see ```eval(func_name+'()')``` (line 126), this function will take the name in 'function table' and excute it!

Let check what those functions in 'function table' are:
```
print_table
read_variable
write_variable
getRandomNumber 
```

Wait, ```exec('global '+var_name+'; '+var_name+' = '+value)``` seem like backdoor, but look above ```filter_var_name(var_name)```, ```filter_value(value)``` we have input guard here, but there another to break is change the function name in 'function table'

Why? Because of 'global keyword'.

So, i just put var_name = 'func_table' and value = win. But we have ```check_table()``` for check table courupted or not depend on table size, so we need to assign value same as default table size.

And then, the table has changed, we just enter 1-4 to jump to ```win()``` and get the flag!~

All Done~