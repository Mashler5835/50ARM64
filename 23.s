// Programa: 23.s
// Nombre Bejarano Duque Antoine  21211918
// Descripción: Convierte un valor ASCII numérico a su carácter
// Entrada: x0 - Valor numérico de ASCII
// Salida: x0 - Carácter correspondiente

        .text
        .global _start
_start:
        // Asume que el valor numérico está en x0 y representa un valor ASCII

        mov     x8, #93           // sys_exit
        svc     #0
//using System;
//
//class Program
//{
//    static void Main()
//    {
//        Console.Write("Ingrese un valor ASCII: ");
//        int ascii = Convert.ToInt32(Console.ReadLine());
//        
//        char caracter = (char)ascii;
//        Console.WriteLine($"Carácter correspondiente: {caracter}");
//    }
//}


