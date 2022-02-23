programa
{
// Crie um programa em Portugol que peça a nota do aluno, que deve ser um real entre 0.00 e 10.0
// Se a nota for menor que 6.0, deve exibir a nota F.
// Se a nota for de 6.0 até 7.0, deve exibir a nota D.
// Se a nota for entre 7.0 e 8.0, deve exibir a nota C.
// Se a nota for entre 8.0 e 9.0, deve exibir a nota B.
// Por fim, se for entre 9.0 e 10.0, deve exibir um belo de um A.
	
	funcao inicio()
	{
		real nota
		caracter notaCar
		escreva("Informe a nota do aluno: ")
		leia(nota)
		se (nota < 6) {
			notaCar = 'F'
		} senao {
			se (nota < 7) {
				notaCar = 'D'
			} senao {
				se (nota < 8) {
					notaCar = 'C'
				} senao {
					se (nota < 9) {
						notaCar = 'D'
					} senao {
						notaCar = 'A'
					}
				}
			}
		}
		escreva(notaCar)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 481; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */