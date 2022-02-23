programa
{
/*
 * Faça um programa que vai receber como parâmetro o ano de nascimento de uma pessoa, 
 * retornando um valor literal indicando se uma pessoa tem voto NEGADO, OPCIONAL ou OBRIGATÓRIO nas eleições:
 */
	
	funcao inicio()
	{
		inteiro ano, idade
		escreva("Informe seu ano de nascimento: ")
		leia(ano)
		idade = 2022 - ano
		
		se (idade < 16) {
			escreva("voto NEGADO")
		} senao {
			se (idade >= 18 e idade <= 70) {
				escreva("voto OBRIGÁTÓRIO")
			} senao {
				escreva("voto OPCIONAL")
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 343; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */