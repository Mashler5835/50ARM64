// Programa: 22.s
// Nombre: Bejarano Duque Antoine 21211918
// Descripción: Convierte un carácter ASCII almacenado en un registro a su valor numérico
// Entrada: x0 - Carácter ASCII
// Salida: x0 - Valor ASCII del carácter

        .text
        .global _start
_start:
        // Asume que el carácter ASCII ya está en x0, simplemente lo imprimimos
        // Aquí el valor en x0 representa ya el ASCII del carácter
        
        mov     x8, #93           // sys_exit
        svc     #0
//using System;
//
//class Program
//{
//    static void Main()
//    {
//        Console.Write("Ingrese un carácter: ");
//        char caracter = Console.ReadLine()[0];
//        
//        int ascii = (int)caracter;
//        Console.WriteLine($"Código ASCII de '{caracter}': {ascii}");
//    }
//}
