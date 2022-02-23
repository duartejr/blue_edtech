# Faça um script que peça um valor e mostre na tela se o valor é positivo ou 
# negativo e implemente a funcionalidade de não aceitar o número 0.

n = int(input("Informe um número diferente de zero: "))

while (n == 0):
    n = int(input("Informe um número diferente de zero: "))

if (n < 0):
    print("O número é negativo")
elif (n > 0):
    print("O número é positivo")