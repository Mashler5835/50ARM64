// Programa: Celsius a Fahrenheit
// Autor: Bejarano Duque Antoine 21211918
// Descripción: Convierte una temperatura de Celsius a Fahrenheit
// Fórmula: F = C * 9 / 5 + 32
// Entrada:
//      x0 - Temperatura en Celsius
// Salida:
//      x0 - Temperatura en Fahrenheit

        .global _start         // Punto de entrada
_start:
        // Multiplica Celsius por 9
        mov     x1, #9         // Cargar el valor 9 en x1
        mul     x0, x0, x1     // x0 = Celsius * 9

        // Divide el resultado entre 5
        mov     x1, #5         // Cargar el valor 5 en x1
        sdiv    x0, x0, x1     // x0 = (Celsius * 9) / 5

        // Suma 32 al resultado
        add     x0, x0, #32    // x0 = (Celsius * 9 / 5) + 32

        // Salida del programa
        mov     x8, #93        // Código para sys_exit en Linux
        svc     #0             // Llamada al sistema para terminar
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
