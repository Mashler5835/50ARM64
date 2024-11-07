// Programa: 13.s
// Autor: Bejarano Duque Antoine 21211918
// Descripción: Encontar el minimo de un arreglo
.global _start

.section .data
    arr: .word 3, 7, 2, 8, 5

.section .text
_start:
    MOV X0, arr        // Dirección del arreglo
    MOV X1, 5          // Tamaño del arreglo
    MOV X2, 0x7FFFFFFF // Valor inicial de mínimo (máximo posible)

find_min:
    LDR W3, [X0], #4   // Cargar siguiente elemento del arreglo
    CMP W3, X2
    BGE skip
    MOV X2, W3         // Actualizar mínimo

skip:
    SUBS X1, X1, 1
    BNE find_min

    MOV X8, 93         // syscall número 93 (exit)
    MOV X0, 0          // estado de salida
    SVC 0
//using System;
//
//class Program
//{
//    static void Main()
//    {
//        int[] arr = { 3, 7, 2, 8, 5 };
//        int min = FindMin(arr);
//        Console.WriteLine("El mínimo es: " + min);
//    }
//
//    static int FindMin(int[] arr)
//    {
//        int min = int.MaxValue;
//        foreach (int num in arr)
//        {
//            if (num < min)
//                min = num;
//        }
//        return min;
//    }
//}
