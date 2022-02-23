'''
Caixa eletrônico: Faça um Programa para um caixa eletrônico. O programa deverá 
perguntar ao usuário a valor do saque e depois informar quantas notas de cada 
valor serão fornecidas. As notas disponíveis serão as de 1, 5, 10, 50 e 100 reais. 
O valor mínimo é de 10 reais e o máximo de 600 reais. O programa não deve se 
preocupar com a quantidade de notas existentes na máquina.
Exemplo 1: Para sacar a quantia de 256 reais, o programa fornece duas notas de 100, 
            uma nota de 50, uma nota de 5 e uma nota de 1;
Exemplo 2: Para sacar a quantia de 399 reais, o programa fornece três notas de 100, 
            uma nota de 50, quatro notas de 10, uma nota de 5 e quatro notas de 1.
'''

saque = int(input("Valor do saque: "))

while saque > 600 | saque < 0:
    print("Saque precisar ser positivou e menor que R$ 600,00")
    saque = int(input("Valor do saque: "))

n100 = saque // 100
saque -= n100 * 100
n50 = saque // 50
saque -= n50 * 50
n10 = saque // 10
saque -= n10 * 10
n5 = saque // 5
n1 = saque - n5 * 5

if n100:
    print("Notas de 100 = " + str(n100))
if n50:
    print("Notas de 50 = " + str(n50))
if n10:
    print("Notas de 10 = " + str(n10))
if n5:
    print("Notas de 5 = " + str(n5))
if n1:
    print("Notas de 1 = " + str(n1))