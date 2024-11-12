// Programa: 25.s
// Nombre: Bejarano Duque Antoine 21211918
// Descripción: Cuenta vocales y consonantes en una cadena
// Entrada: Dirección de la cadena en x0
// Salidas: Número de vocales en x1 y consonantes en x2

        .data
cadena: .ascii "Hola Mundo\0"

        .text
        .global _start
_start:
        mov     x1, #0           // Contador de vocales
        mov     x2, #0           // Contador de consonantes
        mov     x3, #0           // Índice de la cadena

contar:
        ldrb    w4, [x0, x3]     // Cargar el siguiente byte
        cbz     w4, fin          // Si es 0, fin de cadena

        // Convertir a minúscula si es mayúscula
        orr     w5, w4, #0x20
        cmp     w5, #'a'
        blt     siguiente
        cmp     w5, #'z'
        bgt     siguiente

        // Verificar si es vocal
        cmp     w5, #'a'
        beq     es_vocal
        cmp     w5, #'e'
        beq     es_vocal
        cmp     w5, #'i'
        beq     es_vocal
        cmp     w5, #'o'
        beq     es_vocal
        cmp     w5, #'u'
        beq     es_vocal

        // Es consonante
        add     x2, x2, #1
        b       siguiente

es_vocal:
        add     x1, x1, #1

siguiente:
        add     x3, x3, #1       // Siguiente carácter
        b       contar

fin:
        mov     x8, #93          // sys_exit
        svc     #0
//using System;
//
//class Program
//{
//    static void Main()
//    {
//        Console.Write("Ingrese una cadena: ");
//        string cadena = Console.ReadLine();
//        
//        int vocales = 0, consonantes = 0;
//        
//        foreach (char c in cadena.ToLower())
//        {
//            if ("aeiou".Contains(c)) vocales++;
//            else if (char.IsLetter(c)) consonantes++;
//        }
//        
//        Console.WriteLine($"Vocales: {vocales}, Consonantes: {consonantes}");
//    }
//}
