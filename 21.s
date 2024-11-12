// Programa: 21.s
// Autor: Bejarano Duque Antoine 21211918
// Descripción: Intercambia filas por columnas en una matriz 2x2
// Entrada:
//      x0 - Dirección de la matriz original en memoria
// Salida:
//      x0 - Dirección de la matriz transpuesta en memoria

        .data
matriz_original:
        .int 1, 2
        .int 3, 4

matriz_transpuesta:
        .int 0, 0
        .int 0, 0

        .text
        .global _start
_start:
        // Cargar valores de la matriz original
        ldr w1, =matriz_original
        ldr w2, [w1]           // elemento [0][0]
        ldr w3, [w1, #4]       // elemento [0][1]
        ldr w4, [w1, #8]       // elemento [1][0]
        ldr w5, [w1, #12]      // elemento [1][1]

        // Asignar valores a la matriz transpuesta
        ldr w1, =matriz_transpuesta
        str w2, [w1]           // [0][0] de transpuesta
        str w4, [w1, #4]       // [1][0] de transpuesta
        str w3, [w1, #8]       // [0][1] de transpuesta
        str w5, [w1, #12]      // [1][1] de transpuesta

        // Salida del programa
        mov x8, #93            // sys_exit
        svc #0
//using System;
//
//class Program
//{
//    static void Main()
//    {
//        int[,] matriz = {
//            {1, 2},
//            {3, 4}
//        };
//        
//        int[,] transpuesta = TransponerMatriz(matriz);
//        
//        Console.WriteLine("Matriz transpuesta:");
//        ImprimirMatriz(transpuesta);
//    }
//
//    static int[,] TransponerMatriz(int[,] matriz)
//    {
//        int filas = matriz.GetLength(0);
//        int columnas = matriz.GetLength(1);
//        int[,] transpuesta = new int[columnas, filas];
//        
//        for (int i = 0; i < filas; i++)
//            for (int j = 0; j < columnas; j++)
//                transpuesta[j, i] = matriz[i, j];
//                
//        return transpuesta;
//    }
//
//    static void ImprimirMatriz(int[,] matriz)
//    {
//        for (int i = 0; i < matriz.GetLength(0); i++)
//        {
//            for (int j = 0; j < matriz.GetLength(1); j++)
//                Console.Write(matriz[i, j] + " ");
//            Console.WriteLine();
//        }
//    }
//}
