.globl _start

.data
	mult_constant: .word 1664525
	add_constant: .word 1013904223

.text
_start:

	li $v0, 5 # recebe seed do teclado
	syscall
	move $t0, $v0 # armazena a seed em $t0
	li $s0, 1
	move $t1, $zero
	# carrega os endereços das constantes em registradores
	la $t3, mult_constant
	la $t4, add_constant
	# armazena o que está nesses endereços em outros registradores
	lw $s1, 0($t3)
	lw $s2, 0($t4)
	
	loop: 
		bge $t1, $s0, print # ramifica se  $t0 é maior ou igual a 10
		mulu $t2, $t0, $s1 # $t2 = seed*mult_constant
		# multu $t0, $s1
		# mflo $t2
		addu $t0, $t2, $s2 # seed = seed*mult_constant + add_constant
		addi $t1, $t1, 1
		j loop
		
	print:
		# imprime seed
		move $a0, $t0
		li $v0, 1 
		syscall
		
	end:
		# fim de execução
		li $v0, 10
		syscall
