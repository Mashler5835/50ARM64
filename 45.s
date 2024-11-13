// Programa: 45.s
// Autor: Bejarano Duque Antoine 21211918
// Descripción: Verificar si un numero es Armstrong
.global _start

.text
_start:
    mov x0, 153          // Número a verificar
    bl EsArmstrong       // Llamar a la función EsArmstrong
    mov x8, 60           // Exit system call
    svc 0                // Realizar la llamada al sistema

EsArmstrong:
    mov x1, x0           // Guardar el número original
    mov x2, 0            // Inicializar suma
    mov x3, 0            // Inicializar variable de dígitos

    // Calcular la cantidad de dígitos en el número
loop_count_digits:
    udiv x0, x0, 10      // Dividir el número por 10
    add x3, x3, 1        // Incrementar el contador de dígitos
    cmp x0, 0            //
//using System;
//
//class Program
//{
//    static bool EsArmstrong(int num)
//    {
//        int temp = num, suma = 0;
//        int digits = (int)Math.Floor(Math.Log10(num) + 1);
//        
//        while (temp > 0)
//        {
//            int digit = temp % 10;
//            suma += (int)Math.Pow(digit, digits);
//            temp /= 10;
//        }
//        
//        return suma == num;
//    }
//
//    static void Main()
//    {
//        int num = 153;
//        Console.WriteLine($"{num} es Armstrong: " + EsArmstrong(num));
//    }
//}

