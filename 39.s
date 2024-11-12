// Programa: 39.s
// Autor: Bejarano Duque Antoine 21211918
// Descripción: Convertir decimal a binario
.global _start

.text
_start:
    mov x0, 10           // Número a convertir a binario
    bl DecimalABinario   // Llamar a la función DecimalABinario
    mov x8, 60           // Exit system call
    svc 0                // Realizar la llamada al sistema

DecimalABinario:
    mov x1, 0            // Inicializar cadena binaria
loop:
    cmp x0, 0            // Si el número es 0
    beq end_binario
    udiv x2, x0, 2       // Dividir por 2
    mul x3, x2, 2        // Multiplicar por 2 para obtener el residuo
    sub x4, x0, x3       // Obtener el residuo
    // Guardar en el arreglo binario
    add x1, x1, x4
    mov x0, x2           // Actualizar el número
    b loop
end_binario:
    mov x0, x1           // Retornar el resultado binario
    ret
//using System;
//
//class Program
//{
//    static string DecimalABinario(int n)
//    {
//        if (n == 0) return "0";
//        string binario = "";
//        while (n > 0)
//        {
//            binario = (n % 2) + binario;
//            n /= 2;
//        }
//        return binario;
//    }
//
//    static void Main()
//    {
//        int num = 10;
//        Console.WriteLine(num + " en binario es: " + DecimalABinario(num));
//    }
//}

