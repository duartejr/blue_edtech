'''
Faça um programa, que receba as dimensões de um terreno retangular (largura e 
comprimento) e mostre a área do terreno:
'''

largura = float(input("Largura do terreno em metros: "))
comprimento = float(input("Comprimento do terreno em metros: "))
area = largura * comprimento
print(f"Área = {area:.2f} m²")