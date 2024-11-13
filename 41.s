// Programa: 41.s
// Autor: Bejarano Duque Antoine 21211918
// Descripción: Convertir binario a decimal
.global _start

.text
_start:
    mov x0, 254          // Número decimal a convertir
    bl DecimalAHexadecimal // Llamar a la función DecimalAHexadecimal
    mov x8, 60           // Exit system call
    svc 0                // Realizar la llamada al sistema

DecimalAHexadecimal:
    mov x1, 0x10         // Base 16
    mov x2, 0            // Inicializar cadena vacía
loop:
    udiv x3, x0, x1      // Dividir el número por 16
    mul x4, x3, x1       // Obtener el residuo
    sub x5, x0, x4       // Obtener el residuo
    // Convertir el residuo a carácter hexadecimal y agregarlo a la cadena
    add x2, x2, x5
    mov x0, x3           // Actualizar el número
    cmp x0, 0            // Si el número es 0
    beq end_hexadecimal
    b loop

end_hexadecimal:
    mov x0, x2           // Retornar la cadena hexadecimal
    ret
//using System;
//
//class Program
//{
//    static string DecimalAHexadecimal(int n)
//    {
//        return n.ToString("X");
//    }
//
//    static void Main()
//    {
//        int num = 254;
//        Console.WriteLine(num + " en hexadecimal es: " + DecimalAHexadecimal(num));
//    }
//}
