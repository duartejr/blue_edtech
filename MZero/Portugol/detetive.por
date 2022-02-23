programa
{
	
	funcao inicio()
	{
		inteiro score
		cadeia ans
		score = 0

		escreva("Você conhecia a vitima? ")
		leia(ans)
		se (ans == "sim") {
			score = score + 1
		}
		escreva("Você tinha algum problema com a vitima? ")
		leia(ans)
		se (ans == "sim") {
			score = score + 1
		}
		escreva("Você viu a vitima antes do assaninato? ")
		leia(ans)
		se (ans == "sim") {
			score = score + 1
		}
		escreva("A arma do crime é sua? ")
		leia(ans)
		se (ans == "sim") {
			score = score + 1
		}
		escreva("Você gostaria que a vitima morrese? ")
		leia(ans)
		se (ans == "sim") {
			score = score + 1
		}
		
		se (score >= 4){
		    escreva("Culpado")
		}
		senao {
			se (score >=3) {
				escreva("Suspeito")
			}
			senao {
				escreva("Inocente")
			}
		}
		
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 763; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */