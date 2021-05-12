#include "reverse.h"

int main(void) {
    int a[] = { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 };
    reverseArray(a, (sizeof(a) / sizeof(a[0])));
    return 0;
}
