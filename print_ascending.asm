.globl _start

.data
	space: .byte ' '

.text
_start:

	li $v0, 5 # recebe número do teclado
	syscall
	move $t1, $v0 # armazena o input em $t1
	move $t0, $zero # inicializa o contador
	
	loop: 
		bge $t0, $t1, end # ramifica se  $t0 é maior ou igual a $t1
		addi $t0, $t0, 1  # incrementa $t0
		
		# imprime $t0
		move $a0, $t0
		li $v0, 1 
		syscall
		
		# imprime o espaço
		la $a0, space
		li $v0, 4
		syscall
		j loop
		
	end:
		# fim de execução
	li $v0, 10
	syscall
