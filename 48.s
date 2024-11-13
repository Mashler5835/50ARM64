// Programa: 48.s
// Autor: Bejarano Duque Antoine 21211918
// Descripción: Medirel tiempo de una ejecucion
.global _start

.text
_start:
    mrs x0, cntvct_el0        // Leer contador de tiempo al comienzo
    bl EjemploFuncion         // Llamar a la función de ejemplo
    mrs x1, cntvct_el0        // Leer contador de tiempo al final

    sub x2, x1, x0            // Calcular el tiempo transcurrido
    // x2 ahora contiene el número de ciclos transcurridos

    mov x8, 60                // Exit system call
    svc 0                     // Realizar la llamada al sistema

EjemploFuncion:
    mov x3, 1000000           // Número de iteraciones
loop:
    subs x3, x3, 1
    bne loop                  // Decrementar y repetir hasta que x3 sea 0
    ret
//using System;
//using System.Diagnostics;
//
//class Program
//{
//    static void EjemploFuncion()
//    {
//        for (int i = 0; i < 1000000; i++) { /* Algoritmo de ejemplo */ }
//    }
//
//    static void Main()
//    {
//        Stopwatch stopwatch = new Stopwatch();
//        stopwatch.Start();
//
//        EjemploFuncion();
//
//        stopwatch.Stop();
//        Console.WriteLine("Tiempo de ejecución: " + stopwatch.ElapsedMilliseconds + " ms");
//    }
//}
