# Crie um programa onde o usuário possa digitar vários valores numéricos e 
# cadastre-os em uma lista. Caso o número já esteja lá dentro, ele não será 
# adicionado. No final, serão exibidos todos os valores únicos digitados, 
# em ordem crescente.

n = 1
lista = []

while n:
    n = int(input('Informe um número ou 0 para sair:'))
    if n not in lista:
        lista.append(n)

lista = sorted(lista)

print(lista)