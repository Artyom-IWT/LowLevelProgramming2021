# Тестовая программа и подпрограмма
# setup.s
.text
start:
.globl start
 call main # вызов ф-ции main
finish:
 mv a1, a0 # a1 = a0
 li a0, 17 # a0 = 17
 ecall # выход с кодом завершения

# main.s
.text
main:
.globl main
 addi sp, sp, -16 # выделение памяти в стеке
 sw ra, 12(sp) # сохранение ra
 
 lw a0, array_length # a0 - длина массива
 la a1, array # a1 - адрес начала массива
 call reverse_array # вызов ф-ции реверса
 
 lw ra, 12(sp) # восстановление ra
 addi sp, sp, 16 # освобождение памяти в стеке
 li a0, 0
 ret # возврат
 
 .rodata
array_length: # длина массива
 .word 11
.data
array: # элементы массива
 .word 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10
 
# reverse_array
.text
reverse_array:
.globl reverse_array
loop:
 # branch less-then zero
 bltz a0, loop_exit # if ( a2 < 0 ) goto loop_exit
 
 slli a7, a0, 2 # a7 = a0 << 2 = a0 * 4
 add a7, a1, a7 # a7 = a1 + a7 = a1 + a0 * 4
 
 lw t0, 0(a1) # t0 = array[i]
 lw t1, -4(a7) # t1 = array[length - i]
 sw t1, 0(a1) # array[i] = array[length - i]
 sw t0, -4(a7) # array[length - i] = array[i]
 
 addi a1, a1, 4 # i + 1
 addi a0, a0, -2 # a2 -= 1
 
 # jump and link
 jal zero, loop # goto loop
 
 loop_exit: # выход из цикла
 ret # возврат