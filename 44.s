// Programa: 44.s
// Autor: Bejarano Duque Antoine 21211918
// Descripción: Generacion de numeros aleatorios
.global _start

.text
_start:
    mov x0, 0x1234       // Semilla para la aleatoriedad
    bl GenerarAleatorio  // Llamar a la función para generar el número aleatorio
    mov x8, 60           // Exit system call
    svc 0                // Realizar la llamada al sistema

GenerarAleatorio:
    mov x1, 0x7FFFFFFF   // Límite superior para el número aleatorio
    // Realizar una operación simple de aleatorización con semilla
    mul x0, x0, 0x41C64E6D
    add x0, x0, 0x3039
    and x0, x0, x1       // Limitar el rango
    ret
//using System;
//
//class Program
//{
//    static void Main()
//    {
//        Random rand = new Random();
//        int numeroAleatorio = rand.Next(1, 100);
//        Console.WriteLine("Número aleatorio: " + numeroAleatorio);
//    }
//}

