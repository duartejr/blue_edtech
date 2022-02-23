# Faça um programa de cadastro de clientes que mostre um menu de opções e 
# permita com que a pessoa escolha umas das opções, exibindo qual foi a opção 
# escolhida.
clientes = []

def cadastro(cliente):
    clientes.append(cliente)
    print("Cliente cadastrado com sucesso.")
    return

def listar():
    print("\n---------------------\nLista de clientes cadastrados:")
    print(*[f'ID {id} = {cliente}\n' for id, cliente in enumerate(clientes)])
    print("---------------------\n")
    return

def remove():
    listar()
    op = int(input("Escolha um ID: "))
    if op < 0 | op >= len(clientes):
        print("Opção inválida. Nenhum cliente removido")
        return
    del clientes[op]

    print("Cliente removido com sucesso")
    return

while True:
    print("\n#################\n",
    "Escolha uma opção:\n",
    "1 - Cadastro cliente\n",
    "2 - Remover cliente\n",
    "3 - Listar clientes\n",
    "#################")

    op = int(input(">: "))

    if op == 1:
        cadastro(input("Nome do cliente: "))
    elif op == 2:
        remove()
    elif op == 3:
        listar()
    else:
        print("Opção inválida tente novamente")
    
