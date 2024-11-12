// Programa: 37.s
// Autor: Bejarano Duque Antoine 21211918
// Descripción: Implementar una pila usando un arreglo
.global _start

.text
_start:
    mov x0, 5            // Tamaño de la pila
    bl CrearPila         // Crear la pila
    mov x1, 10           // Elemento a insertar
    bl Push              // Insertar en la pila
    mov x1, 20           // Elemento a insertar
    bl Push              // Insertar en la pila
    bl Pop               // Eliminar el primer elemento (pop)
    mov x8, 60           // Exit system call
    svc 0                // Realizar la llamada al sistema

CrearPila:
    // Crear la pila y poner el índice 'top' en -1
    mov x1, -1
    mov x2, x0
    mul x3, x0, 4
    malloc x4, x3        // Reservar espacio para el arreglo
    ret

Push:
    ldr w2, [x0]         // Cargar el índice top
    add w2, w2, 1        // Incrementar top
    str w1, [x0, w2, LSL #2]  // Insertar el elemento en el arreglo
    str w2, [x0]         // Actualizar top
    ret

Pop:
    ldr w2, [x0]         // Cargar el índice top
    cmp w2, -1           // Si la pila está vacía
    ble end_pop
    ldr w3, [x0, w2, LSL #2]  // Cargar el elemento de la pila
    sub w2, w2, 1        // Decrementar top
    str w2, [x0]         // Actualizar top
    mov x0, w3           // Retornar el elemento pop
    ret

end_pop:
    mov x0, -1           // Si la pila está vacía, retornar -1
    ret
//using System;
//
//class Pila
//{
//    private int[] stack;
//    private int top;
//
//    public Pila(int size)
//    {
//        stack = new int[size];
//        top = -1;
//    }
//
//    public void Push(int value)
//    {
//        if (top < stack.Length - 1)
//        {
//            stack[++top] = value;
//        }
//        else
//        {
//            Console.WriteLine("Pila llena");
//        }
//    }
//
//    public int Pop()
//    {
//        if (top >= 0)
//        {
//            return stack[top--];
//        }
//        else
//        {
//            Console.WriteLine("Pila vacía");
//            return -1;
//        }
//    }
//
//    public bool IsEmpty()
//    {
//        return top == -1;
//    }
//}
//
//class Program
//{
//    static void Main()
//    {
//        Pila pila = new Pila(5);
//        pila.Push(10);
//        pila.Push(20);
//        pila.Push(30);
//
//        Console.WriteLine("Pop: " + pila.Pop());
//        Console.WriteLine("Pop: " + pila.Pop());
//    }
//}
