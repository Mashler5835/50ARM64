// Programa: 47.s
// Autor: Bejarano Duque Antoine 21211918
// Descripción: Deteccion de desboradmiento  en suma
.global _start

.text
_start:
    mov w0, 0x7FFFFFFF    // Primer número (int.MaxValue en sistemas de 32 bits)
    mov w1, 1             // Segundo número
    bl DetectarDesbordamiento

    mov x8, 60            // Exit system call
    svc 0                 // Realizar la llamada al sistema

DetectarDesbordamiento:
    adds w2, w0, w1       // Sumar w0 y w1 con banderas de desbordamiento
    bvs desbordamiento    // Si hay desbordamiento, ir a etiqueta de desbordamiento

    mov w0, 0             // No hubo desbordamiento, retornar 0
    ret

desbordamiento:
    mov w0, 1             // Hubo desbordamiento, retornar 1
    ret
//using System;
//
//class Program
//{
//    static bool DetectarDesbordamiento(int a, int b)
//    {
//        try
//        {
//            checked
//            {
//                int suma = a + b;
//            }
//            return false; // No hubo desbordamiento
//        }
//        catch (OverflowException)
//        {
//            return true; // Hubo desbordamiento
//        }
//    }
//
//    static void Main()
//    {
//        int a = int.MaxValue, b = 1;
//        Console.WriteLine("¿Hubo desbordamiento? " + DetectarDesbordamiento(a, b));
//    }
//}
