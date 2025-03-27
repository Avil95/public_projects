#include <stdio.h>
#include "stdlib.h"

int main() {
	printf("hello world\n");
	int* a = malloc(4);
	printf("%d\n", (int)a);
	printf("%d\n", *a);
	*a = 40;
	printf("%d\n", *a);
}
