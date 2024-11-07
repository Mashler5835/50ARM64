// Programa: 15.s
// Autor: Bejarano Duque Antoine 21211918
// Descripción: Busqueda binaria
.global _start

.section .data
    arr: .word 1, 2, 3, 4, 5, 6, 7, 8, 9
    target: .word 6

.section .text
_start:
    MOV X0, arr        // Dirección del arreglo
    MOV X1, 9          // Tamaño del arreglo
    LDR X2, =target    // Dirección de la variable target
    MOV X3, 0          // Indice inferior
    MOV X4, X1         // Indice superior

binary_search:
    ADD X5, X3, X4     // X5 = X3 + X4
    LSR X5, X5, 1      // X5 = (X3 + X4) / 2 (punto medio)
    LDR W6, [X0, X5, LSL #2] // Cargar arr[X5]
    LDR W7, [X2]       // Cargar el valor objetivo
    CMP W6, W7
    BEQ found          // Si es igual, terminar
    BLT lower_half     // Si el valor objetivo es menor, buscar en la mitad inferior
    B higher_half      // Si es mayor, buscar en la mitad superior

lower_half:
    MOV X4, X5         // Indice superior = punto medio
    B binary_search

higher_half:
    MOV X3, X5         // Indice inferior = punto medio
    B binary_search

found:
    MOV X8, 93         // syscall número 93 (exit)
    MOV X0, 0          // Encontrado
    SVC 0
//using System;
//
//class Program
//{
//    static void Main()
//    {
//        int[] arr = { 1, 2, 3, 4, 5, 6, 7, 8, 9 };
//        int target = 6;
//        bool found = BinarySearch(arr, target);
//        Console.WriteLine(found ? "Elemento encontrado" : "Elemento no encontrado");
//    }
//
//    static bool BinarySearch(int[] arr, int target)
//    {
//        int low = 0;
//        int high = arr.Length - 1;
//
//        while (low <= high)
//        {
//            int mid = low + (high - low) / 2;
//            if (arr[mid] == target)
//                return true;
//            if (arr[mid] < target)
//                low = mid + 1;
//            else
//                high = mid - 1;
//        }
//        return false;
//    }
//}
