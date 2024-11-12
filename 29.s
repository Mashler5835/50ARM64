// Programa: 29.s
// Nombre: Antoine Bejarano Duque 21211918
// Descripción: Cuenta los bits activados (1) en un número dado
// Entrada:
//      x0 - Número
// Salida:
//      x1 - Conteo de bits activados

        .text
        .global _start
_start:
        mov     x1, #0           // Inicializar contador

contar_bits:
        and     x2, x0, #1       // Obtener el bit menos significativo
        add     x1, x1, x2       // Sumar al contador si es 1
        lsr     x0, x0, #1       // Desplazar el número a la derecha
        cbnz    x0, contar_bits  // Repetir mientras x0 no sea cero

        // Terminar
        mov     x8, #93          // sys_exit
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
//        int count = ContarBitsActivados(numero);
//        Console.WriteLine($"Número de bits activados: {count}");
//    }
//
//    static int ContarBitsActivados(int num)
//    {
//        int count = 0;
//        while (num != 0)
//        {
//            count += num & 1;    // Sumar si el bit menos significativo es 1
//            num >>= 1;           // Desplazar a la derecha
//        }
//        return count;
//    }
//}
