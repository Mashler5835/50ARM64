// Programa: 16.s
// Autor: Bejarano Duque Antoine 21211918
// Descripción: Ordenamiento Burbuja
.global _start

.section .data
arr: .word 3, 7, 2, 8, 5

.section .text
_start:
    MOV X0, arr        // Dirección del arreglo
    MOV X1, 5          // Tamaño del arreglo
    BL bubble_sort

    MOV X8, 93         // syscall número 93 (exit)
    MOV X0, 0          // estado de salida
    SVC 0

bubble_sort:
    MOV X2, 0          // índice i
outer_loop:
    MOV X3, 0          // índice j
inner_loop:
    LDR W4, [X0, X3, LSL #2]    // arr[j]
    LDR W5, [X0, X3, LSL #2 + 4]// arr[j+1]
    CMP W4, W5
    BLE skip_swap
    // Intercambiar
    STR W5, [X0, X3, LSL #2]
    STR W4, [X0, X3, LSL #2 + 4]
skip_swap:
    ADD X3, X3, 1
    CMP X3, X1
    BLT inner_loop

    ADD X2, X2, 1
    CMP X2, X1
    BLT outer_loop
    RET
//using System;
//
//class Program
//{
//    static void Main()
//    {
//        int[] arr = { 3, 7, 2, 8, 5 };
//        BubbleSort(arr);
//        Console.WriteLine(string.Join(", ", arr));
//    }
//
//    static void BubbleSort(int[] arr)
//    {
//        int n = arr.Length;
//        for (int i = 0; i < n - 1; i++)
//        {
//            for (int j = 0; j < n - 1 - i; j++)
//            {
//                if (arr[j] > arr[j + 1])
//                {
//                    int temp = arr[j];
//                    arr[j] = arr[j + 1];
//                    arr[j + 1] = temp;
//                }
//            }
//        }
//    }
//}
