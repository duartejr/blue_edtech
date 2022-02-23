programa
{
// Reajuste salarial: As empresas @.com resolveram dar um aumento de salário aos seus colaboradores e lhe contrataram para desenvolver 
// o programa que calculará os reajustes.
// Faça um programa que recebe o salário de um colaborador e o reajuste segundo o seguinte critério, baseado no salário atual:
// salários até R$ 280,00 (incluindo) : aumento de 20%
// salários entre R$ 280,00 e R$ 700,00 : aumento de 15%
// salários entre R$ 700,00 e R$ 1500,00 : aumento de 10%
// salários de R$ 1500,00 em diante : aumento de 5%
// Após o aumento ser realizado, informe na tela:
// o salário antes do reajuste;
// o percentual de aumento aplicado;
// o valor do aumento;
// o novo salário, após o aumento.
	
	funcao inicio()
	{
		real salario, reajuste, aumento, novoSalario
		escreva("Informe o salário atual: ")
		leia(salario)
		
		enquanto (salario < 0 ) {
			escreva("Apenas salários positivos podem ser informados: ")
			leia(salario)
		}
		
		se (salario <= 280) {
			aumento = 20.0 // porcento
		} senao { se (salario <= 700) {
			aumento = 15.0
		} senao { se (salario <= 1500) {
			aumento = 10.0
		} senao {
			aumento = 5.0
		}}}

		reajuste = salario * aumento / 100.00
		novoSalario = salario + reajuste
		escreva("\nSalário antes do reajuste = " + salario)
		escreva("\nPercentual de aumento aplicado = " + aumento)
		escreva("\nValor do aumento = " + reajuste)
		escreva("\nNovo salário, após o aumento = " + novoSalario)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1404; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */