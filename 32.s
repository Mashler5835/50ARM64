// Programa: 32.s
// Autor: Bejarano Duque Antoine 21211918
// Descripción: Potencia (x^n)
.global _start

.text
_start:
    mov x0, 2          // baseNum = 2
    mov x1, 5          // exp = 5
    bl Potencia        // Llamar a la función Potencia
    mov x8, 60         // Exit system call
    svc 0              // Realizar la llamada al sistema

Potencia:
    cmp x1, 0          // Si exp == 0
    beq end_Potencia
    sub x1, x1, 1      // exp = exp - 1
    bl Potencia        // Llamar recursivamente
    mul x0, x0, x2     // baseNum * resultado anterior
end_Potencia:
    ret
//using System;
//
//class Program
//{
//    static int Potencia(int baseNum, int exp)
//    {
//        if (exp == 0)
//            return 1;
//        return baseNum * Potencia(baseNum, exp - 1);
//    }
//
//    static void Main()
//    {
//        int baseNum = 2, exp = 5;
//        Console.WriteLine(baseNum + " elevado a " + exp + " es: " + Potencia(baseNum, exp));
//    }
//}
