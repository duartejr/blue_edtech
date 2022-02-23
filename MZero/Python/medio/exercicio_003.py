# Faça um programa que peça dois números, imprima o maior deles ou imprima 
# "Números iguais" se os números forem iguais.

n1 = int(input("Primeiro número: "))
n2 = int(input("Segundo número: "))

if (n1 == n2):
    print("Números iguais")
elif (n1 > n2):
    print(n1)
else:
    print(n2)