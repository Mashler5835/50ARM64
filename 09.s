// Programa: 09.s
// Autor: Bejarano Duque Antoine 21211918
// Descripción: Verificar si un numero es primo
.global _start

.section .text
_start:
    MOV X0, 29          // Número a verificar
    MOV X1, 2           // Divisor inicial

check_prime:
    MOV X2, X0
    SDIV X2, X0, X1     // X2 = X0 / X1
    MUL X2, X2, X1      // X2 = X2 * X1
    CMP X2, X0
    BEQ prime           // Si X2 == X0, el número es primo
    ADD X1, X1, 1
    CMP X1, X0
    BLT check_prime

    // No es primo
    MOV X8, 93          // syscall número 93 (exit)
    MOV X0, 1           // estado de salida
    SVC 0

prime:
    // Es primo
    MOV X8, 93          // syscall número 93 (exit)
    MOV X0, 0           // estado de salida
    SVC 0
//using System;
//
//class Program
//{
//    static void Main()
//    {
//        int N = 29;  // Verificar si 29 es primo
//        bool isPrime = true;
//
//        for (int i = 2; i <= Math.Sqrt(N); i++)
//        {
//            if (N % i == 0)
//            {
//                isPrime = false;
//                break;
//            }
//        }
//
//        Console.WriteLine($"El número {N} es {(isPrime ? "primo" : "no primo")}");
//    }
//}
