// Programa: 38.s
// Autor: Bejarano Duque Antoine 21211918
// Descripción: Implementar una cola usando un arreglo
.global _start

.text
_start:
    mov x0, 5            // Tamaño de la cola
    bl CrearCola         // Crear la cola
    mov x1, 10           // Elemento a insertar
    bl Enqueue           // Insertar en la cola
    mov x1, 20           // Elemento a insertar
    bl Enqueue           // Insertar en la cola
    bl Dequeue           // Eliminar el primer elemento (dequeue)
    mov x8, 60           // Exit system call
    svc 0                // Realizar la llamada al sistema

CrearCola:
    // Crear la cola e inicializar los índices
    mov x1, -1
    mov x2, x0
    mul x3, x0, 4
    malloc x4, x3        // Reservar espacio para el arreglo
    ret

Enqueue:
    ldr w2, [x0]         // Cargar el índice rear
    cmp w2, x0           // Si la cola está llena
    beq end_enqueue
    add w2, w2, 1        // Incrementar rear
    str w1, [x0, w2, LSL #2]  // Insertar el elemento
    ret

Dequeue:
    ldr w2, [x0]         // Cargar el índice front
    cmp w2, -1           // Si la cola está vacía
    ble end_dequeue
    ldr w3, [x0, w2, LSL #2]  // Cargar el elemento de la cola
    add w2, w2, 1        // Incrementar front
    str w2, [x0]         // Actualizar front
    mov x0, w3           // Retornar el elemento dequeued
    ret

end_enqueue:
    mov x0, -1           // Si la cola está llena, retornar -1
    ret

end_dequeue:
    mov x0, -1           // Si la cola está vacía, retornar -1
    ret
//using System;
//
//class Cola
//{
//    private int[] queue;
//    private int front;
//    private int rear;
//    private int size;
//
//    public Cola(int size)
//    {
//        queue = new int[size];
//        front = -1;
//        rear = -1;
//        this.size = size;
//    }
//
//    public void Enqueue(int value)
//    {
//        if (rear == size - 1)
//        {
//            Console.WriteLine("Cola llena");
//        }
//        else
//        {
//            if (front == -1) front = 0;
//            queue[++rear] = value;
//        }
//    }
//
//    public int Dequeue()
//    {
//        if (front == -1 || front > rear)
//        {
//            Console.WriteLine("Cola vacía");
//            return -1;
//        }
//        else
//        {
//            return queue[front++];
//        }
//    }
//}
//
//class Program
//{
//    static void Main()
//    {
//        Cola cola = new Cola(5);
//        cola.Enqueue(10);
//        cola.Enqueue(20);
//        cola.Enqueue(30);
//
//        Console.WriteLine("Dequeue: " + cola.Dequeue());
//        Console.WriteLine("Dequeue: " + cola.Dequeue());
//    }
//}
