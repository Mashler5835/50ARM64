// Programa: 31.s
// Autor: Bejarano Duque Antoine 21211918
// Descripción: Minimo ComunMUltiplo (MCM)
.global _start

.text
_start:
    mov x0, 12        // a = 12
    mov x1, 15        // b = 15
    bl MCM            // Llamar a la función MCM
    mov x8, 60         // Exit system call
    svc 0              // Realizar la llamada al sistema

MCM:
    mov x2, x0        // x2 = a
    mov x3, x1        // x3 = b
    bl GCD            // Llamar a la función GCD
    mul x0, x2, x3    // MCM = a * b
    udiv x0, x0, x1   // MCM = (a * b) / GCD
    ret

GCD:
    cmp x1, 0         // Si b == 0
    beq end_GCD
    mov x2, x1
    mov x1, x0
    mod x0, x0, x2   // x0 = a % b
    bl GCD
end_GCD:
    ret
//using System;
//
//class Program
//{
//    static int MCM(int a, int b)
//    {
//        return (a * b) / GCD(a, b);
//    }
//
//    static int GCD(int a, int b)
//    {
//        while (b != 0)
//        {
//            int temp = b;
//            b = a % b;
//            a = temp;
//        }
//        return a;
//    }
//
//    static void Main()
//    {
//        int a = 12, b = 15;
//        Console.WriteLine("MCM de " + a + " y " + b + " es: " + MCM(a, b));
//    }
//}

