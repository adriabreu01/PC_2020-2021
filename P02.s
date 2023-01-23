# practica 2. Principio de computadoras
# OBJETIVO: introduce el codigo necesario para reproducir el comportamiento del programa
# C++ que se adjunta como comentarios
# Debes documentar debidamente el uso de los registros que has elegido y la correspondencia
# con las variables que has utilizado.

##include <iostream>
# int main()
# {
#     std::cout << "Suma las cifras de un número entero." << std::endl;
#     std::cout << "Introduzca un 0 para salir del programa." << std::endl;


#     int numero,cifra,suma;
#     do {
#         std::cout << "Introduzca un entero para calcular la suma de sus cifras (0 para salir): ";
#         std::cin >> numero;
#		  if (numero == 0) break;
#         if (numero < 0 ) numero = 0 - numero; 
#         suma = 0;
#         while ( numero != 0 ){
#             cifra = numero % 10;
#             suma += cifra;
#             numero /= 10;
#         }
#         std::cout << "La suma de las cifras es " << suma << std::endl;
#     } while (true);
#     std::cout << "FIN DEL PROGRAMA. " << std::endl;
#     return 0;
# }

	.data		# directiva que indica la zona de datos
titulo: 	.asciiz	"\nSuma las cifras de un número entero. Introduzca un 0 para salir del programa.\n "
msgnumero:	.asciiz	"\n\nIntroduzca un entero para calcular la suma de sus cifras (0 para salir): "

msgresultado1:	.asciiz	"\nLa suma de las cifras es  "
msgfin:			.asciiz "\nFIN DEL PROGRAMA."


	.text		# directiva que indica la zona de código
main:
	# IMPRIME EL TITULO POR CONSOLA
	# std::cout << "Suma las cifras de un número entero." << std::endl;
	# std::cout << "Introduzca un 0 para salir del programa." << std::endl;
 
	la	$a0,titulo
	li	$v0,4
	syscall


	# EL MAYOR PORCENTAJE DEL CÓDIGO C++ SE ENCUENTRA DENTRO DE UNA ESTRUCTURA do { ...  } while (true).
	# IMPLEMENTA EN MIPS ESE BUCLE INFINITO, Y A CONTINUACIÓN DESARROLLA CADA UNA DE LAS SECCIONES QUE 
	# SE ENCUENTRAN EN SU INTERIOR.

	etiqueta_do:
	# INTRODUCE EN ESTA SECCION EL CÓDIGO MIPS EQUIVALENTE AL SIGUIENTE FRAGMENTO C++
	# TEN EN CUENTA QUE break NO ES SINO UN SALTO A LA SIGUIENTE INSTRUCCION QUE ESTE FUERA DEL BUCLE
	# do { ...  } while (true).
	#         std::cout << "Introduzca un entero para calcular la suma de sus cifras (0 para salir): ";
	#         std::cin >> numero;
	#		  if (numero == 0) break;

	# Preparamos el sistema para imprimir una cadena ASCIIZ
	li $v0, 4
	la $a0, msgnumero
	syscall
	# Preparamos al sistema para leer la entrada por teclado
	li $v0, 5
	syscall
	# Movemos el valor de numero guardado en $v0 a $s0
	move $s0, $v0 # $s0 == numero

	beqz $s0, fin # Si se cumple la condición $s0 == $zero, saltamos al final del programa

	# INTRODUCE EN ESTA SECCION EL CODIGO MIPS EQUIVALENTE AL SIGUIENTE FRAGMENTO C++
	#         if (numero < 0 ) numero = 0 - numero;
	bgez $s0, fin_if # Si se cumple la condición $s0 >= $zero, saltamos al fin_if

	inicio_if: 
	sub $s1, $zero, $s0 # Resta $zero - $s0 y almacenamos el resultado en $s1
	move $s0, $s1 # Movemos a $s0 el resultado de la resta en $s1
	fin_if:

	# INTRODUCE EN ESTA SECCION EL CODIGO MIPS EQUIVALENTE AL SIGUIENTE FRAGMENTO C++
	#         suma = 0;
	#         while ( numero != 0 ){
	#             cifra = numero % 10;
	#             suma += cifra;
	#             numero /= 10;
	#         }
	
	li $s2, 0 # suma = 0
	inicio_while:
	beqz $s0, fin_while
	li $s3, 0 # cifra = 0
	li $t0, 10
	# Realizamos $s0 % $t0, guardamos el resultado en $s4
	div $s0, $t0
	mfhi $s3
	# Sumamos $s2 + $s3, guardamos el resultado en $t1
	add $t1, $s2, $s3
	# Movemos a $s2 el resultado guardado en $t1
	move $s2, $t1
	# Dividimos $s0 / $t0, guardamos el resultado en $t2
	div $t2, $s0, $t0
	move $s0, $t2
	j inicio_while
	fin_while:
		
	# INTRODUCE EN ESTA SECCION EL CODIGO MIPS EQUIVALENTE AL SIGUIENTE FRAGMENTO C++
	#         std::cout << "La suma de las cifras es " << suma << std::endl;	
	li $v0, 4
	la $a0, msgresultado1
	syscall

	li $v0, 1
	move $a0, $s2
	syscall

	j etiqueta_do
	fin:
	# las siguientes instrucciones  imprimen la cadena de fin y finalizan el programa
	li $v0,4
	la $a0,msgfin
	syscall
	li $v0,10
	syscall