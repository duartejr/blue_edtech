# Ciência de Dados Blue
Este repositório os projetos desenvolvidos por mim durante o curso de Ciência de Dados da Blue.

![Badge em Desenvolvimento](http://img.shields.io/static/v1?label=STATUS&message=EM%20DESENVOLVIMENTO&color=GREEN&style=for-the-badge)

## Índice 

* [Módulo 01 - Introdução a Data Science](#Módulo-01---Introdução-a-Data-Science)
  * [Conteúdo do módulo 01](#Conteúdo-do-Módulo-01)
  * [Projeto do módulo 01](#Projeto-do-módulo-01)
* [Módulo 02](#Módulo-02)
  * [Conteúdo do módulo-02](#Conteúdo-do-Módulo-02)
  * [Projetos-do-módulo-02](#Projetos-do-módulo-02)
      * [Projeto 01 Precificação de imóveis](#Projeto-01-Precificação-de-imóveis)
      * [Projeto 02 Classificação de pacientes](#Projeto-02-Classificação-de-pacientes)
      * [Projeto 03 Agrupamento de clientes](#Projeto-03-Agrupamento-de-clientes)

# Módulo 01 - Introdução a Data Science

## Conteúdo do Módulo 01

No primeiro módulo foram estudados conteúdos introdutórios de Ciência de Dados. As principais ferramentas utilizadas foram: **Orange** e **Pandas**. Foram estudados conceitos sobre os seguintes modelos: KNN, Nayve Bayes, Árvore de Decisão, SVM.

## Projeto do módulo 01

[Código do projeto](https://github.com/duartejr/data_science_blue/blob/master/modulo01/modulo01_projeto02_implementar_classificar_arvore_decisao.ipynb)

No projeto final do módulo foi realizada a implementação de um modelo de árvores de decisão utilizando estruturas condicionais e funções para realizar a classificação das fores do dataset Íris. O objetivo do projeto era praticar o uso do Pandas e estruturas do Python. Foram implementados conceitos de Ciência de Dados como: matriz de confusão e métricas de avaliação de modelos de machine learning (acurácia, precisão, recall).


# Módulo 02 - Estatística para Data Science

## Conteúdo do Módulo 02

Neste módulo foram estudados modelos de machine learning para: regressão, classificação e agrupamento. Além da teoria dos modelos também foi visto como implementar os modelos utilizando bibliotecas do Python. As principais ferramentas utilizadas foram: **pandas**, **statsmodel**, **sklearn**, **matplotlib** e **seaborn**. O modelo de regressão aprendido foi o de Regressão Linear (simples e múltipla). O módelo de classificação estudado foi a Regressão Logística. O modelos de agrupamento estudados foram: K-Means, K-Medoids e Hierárquico.
um texto

## Projetos do módulo 02

### Projeto 01 Precificação de imóveis

[Código do projeto](https://github.com/duartejr/data_science_blue/blob/master/modulo02/projeto_01/projeto_1.ipynb)

No projeto 01 foi realizada a implementação de um modelo de Regressão Linear Multivariada para realizar a predição de preços de imóveis. O Dataset utilizado está dispnível do Kaggle e conta com dados de diversos imóveis da região de King County. O objetivo é implmentar capaz de predizer o valor do imóvel a partir do conjunto de informaçãos fornecidos. Para alcançar o melhor desempenho possível do modelo de Regressão Linear foi realizada a Análise Exploratória dos dados a fim de identificar quais variáveis mais contribuem para o preço dos imóveis da região. Também foi ulizado o método RFE para realizar a seleção automática das variáveis mais importantes para a definição dos preços das casas. O modelo final teve uma acurácia de 0,85 e foram selecionadas as seguintes variáveis como preditores: nº de banheiros, qualidade da vista, latitude, área do imóvel, idade do imóvel.

### Projeto 02 Classificação de pacientes

[Código do projeto](https://github.com/duartejr/data_science_blue/blob/master/modulo02/projeto_02/projeto_2.ipynb)

No projeto 02 foram utilizados dados de de Câncer de Mama do UCI e Regressão Logística para realizar a classificação de pacientes com câncer ou sem câncer. O objetivo deste conjunto de dados é classificar se uma paciente possui ou não câncer de mama a partir destas variáveis obtidas através do exame de sangue. Foi realizada uma análise exploratória para identificar quais as principais caraceterísticas dos pacientes com câncer e verificou-se que pacientes com câncer, neste dataset, tendem a ser mais velhas que as sem câncer além de terem níveis de insulina e glicose mais elevados no sangue. O modelo implementado teve acurácia de 0.86 e precisão de 0.85.

### Projeto 03 Projeto 03 Agrupamento de clientes

[Código do projeto](https://github.com/duartejr/data_science_blue/blob/master/modulo02/projeto_03/projeto_3.ipynb)
