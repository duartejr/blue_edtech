programa
{
	inclua biblioteca Matematica
	
	funcao inicio()
	{
		escreva("Qual o valor do troco?\n")
		real valor = 100.98
		real pago = 150.00
		real troco = Matematica.arredondar(pago - valor, 2)
		escreva("O troco é: R$ " + troco)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 244; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */