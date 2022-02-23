'''
Jogo da adivinhação: Escreva um programa que faça o computador “pensar” em um 
número inteiro entre 0 e 10 e peça para o usuário tentar descobrir qual foi o 
número escolhido pelo computador. O programa deverá escrever na tela se o 
usuário venceu ou perdeu.
'''
from random import randint

from sqlalchemy import true

n = randint(0, 10)

while True:
    user = int(input("Qual número você acha que estou pensando? "))
    if user == n:
        print("Você acertou parabéns")
        break
    elif user < n:
        print("Tente um número maior")
    else:
        print('Tente um número menor')
