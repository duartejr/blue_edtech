'''
Faça um programa que vai receber como parâmetro o ano de nascimento de uma 
pessoa, retornando um valor literal indicando se uma pessoa tem voto NEGADO, 
OPCIONAL ou OBRIGATÓRIO nas eleições:
'''
import datetime

ano_atual = datetime.date.today().year
ano_nascimento = int(input("Ano de nascimento: "))
idade = ano_atual - ano_nascimento

if idade < 16:
    print("Voto NEGADO")
elif 18 <= idade <= 70:
    print("Voto OBRIGATÓRIO")
else:
    print("Voto OPCIONAL")