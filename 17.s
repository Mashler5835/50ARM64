// Programa: 17.s
// Autor: Bejarano Duque Antoine 21211918
// Descripción: Ordenamiento por seleccion
.global _start

.section .data
arr: .word 3, 7, 2, 8, 5

.section .text
_start:
    MOV X0, arr        // Dirección del arreglo
    MOV X1, 5          // Tamaño del arreglo
    BL selection_sort

    MOV X8, 93         // syscall número 93 (exit)
    MOV X0, 0          // estado de salida
    SVC 0

selection_sort:
    MOV X2, 0          // índice i
outer_loop:
    MOV X3, X2
    ADD X3, X3, 1
    MOV X4, X2
    MOV X5, [X0, X2, LSL #2]    // arr[i]
inner_loop:
    LDR W6, [X0, X3, LSL #2]    // arr[j]
    CMP W5, W6
    BLE skip_swap
    MOV W5, W6
    MOV X4, X3
skip_swap:
    ADD X3, X3, 1
    CMP X3, X1
    BLT inner_loop

    // Intercambiar
    LDR W6, [X0, X2, LSL #2]
    LDR W7, [X0, X4, LSL #2]
    STR W7, [X0, X2, LSL #2]
    STR W6, [X0, X4, LSL #2]

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
//        SelectionSort(arr);
//        Console.WriteLine(string.Join(", ", arr));
//    }
//
//    static void SelectionSort(int[] arr)
//    {
//        int n = arr.Length;
//        for (int i = 0; i < n - 1; i++)
//        {
//            int minIndex = i;
//            for (int j = i + 1; j < n; j++)
//            {
//                if (arr[j] < arr[minIndex])
//                {
//                    minIndex = j;
//                }
//            }
//            int temp = arr[minIndex];
//            arr[minIndex] = arr[i];
//            arr[i] = temp;
//        }
//    }
//}
