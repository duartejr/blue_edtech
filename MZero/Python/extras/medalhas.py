'''
A natação foi um dos esportes mais emocionantes das Olimpíadas do Rio. Houve até 
uma prova na qual três atletas chegaram empatados, cada um recebendo uma medalha 
de prata! Normalmente, porém, os três primeiros colocados terminam a prova em 
tempos distintos e, portanto, temos a distribuição mais comum de medalhas: o 
nadador que terminou no menor tempo recebe medalha de ouro; o nadador que terminou 
com o segundo menor tempo recebe medalha de prata; e o que terminou com o terceiro 
menor tempo recebe medalha de bronze. Neste problema, dados os três tempos 
distintos de finalização da prova, dos três nadadores que ganharam medalhas, seu 
programa deve dizer quem ganhou medalha de ouro, quem ganhou prata e quem ganhou 
bronze.

Entrada
A entrada contém um inteiro T1, indicando o tempo em que o nadador 1 terminou a 
prova, um inteiro T2, indicando o tempo de finalização do nadador 2, e um inteiro 
T3, indicando o tempo em que o nadador 3 terminou a prova.

Saída
Seu programa deve imprimir três linhas na saída. A primeira linha deve conter o
 número do nadador que ganhou medalha de ouro; a segunda linha, o número do 
 nadador que ganhou prata; e a terceira linha, o número do nadador que levou 
 bronze.

Exemplos
Entrada        Saída
230 183 234    2 1 3
46 47 48       1 2 3
11 21 7        3 1 2
'''

tempos = []

for i in range(1, 4):
    tempos.append(int(input(f'Tempo do nadador {i}: ')))

ouro = tempos.index(min(tempos)) + 1
bronze = tempos.index(max(tempos)) + 1

if {ouro, bronze} == {2,3}:
    prata = 1
elif {ouro, bronze} == {1, 3}:
    prata = 2
else:
    prata = 3

print(ouro, prata, bronze)