# // En un bucle solicitar dos flotantes en doble precisión.
# // En cada iteración se calculará la distancia entre ambos
# // (distancia siempre es positiva).
# // Cuando se introduzcan dos números iguales debe detenerse el bucle.
# // Al finalizar se mostrará la pareja que ha tenido mayor distancia
# // y la distancia entre ellos.

# #include <iostream>
# #include <cmath>
        .data 
    msgtitulo:  .asciiz "\nPR4: Distancia doubles\n"
    msgprimern: .asciiz "\nPrimer número: "
    msgsegundon:    .asciiz "\nSegundo número: "
    msgdistancia:   .asciiz "\nDistancia "
    msgmaxdistancia:    .asciiz "\nMayor distancia: "
    msgnum1:    .asciiz "\nNumero 1: "
    msgnum2:    .asciiz "\nNumero 2: "
    msgfin: .asciiz "\n\nTermina el programa\n"

        .text
        main:
# int main() {
#   std::cout << "\nPR4: Distancia doubles\n";
#   double maxDistancia = -1.0;
#   double pareja1;
#   double pareja2;
#   double distancia;
    li $v0, 4   # llamada al sistema para print string
    la $a0, msgtitulo
    syscall

    li.d $f4, -1.0  # $f4 -> maxDistancia = -1.0
#   do {
    do:
#     double numero1;
#     std::cout << "\nPrimer número: ";
#     std::cin >> numero1;

    li $v0, 4             # llamada al sistema para print string
    la $a0, msgprimern
    syscall

    li $v0, 7              # llamada al sistema para read double
    syscall
    mov.d $f0, $f6  # $f6 -> numero1

#     double numero2;
#     std::cout << "Segundo número: ";
#     std::cin >> numero2;

    li $v0, 4             # llamada al sistema para print string
    la $a0, msgsegundon
    syscall

    li $v0, 7              # llamada al sistema para read double
    syscall
    mov.d $f0, $f8  # $f8 -> numero2

#     distancia = fabs(numero1 - numero2);
    sub.d $f10, $f6, $f8    # $f10 -> numero1 - numero2
    abs.d $f16, $f10        # $f16 -> distancia
#     if (distancia > maxDistancia) {
    c.le.d $f16, $f4       # Si distancia >= maxDistancia es true, saltamos a fin_if
    bc1t fin_if
    if:
#       maxDistancia = distancia;
    mov.d $f4, $f16
#       pareja1 = numero1;
    mov.d $f20, $f6
#       pareja2 = numero2;
    mov.d $f22, $f8
#     }
    fin_if:
#   } while (distancia > 0.0);
    li.d $f18, 0.0
    c.le.d  $f4, $f18
    bc1t do
    fin:
#   std::cout << "\nMayor distancia: " << maxDistancia;
    li $v0, 4   # llamada al sistema para print string
    la $a0, msgmaxdistancia
    syscall

    mov.d $f12, $f4
    li $v0, 3
    syscall

#   std::cout << "\nNumero 1: " << pareja1;
    li $v0, 4   # llamada al sistema para print string
    la $a0, msgnum1
    syscall

    mov.d $f12, $f20
    li $v0, 3
    syscall
    
#   std::cout << "\nNumero 2: " << pareja2;
    li $v0, 4   # llamada al sistema para print string
    la $a0, msgnum2
    syscall

    mov.d $f12, $f22
    li $v0, 3
    syscall

#   std::cout << "\n\nTermina el programa\n";
    li $v0, 4   # llamada al sistema para print string
    la $a0, msgfin
    syscall

    li $v0, 10
    syscall

# }
