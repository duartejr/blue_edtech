'''
Por lei, na Nlogônia todas as barras de chocolate são quadradas. Anamaria tem uma
barra quadrada de chocolate de lado L, que ela quer compartilhar com alguns
colegas da obi. Mas ela é uma boa cidadã e cumpre a lei. Então, ela divide a
barra em quatro pedaços quadrados, de lado L=L/2. Depois, ela repete esse
procedimento com cada pedaço gerado, sucessivamente, enquanto o lado for maior do
que, ou igual a 2cm. Você deve escrever um programa que, dado o lado L da barra
inicial, em centímetros, determina quantos pedaços haverá ao final do processo.

Entrada
A entrada consiste de uma linha, com um único inteiro, L, o número de centímetros
do lado do quadrado.

Saída
Seu programa deve imprimir uma única linha, contendo um único inteiro, igual ao
número total de pedaços obtidos pela Anamaria.

Exemplos
Entrada   Saída
4         16
9         64
2         4
'''

def size(x):
    if x < 2:
        return x
    
    return size(x/2)

n = int(input('Tamanho L da barra em cetímetros = '))

print((n/size(n))**2)