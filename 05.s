// Programa: 05.s
// Autor: Bejarano Duque Antoine 21211918
// Descripción: Divide el primer número por el segundo y muestra el cociente
// Entradas:
//      x0 - Dividendo (primer número)
//      x1 - Divisor (segundo número)
// Salida:
//      x0 - Cociente de la división

        .global _start
_start:
        // Divide el primer número por el segundo
        sdiv    x0, x0, x1     // x0 = x0 / x1

        // Salida del programa
        mov     x8, #93
        svc     #0
//using System;
//
//class Program
//{
//    static void Main()
//    {
//        Console.Write("Ingrese el dividendo (primer número): ");
//        int dividendo = Convert.ToInt32(Console.ReadLine());
//
//        Console.Write("Ingrese el divisor (segundo número): ");
//        int divisor = Convert.ToInt32(Console.ReadLine());
//
//        if (divisor == 0)
//        {
//            Console.WriteLine("Error: No se puede dividir entre cero.");
//        }
//        else
//        {
//            int cociente = Dividir(dividendo, divisor);
//            Console.WriteLine($"El cociente es: {cociente}");
//        }
//    }
//
//    static int Dividir(int a, int b)
//    {
//        return a / b;
//    }
//}
