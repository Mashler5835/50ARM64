// Programa: Multiplicación de dos números
// Autor: Bejarano Duque Antoine 21211918
// Descripción: Multiplica dos números y muestra el resultado
// Entradas:
//      x0 - Primer número
//      x1 - Segundo número
// Salida:
//      x0 - Resultado de la multiplicación

        .global _start
_start:
        // Multiplica los dos números
        mul     x0, x0, x1     // x0 = x0 * x1

        // Salida del programa
        mov     x8, #93
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
//        int producto = Multiplicar(num1, num2);
//        Console.WriteLine($"El producto es: {producto}");
//    }
//
//    static int Multiplicar(int a, int b)
//    {
//        return a * b;
//    }
//}
