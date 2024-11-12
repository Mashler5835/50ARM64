// Programa: 36.s
// Autor: Bejarano Duque Antoine 21211918
// Descripción: Encontrar el segundo elemento mas grande
.global _start

.text
_start:
    mov x0, arr         // Dirección del arreglo
    mov x1, 6           // Número de elementos en el arreglo
    bl SegundoMasGrande // Llamar a la función
    mov x8, 60          // Exit system call
    svc 0               // Realizar la llamada al sistema

SegundoMasGrande:
    mov x2, -2147483648 // max1 = Integer.MinValue
    mov x3, -2147483648 // max2 = Integer.MinValue
loop:
    cmp x1, 0           // Si se han recorrido todos los elementos
    beq end_second_max
    ldr w4, [x0], #4    // Cargar el siguiente elemento del arreglo
    cmp w4, x2          // Si el número es mayor que max1
    ble not_max1
    mov x3, x2          // max2 = max1
    mov x2, w4          // max1 = num
    b continue_loop

not_max1:
    cmp w4, x3          // Si el número es mayor que max2 y no es igual a max1
    ble continue_loop
    mov x3, w4          // max2 = num

continue_loop:
    sub x1, x1, 1       // Decrementar el contador de elementos
    b loop

end_second_max:
    mov x0, x3          // Retornar el segundo mayor
    ret

.data
arr: .word 12, 35, 1, 10, 34, 1
//using System;
//
//class Program
//{
//    static int SegundoMasGrande(int[] arr)
//    {
//        int max1 = int.MinValue;
//        int max2 = int.MinValue;
//
//        foreach (int num in arr)
//        {
//            if (num > max1)
//            {
//                max2 = max1;
//                max1 = num;
//            }
//            else if (num > max2 && num != max1)
//            {
//                max2 = num;
//            }
//        }
//
//        return max2;
//    }
//
//    static void Main()
//    {
//        int[] arr = { 12, 35, 1, 10, 34, 1 };
//        Console.WriteLine("El segundo mayor número es: " + SegundoMasGrande(arr));
//    }
//}
