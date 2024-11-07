// Programa: Resta de dos números
// Autor: Bejarano Duque  Antoine 21211918
// Descripción: Resta dos números y muestra el resultado
// Entradas:
//      x0 - Minuendo (primer número)
//      x1 - Sustraendo (segundo número)
// Salida:
//      x0 - Resultado de la resta

        .global _start
_start:
        // Resta el segundo número del primero
        sub     x0, x0, x1     // x0 = x0 - x1

        // Salida del programa
        mov     x8, #93
        svc     #0
//using System;
//
//class Program
//{
//    static void Main()
//    {
//        Console.Write("Ingrese el minuendo (primer número): ");
//        int num1 = Convert.ToInt32(Console.ReadLine());
//
//        Console.Write("Ingrese el sustraendo (segundo número): ");
//        int num2 = Convert.ToInt32(Console.ReadLine());
//
//        int resta = Restar(num1, num2);
//        Console.WriteLine($"La resta es: {resta}");
//    }
//
//    static int Restar(int a, int b)
//    {
//        return a - b;
//    }
//}
