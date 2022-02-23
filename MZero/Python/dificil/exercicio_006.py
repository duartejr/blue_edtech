'''
Jogo de dados: Crie um programa onde jogadores joguem um dado e tenham resultados aleatórios.
O programa tem que:
Perguntar quantas rodadas você quer fazer; y
Perguntar quantos jogadores vão jogar; y
Criar um objeto pra cada jogador com nome e número tirado; y
Guarda todos os objetos em uma lista;
Ordenar esses objetos, sabendo que o vencedor tirou o maior número no dado.
Mostrar no final qual jogador ganhou mais rodadas e foi o grande campeão.
'''
#%%
from random import randint
import numpy as np
import collections
winners = []
rounds = int(input("Quantas jogadas serão realizadas? "))
players = int(input("Quantos jogadores irão jogar? "))

for round in range(1, rounds+1):
    print("Rodada ", round)
    moves = []

    for player in range(1, players+1):
        move = randint(1, 6)
        print("Jogador", player, " = ", move)
        moves.append(move)

    if len(np.where(np.array(moves) == max(moves))[0]) == 1:
        winner = moves.index(max(moves)) + 1
        print('Ganhador = jogador', winner)
        winners.append(winner)
    else:
        print('Empate. Rodada sem vencedor único.')

winners = dict(collections.Counter(winners))
max_wins = winners[max(winners, key=winners.get)]
big_winners = [k for k,v in winners.items() if float(v) >= max_wins]

if len(big_winners) == 1:
    print('O grande vencedor foi o jogador ', big_winners[0])
else:
    print('Houve empate entre os jogadores: ', end='')
    for i in np.sort(big_winners):
        print(f' {i},', end='')
#%%