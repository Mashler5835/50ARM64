// Programa: 40.s
// Autor: Bejarano Duque Antoine 21211918
// Descripción: Convertir binario a decimal
.global _start

.text
_start:
    mov x0, 10           // Número en binario (1010 en este caso)
    bl BinarioADecimal   // Llamar a la función BinarioADecimal
    mov x8, 60           // Exit system call
    svc 0                // Realizar la llamada al sistema

BinarioADecimal:
    mov x2, 0            // Inicializar valor decimal
    mov x3, 0            // Inicializar índice (potencia de 2)
loop:
    cmp x0, 0            // Si el número binario es 0
    beq end_binario
    and w4, w0, 1        // Obtener el bit más bajo
    cmp w4, 1            // Si es 1
    beq add_power_of_two
    b continue_loop

add_power_of_two:
    add x2, x2, x3       // Agregar potencia de 2
continue_loop:
    lsr x0, x0, 1        // Desplazar a la derecha el número binario
    add x3, x3, 1        // Incrementar potencia de 2
    b loop

end_binario:
    mov x0, x2           // Retornar el valor decimal
    ret
//using System;
//
//class Program
//{
//    static int BinarioADecimal(string binario)
//    {
//        int decimalValue = 0;
//        int length = binario.Length;
//        
//        for (int i = 0; i < length; i++)
//        {
//            if (binario[length - 1 - i] == '1')
//            {
//                decimalValue += (1 << i);  // Desplazamiento de bits
//            }
//        }
//        
//        return decimalValue;
//    }
//
//    static void Main()
//    {
//        string binario = "1010";
//        Console.WriteLine(binario + " en decimal es: " + BinarioADecimal(binario));
//    }
//}
