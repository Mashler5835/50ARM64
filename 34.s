// Programa: 34.s
// Autor: Bejarano Duque Antoine 21211918
// Descripción: Suma de elementos en un arreglo
.global _start

.text
_start:
    mov x0, arr         // Dirección del arreglo
    mov x1, 5           // Número de elementos en el arreglo
    bl InvertirArreglo  // Llamar a la función para invertir
    mov x8, 60          // Exit system call
    svc 0               // Realizar la llamada al sistema

InvertirArreglo:
    mov x2, 0           // Índice inicial = 0
    sub x3, x1, 1       // Índice final = longitud - 1
loop_invertir:
    cmp x2, x3          // Si el índice inicial >= final
    bge end_invertir
    ldr w4, [x0, x2, LSL #2]  // Cargar arr[start]
    ldr w5, [x0, x3, LSL #2]  // Cargar arr[end]
    str w5, [x0, x2, LSL #2]  // Guardar arr[end] en arr[start]
    str w4, [x0, x3, LSL #2]  // Guardar arr[start] en arr[end]
    add x2, x2, 1       // Incrementar start
    sub x3, x3, 1       // Decrementar end
    b loop_invertir
end_invertir:
    ret

.data
arr: .word 1, 2, 3, 4, 5
//using System;
//
//class Program
//{
//    static void InvertirArreglo(int[] arr)
//    {
//        int start = 0;
//        int end = arr.Length - 1;
//        while (start < end)
//        {
//            int temp = arr[start];
//            arr[start] = arr[end];
//            arr[end] = temp;
//            start++;
//            end--;
//        }
//    }
//
//    static void Main()
//    {
//        int[] arr = { 1, 2, 3, 4, 5 };
//        InvertirArreglo(arr);
//        Console.WriteLine("Arreglo invertido: " + string.Join(", ", arr));
//    }
//}
