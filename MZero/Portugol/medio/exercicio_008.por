programa
{
// Agora, imprima todas as tabuadas do número 1 ao 10.
	
	funcao inicio()
	{
		inteiro m, n
		m = 1
		enquanto (m <= 10) {
			n = 1
			escreva("\n==================\n")
			escreva("Tabuada do número " + m)
			escreva("\n")
			enquanto (n <= 10) {
				escreva("\n" + m + " x " + n + " = " + (m*n))
				n = n+1
			}
			m = m+1
			escreva("\n==================\n")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 362; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */