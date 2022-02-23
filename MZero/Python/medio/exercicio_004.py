# Crie um programa em Python que peça a nota do aluno, que deve ser um real 
# entre 0.00 e 10.0
# Se a nota for menor que 6.0, deve exibir a nota F.
# Se a nota for de 6.0 até 7.0, deve exibir a nota D.
# Se a nota for entre 7.0 e 8.0, deve exibir a nota C.
# Se a nota for entre 8.0 e 9.0, deve exibir a nota B.
# Por fim, se for entre 9.0 e 10.0, deve exibir um belo de um A.

nota = float(input("Nota do aluno: "))

if nota < 6:
    nota = "F"
elif nota < 7:
    nota = "D"
elif nota < 8:
    nota = "C"
elif nota < 9:
    nota = "B"
else:
    nota = "A"

print(nota)