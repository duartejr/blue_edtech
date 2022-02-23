programa
{
	inclua biblioteca Util
/*
 * Jogo Jokenpô: Utilizando os conceitos aprendidos até estruturas de repetição, 
 * crie um programa que jogue pedra, papel e tesoura (Jokenpô) com você.
 * Permitir que eu decida quantas rodadas iremos fazer;
 * 	Ler a minha escolha (Pedra, papel ou tesoura);
 * 	Decidir de forma aleatória a decisão do computador;
 * 	Mostrar quantas rodadas cada jogador ganhou;
 * 	Determinar quem foi o grande campeão de acordo com a quantidade de vitórias de cada um (computador e jogador);
 * 	Perguntar se o Jogador quer jogar novamente, se sim inicie volte a escolha de quantidade de rodadas, se não finalize o programa.
 */
	
	funcao inicio()
	{
		cadeia opcoes[] = {"pedra", "papel", "tesoura"}
		cadeia usuario
		cadeia maquina
		inteiro rodadas, vitoriasUser, vitoriasMaquina, empates
		caracter loop

		vitoriasUser = 0
		vitoriasMaquina = 0
		empates = 0
		loop = 'y'

		enquanto (loop == 'y') {
			escreva("Quantas rodadas iremos jogar? ")
			leia(rodadas)
		
			para (inteiro i=1; i<=rodadas; i++) {
				escreva("Qual sua " + i + "ª jogada? ")
				leia(usuario)
		
				enquanto (usuario != "pedra" e usuario != "papel" e usuario != "tesoura") {
					escreva("Opção inválida.\n")
					escreva("Qual sua " + i + "ª jogada? ")
					leia(usuario)
				}
				
				maquina = opcoes[Util.sorteia(0, 2)]
				escreva("Minha " + i + "ª jogada é " + maquina + ".\n")
				
				se ((maquina == "pedra" e usuario == "papel") ou (maquina == "papel" e usuario == "tesoura") ou (maquina == "tesoura" e usuario == "pedra")){
					vitoriasUser = vitoriasUser + 1
					escreva("Você venceu.\n")
				}
				senao {
					se (maquina == usuario) {
						empates = empates + 1
						escreva("Empate.\n")
					}
					senao {
						vitoriasMaquina = vitoriasMaquina + 1
						escreva("Eu venci hehe.\n")
					}
				}
			}
			
			escreva("E o grade campeão é:\n")
			se (vitoriasUser > vitoriasMaquina) {
				escreva("Você parabéns. Total de vitórias = " + vitoriasUser)
			}
			senao {
				escreva("Eu venci. Total de vitórias = " + vitoriasMaquina)
			}
			escreva("\nQuer jogar novamente? (y ou n)")
			leia(loop)
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 896; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */