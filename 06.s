// Programa: 06.s
// Autor: Bejarano Duque Antoine 21211918
// Descripción: Suma de los N primeros numeros naturales
.global _start

.section .text
_start:
    MOV X0, 10          // N = 10
    MOV X1, 0           // Suma = 0

sum_loop:
    ADD X1, X1, X0      // Suma = Suma + X0
    SUB X0, X0, 1       // N = N - 1
    CMP X0, 0
    BNE sum_loop

    // Salir del programa
    MOV X8, 93          // syscall número 93 (exit)
    MOV X0, 0           // estado de salida
    SVC 0
//using System;
//
//class Program
//{
//    static void Main()
//    {
//        int N = 10;  // Sumar los primeros 10 números naturales
//        int sum = 0;
//        
//        for (int i = 1; i <= N; i++)
//        {
//            sum += i;
//        }
//
//        Console.WriteLine("La suma de los primeros 10 números naturales es: " + sum);
//    }
//}
