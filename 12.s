// Programa: 12.s
// Autor: Bejarano Duque Antoine 21211918
// Descripción: Encontrar el maximo de un arreglo
.global _start

.section .data
    arr: .word 3, 7, 2, 8, 5

.section .text
_start:
    MOV X0, arr        // Dirección del arreglo
    MOV X1, 5          // Tamaño del arreglo
    MOV X2, -1         // Valor inicial de máximo

find_max:
    LDR W3, [X0], #4   // Cargar siguiente elemento del arreglo
    CMP W3, X2
    BLE skip
    MOV X2, W3         // Actualizar máximo

skip:
    SUBS X1, X1, 1
    BNE find_max

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
//        int max = FindMax(arr);
//        Console.WriteLine("El máximo es: " + max);
//    }
//
//    static int FindMax(int[] arr)
//    {
//        int max = int.MinValue;
//        foreach (int num in arr)
//        {
//            if (num > max)
//                max = num;
//        }
//        return max;
//    }
//}
