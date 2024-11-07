// Programa: 20.s
// Autor: Bejarano Duque Antoine 21211918
// Descripción: Multiplicacion de matrices
.global _start

.section .data
arr1: .word 1, 2, 3, 4
arr2: .word 5, 6, 7, 8
result: .space 16

.section .text
_start:
    MOV X0, arr1       // Dirección de la primera matriz
    MOV X1, arr2       // Dirección de la segunda matriz
    MOV X2, result     // Dirección de la matriz resultado
    MOV X3, 2          // Número de filas
    MOV X4, 2          // Número de columnas
    BL matrix_multiplication

    MOV X8, 93         // syscall número 93 (exit)
    MOV X0, 0          // estado de salida
    SVC 0

matrix_multiplication:
    MOV X5, 0          // Fila de la primera matriz
outer_loop:
    MOV X6, 0          // Columna de la segunda matriz
    MOV X7, 0          // Acumulador para el producto
inner_loop:
    LDR W8, [X0, X5, LSL #2]        // arr1[fila][k]
    LDR W9, [X1, X6, LSL #2]        // arr2[k][columna]
    MUL W10, W8, W9                 // Producto
    ADD W7, W7, W10                 // Acumulador
    ADD X6, X6, 1
    CMP X6, X4
    BLT inner_loop

    STR W7, [X2, X5, LSL #2]        // Almacenar el resultado
    ADD X5, X5, 1
    CMP X5, X3
    BLT outer_loop
    RET
//using System;
//
//class Program
//{
//    static void Main()
//    {
//        int[] arr1 = { 1, 2, 3, 4 };
//        int[] arr2 = { 5, 6, 7, 8 };
//        int[] result = new int[4];
//
//        MatrixMultiplication(arr1, arr2, result);
//
//        Console.WriteLine(string.Join(", ", result));
//    }
//
//    static void MatrixMultiplication(int[] arr1, int[] arr2, int[] result)
//    {
//        for (int i = 0; i < 2; i++)  // Asumiendo 2x2 matrices
//        {
//            for (int j = 0; j < 2; j++)
//            {
//                result[i * 2 + j] = arr1[i * 2] * arr2[j] + arr1[i * 2 + 1] * arr2[2 + j];
//            }
//        }
//    }
//}
