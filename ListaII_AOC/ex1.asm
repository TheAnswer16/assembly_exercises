#Programa que recebe o peso de uma pessoa em quilos e retorna o valor em gramas

.data
msg1: .asciiz "Digite seu peso em kg: \n"
resultado: .asciiz "Seu peso em gramas (g) é: \n"

.text 
	li $v0,4
	la $a0,msg1
	syscall
	
	li $v0,5
	syscall 
	move $t0,$v0
	
	li $s1,1000	
	mul $t2, $t0, $s1
	
	li $v0,4
	la $a0, resultado
	syscall
	
	li $v0,1
	la $a0, ($t2)
	syscall
li $v0, 10
syscall
	
	