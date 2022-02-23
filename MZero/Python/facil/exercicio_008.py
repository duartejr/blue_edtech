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
usd = round(brl * 0.18,2)
eur = round(brl * 0.17,2)
cad = round(brl * 0.24,2)
ars = round(brl * 19.37,2)
clp = round(brl * 148.76,2)
print("Tabela de conversão:")
print("USD " , usd)
print("EUR " , eur)
print("CAD " , cad)
print("ARS " , ars)
print("CLP " , clp)