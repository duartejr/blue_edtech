programa
{
/*
 * Caixa eletrônico: Faça um Programa para um caixa eletrônico. 
 * O programa deverá perguntar ao usuário a valor do saque e 
 * depois informar quantas notas de cada valor serão fornecidas. 
 * As notas disponíveis serão as de 1, 5, 10, 50 e 100 reais. O 
 * valor mínimo é de 10 reais e o máximo de 600 reais. O programa 
 * não deve se preocupar com a quantidade de notas existentes na 
 * máquina.
 * 	Exemplo 1: Para sacar a quantia de 256 reais, o programa fornece 
 * 			duas notas de 100, uma nota de 50, uma nota de 5 e uma 
 * 			nota de 1;
 * 	Exemplo 2: Para sacar a quantia de 399 reais, o programa fornece 
 * 			três notas de 100, uma nota de 50, quatro notas de 10, 
 * 			uma nota de 5 e quatro notas de 1.
 */
	
	funcao inicio()
	{
		inteiro saque, min, max
		inteiro n100, n50, n10, n5, n1
		cadeia notas = ""
		min = 10
		max = 600

		enquanto (1>0) {
			escreva("\n Valor do saque: ")
			leia(saque)
	
			enquanto (saque < min ou saque > max) {
				se (saque < min) {
					escreva("Valor mínimo para saque é R$ 10,00")
				}
				se (saque > max) {
					escreva("Valor máximo para saque é R$ 600,00")
				}
				escreva("\n Valor do saque:\n ")
				leia(saque)
			}
			
			n100 = saque / 100
			saque = saque - n100 * 100
			n50 = saque / 50
			saque = saque - n50 * 50
			n10 = saque / 10
			saque = saque - n10 * 10
			n5 = saque / 5
			saque = saque - n5 * 5
			n1 = saque
	
			escreva("\nSerão entregues:\n")
	
			se (n100 > 0) {
				escreva(n100 + " notas de 100.\n")
			}
			se (n50 > 0) {
				escreva(n50 + " notas de 50.\n")
			}
			se (n10 > 0) {
				escreva(n10 + " notas de 10.\n")
			}
			se (n5 > 0) {
				escreva(n5 + " notas de 5.\n")
			}
			se (n1 > 0) {
				escreva(n1 + " notas de 1.\n")
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 907; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */