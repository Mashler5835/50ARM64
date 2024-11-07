// Programa: 07.s
// Autor: Bejarano Duque Antoine 21211918
// Descripción: Factorial de unnumero
.global _start

.section .text
_start:
    MOV X0, 5           // N = 5
    MOV X1, 1           // Factorial = 1

factorial_loop:
    MUL X1, X1, X0      // Factorial = Factorial * X0
    SUB X0, X0, 1       // N = N - 1
    CMP X0, 1
    BNE factorial_loop

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
//        int N = 5;  // Calcular el factorial de 5
//        int factorial = 1;
//
//        for (int i = 1; i <= N; i++)
//        {
//            factorial *= i;
//        }
//
//        Console.WriteLine("El factorial de 5 es: " + factorial);
//    }
//}
