programa
{
// Faça um script que peça um valor e mostre na tela se o valor é positivo ou negativo e implemente a funcionalidade de não aceitar o número 0.
	
	funcao inicio()
	{
		inteiro numero

		enquanto (1>0) {
			escreva("Digite um número inteiro diferente de zero: ")
			leia(numero)
			enquanto (numero == 0) {
				escreva("Digite um número inteiro diferente de zero: ")
				leia(numero)
			}
			se (numero > 0) {
				escreva("O número digitado é positivo.")
			}
			senao {
				escreva("O número digitado é negativo.")
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 226; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */