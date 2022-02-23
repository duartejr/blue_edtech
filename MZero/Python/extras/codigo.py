'''
Gabriel inventou um código para representar números naturais, usando uma 
sequência de zeros e uns. Funciona assim, o número natural é representado pela 
quantidade de vezes que o padrão 100 aparece na sequência. Por exemplo, na 
sequência 11101001010011110, o padrão aparece duas vezes; e na sequência 
11101010111110111010101 ele não aparece nenhuma vez. Você deve ajudar Gabriel e 
implementar um programa que, dada a sequência de zeros e uns, calcule quantas 
vezes o padrão 100 aparece nela.

Entrada
A entrada contém um inteiro N, o tamanho da sequência, e uma sequência de N 
zeros e uns.

Saída
Seu programa deve imprimir um inteiro, quantas vezes o padrão 100 aparece na 
sequência.

Exemplos
Entrada                                Saída
17 1 1 1 0 1 0 0 1 0 1 0 0 1 1 1 1 0   2
8 1 1 1 1 0 1 1 1                      0
3 1 0 0                                1
3 0 1 0                                0
'''
import regex as re

N = int(input('Quantidade de numeros da sequência: '))
text = ''

for i in range(1, N+1):
    text += input(f'{i}º número: ')

instances = re.findall("100", text)
print(len(instances))