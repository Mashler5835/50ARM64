// Programa: 27.s
// Nombre: Antoine Bejarano Duque 21211918
// Descripción: Desplaza un número a la izquierda y derecha por una cantidad específica
// Entrada:
//      x0 - Número
//      x1 - Cantidad de bits a desplazar
// Salidas:
//      x2 - Resultado de desplazamiento a la izquierda
//      x3 - Resultado de desplazamiento a la derecha

        .text
        .global _start
_start:
        // Desplazamiento a la izquierda
        lsl     x2, x0, x1        // x2 = x0 << x1

        // Desplazamiento a la derecha
        lsr     x3, x0, x1        // x3 = x0 >> x1

        // Terminar
        mov     x8, #93           // sys_exit
        svc     #0
//using System;
//
//class Program
//{
//    static void Main()
//    {
//        Console.Write("Ingrese un número: ");
//        int numero = Convert.ToInt32(Console.ReadLine());
//
//        Console.Write("Ingrese la cantidad de bits para desplazar: ");
//        int bits = Convert.ToInt32(Console.ReadLine());
//
//        int leftShift = numero << bits;
//        int rightShift = numero >> bits;
//
//        Console.WriteLine($"Desplazamiento Izquierda: {leftShift}, Derecha: {rightShift}");
//    }
//}

