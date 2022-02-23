programa
{
	inclua biblioteca Util
/*
 * Jogo da adivinhação: Escreva um programa que faça o computador “pensar” 
 * em um número inteiro entre 0 e 10 e peça para o usuário tentar descobrir 
 * qual foi o número escolhido pelo computador. O programa deverá escrever 
 * na tela se o usuário venceu ou perdeu.
 */
	
	funcao inicio()
	{
		inteiro numero 
		inteiro usuario
		numero = Util.sorteia(0, 10)
		
		escreva("Estou pensando em um número entre 0 e 10.\nVocê pode adivinhar?")

		faca {
			escreva("Seu palpite: ")
			leia(usuario)
			se (numero < usuario) {
				escreva("Palpite muito alto. Tente novamente\n")
			} senao {
				se (numero > usuario){
					escreva("Palpite muito baxio. Tente novamente\n")
				} senao {
					escreva("Você acertou parabéns")
				}
			}
		} enquanto(numero != usuario)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 408; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */