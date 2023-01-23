#   do {
#     // sacar la matriz
#     std::cout << "La matriz tiene tamaño " << nfil << " x " << ncol << std::endl;
#     for (int f = 0; f < nfil; ++f) { 
#       for (int c = 0; c < ncol; ++c) {
#         int* ptEle = matrix + ncol * f + c;
#         std::cout << *ptEle << " ";
#       }
#     std::cout << std::endl;
#     }
#     std::cout << "\n(1) Cambiar dimension\n(2) Obtener el elemento [i,j]\n(3) Invertir una fila\n(4) Invertir una columna\n(0) Salir\n";
#     int caso_elegido;
#     std::cin >> caso_elegido;
#     if(caso_elegido == 0) {
#       std::cout << "Fin del programa\n";
#       break;
#     }
#     switch (caso_elegido) {
#      case 1:
#       std::cout << "Introduzca el numero de filas: ";
#       std::cin >> nfil;
#       std::cout << "\nIntroduzca el numero de columnas: ";
#       std::cin >> ncol;
#       if(nfil * ncol > 400) {
#         std::cout << "Error: dimension incorrecta. Excede el maximo numero de elementos (400)." << std::endl;
#         nfil = 20;
#         ncol = 10;
#         break;
#       } 
#       for (int f = 0; f < nfil; ++f) { 
#         for (int c = 0; c < ncol; ++c) {
#           int* ptEle = matrix + ncol * f + c;
#           std::cout << *ptEle << " ";
#         }
#         std::cout << std::endl;
#       }
#       break;
#      case 2:
#       std::cout << "¿Que elemento desea obtener?\nIntroduzca el valor de i: ";
#       std::cin >> i;
#       std::cout << "\nIntroduzca el valor de j: ";
#       std::cin >> j;
#       std::cout << std::endl;
#       if (i > nfil || j > ncol) {
#         std::cout << "No es posible encontrar ese valor" << std::endl << std::endl;
#         break;
#       }
#       std::cout << "A( " << i << ", " << j << " ) = " << *(matrix + ncol * i + j) << std::endl;
#       break;
#      case 3:
#       std::cout << "¿Que fila desea invertir?" << std::endl;
#       std::cin >> i;
#       for (int c = ncol - 1; c >= 0; --c) {
#         int* ptEle = matrix + ncol * i + c;
#         matrixaux[ncol - 1 - c] = *ptEle;
#       }  
#       for (int k = 0; k < ncol; ++k) {
#         matrix[ncol * i + k] = matrixaux[k];
#       } 
#       break;
#      case 4:
#       std::cout << "¿Que columna desea invertir?" << std::endl;
#       std::cin >> j;
#       for (int f = nfil - 1; f >= 0; --f) {
#         int* ptEle = matrix + ncol * f + j;
#         matrixaux2[(ncol - 1) - f] = *ptEle;
#       }  
#       for (int k = 0; k < ncol; ++k) {
#         matrix[ncol * k + j] = matrixaux2[k];
#       } 
#       break;
     
#      default:
#       break;
#     }
#   } while (true);
# }

maximoElementos=400 # numero de enteros maximo reservado para la matriz 1600 bytes
size=4 # bytes que ocupa un entero
    .data
mat:   .word   100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119
       .word   120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139
       .word   140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159
       .word   160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179
       .word   180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199
       .word   200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219
       .word   220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239
       .word   240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 255, 256, 257, 258, 259
       .word   260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279
       .word   280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299
       .word   300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319
       .word   320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339
       .word   340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359
       .word   360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379
       .word   380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399
       .word   400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419
       .word   420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439
       .word   440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459
       .word   460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479
       .word   480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499
       

nfil:   .word   20 # nuemro de filas de la matriz
ncol:   .word   10 # numero de columnas de la matriz
separador:  .asciiz "  " # separador entre numeros
newline:    .asciiz "\n"
menu:       .ascii  "\n(1) Cambiar dimensiones\n(2) Obtener elemento [i,j]\n"
            .asciiz "(3) Invertir fila\n(4) Invertir columna\n(0) Salir\nElija opcion: "
error_op:   .asciiz "\nError: opcion incorrecta.\n"
msg_nfilas: .asciiz "\nIntroduzca numero de filas: "
msg_ncol:  .asciiz "\nIntroduzca numero de columnas: "
error_nfilas:   .asciiz "\nError: dimension incorrecta. Numero de fila incorrecto.\n"
error_ncol:    .asciiz "\nError: dimension incorrecta. Numero de columna incorrecto.\n"
error_dime:     .asciiz "\nError: dimension incorrecta. Excede el maximo numero de elementos (400).\n"
error_posi: .asciiz "\nError: no es posible encontrar esa posicion.\n"
msg_i:      .asciiz "\nObtener el elemento [i,j]. Introduzca indice i (primera fila indice 0): "
msg_j:      .asciiz "\nObtener el elemento [i,j]. Introduzca indice j (primera columna indice 0): "
msg_f:      .asciiz "\nInvertir la fila [i,*]. Introduzca indice i (primera fila indice 0): "
msg_c:      .asciiz "\nInvertir la columna [*,j]. Introduzca indice j (primera columna indice 0): "
msg_elemento:   .asciiz "\nElemento obtenido en la posicion indicada: "
titulo:     .asciiz "\nPractica 5 de Principios de Computadores. Matrices.\n"
header:     .asciiz "Matriz con dimension "
x:          .asciiz " x "
msg_fin:    .asciiz "\nFin del programa.\n"

    .text
main:

    li $v0, 4                       #preparamos la escritura por consola 
    la $a0, titulo
    syscall

#   do {
#     std::cout << "La matriz tiene tamaño " << nfil << " x " << ncol << std::endl;
    do: 
    li $v0, 4                       #preparamos la escritura por consola 
    la $a0, header
    syscall

    li $v0, 1
    lw $a0, nfil
    syscall

    li $v0, 4
    la $a0, x
    syscall

    li $v0, 1
    lw $a0, ncol
    syscall

    li $v0, 4
    la $a0, newline
    syscall

        #Registros          #Variables
    #t0                 recorrer la matriz
    #t1                 elemento de la matriz  
    #t2                 variable bucle i
    #t3                 variable j
    #t4                 variable detector final matriz
    #t5                 size
    #t6                 nfil -> 20
    #t7                 ncol -> 10
    #t8                 x -> cambiar rows/cols
    #t9                 y -> cambiar rows/cols

    li $t0, 0
    li $t1, 0
    li $t2, 0
    li $t4, 0
    li $t5, size
    lw $t6, nfil
    lw $t7, ncol
    li $t8, 0
    
#     for (int f = 0; f < nfil; ++f) { 
    for1:
    li $t3, 0   #$t3 -> 0 == variable f

#       for (int c = 0; c < ncol; ++c) {
        for2:
#         int* ptEle = matrix + ncol * f + c;
        lw $t1, mat($t0)
#         std::cout << *ptEle << " ";
        li $v0, 1           #std::cout << *ptEle == std::cout << mat[i][j]
        move $a0, $t1
        syscall

        li $v0, 4            #std::cout << " "
        la $a0, separador
        syscall

        add $t0, $t0, $t5    #Sumamos 4 bytes a $t0 para movernos al siguiente valor de la matriz

        addi $t3, 1         #j++ -> $t3++
        blt $t3, $t7, for2   #if($t3 < $t7) bucle2
#       }
#     std::cout << std::endl;
        li $v0, 4       
        la $a0, newline
        syscall

        addi $t2, 1        #i++ -> $t2++
        blt $t2, $t6, for1  #if($t2 < $t6) for1
#     }

    caso_elegido:
#     std::cout << "\n(1) Cambiar dimension\n(2) Obtener el elemento [i,j]\n(3) Invertir una fila\n(4) Invertir una columna\n(0) Salir\n";
    li $v0, 4
    la $a0, menu    
    syscall
#     int caso_elegido;
#     std::cin >> caso_elegido;
    li $v0, 5   #Preparamos el sistema para recoger un entero
    syscall     #Llamada al sistema
#     if(caso_elegido == 0) {
    beqz $v0, final_do
#       std::cout << "Fin del programa\n";
#       break;
#     }
    beq $v0, 1, caso1
    beq $v0, 2, caso2
    beq $v0, 3, caso3
    beq $v0, 4, caso4
    li $v0, 4
    la $a0, error_op
    syscall
    j caso_elegido
#     switch (caso_elegido) {
#      case 1:
    caso1:
#       std::cout << "Introduzca el numero de filas: ";
#       std::cin >> nfil;
    li $v0, 4
    la $a0, msg_nfilas
    syscall

    li $v0, 5
    syscall
    move $t6, $v0

#       std::cout << "\nIntroduzca el numero de columnas: ";
#       std::cin >> ncol;
    li $v0, 4
    la $a0, msg_ncol
    syscall

    li $v0, 5
    syscall
    move $t7, $v0

#       if(nfil * ncol > 400) {
    mul $s0, $t6, $t7
    ble $s0, 400, for1_caso1
#         std::cout << "Error: dimension incorrecta. Excede el maximo numero de elementos (400)." << std::endl;
    li $v0, 4
    la $a0, error_dime
    syscall
#         nfil = 20;
    li $t6, 20
#         ncol = 10;
    li $t7, 10
    j do
#         break;
#       } 
    for1_caso1:
    li $v0, 4                       #preparamos la escritura por consola 
    la $a0, header
    syscall

    li $v0, 1
    move $a0, $t6
    syscall

    li $v0, 4
    la $a0, x
    syscall

    li $v0, 1
    move $a0, $t7
    syscall

    li $v0, 4
    la $a0, newline
    syscall
    #Registros          #Variables
    #t0                 recorrer la matriz
    #t1                 elemento de la matriz  
    #t2                 variable bucle i
    #t3                 variable j
    #t4                 variable detector final matriz
    #t5                 size
    #t6                 nfil -> 20
    #t7                 ncol -> 10
    #t8                 x -> cambiar rows/cols
    #t9                 y -> cambiar rows/cols
    li $t0, 0
    li $t1, 0
    li $t2, 0
    li $t4, 0
    li $t5, size
    li $t8, 0
    
    for1_caso1:
#     for (int f = 0; f < nfil; ++f) { 
    li $t3, 0   #$t3 -> 0 == variable f
#       for (int c = 0; c < ncol; ++c) {
        for2_caso1:
#         int* ptEle = matrix + ncol * f + c;
        lw $t1, mat($t0)
#         std::cout << *ptEle << " ";
        li $v0, 1           #std::cout << *ptEle == std::cout << mat[i][j]
        move $a0, $t1
        syscall

        li $v0, 4            #std::cout << " "
        la $a0, separador
        syscall

        add $t0, $t0, $t5    #Sumamos 4 bytes a $t0 para movernos al siguiente valor de la matriz

        addi $t3, 1         #j++ -> $t3++
        blt $t3, $t7, for2   #if($t3 < $t7) bucle2
#       }
#     std::cout << std::endl;
        li $v0, 4       
        la $a0, newline
        syscall

        addi $t2, 1        #i++ -> $t2++
        blt $t2, $t6, for1  #if($t2 < $t6) for2
    
    j do
#     
#      case 2:
    caso2:
#       std::cout << "¿Que elemento desea obtener?\nIntroduzca el valor de i: ";
#       std::cin >> i;
    li $v0, 4
    la $a0, msg_i
    syscall

    li $v0, 5
    syscall
    move $s3, $v0
#       std::cout << "\nIntroduzca el valor de j: ";
#       std::cin >> j;
    li $v0, 4
    la $a0, msg_j
    syscall

    li $v0, 5
    syscall
    move $s4, $v0
#       std::cout << std::endl;
    li $v0, 4
    la $a0, newline
    syscall
#       if (i > nfil || j > ncol) {
    bge $t2, $t6, fin_if_caso2 
    bge $t3, $t7, fin_if_caso2

    if_caso2:
#         std::cout << "No es posible encontrar ese valor" << std::endl << std::endl;
    li $v0, 4
    la $a0, error_posi
    syscall
    j do
#         break;
#       }
    fin_if_caso2:
#       std::cout << "A( " << i << ", " << j << " ) = " << *(matrix + ncol * i + j) << std::endl;
#       break;
    li $v0, 4
    la $a0, msg_elemento
    syscall

        #Registros          #Variables
    #t0                 recorrer la matriz
    #t1                 elemento de la matriz  
    #t2                 variable bucle i
    #t3                 variable j
    #t4                 variable detector final matriz
    #t5                 size
    #t6                 nfil -> 20
    #t7                 ncol -> 10
    #t8                 x -> cambiar rows/cols
    #t9                 y -> cambiar rows/cols
    li $t0, 0
    li $t1, 0
    li $t4, 0
    li $t5, size
    li $t8, 0
    li $s1, 0   # ncol * i
    # comienzo_fila_i = mat + ncol * i * size + j * size
    mul $s1, $t7, $s3
    mul $s1, $s1, size  # ncol * i * size

    mul $s2, $s4, size  # j * size

    add $s5, $s1, $s2   # ncol * i * size + i * size
    
    add $t0 , $t0, $s5  # mat + $s5

    lw $t1, mat($t0)

    li $v0, 1
    move $a0, $t1
    syscall

    li $v0, 4
    la $a0, newline
    syscall
    j do
#      case 3:
    caso3:
#       std::cout << "¿Que fila desea invertir?" << std::endl;
#       std::cin >> i;
    li $v0, 4
    la $a0, msg_f
    syscall

    li $v0, 5
    syscall
    move $s3, $s0
#       for (int c = ncol - 1; c >= 0; --c) {
#         int* ptEle = matrix + ncol * i + c;
#         matrixaux[ncol - 1 - c] = *ptEle;
#       }  
#       for (int k = 0; k < ncol; ++k) {
#         matrix[ncol * i + k] = matrixaux[k];
#       } 
#       break;
j do
#      case 4:
    caso4:
    #Registros          #Variables
    #t0                 recorrer la matriz
    #t1                 elemento de la matriz  
    #t2                 variable bucle i
    #t3                 variable j
    #t4                 variable detector final matriz
    #t5                 size
    #t6                 nfil -> 20
    #t7                 ncol -> 10
    #t8                 x -> cambiar rows/cols
    #t9                 y -> cambiar rows/cols
    li $t0, 0
    li $t1, 0
    li $t2, 0
    li $t4, 0
    li $t5, size
    lw $t6, nfil
    lw $t7, ncol
    li $t8, 0
    li $s0, 0
    li $s1, 0
    li $s2, 0
    li $s3, 0
    li $s4, 0
#       std::cout << "¿Que columna desea invertir?" << std::endl;
#       std::cin >> j;
    li $v0, 4           #Imprimir por pantalla
    la $a0, msg_f
    syscall

    li $v0, 5           #Cogemos la columna a cambiar
    syscall
    move $s3, $s0
#       for (int f = nfil - 1; f >= 0; --f) {
#         int* ptEle = matrix + ncol * f + j;
#         matrixaux2[(ncol - 1) - f] = *ptEle;
#       }  
#       for (int k = 0; k < ncol; ++k) {
#         matrix[ncol * k + j] = matrixaux2[k];
#       } 
#       break;
    # beq $s3, 1, fin_caso4   # Si solo hay una fila, salta al final
    # li $a0, 2               
    # move $t8, $s3           
    # div $t3, $t6, $a0       # dividimos $t6 entre 2 para obetener la mitad de las filas
    # move $t4, $zero         # ponemos a 0 el indice de la fila
    # for1_caso4:
    #     sub $t8, $t8, 1

    #     mul $t9, $t2, $t7   # $t9 = i * ncol
    #     addu $t9, $t9, $s3  # $t9 = i * ncol + col_a_invertir
    # fin_caso4:  
     
#      default:
#       break;
#     }
#   } while (true);
# }
    j do
    final_do:                          #Se acaba el do
    li $v0, 4
    la $a0, msg_fin
    syscall

    li $v0, 10
    syscall


# mat = primera posición de la matriz
# comienzo_fila_i = mat + ncol * i * size + j * size
# posicion_j =  + j * size
# a13 = mat + 4 *1 * 4 + 3 * 4 = mat + 16 + 12 = mat + 28

