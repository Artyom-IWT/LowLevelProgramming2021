#include "reverse.h"

void reverseArray(int *array, int size) {
     for (int i = 0; i < (size / 2); i++) {
         int current = array[i];
         array[i] = array[size - i - 1];
         array[size - i - 1] = current;
     }
}
