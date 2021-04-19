# Реверс массива
.text
start:
.globl start
 lw a2, array_length # a2 - длина массива
 la a3, array # a4 - адрес начала массива
 
loop:
 # branch less-then zero
 bltz a2, loop_exit # if ( a2 < 0 ) goto loop_exit
 
 slli a4, a2, 2 # a4 = a2 << 2 = a2 * 4
 add a4, a3, a4 # a4 = a3 + a4 = a3 + a2 * 4
 
 lw t0, 0(a3) # t0 = array[i]
 lw t1, -4(a4) # t1 = array[length - i]
 sw t1, 0(a3) # array[i] = array[length - i]
 sw t0, -4(a4) # array[length - i] = array[i]
 
 addi a3, a3, 4 # i += 1
 addi a2, a2, -2 # a2 -= 2
 
 # jump and link
 jal zero, loop # goto loop
 
loop_exit: # выход из цикла
 li a0, 10 # x10 = 10
 ecall # ecall при значении x10 = 10 => останов симулятора
 
.rodata
array_length: # длина массива
 .word 11
.data
array: # элементы массива
 .word 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10