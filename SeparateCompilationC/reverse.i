# 1 "reverse.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "reverse.c"
# 1 "reverse.h" 1
void reverseArray(int *, int);
# 2 "reverse.c" 2

void reverseArray(int *array, int size) {
     for (int i = 0; i < (size / 2); i++) {
         int current = array[i];
         array[i] = array[size - i - 1];
         array[size - i - 1] = current;
     }
}
