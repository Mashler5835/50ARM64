// Programa: 26.s
// Nombre: Antoine Bejarano Duque 21211918
// Descripción: Realiza operaciones AND, OR, XOR entre dos números
// Entrada:
//      x0 - Primer número
//      x1 - Segundo número
// Salidas:
//      x2 - Resultado de AND
//      x3 - Resultado de OR
//      x4 - Resultado de XOR

        .text
        .global _start
_start:
        // Operación AND
        and     x2, x0, x1        // x2 = x0 & x1

        // Operación OR
        orr     x3, x0, x1        // x3 = x0 | x1

        // Operación XOR
        eor     x4, x0, x1        // x4 = x0 ^ x1

        // Terminar
        mov     x8, #93           // sys_exit
        svc     #0
//using System;
//
//class Program
//{
//    static void Main()
//    {
//        Console.Write("Ingrese el primer número: ");
//        int num1 = Convert.ToInt32(Console.ReadLine());
//
//        Console.Write("Ingrese el segundo número: ");
//        int num2 = Convert.ToInt32(Console.ReadLine());
//
//        int andResult = num1 & num2;
//        int orResult = num1 | num2;
//        int xorResult = num1 ^ num2;
//
//        Console.WriteLine($"AND: {andResult}, OR: {orResult}, XOR: {xorResult}");
//    }
//}
