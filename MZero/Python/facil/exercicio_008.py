# Conversor de moedas: Crie um programa que solicite um um valor em real ao 
# usuário e converta esse valor, para:
# DOLAR
# EURO
# LIBRA ESTERLINA
# DÓLAR CANADENSE
# PESO ARGENTINO
# PESO CHILENO
# Para esse exercício você precisará realizar uma pesquisa para saber a cotação 
# de cada moeda em real. Mostrar o resultado no formato U$9999.99

brl = float(input("Informe um valor em Real: "))
print("Tabela de conversão:")
print("USD " , round(brl * 0.18, 2))
print("EUR " , round(brl * 0.17, 2))
print("CAD " , round(brl * 0.24, 2))
print("ARS " , round(brl * 19.37, 2))
print("CLP " , round(brl * 148.76, 2))
