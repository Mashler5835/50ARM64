// Programa: División de dos números
// Autor: [Tu Nombre]
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
//        Console.Write("Ingrese la temperatura en Celsius: ");
//        double celsius = Convert.ToDouble(Console.ReadLine());
//
//        double fahrenheit = CelsiusAFahrenheit(celsius);
//        Console.WriteLine($"Temperatura en Fahrenheit: {fahrenheit}");
//    }
//
//    static double CelsiusAFahrenheit(double celsius)
//    {
//        return celsius * 9 / 5 + 32;
//    }
//}
