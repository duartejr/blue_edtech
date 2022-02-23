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

print("Você receberá a seguinte quantidade de notas:")

for valor in [100, 50, 10, 5, 1]:
    n = saque // valor
    if n:
        print(f"Nº de notas de R$ {valor} = {n}")
    saque -= n * valor
