programa
{
	inclua biblioteca Tipos
	inclua biblioteca Texto
	inclua biblioteca Arquivos
	inclua biblioteca Util
	const cadeia ARQUIVO = "C:\\Users\\duart\\Box\\blue_edtech\\MZero\\Portugol\\dificil\\resultados.txt"
	const cadeia ARQVWINNERS = "C:\\Users\\duart\\Box\\blue_edtech\\MZero\\Portugol\\dificil\\winners.txt"
/*
 * Jogo de dados: Crie um programa onde jogadores joguem um dado e tenham resultados aleatórios.
 * O programa tem que:
 * Perguntar quantas rodadas você quer fazer;
 * Perguntar quantos jogadores vão jogar;
 * Criar um objeto pra cada jogador com nome e número tirado;
 * Guarda todos os objetos em uma lista;
 * Ordenar esses objetos, sabendo que o vencedor tirou o maior número no dado.
 * Mostrar no final qual jogador ganhou mais rodadas e foi o grande campeão.
 */

 	funcao vazio jogo(inteiro rodadas, inteiro jogadores) {
 		inteiro face, facemaior
 		cadeia linha = ""
		cadeia linha2 = ""
		cadeia vencedor = ""
		inteiro winners = Arquivos.abrir_arquivo(ARQVWINNERS, Arquivos.MODO_ESCRITA)
		facemaior = 0
		
		para(inteiro i=1; i<=rodadas; i++) {
			escreva("Rodada nº " + i +"\n")

			se (i==1) {
				inteiro arquivo = Arquivos.abrir_arquivo(ARQUIVO, Arquivos.MODO_ESCRITA)
				para(inteiro j=1; j<=jogadores; j++) {
					face = Util.sorteia(1, 6)
					escreva("Jogador " + j + " = " + face + "\n")
					Arquivos.escrever_linha("p" + j + "," + face, arquivo)

					se (j==1) {
						vencedor = "p1"
						facemaior = face
					} senao {
						se (face > facemaior) {
							vencedor = "p"+j
							facemaior = face
						}
					}
				}
				
				Arquivos.fechar_arquivo(arquivo)
				
				Arquivos.escrever_linha(vencedor, winners)
				
			}
			senao {
				para(inteiro j=1; j<=jogadores; j++) {
					face = Util.sorteia(1, 6)
					escreva("Jogador " + j + " = " + face + "\n")
					inteiro leitura = Arquivos.abrir_arquivo(ARQUIVO, Arquivos.MODO_LEITURA)

					se (j == 1) {
						vencedor = "p1"
						facemaior = face
					}
					senao {
						se (face > facemaior) {
							vencedor = "p" + j
							facemaior = face
						}
					}
						
					para (inteiro k=1; k<=j; k++) {
						linha = Arquivos.ler_linha(leitura)
					}
						
					Arquivos.fechar_arquivo(leitura)
					linha2 = linha + "," + face

					Arquivos.substituir_texto(ARQUIVO, linha, linha2, verdadeiro)
				}
				
				
				Arquivos.escrever_linha(vencedor, winners)
				
			}

		}
		Arquivos.fechar_arquivo(winners)
 		
 	}
	
	funcao inicio()
	{
		inteiro rodadas, jogadores
		cadeia linha
		inteiro wins[1000]
		inteiro wins_winner = 0
		cadeia winner = ""
		
		escreva("Número de rodadas: ")
		leia(rodadas)
		escreva("Número de jogadores: ")
		leia(jogadores)
		jogo(rodadas, jogadores)

		inteiro vitorias = Arquivos.abrir_arquivo(ARQVWINNERS, Arquivos.MODO_LEITURA)

		para (inteiro i = 1; i<=rodadas; i++) {
			linha = Arquivos.ler_linha(vitorias)
			inteiro len = Texto.numero_caracteres(linha)
			inteiro win = Tipos.cadeia_para_inteiro(Texto.extrair_subtexto(linha, 1, len), 10) - 1
			wins[win] = wins[win] + 1
		}

		Arquivos.fechar_arquivo(vitorias)

		para (inteiro i = 0; i<jogadores; i++) {
			se (wins[i] > wins_winner) {
				winner = "p" + (i+1)
				wins_winner = wins[i]
				
			}
		}
		
		escreva("\nO GRANDE VENCEDOR É O JODAGOR " + winner)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 3208; 
 * @DOBRAMENTO-CODIGO = [19];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */