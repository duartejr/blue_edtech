programa
{
	inclua biblioteca Matematica
	
	funcao inicio()
	{
		real brl, usd, eur, cad, ars, clp
		escreva("Informe um valor em Real: ")
		leia(brl)
		usd = Matematica.arredondar(brl * 0.18,2)
		eur = Matematica.arredondar(brl * 0.17,2)
		cad = Matematica.arredondar(brl * 0.24,2)
		ars = Matematica.arredondar(brl * 19.37,2)
		clp = Matematica.arredondar(brl * 148.76,2)
		escreva("Tabela de conversão:\n")
		escreva("USD " + usd)
		escreva("\nEUR " + eur)
		escreva("\nCAD " + cad)
		escreva("\nARS " + ars)
		escreva("\nCLP " + clp)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 542; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */