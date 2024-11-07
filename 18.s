// Programa: 18.s
// Autor: Bejarano Duque Antoine 21211918
// Descripción: Ordenamiento por mezcla (Merge Sort)
.global _start

.section .data
arr: .word 3, 7, 2, 8, 5

.section .text
_start:
    MOV X0, arr
    MOV X1, 5
    BL merge_sort

    MOV X8, 93         // syscall número 93 (exit)
    MOV X0, 0          // estado de salida
    SVC 0

merge_sort:
    // Implementación de Merge Sort (requiere dividir y combinar)
    RET
//using System;
//
//class Program
//{
//    static void Main()
//    {
//        int[] arr = { 3, 7, 2, 8, 5 };
//        MergeSort(arr);
//        Console.WriteLine(string.Join(", ", arr));
//    }
//
//    static void MergeSort(int[] arr)
//    {
//        if (arr.Length <= 1) return;
//
//        int mid = arr.Length / 2;
//        int[] left = new int[mid];
//        int[] right = new int[arr.Length - mid];
//
//        Array.Copy(arr, left, mid);
//        Array.Copy(arr, mid, right, 0, arr.Length - mid);
//
//        MergeSort(left);
//        MergeSort(right);
//
//        Merge(arr, left, right);
//    }
//
//    static void Merge(int[] arr, int[] left, int[] right)
//    {
//        int i = 0, j = 0, k = 0;
//
//        while (i < left.Length && j < right.Length)
//        {
//            if (left[i] <= right[j])
//                arr[k++] = left[i++];
//            else
//                arr[k++] = right[j++];
//        }
//
//        while (i < left.Length) arr[k++] = left[i++];
//        while (j < right.Length) arr[k++] = right[j++];
//    }
//}
