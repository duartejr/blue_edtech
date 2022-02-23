'''
Você está de volta em seu hotel na Tailândia depois de um dia de mergulhos. O seu
quarto tem duas lâmpadas. Vou chamá-las de A e B. No hotel há dois interruptores,
que chamaremos de I1 e I2. Ao apertar I1, a lâmpada A troca de estado, ou seja, 
acende se estiver apagada e apaga se estiver acesa. Se apertar I2, ambas as 
lâmpadas A e B trocam de estado. As lâmpadas inicialmente estão ambas apagadas. 
Seu amigo resolveu bolar um desafio para você. Ele irá apertar os interruptores 
em uma certa sequência, e gostaria que você respondesse o estado final das 
lâmpadas A e B.

Entrada
A entrada contém um número N que representa quantas vezes seu amigo irá apertar 
algum interruptor, e N números, que pode ser 1, se o interruptor I1 foi apertado, 
ou 2, se o interruptor I2 foi apertado.

Saída
Seu programa deve imprimir dois valores, em linhas separadas. Na primeira linha, 
imprima verdadeiro se a lâmpada A estiver acesa no final das operações e falso 
caso contrário. Na segunda linha, imprima verdadeiro se a lâmpada B estiver acesa 
no final das operações e falso caso contrário.

Exemplos
Entrada     Saída
3 1 2 2     verdadeiro falso
4 2 1 2 2   falso verdadeiro
'''

N = int(input('Quantas vezes os interruptores foram apertados: '))
lamps = [False, False]

for i in range(N):
    switch = int(input('Interruptor: '))
    if switch == 1:
        lamps[0] = not lamps[0]
    else:
        lamps[0], lamps[1] = not lamps[0], not lamps[1]

for i in lamps:
    if i:
        print('verdadeiro ', end='')
    else:
        print('falso ', end='')