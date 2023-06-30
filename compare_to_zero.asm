.globl _start 

.data
	igual: .asciiz "O número é igual a zero"
	maior: .asciiz "O número é maior que zero"
	menor: .asciiz "O número é menor que zero"
	
.text
_start:
	li $v0, 5 # recebe número do teclado
	syscall
	move $t1, $v0
	
	beq $t1, $zero, imprime_igual
	bgt $t1, $zero, imprime_maior
	j imprime_menor
	
	imprime_igual:
		la $a0, igual
		li $v0, 4
		syscall
		j end
	
	imprime_maior:
		la $a0, maior
		li $v0, 4
		syscall
		j end
	
	imprime_menor:
		la $a0, menor
		li $v0, 4
		syscall
		j end
	
	end:
		li $v0, 10
		syscall
