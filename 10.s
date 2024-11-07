// Programa: 10.s
// Autor: Bejarano Duque Antoine 21211918
// Descripción: Invertir una cadena
.global _start

.section .data
    str: .asciz "Hello, world!"

.section .text
_start:
    MOV X0, str         // Dirección de la cadena original
    BL reverse_string   // Llamar a la función para invertir la cadena

    // Salir del programa
    MOV X8, 93          // syscall número 93 (exit)
    MOV X0, 0           // estado de salida
    SVC 0

reverse_string:
    // Invertir la cadena aquí (simplificación)
    RET
//using System;
//
//class Program
//{
//    static void Main()
//    {
//        string input = "Hello, world!";
//        char[] reversed = input.ToCharArray();
//        Array.Reverse(reversed);
//        Console.WriteLine("Cadena invertida: " + new string(reversed));
//    }
//}
