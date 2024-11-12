// Programa: 33.s
// Autor: Bejarano Duque Antoine 21211918
// Descripción: Suma de elementos en un arreglo
.global _start

.text
_start:
    mov x0, arr         // Dirección del arreglo
    mov x1, 5           // Número de elementos en el arreglo
    bl SumarElementos   // Llamar a la función de suma
    mov x8, 60          // Exit system call
    svc 0               // Realizar la llamada al sistema

SumarElementos:
    mov x2, 0           // Inicializar suma = 0
loop:
    cmp x1, 0           // Si no hay más elementos
    beq end_Sumar
    ldr w3, [x0], #4    // Cargar el siguiente valor del arreglo
    add x2, x2, w3      // Sumar al acumulador
    sub x1, x1, 1       // Reducir el contador de elementos
    b loop
end_Sumar:
    mov x0, x2          // Retornar el resultado
    ret

.data
arr: .word 1, 2, 3, 4, 5
//using System;
//
//class Program
//{
//    static int SumarElementos(int[] arr)
//    {
//        int suma = 0;
//        foreach (int num in arr)
//        {
//            suma += num;
//        }
//        return suma;
//    }
//
//    static void Main()
//    {
//        int[] arr = { 1, 2, 3, 4, 5 };
//        Console.WriteLine("La suma de los elementos es: " + SumarElementos(arr));
//    }
//}


