// Programa: 30.s
// Nombre: Antoine Bejarano Duque  21211918
// Descripción: Calcula el MCD usando el algoritmo de Euclides
// Entradas:
//      x0 - Primer número
//      x1 - Segundo número
// Salida:
//      x0 - MCD de x0 y x1

        .text
        .global _start
_start:
euclides:
        cbz     x1, fin          // Si x1 es 0, el MCD es x0
        udiv    x2, x0, x1       // x2 = x0 / x1
        msub    x2, x2, x1, x0   // x2 = x0 - (x2 * x1) (resto)
        mov     x0, x1           // x0 = x1
        mov     x1, x2           // x1 = resto
        b       euclides         // Repetir

fin:
        mov     x8, #93          // sys_exit
        svc     #0
//using System;
//
//class Program
//{
//    static void Main()
//    {
//        Console.Write("Ingrese el primer número: ");
//        int num1 = Convert.ToInt32(Console.ReadLine());
//
//        Console.Write("Ingrese el segundo número: ");
//        int num2 = Convert.ToInt32(Console.ReadLine());
//
//        int mcd = CalcularMCD(num1, num2);
//        Console.WriteLine($"El MCD es: {mcd}");
//    }
//
//    static int CalcularMCD(int a, int b)
//    {
//        while (b != 0)
//        {
//            int temp = b;
//            b = a % b;
//            a = temp;
//        }
//        return a;
//    }
//}
