<h5><a href="blank_">[en]</a> | <a href="blank_">[pt-br]</a>
</h5>
<h5>
<div>
  <table>
    <tr>
      <th>PROJETO</th>
      <th>OBJETIVO</th>
      <th>TIPO DE DADOS</th>
    </tr>
    <tr>
      <td>Marketing Analytics do Zero</td>
      <td>Aplicar estatística descritiva, Análise de Regressão e Modelos básicos de Séries Temporais</td>
      <td>Time Series</td>
    </tr>
    <tr>
        <td colspan="4">LinkedIn : https://www.linkedin.com/in/claudineien/</td>
    </tr>
  </table>
</div>
</h5>
<hr>
<h2>AULA 3 - ANÁLISE DESCRITIVA II</h2>
<h4>DATASET VENDAS CHOCOLATE</h4>
<h4>ANÁLISE DESCRITIVA</h4>
<p>A análise descritiva é o coração da análise estatística.</p>
<p>Utilizaremos o dataset <a href="https://github.com/claudineien/marketing-analytics-gretl-r/tree/main/2-dataset">BD_marcas_de_chocolate.csv</a> ou <a href="https://github.com/claudineien/marketing-analytics-gretl-r/tree/main/2-dataset">BD_marcas_de_chocolate.xlsx</a> com dados agregados de todas as informações consolidadas das vendas de determinadas marcas de chocolate de todas as lojas de uma grande rede de varejo dentro de um período de 104 semanas, aproximadamente dois anos.</p>

<p>Estes dados se caracterizam como Time Series (Serie Temporal) por que ocorrem dentro de um determinado tempo, prazo controlado por semana.</p>

<p>Modelos inferenciais são modelos de dependência como por exemplo análise de regressão. Nestes há variáveis que são dependentes/respostas de variáveis independentes/explicativas.<br>
Por exemplo : A variável Vendas_Budget é a variável dependente/resposta, que depende das outras variáveis independentes/explicativas que explicam o seu resultado.</p>

<p>Serão gerados estatísticas descritivas no software <a href="http://gretl.sourceforge.net/pt.html">Gretl</a> e o documento <a href="https://github.com/claudineien/marketing-analytics-gretl-r/tree/main/0-documentation">01-Report_Descritivo-atualizado_0411.docx</a> como apoio para analisar as média, mediana, desvio-padrão, coeficiente de variação, no primeiro ano e no segundo ano por marca e extrair outras informações.</p>

<p>Serão gerados a análise estatística descritiva para a distribuição de anúncio, que é ponderada e isto significa que possui peso. Esta variável é transformada para variável dummy informando se teve ou não anúncio em determinado dia, semana, mês, ano e após esta transformação é possível ponderar a variável.
A distribuição ponderada é muito utlizada em modelos econométricos de marketing.<br>
A marca pode trabalhar o marketing com anúncio, display ou anúncio e display.
</p>

<p>
  <strong>Relembrando :</strong> Este é um dataset de marketing por ter variáveis de quatro p's que significa produto, preço, praça e promoção.
</p>

<p>
Comparar as marcas entre elas e entre as outra marcas
Nesta aula serão analisados os dados das colunas Anuncio, Display, AD de todas as marcas.<br>

Análise geral no preço médio de venda : <br>
No primeiro ano a marca Cadbury foi a líder de preço, seguida da Donovan e Whittaker.<br>
Aumentos de preço relevantes do primeiro para o segundo ano da Whittaker e Donavan.<br>
No segundo ano as três lideres de preço eram as mesmas do ano anterior, porém no segundo ano com preços médios iguais.<br>

A marca Budget pratica o menor preço, desvio padrão 0 e não faz promoção no primeiro ano. A variável Anuncio_Budget gera um gráfico time series do tipo flat aonde a linha é uma horizontal constante. Esta marca não faz ação alguma de anúncio nas lojas e possivelmente é uma marca de combate, não será líder de mercado e estão à vende naquela quantia limitada. Esta marca pode ser uma submarca ou uma marca de uma empresa especializada em ter diversas marcas em diversos segmentos para ganhar um pouco em cada segmento de mercado. Esta marca mostra que há situações em que as vendas independem das ações de marketing.<br>

É importante saber que a marca Budget não necessáriamente deve ser retirada do portfólio, por que há outras similares e o público automaticamente vai comprar a outra marca caso esta esteja ausente, assim como bens de alta frequência que é o caso de refrigerantes, cerveja, chocolate, entre outros bens.<br>

A Whittaker aumentou o seu preço do primeiro para o segundo ano, e reduziu o marketing com display e anúncio e display.<br>
Optou por anúncio e display juntos ao invés de anuncio e display isoladamente.<br>

A Cadbury aumentou preço médio de venda, marketing com anúncio, display, anúncio e display.<br>

As empresas que aumentaram consideravalmente de um ano para o outro foram a Budget, Cadbury, Donavan, e Pams.<br>

<strong>Estratégias de display</strong><br>
As empresas que aumentaram consideravalmente de um ano para o outro foram a Cadbury.<br>
As empresas que reduziram consideralmente de um ano para o outro foram as Whittaker, Donovan, Pams.

<strong>Análise geral em algumas marcas</strong><br>
Whittkaker : aumentou o preço médio de venda de 0.74 para 0.83, aumentou somente 0.48% o anúncio e reduziu o display de 7.11% para 5.48%<br>
Cadbury : aumentou o preço médio de venda em 1 centavo, aumentou o anúcio de 5.34% para 8.11% e aumentou o display de 2.88 para 4.15%<br>

No primeiro ano parece que as marcas fizeram mais ações de display em conjunto do que de anúncio, esta informação foi retirada da primeira coluna da estratégia de anuncio e estratégia de display.<br>

<strong>Com o relatório time series detectamos</strong><br>
Houve um esforço maior em marketing a partir da segunda metada em ambos os anos.<br>
Houve algumento consideravem em marketing das marcas Cadbury e Pams.<br>

<strong>Criar Variáveis de Participação de Mercado no sistema Gretl</strong><br>
Variável de Tamanho do Mercado : soma de todos os valores Vendas de todas as marcas.<br>
Variável de Participação de Mercado Relativa de cada marca : Marketing Share é uma importante variável de desempenho de marketing. São as vendas relativas de cada marca em relação ao mercado.<br>

<strong>Sobre os Anuncios, Display e Anuncios + Display</strong><br>
Se dentro do conjunto total lojas 30% delas serão trabalhadas anúncio, 40% display e as 30% lojas restantes não receberão nem anúncio e nem display e nem anúncio + display.
A marca pode optar por trabalhar com anúncio, nem display ou anúncio + display nas lojas que acredita ser necessário, isto não significa que a soma total das ferramentas utilizadas serão 100%.<br>

<strong>Modelo de regressão linear</strong><br>
Modelo com base na variabilidade dos pontos em relação a uma reta média que esta relacionada ao desvio-padrão, covariação.<br>

<strong>Covariância</strong><br>
Explicar a variação de variáveis em relação as suas próprias médias<br>

<strong>Modelo de regressão linear de vendas x preço em venda</strong><br>
Com a variação das vendas da marca, se o preco de venda não variar o modelo de regressão não vai apresentar uma informação relevante.<br>
Para um modelo de regressão linear as variáveis tem que variar para apresentar informações relevantes.<br>

<strong>Compreender a natureza das variávies</strong><br>
Há várias medidas de 'survey' que são valores discretos (não são valores contínuos) e são valores limitados de 1 a 5. Pela caracterização na natureza do dataset o modelo de regressão linear será implicado por que as variáveis estão bem ajustadas e este modelo não apresentará<br>

<strong>Variáveis mercadológicas</strong><br> 
No mundo real são variáveis observáveis e em sua maioria contínuas e assimétricas como por exemplo preço, vendas, percentual de anúncio (esta é uma variável ponderada).
</p>

<p>
  <strong>Importante </strong>:<br>
  Em medidas de survey é utilizado a escala de Lykert.<br>
  O tipo de variável influência no tipo de regressão a utilizar.
  Não aplicar regressão em medidas de survey, por ser medidas qualitativas ao invés de quantitativas.<br>
  Não calcular médias sobre variáveis qualitativas, somente sobre variáveis quantitativas.<br>
  Aplicar análide fatorial sobre variáveis quantitativas.<br>
  Aplicar análise de correspondência sobre váriáveis qualitativas.
</p>

<p>
O Gretl exibe no relatório Resumo Estatístico as medidas de tendência central, medidas de dispersão, medidas separatrizes (quartis).<br>

<strong>Separatrizes - Quartis </strong>:<br>
Tem como objetivo particionar o problema em partes, para entender cada parte, entender o comportamento de cada parte e assim entender o todo.<br>
Cada quartil separa os dados em um determinado ponto, sendo :<br>
1o quartil =  media : 25% dos dados separados a baixo e 75% dos dados separados a cima<br>
2o quartil = mediana : 50% dos dados separados a baixo e 50% dos dados separados a cima<br>
3o quartil = 75% dos dados separados a baixo e 25% dos dados separados a cima<br>

Modelos quantitativos como análise de regressão tem o teste F para saber se a regressão como um todo faz sentido, e sua base é o particionamento da variância possivel analisar a parte explicada pelo modelo e a parte não explicada pelo modelo.<br>

O teste de hipótese que faz parte da inferência estatística é identificada e depende da análise estatística descritiva, aonde detectamos as hipóteses que serão refutadas ou aceitas na inferência estatística.<br>

<strong>Para executar uma boa Regressão entender sobre </strong><br>
Medidas de tendencia central, Medidas de dispersão, Distribuição de probabilidade, Inferência estatística.<br>
Devemos tentar responder : <br>
01 Por que é um bom estimador ?<br>
02 Quais são as caracteríscas que vão gerar estimativas boas o suficiente para generalizar à população da amostra ?
</p>

<br><br>
<hr>
<p>Fontes de estudo
    <ul>
      <li>Aula 03 : <a href="https://youtu.be/KqB3j3mDyT4">Marketing Analytics</a> - Instrutores : Prof. Thiago Marques(USP/IBGE) e Marcos Severo (UFG)</li>
      <li>Aula 03 : <a href="https://youtu.be/MVNiJ3C7S1k">Marketing Analytics-Vejo Marketing em tudo</a> - Instrutores : Prof. Thiago Marques(USP/IBGE) e Marcos Severo (UFG)</li>
        <li>Software Package for econometric analysis <a href="http://gretl.sourceforge.net/">Gretl</a></li>
    </ul>
</p>
