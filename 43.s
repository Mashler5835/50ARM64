// Programa: 43.s
// Autor: Bejarano Duque Antoine 21211918
// Descripción: Calculadora simple (Suma, Resta, Multiplicacion,Division)
.global _start

.text
_start:
    mov x0, 10           // Primer número
    mov x1, 5            // Segundo número
    bl Sumar             // Llamar a la función Sumar
    mov x8, 60           // Exit system call
    svc 0                // Realizar la llamada al sistema

Sumar:
    add x0, x0, x1       // Sumar los dos números
    ret
//using System;
//
//class Program
//{
//    static int Sumar(int a, int b) => a + b;
//    static int Restar(int a, int b) => a - b;
//    static int Multiplicar(int a, int b) => a * b;
//    static int Dividir(int a, int b) => a / b;
//
//    static void Main()
//    {
//        int a = 10, b = 5;
//        Console.WriteLine("Suma: " + Sumar(a, b));
//        Console.WriteLine("Resta: " + Restar(a, b));
//        Console.WriteLine("Multiplicación: " + Multiplicar(a, b));
//        Console.WriteLine("División: " + Dividir(a, b));
//    }
//}
