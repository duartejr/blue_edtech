from math import gcd

def converteInt2Char(k): # k deve ser inteiro
    if k == 0:
        k = -1
    if k == 27:
        k = -500
    return chr(k + 96) # devolve o caractere associado a k

def converteChar2Int(c): # c deve ser caracter
    if ord(c) == 95:
        return 0
    elif ord(c) == 46:
        return 27
    else:
        return ord(c) - 96 # devolve o código inteiro associado ao caracter


def decodifica(textocifrado, k):
    cifracodigo = [converteChar2Int(x) for x in textocifrado]
    n = len(cifracodigo)
    codigoplano = list(range(n))
    for i in range(len(codigoplano)):
        codigoplano[(k*i) % n] = (cifracodigo[i] + i ) % 28
    textoplano = [converteInt2Char(x) for x in codigoplano]
    return ''.join(textoplano)

def codifica(textoplano, k):
    n = len(textoplano)
    codigoplano = [converteChar2Int(x) for x in textoplano]
    cifracodigo = [(codigoplano[(k*i) % n ] - i ) % 28 for i in range(len(codigoplano))]
    textocifrado = [converteInt2Char(x) for x in cifracodigo]
    return ''.join(textocifrado)


op = int(input("Digite 0 para codificar e 1 para decodificar: "))
while op not in [0, 1]:
    print("Opção inválide tente novamente: ")
    op = int(input("Digite 0 para codificar e 1 para decodificar: "))

while True:
    k = int(input("Digite a chave: "))
    msg = input("Digite a mensagem: ")
    if 1 > len(msg) > 70:
        print('Mensagem muito grande tente uma menor.')
    elif len(msg) > 300 or gcd(k, len(msg)) != 1:
        print('Chave inválida. Tente novamente.')
    else:
        break

if op == 0:
    texto = codifica(msg, k)
else:
    texto = decodifica(msg, k)

print(texto)