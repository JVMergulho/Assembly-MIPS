.globl _start # cria a label global que indica o início do programa

.data
	# área que armazena dados na memória principal
	msg: .asciiz "Hello, World!"
	
.text 
	_start:
	li $v0, 4 # armazena o valor 4 em $v0 -> instrução para impressão de string
	la $a0, msg # armazena o endereço da mensagem em $a0
	syscall # faz a chamada ao sistema
	
	# fim de execução
	li $v0, 10
	syscall
	
