## Códigos em Assembly MIPS

### Diretivas

- Números inteiros (32bits): .word valor
- Números de ponto flutuante (32bits): .float valor
- Caracteres (8bits): .byte caractere
- Strings (32bits): .asciiz "string"
- .data: Indica o início da seção de dados. Todas as declarações de dados devem vir após essa diretiva.
- .text: Indica o início da seção de código. Todas as instruções de código devem vir após essa diretiva.
- .globl: Indica que um símbolo é global, permitindo que ele seja acessado por outros módulos do programa.

___

### Registradores MIPS

#### Registradores de propósito geral:
- $zero: Sempre tem o valor zero, usado para operações de nulificação.
- $v0-$v1: Valores de retorno de funções.
- $a0-$a3: Argumentos de funções.
- $t0-$t9: Registradores temporários para uso geral.
- $s0-$s7: Registradores salvos, usados para armazenar valores importantes preservados em chamadas de função.
- $gp: Ponto de registro global, usado para acesso a dados globais.
- $sp: Ponteiro de pilha, aponta para o topo da pilha.
- $fp: Ponteiro de quadro, usado como referência para o quadro de pilha atual.
- $ra: Endereço de retorno, usado para armazenar o endereço de retorno de chamadas de função.

#### Registradores de ponto flutuante:
- $f0-$f31: Registradores de ponto flutuante para operações de ponto flutuante.

#### Registradores de controle:
- $pc: Contador de programa, armazena o endereço da próxima instrução a ser buscada e executada.
- $hi, $lo: Usados para armazenar resultados de multiplicação e divisão de 32 bits.

#### Registradores de coprocessador (quando disponíveis):
- $cp0, $cp1, etc.: Usados para acesso a coprocessadores adicionais, como o coprocessador de ponto flutuante (FPU).
