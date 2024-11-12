// Programa: 24.s
// Nombre: Antoine Bejarano Duque 21211918
// Descripción: Calcula la longitud de una cadena terminada en 0
// Entrada: Dirección de la cadena en x0
// Salida: Longitud de la cadena en x1

        .data
cadena: .ascii "Hola Mundo\0"

        .text
        .global _start
_start:
        mov     x1, #0           // Inicializar contador de longitud
calcular:
        ldrb    w2, [x0, x1]     // Cargar el siguiente byte
        cbz     w2, fin          // Si es 0, fin de cadena
        add     x1, x1, #1       // Incrementar contador
        b       calcular

fin:
        mov     x8, #93          // sys_exit
        svc     #0
//using System;
//
//class Program
//{
//    static void Main()
//    {
//        Console.Write("Ingrese una cadena: ");
//        string cadena = Console.ReadLine();
//        
//        int longitud = cadena.Length;
//        Console.WriteLine($"Longitud de la cadena: {longitud}");
//    }
//}
