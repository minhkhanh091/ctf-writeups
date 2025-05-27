Đầu tiên, ta thấy trong ```main()``` gọi khá là nhiều hàm, và tôi thấy có khá là ít thông tin chúng ta cần ở ```main()```. Cho tôi sẽ xem lần lượt các hàm được gọi từ trên xuống.

Đầu tiên là ```Sardinia()```, tôi thấy có vẻ như nó chỉ đang làm nhiệm vụ là kiểm tra xem flag có được nhập hay không và độ dài của flag! Tuy nhiên, tôi thấy:
```C
Tuscany = (undefined4 *)operator.new(4);
*Tuscany = 0xbaadf00d;
Umbria = (undefined4 *)operator.new(4);
*Umbria = 0xbaadf00d;
```

Ở đây nó khởi tạo giá trị cho hai biến, có vẻ nó sẽ được dùng và việc gì đó chăng.

Tiếp theo là ```Lazio()```, tổng quan thì tôi thấy hàm này đang kiểm tra flag có đúng định dạng hay khoong~. Đồng thời, tôi thấy một thông tin khá là quan trọng:
```C
if (param_1[sVar2 - 1] == '}') {
strncpy(param_2,param_1 + 9,sVar2 - 10);
if (param_2[7] == 'm') {
    *Tuscany = 0xa2c8;
    cVar1 = param_2[0xd];
}
else {
    *Tuscany = 0x78b2;
    cVar1 = param_2[0xd];
}
if (cVar1 != 'T') {
    *Umbria = 0xe3f4;
    return 1;
}
*Umbria = 0x4fc1;
return 1;
}
```

Tại đây, có vẻ nó đang chuyển phần flag trong { } và kiểm tra một số thứ. Tuy nhiên, thông quan trọng ở đây là:
```C
if (param_2[7] == 'm') {
    *Tuscany = 0xa2c8;
    cVar1 = param_2[0xd];
}
```
Từ nội dung trên, ta có thể phần nào đoán được ```flag[7] = 'm'```. Đồng thời, sẽ thay đổi giá trị của ```Tuscany``` và phân bên dưới tương tự như vậy.

Tiếp đến với ```Abruzz()```, đây có thể nhận định đây là phần dump một dữ liệu gì đó ra ```rawdata.txt``` và để lấy được phần dump đó ta chỉ đơn giản là tạo một file có tên là ```rawdata.txt```.


Cuối cùng là ```Calabria()```, được rồi, có vẻ đây là phần nó sẽ kiểm tra flag của tôi nhập vào có khớp không bằng một vài phép XOR đơn giản:
```C
local_43c = 0;
sVar2 = 0;
do {
sVar11 = sVar2;
uVar6 = (ulong)(byte)param_1[sVar11];
uVar6 = (ulong)local_438[sVar11] %
        (uVar6 + 0x25 + ((uVar6 * 0x25 + 0x17) * uVar6 + 9) * uVar6 * uVar6) & 0xff;
if ((uint)(byte)param_1[sVar11] + local_438[uVar6] != (&Apulia)[uVar6]) {
    local_43c = local_43c + 1;
}
sVar2 = sVar11 + 1;
} while (sVar4 != sVar11 + 1);
```

Ta có thể thấy ở đây, nó đang dùng bytes của flag (param_1) và thực hiện phép tính với ```local_438[sVar11]``` để tạo thành một index mới. Nhưng local_438[sVar11] là gì và nó từ đây ra. Có vẻ ta nên lướt lên trên một tí.

```C
uVar3 = *Tuscany * 0x10000 + *Umbria;
puVar8 = local_438;
do {
puVar9 = puVar8 + 1;
uVar6 = ((ulong)uVar3 * 0xbc8f) / 0x7fffffff;
uVar3 = (int)((ulong)uVar3 * 0xbc8f) - ((int)(uVar6 << 0x1f) - (int)uVar6);
*puVar8 = uVar3;
puVar8 = puVar9;
} while (local_38 != puVar9);
```

Đây rồi, nó đang thực hiện các phép toán để thay đổi gán giá trị local_438. Và ở đây ta chứ ý một điều, cái giá trị của local_438 nó đang phụ thuộc vào hai giá trị của ```Tuscany``` và ```Umbria```. Cho nên hãy cùng nhìn lại một chút:
```C
if (param_2[7] == 'm') {
    *Tuscany = 0xa2c8;
    cVar1 = param_2[0xd];
}
```
Ở đây, ta có vài trường hợp, và tôi không chắc chắn rằng cái ```==``` có thật sự là xác định tại ```flag[7] = 'm'``` hay không. Cho nên ta dùng làm một số phép thử với từng giá trị của ```Tuscany``` và ```Umbria```. Nếu không đúng thì ta lại dùng giá trị khác!

Quay lại với phần kiểm tra flag bằng phép XOR của ```Calabria()```, ta thấy rằng ```Apulia``` chính phần dữ liệu được dump vào ```rawdata.txt```. Và để giải được ta sẽ dump, ```Apulia``` và ```local_438```, sau đó brute-force từng mã ASCII để xem như thế nào.

Và hãy nhớ rằng dữ liệu của ```local_438``` phụ thuộc vào ```Tuscany``` và ```Umbria``` cho nên bạn phải thử hết các giá trị của nó (trong Lazio()). Ở đây tôi đã, tìm ra được 2 giá trị đó là ...

```python
apulia = [0x759f7565,0x4e10b5f6,0x60c0faf7,0x43db873e,...]
local_438 = [0x759f7518,0x4e10b5ad,0x60c0faa2, ...]
key = ""

for i in range(0, 20):
  for c in range(0x20, 0x7f):
    uVar6 = local_438[i] % (c + 0x25 + ((c * 0x25 + 0x17) * c + 9) * c  * c) & 0xff
    if (c + local_438[uVar6]) == apulia[uVar6]:
      key += chr(c)
      break

print(key)
```

