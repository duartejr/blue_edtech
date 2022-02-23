'''
Bruno é um menino que gosta muito de ver televisão. No entanto ele se depara com
um problema muito chato. Sempre que começa um novo programa no canal preferido
dele, a TV Nlogônia, acontece de o volume do som deste programa estar diferente
do anterior, às vezes com volume menor, outras vezes com volume maior. Quando
está com volume menor, ele aumenta o volume pressionando uma quantidade de vezes
seguidas o botão de aumentar para o volume ficar ideal; a mesma coisa acontece
quando está um volume maior, e ele diminui o volume pressionando alguma quantidade
de vezes seguidas o botão de diminuir o volume para ficar com o volume que ele
goste no momento.
O aparelho de TV dele tem umas peculiaridades: ele possui volume mínimo, com valor
0 (também chamado de mudo), e volume máximo, com valor 100. A TV nunca ultrapassa
os volumes máximo e mínimo. Por exemplo, se o volume já estiver no máximo e ele
pressionar o botão de aumentar o som, o volume não se altera. Da mesma forma, se
o volume estiver no valor mínimo e ele pressionar o botão de diminuir o som, o
volume não se altera.
Agora Bruno quer sua ajuda: ele lembra qual era o volume inicial da TV, e quantas
vezes ele pressionou cada botão. Mas, como foram várias mudanças de volume, ele
não sabe qual é o volume atual da TV. Por isso, pediu que você o ajude a calcular
qual é o volume atual, dados o volume inicial e a lista de trocas de volume que
ele realizou.

Entrada
Contém dois números inteiros V e T, que indicam, respectivamente, o volume inicial
e o número de trocas de volume. Depois, contém T números inteiros A_i que mostram
as modificações de volume realizadas, na ordem em que estas modificações foram
feitas. O primeiro número indica a primeira modificação de volume, o segundo
número indica a segunda modificação, e assim por diante. Para cada modificação,
um número maior do que zero significa quantas vezes Bruno pressionou o botão de
aumentar o som; um número menor do que zero significa quantas vezes ele pressionou
o botão de diminuir o som. Ou seja, se o número é igual a 5, significa que nessa
modificação ele pressionou cinco vezes o botão de aumentar o som; se o número é
igual a -3, significa que nessa modificação ele pressionou o botão de diminuir o
som três vezes.

Saída
Seu programa deve imprimir apenas uma linha, contendo apenas um inteiro F, que
indica qual o volume atual da TV após as mudanças de volume.

Exemplos
Entrada                Saída
50 4 11 20 -15 -13     53
50 5 30 30 30 40 -78   22
'''

inputs = list(map(int, input("Inputs:\n").split(" ")))

v = inputs[0]

for i in inputs[2:]:
    v += i
    if v > 100:
        v = 100
    elif v < 0:
        v = 0
print(v)