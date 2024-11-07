// Programa: 08.s
// Autor: Bejarano Duque Antoine 21211918
// Descripción: Serie de Fibonacci
.global _start

.section .text
_start:
    MOV X0, 10          // Número de términos en la serie de Fibonacci
    MOV X1, 0           // Primer término (fib(0))
    MOV X2, 1           // Segundo término (fib(1))

fibonacci_loop:
    ADD X3, X1, X2      // Siguiente término (fib(n) = fib(n-1) + fib(n-2))
    MOV X1, X2          // Actualizar fib(n-1)
    MOV X2, X3          // Actualizar fib(n-2)

    SUB X0, X0, 1
    CMP X0, 0
    BNE fibonacci_loop

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
//        int N = 10;  // Generar los primeros 10 términos de Fibonacci
//        int fib1 = 0, fib2 = 1;
//
//        Console.WriteLine(fib1);
//        Console.WriteLine(fib2);
//
//        for (int i = 3; i <= N; i++)
//        {
//            int nextFib = fib1 + fib2;
//            Console.WriteLine(nextFib);
//            fib1 = fib2;
//            fib2 = nextFib;
//        }
//    }
//}
