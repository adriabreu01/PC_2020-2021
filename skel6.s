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

nfil:   .word   20 # numero de filas de la matriz
ncol:   .word   10 # numero de columnas de la matriz
separador:  .asciiz "  " # separador entre numeros
newline:    .asciiz "\n"
menu:       .ascii  "\n(1) Cambiar dimensiones\n(2) Obtener elemento [i,j]\n"
            .asciiz "(3) Invertir fila\n(4) Invertir columna\n(0) Salir\nElija opcion: "
error_op:   .asciiz "\nError: opcion incorrecta.\n"
msg_nfilas: .asciiz "\nIntroduzca numero de filas: "
msg_ncols:  .asciiz "\nIntroduzca numero de columnas: "
error_nfilas:   .asciiz "\nError: dimension incorrecta. Numero de fila incorrecto.\n"
error_ncols:    .asciiz "\nError: dimension incorrecta. Numero de columna incorrecto.\n"
error_dime:     .asciiz "\nError: dimension incorrecta. Excede el maximo numero de elementos (400).\n"
msg_i:      .asciiz "\nObtener el elemento [i,j]. Introduzca indice i (primera fila indice 0): "
msg_j:      .asciiz "\nObtener el elemento [i,j]. Introduzca indice j (primera columna indice 0): "
msg_f:      .asciiz "\nInvertir la fila [i,*]. Introduzca indice i (primera fila indice 0): "
msg_c:      .asciiz "\nInvertir la columna [*,j]. Introduzca indice j (primera columna indice 0): "
msg_elemento:   .asciiz "\nElemento obtenido en la posicion indicada: "
titulo:     .asciiz "\nPractica 5 de Principios de Computadores. Matrices.\n"
header:     .asciiz "Matriz con dimension "
x:          .asciiz " x "
msg_fin:    .asciiz "\nFin del programa.\n"
msg_posicion_ini:       .asciiz "\nIntroduzca la posicion inicial de la matriz: "
msg_elemento1:  .asciiz "\nIntroduzca el primer elemento: "
msg_elemento2:  .asciiz "\nIntroduzca el segundo elemento: "
msg_traspuesta: .asciiz "\nMatriz traspuesta de tamaño "


        # Registros
        # $s0 ----> elementos de la matriz
        # $s1 ----> dirección elementos de la matriz
        # $s2 ----> filas
        # $s3 ----> columnas
        # $s5 ----> nfil
        # $s6 ----> ncol


    .text

        # # fila = mat + ncol * i * size
        # # columna = mat + ncol * j * size
        # lw $s0, mat($s1)

# void print_matriz(int mat[], int nfil, int ncol) {
#     std::cout << "Matriz con dimension " << nfil << " x " << ncol << std::endl;
#     // Primer for para las filas
#     for (int f = 0; f < nfil; ++f) {
#         // Segundo for para las columnas
#         for (int c = 0; c < ncol; ++c) {
#             int* ptEle = mat + ncol * f + c;
#             std::cout << *ptEle << " ";
#         }
#         std::cout << "\n";
#     }
# }

print_matriz:
# Registros
        # $s0 ----> elementos de la matriz
        # $s1 ----> dirección elementos de la matriz
        # $s2 ----> filas 
        # $s3 ----> columnas
        # $s5 ----> nfil
        # $s6 ----> ncol

        # Función Swap
        # $s0 ----> auxiliar (intercambio)
        # $s1 ----> posición matriz
        # $s3 ----> dirección de elemento1
        # $s4 ----> dirección de elemento2
        # $s7 ----> auxiliar (intercambio)
        li $s0, 0
        li $s1, 0

        li $v0, 4
        la $a0, header
        syscall

        li $v0, 1
        move $a0, $s5
        syscall

        li $v0, 4
        la $a0, x
        syscall

        li $v0, 1
        move $a0, $s6
        syscall

        li $v0, 4
        la $a0, newline
        syscall

        #     // Primer for para las filas
        move $s2, $zero         # int f = 0;
        #     for (int f = 0; f < nfil; ++f) {
comienzo_for1:
        bge $s2, $s5, fin_for1
        #     // Segundo for para las columnas
        move $s3, $zero         # int c = 0;
comienzo_for2:
        #       for (int c = 0; c < ncol; ++c) {
        bge $s3, $s6, fin_for2
    #             int* ptEle = mat + ncol * f + c;
        lw $s0, mat($s1)
    #             std::cout << *ptEle << " ";
        li $v0, 1
        move $a0, $s0
        syscall

        li $v0, 4
        la $a0, separador
        syscall

        add $s1, $s1, size

        addi $s3, 1

        b comienzo_for2
    #         }
fin_for2:

        #         std::cout << "\n";
        li $v0, 4
        la $a0, newline
        syscall

        addi $s2, 1

        b comienzo_for1
    #     }
fin_for1:

        # std::cout << "\n";
        li $v0, 4
        la $a0, newline
        syscall

        jr $ra

swap:
# Registros
        # $s0 ----> elementos de la matriz
        # $s1 ----> dirección elementos de la matriz
        # $s2 ----> filas 
        # $s3 ----> columnas
        # $s5 ----> nfil
        # $s6 ----> ncol

        # Función Swap
        # $s0 ----> auxiliar (intercambio)
        # $s1 ----> posición matriz
        # $s3 ----> dirección de elemento1
        # $s4 ----> dirección de elemento2
        # $s7 ----> auxiliar (intercambio)

        li $s0, 0
        li $s1, 0

        # mul $s1, $s3, size      # s3 = pos elemento 1
        lw $s0, mat($s1)

        li $s1, 0

        # mul $s1, $s4, size      #s4 = pos elemento 2
        lw $s7, mat($s1)

        sw $s0, mat($s1)

        li $s1, 0

        mul $s1, $s3, size

        sw $s7, mat($s1)

        jr $ra

traspuesta:
# Registros
        # $s0 ----> elementos de la matriz
        # $s1 ----> dirección elementos de la matriz
        # $s2 ----> filas 
        # $s3 ----> columnas
        # $s5 ----> nfil
        # $s6 ----> ncol

        # Función Swap
        # $s0 ----> auxiliar (intercambio)
        # $s1 ----> posición matriz
        # $s3 ----> dirección de elemento1
        # $s4 ----> dirección de elemento2
        # $s7 ----> auxiliar (intercambio)

        li $s0, 0
        li $s1, 0

        li $v0, 4
        la $a0, msg_traspuesta
        syscall

        li $v0, 1
        move $a0, $s5
        syscall

        li $v0, 4
        la $a0, x
        syscall

        li $v0, 1
        move $a0, $s5
        syscall

        li $v0, 4
        la $a0, newline
        syscall

        #     // Primer for para las filas
        move $s2, $zero         # int f = 0;
        #     for (int f = 0; f < nfil; ++f) {
comiezo_tras_for1:
        bge $s2, $s5, fin_tras_for1
        #     // Segundo for para las columnas
        move $s3, $zero         # int c = 0;
comienzo_tras_for2:
        #       for (int c = 0; c < ncol; ++c) {
        bge $s3, $s5, fin_tras_for2
    #             int* ptEle = mat + ncol * f + c   # mat + ncol * f * size + c * size4
        li $t3, 0
        mul $t0, $s5, $s2   #t0 = ncol * f
        mul $t0, $t0, size  # ncol * f * size

        mul $t1, $s3, size  # j * size

        add $t0, $t0, $t1   # ncol * f * size + c * size

        add $t0, $t3, $t0  # mat + $s5


        lw $s0, mat($t0)

        li $t3, 0
        mul $t2, $s5, $s3   #t0 = ncol * c
        mul $t2, $t2, size  # ncol * f * size

        mul $t1, $s2, size  # j * size

        add $t2, $t2, $t1   # ncol * f * size + c * size

        add $t2, $t3, $t2  # mat + $s5

        lw $s7, mat($t2)

        addi $sp, $sp, -4
        sw $ra, 4($sp)
        jal swap
        lw $ra, 4($sp)
        addi $sp, $sp, 4

        addi $s3, 1

        b comienzo_tras_for2
    #         }
fin_tras_for2:

        addi $s2, 1

        b comiezo_tras_for1
    #     }
fin_tras_for1:

        # std::cout << "\n";
        li $v0, 4
        la $a0, newline
        syscall

        jr $ra


main:
# Ensamblador (MIPS)
# fila = mat + ncol * i * size
# columna = mat + ncol * j * size

        # std::cout << "\nPractica 5 de Principios de Computadores. Matrices.\n";
        li $v0, 4
        la $a0, titulo
        syscall

        li $s5, 20      # int nfil = 20;
        li $s6, 10      # int ncol = 20;

        # do {
comienzo_do_while:

        jal print_matriz

        # Menú de opciones:
        # int option = 0;
        move $s0, $zero

        # std::cout << "(1) Cambiar dimesiones" << std::endl;
        # std::cout << "(2) Obtener elemento [i, j]" << std::endl;
        # std::cout << "(3) Invertir fila" << std::endl;
        # std::cout << "(4) Invertir columna" << std::endl;
        # std::cout << "(0) Salir" << std::endl;
        # std::cout << "Elija opción: " << std::endl;
        li $v0, 4
        la $a0, menu
        syscall

        # std::cin >> option;
        li $v0, 5
        syscall
        move $s0, $v0

        # 1. Cambiar dimensiones
        # if (option == 1) {

comienzo_if_opcion1:
        li $t0, 1
        bne $s0, $t0, fin_if_opcion1

        #     std::cout << "Introduzca número de filas: " << std::endl;
        li $v0, 4
        la $a0, msg_nfilas
        syscall
        #     int nfil_prov = 0;
        #     std::cin >> nfil_prov;
        li $v0, 5
        syscall
        move $s2, $v0

comienzo_if_filas:
       # if (nfil_prov < 0) {
        bgt $s2, $zero, fin_if_filas
        li $v0, 4
        la $a0, error_nfilas
        syscall
        # }

fin_if_filas:

        #     std::cout << "Introduzca número de columnas: " << std::endl;
        li $v0, 4
        la $a0, msg_ncols
        syscall
        #     int ncol_prov = 0;
        #     std::cin >> ncol_prov;
        li $v0, 5
        syscall
        move $s3, $v0

comienzo_if_columnas:

        bgt $s3, $zero, fin_if_columnas
        li $v0, 4
        la $a0, error_ncols
        syscall

fin_if_columnas:
        mul $s4, $s2, $s3
        li $t5, 400

        #     if (nfil_prov * ncol_prov <= 0 || nfil_prov * ncol_prov > 400) {
comienzo_if2:
        ble $s4, $zero, fin_if2
        bgt $s4, $t5, fin_if2
        #         nfil = nfil_prov;
        move $s5, $s2
        #         ncol = ncol_prov;
        move $s6, $s3

        b fin_if_opcion1
        #     }
fin_if2:
        #     if (nfil_prov * ncol_prov > 0 && nfil_prov * ncol_prov <= 400) {
        #         std::cout << "Error: dimension incorrecta. Excede el maximo numero de elementos (400)." << std::endl;
        li $v0, 4
        la $a0, error_dime
        syscall

        #     }
fin_if_opcion1:
        # }

        # int i = 0;
        move $s1, $zero
        # int j = 0;
        move $s2, $zero

        #  2. Obtener elemento [i, j]
        #         if (option == 2) {
comienzo_if_opcion2:

        li $t0, 2
        bne $s0, $t0, fin_if_opcion2
        #             std::cout << "Obtener el elemento [i,j]. Introduzca indice i (primera fila indice 0): " << std::endl;
        li $v0, 4
        la $a0, msg_i
        syscall
        #             std::cin >> i;
        li $v0, 5
        syscall
        move $s1, $v0
        #             std::cout << "Obtener el elemento [i,j]. Introduzca indice i (primera fila indice 0): " << std::endl;
        li $v0, 4
        la $a0, msg_j
        syscall
        #             std::cin >> j;
        li $v0, 5
        syscall
        move $s2, $v0
        #             if (i < 0 || i > nfil) {
comienzo_if3:
        bge $s1, $zero, fin_if3
        ble $s1, $s5, fin_if3
        #                 std::cout << "Error: dimension incorrecta. Numero de fila incorrecto" << std::endl;
        li $v0, 4
        la $a0, error_nfilas
        syscall

        #             }
fin_if3:

        #             else if (j < 0 || j > ncol) {
comienzo_if4:
        bge $s2, $zero, fin_if4
        ble $s2, $s6, fin_if4
        #                 std::cout << "Error: dimension incorrecta. Numero de columna incorrecto" << std::endl;
        li $v0, 4
        la $a0, error_ncols
        syscall

        #             }
fin_if4:
        #             else {
        #                 int* ptEle = mat + ncol * i + j;
        # ncol * i * size + (j * size)

        mul $t0, $s6, $s1       # ncol * i
        mul $t0, $t0, size      # ncol * i * size
        mul $s2, $s2, size      # (j * size)
        add $s0, $t0, $s2

        lw $s0, mat($s1)
        #                 std::cout << *ptEle << std::endl;
        li $v0, 4
        la $a0, msg_elemento
        syscall

        li $v0, 1
        move $a0, $s0
        syscall

        li $v0, 4
        la $a0, newline
        syscall

        #             }
        #         }
fin_if_opcion2:

        # 3. Invertir fila

        # if (option == 3) {
comienzo_if_opcion3:
        li $t0, 3
        bne $s0, $t0, fin_if_opcion3
        #     std::cout << "Invertir la fila [i, *]. Introduzca indice i (fila indice 0): " << std::endl;
        li $v0, 4
        la $a0, msg_f
        syscall

        #     std::cin >> i;
        li $v0, 1
        syscall
        move $s1, $v0

        #     if (i >= 0 && i < nfil) {
comienzo_if5:
        blt $s1, $zero, fin_if5
        bge $s1, $s5, fin_if5

        #         int aux[ncol];
        #         // Invertir la fila
        li $t1, 1
        sub $t0, $s6, $t1
        #         for (int k = ncol - 1; k >= 0; --k) {
comienzo_for3:
        blt $t0, $zero, fin_for3
        #             int* ptEle = mat + ncol * i + k;

        #             aux[(ncol - 1) - k] = *ptEle;

        addi $t0, 1
        b comienzo_for3
        #         }
fin_for3:

        #         for (int l = 0; l < ncol; ++l) {
comienzo_for4:
        move $t1, $zero
        bge $t1, $s6, fin_for4
        #             mat[ncol * i + l] = aux[l];

        addi $t1, 1
        b comienzo_for4
        #         }
fin_for4:
        #     }
        b fin_if_opcion3
fin_if5:
        #     else {
        #         std::cout << "Error: dimension incorrecta. Numero de fila incorrecto" << std::endl;
        li $v0, 4
        la $a0, error_nfilas
        syscall
        #     }

fin_if_opcion3:
        # }

        #         4. Invertir columna
        #         if (option == 4) {
comienzo_if_opcion4:
        li $t0, 4
        bne $s0, $t0, fin_if_opcion4
        #         // Invertir columna
        #             std::cout << "Invertir la columna [*, j]. Introduzca indice j (columna indice 0): " << std::endl;
        li $v0, 4
        la $a0, msg_c
        syscall
        #             std::cin >> j;
        li $v0, 1
        syscall
        move $s2, $v0
        #             if (j >= 0 && j < ncol) {
comienzo_if6:
        blt $s2, $zero, fin_if6
        bge $s2, $s6, fin_if6
        #                 int aux[nfil];
        #                 // Invertir la fila
        #                 for (int k = nfil - 1; k >= 0; --k) {
comienzo_for5:
        li $t1, 1
        sub $t0, $s6, $t1
        blt $t0, $zero, fin_for5
        #                     int* ptEle = mat + ncol * k + j;




        #                     aux[(ncol - 1) - k] = *ptEle;

        b comienzo_for5
        #                 }
fin_for5:
        #                 for (int l = 0; l < ncol; ++l) {
comienzo_for6:
        move $t1, $zero
        bge $t1, $s6, fin_for6
        #                     mat[nfil * l + j] = aux[l];

        addi $t1, 1
        b comienzo_for6
        #                 }
fin_for6:
        #             }
fin_if6:
        #             else {
        #                 std::cout << "Error: dimension incorrecta. Numero de columna incorrecto" << std::endl;
        li $v0, 4
        la $a0, error_ncols
        syscall
        #             }
        #         }
fin_if_opcion4:

        #         if (option < 0 || option > 4) {
comienzo_opcion5:
        li $t0, 5
        bne $s0, $t0, fin_opcion5

        li $v0, 4
        la $a0, msg_nfilas
        syscall

        li $v0, 5
        syscall
        move $s5, $v0   #nfil  

        li $v0, 4
        la $a0, msg_posicion_ini
        syscall

        li $v0, 5
        syscall
        move $s1, $v0   #posicion inicial

        jal traspuesta
fin_opcion5:

comienzo_if_sin_opciones:
        li $t2, 4
        bge $s0, $zero, fin_if_sin_opciones
        ble $s0, $t4, fin_if_sin_opciones
        #             std::cout << "Error: opcion incorrecta" << std::endl;
        li $v0, 4
        la $a0, error_op
        syscall

        #         }
fin_if_sin_opciones:
        #     } while (option != 0);
fin_do_while:
        beq $s0, $zero, fin
        b comienzo_do_while

        #     std::cout << "El programa ha finalizado" << std::endl;
fin:
        li $v0, 4
        la $a0, msg_fin
        syscall

        #     return 0;
        # }
        li $v0, 10
        syscall