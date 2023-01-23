        .data
msg_indice_i:
    .asciiz "Escriba el tamaño del índice (i)->"
msg_indice_j:
    .asciiz "Escriba el tamaño del índice (j)->"
msg_indice_i2:
    .asciiz "Escriba el índice (i) a mostrar->"
msg_indice_j2:
    .asciiz "Escriba el índice (j) a mostrar->"
msg_res1:
    .asciiz "El elemento situado en los índices ("
msg_res2:
    .asciiz ") es -> "
indice_i:
    .word 0
indice_j:
    .word 0
indice_i2:
    .word 0
indice_j2:
    .word 0
matriz: .space    1024            # Espacio de Memoria donde vamos a guardar la matriz, le asignamos de espacio 1KB

        .text
# Procedimiento principal
main:  
        addi    $sp, $sp, -4    # Hace espacio en la pila
        sw      $ra, 0($sp)     # Almacena $ra en la pila
        jal    generar_matriz  # Procedimiento para generar la matriz
                                # print_resultado
        jal     mostrar_elemento_matriz # Llama a print_resultado
        li      $v0, 10         # Código de la llamada al sistema
                                # "exit" en $v0
        syscall                 # Termina el programa
        lw      $ra, 0($sp)     # Recupera el valor de $ra de la pila
        addi    $sp, $sp, 4     # Devuelve el espacio de pila usado
        jr      $ra

generar_matriz:
    addi    $sp, $sp, -4    # Hace espacio en la pila
        sw      $ra, 0($sp)     # Almacena $ra en la pila           
        #Le pedimos al usuario que introduzca el tamaño del índice i
        la    $a0, msg_indice_i
        li    $v0, 4
        syscall
        li    $v0, 5
        syscall
        sw    $v0, indice_i
        #Le pedimos al usuario que introduzca el tamaño del índice j
        la    $a0, msg_indice_j
        li    $v0, 4
        syscall
        li    $v0, 5
        syscall
        sw    $v0, indice_j
        #Ahora generaremos la matriz con números aleatorios del 0 al 100 para los tamaños de índice introducidos
        lw    $t0, indice_i
        lw    $t1, indice_j
        li    $t2, 0
        li    $t3, 0
        la    $t4, matriz
for1:   beq    $t2, $t0, fin
    li    $t3, 0
for2:    beq    $t3, $t1, finf2
        li    $a1, 100
        li    $v0, 42
        syscall
        sw    $a0, 0($t4) #Guardamos en memoria el número obtenido
        move    $t7, $a0
        #Mostramos el elemento obtenido
        li    $a0, '('
    li    $v0, 11
    syscall
    move    $a0, $t2
        li      $v0, 1          # Código syscall para imprimir un entero
        syscall
        li    $a0, ','
    li    $v0, 11
    syscall
    move    $a0, $t3
        li      $v0, 1
        syscall
    la    $a0, msg_res2
    li    $v0, 4
    syscall
    move    $a0, $t7
        li      $v0, 1
        syscall
        li    $a0, '\n'
        li    $v0, 11
        syscall
        addi    $t4, $t4, 4
        addi    $t3, $t3, 1
        j    for2
finf2:    addi    $t2, $t2, 1
    j    for1       
fin:    lw      $ra, 0($sp)     # Recupera el valor de $ra de la pila
        addi    $sp, $sp, 4     # Devuelve el espacio de pila usado
        jr      $ra        # Vuelve al procedimiento invocador
       
# Procedimiento para buscar el elemento en la matriz e imprimirlo.
mostrar_elemento_matriz:
        addi    $sp, $sp, -4    # Hace espacio en la pila
        sw      $ra, 0($sp)     # Almacena $ra en la pila           
        #Le pedimos al usuario que introduzca el índice i
        la    $a0, msg_indice_i2
        li    $v0, 4
        syscall
        li    $v0, 5
        syscall
        #addi    $v0, $v0, 1
        sw    $v0, indice_i2
        #Le pedimos al usuario que introduzca el índice j
        la    $a0, msg_indice_j2
        li    $v0, 4
        syscall
        li    $v0, 5
        syscall
        #addi    $v0, $v0, 1
        sw    $v0, indice_j2
        #Ahora buscamos el elemento dentro de la matriz con los índices introducidos
        lw    $t0, indice_i2
        lw    $t1, indice_j2
        lw    $t2, indice_i #Leemos el tamaño máximo del primer indice
        mul    $t2, $t0, $t2 #Multiplicamos el indice leido por el indice máximo
        addi    $t2, $t2, 1   #Sumamos 1 para situarnos en el primer elemento
        add    $t2, $t2, $t1 #Le sumamos el segundo ídice leído y lo guardamos en $t2 para saber donde situarnos en memoria
        li    $t3, 0
        la    $t4, matriz
for3:    beq    $t3, $t2, fin3
    lw    $a0, 0($t4)
        addi    $t4, $t4, 4
        addi    $t3, $t3, 1
        j    for3
fin3:   move    $t7, $a0
    la    $a0, msg_res1
    li    $v0, 4
    syscall
    move    $a0, $t0
    li    $v0, 1
    syscall
    li    $a0, ','
    li    $v0, 11
    syscall
    move    $a0, $t1
    li    $v0, 1
    syscall
    la    $a0, msg_res2
    li    $v0, 4
    syscall
    move    $a0, $t7
        li      $v0, 1          # Código syscall para imprimir un entero
        syscall                 # Imprime el entero
        li    $a0, '\n'
        li    $v0, 11
        syscall
        j    mostrar_elemento_matriz
        #Lo dejamos en un bucel infinito para que podamnos volver a introducir otro elemento a buscar
        #si no queremos que sea así basta con borrar la instrucción j mostrar_elemento_matriz
    lw      $ra, 0($sp)     # Recupera el valor de $ra de la pila
        addi    $sp, $sp, 4     # Devuelve el espacio de pila usado
        jr      $ra