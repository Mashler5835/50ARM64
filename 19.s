// Programa: 19.s
// Autor: Bejarano Duque Antoine 21211918
// Descripción: Suma de matrices
.global _start

.section .data
arr1: .word 1, 2, 3, 4, 5, 6
arr2: .word 6, 5, 4, 3, 2, 1
result: .space 24

.section .text
_start:
    MOV X0, arr1       // Dirección de la primera matriz
    MOV X1, arr2       // Dirección de la segunda matriz
    MOV X2, result     // Dirección de la matriz resultado
    MOV X3, 6          // Tamaño de las matrices
    BL matrix_addition

    MOV X8, 93         // syscall número 93 (exit)
    MOV X0, 0          // estado de salida
    SVC 0

matrix_addition:
    MOV X4, 0
loop:
    LDR W5, [X0, X4, LSL #2]
    LDR W6, [X1, X4, LSL #2]
    ADD W7, W5, W6
    STR W7, [X2, X4, LSL #2]
    ADD X4, X4, 1
    CMP X4, X3
    BLT loop
    RET
//using System;
//
//class Program
//{
//    static void Main()
//    {
//        int[] arr1 = { 1, 2, 3, 4, 5, 6 };
//        int[] arr2 = { 6, 5, 4, 3, 2, 1 };
//        int[] result = new int[6];
//
//        MatrixAddition(arr1, arr2, result);
//
//        Console.WriteLine(string.Join(", ", result));
//    }
//
//    static void MatrixAddition(int[] arr1, int[] arr2, int[] result)
//    {
//        for (int i = 0; i < arr1.Length; i++)
//        {
//            result[i] = arr1[i] + arr2[i];
//        }
//    }
//}
