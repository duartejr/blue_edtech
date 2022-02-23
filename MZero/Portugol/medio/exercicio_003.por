programa
{
// Faça um programa que peça dois números, imprima o maior deles ou imprima "Números iguais" se os números forem iguais.

	funcao inicio()
	{
		inteiro num1, num2
		escreva("Digite o primeiro número: ")
		leia(num1)
		escreva("Digite o segundo número: ")
		leia(num2)
		se (num1 > num2) {
			escreva("O maior número é " + num1)
		}
		senao {
			se (num2 > num1) {
				escreva("O maior número é " + num2)
			}
			senao {
				escreva("Os dois números são iguais.")
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 303; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */