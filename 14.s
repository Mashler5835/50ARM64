// Programa: 14.s
// Autor: Bejarano Duque Antoine 21211918
// Descripción: Busqueda lineal
.global _start

.section .data
    arr: .word 3, 7, 2, 8, 5
    target: .word 8

.section .text
_start:
    MOV X0, arr        // Dirección del arreglo
    MOV X1, 5          // Tamaño del arreglo
    LDR X2, =target    // Dirección de la variable target

search_linear:
    LDR W3, [X0], #4   // Cargar siguiente elemento del arreglo
    LDR W4, [X2]       // Cargar el valor objetivo
    CMP W3, W4
    BEQ found          // Si el valor coincide, terminar

    SUBS X1, X1, 1
    BNE search_linear

    MOV X8, 93         // syscall número 93 (exit)
    MOV X0, 1          // No encontrado
    SVC 0

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
//        int[] arr = { 3, 7, 2, 8, 5 };
//        int target = 8;
//        bool found = LinearSearch(arr, target);
//        Console.WriteLine(found ? "Elemento encontrado" : "Elemento no encontrado");
//    }
//
//    static bool LinearSearch(int[] arr, int target)
//    {
//        foreach (int num in arr)
//        {
//            if (num == target)
//                return true;
//        }
//        return false;
//    }
//}
