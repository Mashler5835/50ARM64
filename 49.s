// Programa: 49.s
// Autor: Bejarano Duque Antoine 21211918
// Descripción: Leer la entrada desde el teclado
.global _start

.text
_start:
    mov x0, 0                 // Descriptor de archivo 0 (entrada estándar)
    mov x1, buffer            // Dirección del buffer donde guardar la entrada
    mov x2, 100               // Tamaño del buffer
    mov x8, 63                // Syscall para lectura (sys_read)
    svc 0                     // Realizar la llamada al sistema

    mov x0, 1                 // Descriptor de archivo 1 (salida estándar)
    mov x1, buffer            // Dirección del buffer donde está la entrada leída
    mov x2, 100               // Tamaño del buffer
    mov x8, 64                // Syscall para escritura (sys_write)
    svc 0                     // Realizar la llamada al sistema

    mov x8, 60                // Exit system call
    svc 0                     // Realizar la llamada al sistema

.section .bss
buffer: .space 100            // Espacio para almacenar la entrada
//using System;
//
//class Program
//{
//    static void Main()
//    {
//        Console.WriteLine("Ingrese su nombre:");
//        string nombre = Console.ReadLine();
//        Console.WriteLine("Hola, " + nombre + "!");
//    }
//}
