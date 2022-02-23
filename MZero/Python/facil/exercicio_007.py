# Você está na flor da idade?
# Defina uma variável para o valor do ano do nascimento;
# Defina uma variável para o valor do ano atual;
# Defina uma variável que calcula o valor final da idade da pessoa;
# Exiba uma mensagem final dizendo a idade da pessoa e a mensagem "Você está na 
# flor da idade".

ano_nasc = int(input('Ano de nascimento: '))
ano_atual = int(input('Ano atual: '))
idade = ano_atual - ano_nasc
print(f'sua idade é {idade}')
print("Você está na flor da idade")