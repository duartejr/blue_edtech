'''
Um novo game de realidade aumentada tem, dentro dele, um mini-game que aparece em 
certas situações para aumentar o ganho de pontos do game principal. O mini-game 
é um joguinho de memória com quatro cartas, formando dois pares de cartas iguais. 
Quer dizer, duas cartas têm um número inteiro N marcado em uma de suas faces e as 
outras duas cartas têm um outro número inteiro M, N != M. Neste problema, o 
jogador já virou três cartas.
Claro que, dadas as condições, a carta que falta virar vai formar par com uma das 
três que já foram viradas. Implemente um programa que, dados os números de três 
cartas, imprima o número da carta que ainda falta virar!

Entrada
A entrada contém um inteiro A, representando a primeira carta aberta, um inteiro 
B, representando a segunda carta, e um inteiro C, que é a terceira carta.

Saída
Seu programa deve imprimir uma linha contendo um inteiro representando o número 
que está na carta que ainda falta virar.

Exemplos
Entrada      Saída
40 11 40     11
 8  8 96     96
'''
a = int(input('primeira carta: '))
b = int(input('segunda carta: '))
c = int(input('terceira carta: '))

if a == b:
    print(c)
elif a == c:
    print(b)
else:
    print(a)