# dump_vector.py
import gdb

class DumpVector(gdb.Command):
    """Dump vector<unsigned int> elements."""

    def __init__(self):
        super(DumpVector, self).__init__("dumpvec", gdb.COMMAND_USER)

    def invoke(self, arg, from_tty):
        addr = int(gdb.parse_and_eval(arg))
        length = int(gdb.parse_and_eval(f'(*({arg}))._M_impl._M_finish - (*({arg}))._M_impl._M_start')) // 4
        print(f"[+] Vector at {hex(addr)} has {length} elements")
        for i in range(length):
            val = gdb.parse_and_eval(f'((unsigned int*)((*({arg}))._M_impl._M_start))[{i}]')
            print(f"[{i}] = {val}")

DumpVector()