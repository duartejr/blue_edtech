programa
{
// Crie um programa onde o usuário possa digitar vários valores numéricos e cadastre-os em uma lista. 
// Caso o número já esteja lá dentro, ele não será adicionado. No final, serão exibidos todos os valores
// únicos digitados, em ordem crescente.


	funcao vazio ordena(inteiro vetor[], inteiro len) {
		inteiro aux
		para (inteiro i=0; i < len-1; i++) {
			para (inteiro j=i+1; j < len; j++) {
				se (vetor[i] > vetor[j]) {
					aux = vetor[i]
					vetor[i] = vetor[j]
					vetor[j] = aux
				}
			}
		}

		escreva("\nVetor ordenado:\n")

		para (inteiro i=0; i < len; i++) {
			escreva(vetor[i] + ", ")
		}
		
	}
	
	funcao inicio()
	{
		const inteiro len = 10
		inteiro lista[len]
		inteiro num
		logico repetido = falso
		inteiro p = 0
		escreva("Digite 10 números diferentes:\n")

		faca {
			escreva("\nDigite o " + (p+1) + "º número: ")
			leia(num)

			para (inteiro i = 0; i <= p; i++) {
				se (num == lista[i]) {
					escreva(lista[i])
					repetido = verdadeiro
				}
			}

			se (nao repetido) {
				lista[p] = num
				p += 1
			} senao {
				escreva("Número repetido.\n")
				repetido = falso
			}

			
		} enquanto (p < 10)

		ordena(lista, len)
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1026; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */