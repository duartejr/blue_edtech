'''
Jogo Jokenpô: Utilizando os conceitos aprendidos até estruturas de repetição, 
crie um programa que jogue pedra, papel e tesoura (Jokenpô) com você.
Permitir que eu decida quantas rodadas iremos fazer; x
Ler a minha escolha (Pedra, papel ou tesoura); x
Decidir de forma aleatória a decisão do computador; x
Mostrar quantas rodadas cada jogador ganhou; x
Determinar quem foi o grande campeão de acordo com a quantidade de vitórias de
cada um (computador e jogador);x
Perguntar se o Jogador quer jogar novamente, se sim inicie volte a escolha de 
quantidade de rodadas, se não finalize o programa.
'''
from random import randint


user_wins, pc_wins = 0, 0
choices = ['pedra', 'papel', 'tesoura']

while True:
    rounds = int(input("Iremos jogar quantas vezes? "))
    for i in range(rounds):
        user = input("Faça sua jogada: ").lower()
        while user not in choices:
            print("Opção inválida tente novamente: (pedra, papel, tesoura)")
            user = input("Faça sua jogada: ").lower()
            
        pc = choices[randint(0, 2)]
        print("Minha jogada é " + pc)

        if user == pc:
            print("Empate")
        elif (user == 'pedra' and pc == 'tesoura') | (user == 'papel' and pc == 'pedra') | (user == 'tesoura' and pc == 'papel'):
            user_wins += 1
            print("Você ganhou essa rodada.\n")
        else:
            pc_wins += 1
            print("Eu ganhei essa rodada.\n")

    print()
    print("O número de rodadas que você ganhou foi", user_wins)
    print("O número de rodadas que eu ganhei foi", pc_wins)
    print()

    if user_wins > pc_wins:
        print("Parabéns você venceu.")
    elif user_wins < pc_wins:
        print("Eu venci hehe")
    else:
        print("Nessa nós empatamos.")
    
    print()
    new_game = input("Quer jogar novamente? (sim ou não) ").lower()

    if new_game != "sim":
        print()
        break
