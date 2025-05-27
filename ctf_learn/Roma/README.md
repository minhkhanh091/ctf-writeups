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

À, tại đây, local_438. Nó đang thưc 