// Programa: Suma de dos números
// Autor: Bejarano Duque Antoine 21211918
// Descripción: Suma dos números y muestra el resultado
// Entradas:
//      x0 - Primer número
//      x1 - Segundo número
// Salida:
//      x0 - Resultado de la suma

        .global _start
_start:
        // Suma los dos números
        add     x0, x0, x1     // x0 = x0 + x1

        // Salida del programa
        mov     x8, #93        // Código para sys_exit
//        svc     #0
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
//        int suma = Sumar(num1, num2);
//        Console.WriteLine($"La suma es: {suma}");
//    }
//
//    static int Sumar(int a, int b)
//    {
//        return a + b;
//    }
//}


