// Programa: 42.s
// Autor: Bejarano Duque Antoine 21211918
// Descripción: Convertir hexadecimal a decimal
.global _start

.text
_start:
    mov x0, 0xFE         // Número hexadecimal a convertir
    bl HexadecimalADecimal // Llamar a la función HexadecimalADecimal
    mov x8, 60           // Exit system call
    svc 0                // Realizar la llamada al sistema

HexadecimalADecimal:
    mov x1, 16           // Base 16
    mov x2, 0            // Inicializar valor decimal
loop:
    cmp x0, 0            // Si el número es 0
    beq end_hexadecimal
    and w3, w0, 0xF      // Obtener el valor hexadecimal (menos significativo)
    add x2, x2, w3       // Agregar al valor decimal
    lsr x0, x0, 4        // Desplazar el número a la derecha
    b loop

end_hexadecimal:
    mov x0, x2           // Retornar el valor decimal
    ret
//using System;
//
//class Program
//{
//    static int HexadecimalADecimal(string hex)
//    {
//        return Convert.ToInt32(hex, 16);
//    }
//
//    static void Main()
//    {
//        string hex = "FE";
//        Console.WriteLine(hex + " en decimal es: " + HexadecimalADecimal(hex));
//    }
//}
