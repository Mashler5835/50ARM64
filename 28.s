// Programa: 28.s
// Nombre: Antoine Bejarano Duque 21211918
// Descripción: Manipula bits específicos de un número dado
// Entrada:
//      x0 - Número original
//      x1 - Posición del bit
// Salidas:
//      x2 - Número con el bit establecido (a 1)
//      x3 - Número con el bit borrado (a 0)
//      x4 - Número con el bit alternado

        .text
        .global _start
_start:
        // Establecer bit (OR con una máscara)
        mov     x2, x0
        orr     x2, x2, (1 << x1) // x2 = x0 | (1 << x1)

        // Borrar bit (AND con máscara negada)
        mov     x3, x0
        bic     x3, x3, (1 << x1) // x3 = x0 & ~(1 << x1)

        // Alternar bit (XOR con una máscara)
        mov     x4, x0
        eor     x4, x4, (1 << x1) // x4 = x0 ^ (1 << x1)

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
//        Console.Write("Ingrese la posición del bit: ");
//        int posicion = Convert.ToInt32(Console.ReadLine());
//
//        int setBit = numero | (1 << posicion);       // Establecer bit
//        int clearBit = numero & ~(1 << posicion);    // Borrar bit
//        int toggleBit = numero ^ (1 << posicion);    // Alternar bit
//
//        Console.WriteLine($"Establecer Bit: {setBit}, Borrar Bit: {clearBit}, Alternar Bit: {toggleBit}");
//    }
//}
