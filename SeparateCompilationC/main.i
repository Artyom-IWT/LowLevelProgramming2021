# 1 "main.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "main.c"
# 1 "reverse.h" 1
void reverseArray(int *, int);
# 2 "main.c" 2

int main(void) {
    int a[] = { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 };
    reverseArray(a, (sizeof(a) / sizeof(a[0])));
    return 0;
}
