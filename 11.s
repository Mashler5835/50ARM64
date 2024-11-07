// Programa: 11.s
// Autor: Bejarano Duque Antoine 21211918
// Descripción: Verificar si una cadena es palindromo
.global _start

.section .data
    str: .asciz "racecar"

.section .text
_start:
    MOV X0, str             // Dirección de la cadena
    BL check_palindrome     // Llamar a la función para verificar si es palíndromo

    MOV X8, 93              // syscall número 93 (exit)
    MOV X0, 0               // estado de salida
    SVC 0

check_palindrome:
    // Lógica para verificar si la cadena es palíndromo
    RET
//using System;
//
//class Program
//{
//    static void Main()
//    {
//        string str = "racecar";
//        bool isPalindrome = IsPalindrome(str);
//        Console.WriteLine(isPalindrome ? "Es palíndromo" : "No es palíndromo");
//    }
//
//    static bool IsPalindrome(string str)
//    {
//        int start = 0;
//        int end = str.Length - 1;
//        while (start < end)
//        {
//            if (str[start] != str[end])
//                return false;
//            start++;
//            end--;
//        }
//        return true;
//    }
//}
