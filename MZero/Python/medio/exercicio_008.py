# Agora, imprima todas as tabuadas do número 1 ao 10.

for i in range(1, 11):
    print( '==================')
    print(f'*= Tabuada do {i} =*')
    for j in range(1, 11):
        print(f'{i} * {j} = {i*j}')
    print( '==================')