programa
{
     cadeia clientes[100]

     funcao vazio cadastro(inteiro p) {
     	cadeia cliente
     	escreva("Informe o nome do novo cliente: ")
     	leia(cliente)
     	escreva(cliente)
     	clientes[p] = cliente
     	escreva("Cliente: " + cliente + " cadastrado com ID " + p + "\n") 
     }

     funcao vazio consulta(inteiro p) {
     	escreva("\n---------------\n")
     	escreva("Lista de clientes\n")
     	para (inteiro i=0; i < p; i++) {
     		escreva("Cliente ID " + i + " = " + clientes[i] + "\n")
     	}
     	escreva("\n----------------\n")
     }

     funcao vazio deleta(inteiro p) {
     	consulta(p)
     	inteiro posicao
     	escreva("Informe o ID do cliente que deseja remover: ")
     	leia(posicao)
     	enquanto (posicao >= p ou posicao < 0) {
     		escreva("Posição inválidade tente novamente.\n")
     		escreva("Informe o ID do cliente que deseja remover: ")
     		leia(posicao)
     	}
    
     	inteiro j = 0
     	para (inteiro i = 0; i < p; i++) {
     		se (i == posicao) {
     			j += 1
     			clientes[i] = clientes[j]
     			j = j+1
     		} 
     		senao {
     			clientes[i] = clientes[j]
     			j = j+1
     		}
     	}

     	escreva("Cliente removido. A nova lista de clientes é:\n")
     	consulta(p-1)
     	
     }
	
	funcao inicio()
	{
		//Faça um programa de cadastro de clientes que mostre um menu de opções 
		//e permita com que a pessoa escolha umas das opções, exibindo qual foi
		//a opção escolhida.
		
		inteiro operador
		inteiro p = 0
		
		enquanto (1 > 0) {
			escreva("\nEscolha uma opção:\n")
			escreva("1 - Cadastrar novo cliente\n")
			escreva("2 - Remover cliente\n")
			escreva("3 - Listar clientes\n")
			escreva("OP: ")
			leia(operador)
			escolha(operador) {
				caso 1:
				    cadastro(p)
				    p = p+1
				pare
				caso 2:
				    deleta(p)
				    p = p-1
				pare
				caso 3:
				    consulta(p)
				pare
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 148; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */