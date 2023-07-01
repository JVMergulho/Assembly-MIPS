.globl _start

.data
source_string: .space 100
target_string: .space 50

.text
_start:
    li $v0, 8
    la $a0, source_string
    la $a1, 100
    syscall
    
    la $t0, ($a0)     # $t0 guarda o endereço da string fonte
    lb $t1, ($t0)              # $t1 guarda o caractere atual
    
    la $t2, target_string      # $t2 guarda o endereço da string de destino
    
    move $v1, $zero            # $v1 guarda o número de caracteres maiúsculos
    
    li $s0, 65                 # código ASCII para 'A'
    li $s1, 90                 # código ASCII para 'Z'
    
loop: 
    beq $t1, $zero, end
    blt $t1, $s0, not_uppercase
    bgt $t1, $s1, not_uppercase
    # é maiúsculo
    sb $t1, ($t2)              # armazena o caractere na string de destino
    addi $t2, $t2, 1           # incrementa o índice do array de destino
    addi $v1, $v1, 1           # incrementa o número de caracteres maiúsculos
    
not_uppercase:
    addi $t0, $t0, 1           # incrementa o índice do array fonte
    lb $t1, ($t0)              # armazena o próximo caractere em $t1 
    j loop
    
end:
    # Impressão da string de destino
    li $v0, 4                  # armazena o valor 4 em $v0 -> instrução para impressão de string
    la $a0, target_string      # armazena o endereço da string em $a0
    syscall                    # faz a chamada ao sistema
    
    # Impressão do número de caracteres maiúsculos
    move $a0, $v1
    li $v0, 1 
    syscall
    
    # Fim de execução
    li $v0, 10
    syscall
