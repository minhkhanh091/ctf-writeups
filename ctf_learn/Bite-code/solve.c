#include <stdio.h>

int main() {
	signed int target = -709523480;
	for (signed int x = -2147483648; x != 2147483647; ++x) {
	    signed int a = target ^ x;
	    signed int b = x << 3;

	    if (a == b) {
	    	printf("%d", x);
	    	break;
	    }	    
	}
}