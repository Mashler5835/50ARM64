// Programa: 50.s
// Autor: Bejarano Duque Antoine 21211918
// Descripción: Escribir de un archivo
.global _start

.section .data
file_path: .asciz "saludo.txt"
message:   .asciz "¡Hola, mundo!\n"

.text
_start:
    // Abrir archivo en modo escritura
    mov x0, file_path         // Dirección del nombre del archivo
    mov x1, 577               // O_WRONLY | O_CREAT
    mov x2, 0644              // Permisos del archivo
    mov x8, 56                // Syscall para abrir archivo (sys_open)
    svc 0

    mov x9, x0                // Guardar descriptor de archivo

    // Escribir mensaje en archivo
    mov x0, x9                // Descriptor del archivo
    ldr x1, =message          // Dirección del mensaje
    mov x2, 13                // Longitud del mensaje
    mov x8, 64                // Syscall para escribir (sys_write)
    svc 0

    // Cerrar el archivo
    mov x0, x9                // Descriptor del archivo
    mov x8, 57                // Syscall para cerrar archivo (sys_close)
    svc 0

    // Salida del programa
    mov x8, 60                // Exit system call
    svc 0
//using System;
//using System.IO;
//
//class Program
//{
//    static void Main()
//    {
//        string rutaArchivo = "saludo.txt";
//        using (StreamWriter escritor = new StreamWriter(rutaArchivo))
//        {
//            escritor.WriteLine("¡Hola, mundo!");
//        }
//        Console.WriteLine("Mensaje escrito en " + rutaArchivo);
//    }
//}
