// Programa: 35.s
// Autor: Bejarano Duque Antoine 21211918
// Descripción: Suma de elementos en un arreglo
.global _start

.text
_start:
    mov x0, arr          // Dirección del arreglo
    mov x1, 5            // Número de elementos en el arreglo
    bl RotarIzquierda    // Llamar a la función de rotación
    mov x8, 60           // Exit system call
    svc 0                // Realizar la llamada al sistema

RotarIzquierda:
    ldr w2, [x0]         // Cargar el primer elemento
    mov x3, 0            // Índice de iteración
    mov x4, x1           // Longitud del arreglo
rotar_loop:
    cmp x3, x4           // Si se ha recorrido todo el arreglo
    bge end_rotar
    ldr w5, [x0, x3, LSL #2]  // Cargar arr[i]
    str w5, [x0, x3, LSL #2]  // Guardar en arr[i]
    add x3, x3, 1        // Incrementar índice
    b rotar_loop
end_rotar:
    str w2, [x0, x4, LSL #2]  // Colocar el primer elemento al final
    ret

.data
arr: .word 1, 2,
//using System;
//
//class Program
//{
//    static void RotarIzquierda(int[] arr)
//    {
//        int temp = arr[0];
//        for (int i = 0; i < arr.Length - 1; i++)
//        {
//            arr[i] = arr[i + 1];
//        }
//        arr[arr.Length - 1] = temp;
//    }
//
//    static void Main()
//    {
//        int[] arr = { 1, 2, 3, 4, 5 };
//        RotarIzquierda(arr);
//        Console.WriteLine("Arreglo después de rotación a la izquierda: " + string.Join(", ", arr));
//    }
//}
