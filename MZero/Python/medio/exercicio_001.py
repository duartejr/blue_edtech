# Faça um programa que pergunte ao usuário um número e valide se o numero é par 
# ou impar: Crie uma variável para receber o valor, com conversão para inteiro
# Para um número ser par, a divisão dele por 2 tem que dar resto 0

n = int(input("Informe um número: "))

if (n%2):
    print("O número é impar")
else:
    print("O número é par.")