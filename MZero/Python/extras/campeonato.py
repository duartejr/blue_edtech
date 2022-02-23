'''
Dois times, Cormengo e Flaminthians, participam de um campeonato de futebol,
juntamente com outros times. Cada vitória conta três pontos, cada empate um ponto.
Fica melhor classificado no campeonato um time que tenha mais pontos. Em caso de
empate no número de pontos, fica melhor classificado o time que tiver maior saldo
de gols. Se o número de pontos e o saldo de gols forem os mesmos para os dois
times então os dois times estão empatados no campeonato. Dados os números de
vitórias e empates, e os saldos de gols dos dois times, sua tarefa é determinar
qual dos dois está melhor classificado, ou se eles estão empatados no campeonato.

Entrada
A entrada contém seis inteiros: Cv, Ce, Cs, Fv, Fe e Fs, que são, respectivamente,
o número de vitórias do Cormengo, o número de empates do Cormengo, o saldo de
gols do Cormengo, o número de vitórias do Flaminthians, o número de empates do
Flaminthians e o saldo de gols do Flaminthians.
Cv = número de vitórias do Cormengo
Ce = número de empates do Cormengo
Cs = saldo de gols do Cormengo
Fv = número de vitórias do Flaminthias
Fe = número de empares do Flaminthias
Fs = saldo de gols do Flaminthias

Saída
Seu programa deve imprimir uma única linha. Se Cormengo é melhor classificado que
Flaminthians, a linha deve conter apenas a letra C, se Flaminthians é melhor
classificado que Cormengo, a linha deve conter apenas a letra F, e se os dois
times estão empatados a linha deve conter apenas o caractere =.


Exemplos
Entrada            Saída
Cv Ce Cs Fv Fe Fs
10  5 18 11  1 18  C
10  5 18 11  2 18  =
 9  5 -1 10  2 10  F

 vitória = 3 pontos
 empate = 1 ponto
 Ganha quem tem mais pontos
 Se pontos são iguais desempate por saldo de gols
 Se pontos e saldo de gols iguais o resultado é empate
'''

results = list(map(int, input('Resultados:\n').split(" ")))
Cp = results[0]*3 + results[1]
Cs = results[2]
Fp = results[3]*3 + results[4]
Fs = results[5]

if Cp == Fp:
    if Cs == Fs:
        print("=")
    elif Cs > Fs:
        print("C")
    else:
        print("F")
elif Cp > Fp:
    print("C")
else:
    print("F")