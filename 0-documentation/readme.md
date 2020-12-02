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
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<h2>AULA 2 - MARKETING ANALYTICS</h2>
<h4>DATASET VENDAS CHOCOLATE</h4>
<p>Utilizaremos o dataset <a href="https://github.com/claudineien/marketing-analytics-gretl-r/tree/main/2-dataset">BD_marcas_de_chocolate.csv</a> ou <a href="https://github.com/claudineien/marketing-analytics-gretl-r/tree/main/2-dataset">BD_marcas_de_chocolate.xlsx</a> com dados agregados de todas as informações consolidadas das vendas de determinadas marcas de chocolate de todas as lojas de uma grande rede de varejo dentro de um período de 104 semanas, aproximadamente dois anos.</p>

<p>Estes dados se caracterizam como Time Series (Serie Temporal) por que ocorrem dentro de um determinado tempo, prazo controlado por semana.</p>

<p>Modelos inferenciais são modelos de dependência como por exemplo análise de regressão. Nestes há variáveis que são dependentes/respostas de variáveis independentes/explicativas.<br>
Por exemplo : A variável Vendas_Budget é a variável dependente/resposta, que depende das outras variáveis independentes/explicativas que explicam o seu resultado.</p>

<p>Serão gerados estatísticas descritivas no software <a href="http://gretl.sourceforge.net/pt.html">Gretl</a>.</p>

<p>Uma das habilidades necessárias que precisamos desenvolver na estatística é saber apresentar os dados. Exibir as informações mais relevantes que trazem valor a organização.</p>

<p>A decisão do gestão de marketing se baseia no curto prazo, se o resultado foi negativo entre quatro e seis semanas após sua decisão uma nova decisão será aplicada.</p>
<p>O dataset será segmentado ano a ano para identificar como as estratégias de marketing variaram entre os anos. Analisaremos preço atual, anuncio, display, anuncio de display, e depois as variáveis de resposta situação de venda, participação de mercado e receita.</p>
<p>As respostas que vão guiar o modelo inferencial estão nos nuances/na sutileza da estatística descritiva.</p>
<p>O comportamento descritivo quando segmentado condicionando a determinadas características ele balisar/demarcar/sinalizar o modelo inferencial que será desenvolvido.</p>
<p>Primeira análise descritiva <br>
Preco_atual_Budget<br>
1o momento estatistico é a centralidade (média, mediana). A média como sendo uma nova observação podendo ter o poder de substituir todos os outros valores se a variável for simétrica e sua variabilidade for baixa.<br>
Por exemplo :<br>
Duas lojas em bairros diferentes <br>
1a loja 500 mil/mês com desvio-padrão de 50 mil/mes<br>
2a loja 500 mil/mês com desvio-padrão de 350 mil/mes<br>
1a loja vende sempre próximo a 500mil/mes<br>
2a loja vende hora 10mil/mes hora 700mil/mes<br>
É necessário identificar o motido va variação da 2a loja<br>
</p>
<p>Mediana é uma mediana de centralidade mas encadeamos todos os 104 valores de preço da marca budget do menor ao maior se a quantidade de observações for ímpar considera-se o valor do meio, se a quantidade for par considera-se os dois mais centrais e calcula a média aritmética.</p>

<p>2o momento estatistico é a variabilidade, de distância </p>
<p>Ao gerar a média é possível calcular a distância de cada observação de preço em relação a média</p>

<p>Atenção : <br>
A maioria das técnicas, das mais simples as mais complexas em estatísticas trabalham com dois conceitos básicos que é  centralidade e variabilidade/distância.<br>
Por exemplo:<br>
Análise de agrupamento que não é análise de dependência aonde trabalhamos análise fatorial, cluster vamos concentrar coisas parecidas e separando de coisas não parecidas.
Regressão por meio de mínimos quadrados ordinários ols, regressão linear para saber o ajuste do modelo então vamos trabalhar a distância das observações em relação a reta de regressão.
</p>

<p>Obs : Clusterização em Estatística :<br>
O cluster homogeneizer o interno e heterogeneizar entre os clusters para garantir maior variabilidade entre os clusters e minimizar a variabilidade dentro dos clusters.</p>

<p>Atenção :<br>
Mediana = Moda = Média -> é simetria
A curva da distribuição é normal e é em forma de sino</p>

<p>Gerar gráfico da distribuição de peso<br>
Uma barra no início e uma barra no final, entre elas um grande intervalo sem barra alguma. Isto significa que a marca que quase não varia o preço.
</p>

<p>Marca de combate : <br>
Marca marginal que em sempre uma participação x e sempre pratica o mesmo preço, a marca raramente faz promoção.<br>
As vezes há a marca premium com prática de estratégias interessantes e tem a marca de combate que tem o preço muito baixo que raramente altera o preço. Isto já estava expresso nas variáveis de variabilidade.<br>
O desvio padrão do preço é quase zero = preço que quase não varia.<br>
</p>

<p>Mercado : conjunto de compradores reais e potenciais</p>

<p>Desvio padrão : Medida de distância padronizada<br>
Se em uma turma de alunos temos a média de idade vinte anos, a distancia de certa idade em relação média é de +2 a distância de outra certa idade é de -2.<br>
Se eu somar todas as distâncias e o resultado for 0, utilizaremos uma regra matemática para extrair a variabilidade conhecida como variância, 
</p>

<p>O desvio padrão é a raiz quadrada da variância<br>
1o Para gerar a distância deve-se elevar ao quadrado<br>
</p>

<p>Por exemplo o salário elevado ao quadrado em relação a média é superinflacionando superestimando o salário, então deve-se voltar o salário como uma medida de variabilidade em relação a média deve-se extrair a raiz quadrada sobre o salário.</p>

<p>Variáveis qualitativas como venda, preço, salário são aplicados estas técnicas</p>

<p>Informação importante a extrair em modelos estatísticos, principalmente em time series é detectar se a variação da variavel em relação a média é constante ou não.</p>

<p>O coeficiente de variação (cv) é a medida padronizada de quanto o desvio padrão da variável varia em relação a média multiplicado por 100.<br>
O cv significa que a variação em relação a média do preço atual da budget é 0.0083335%</p>

<p>Estatisticamente em geral se c.v. < 25% é homogêneo se maior é heterogêneo. Deve-se ficar atento por que esta regra pode mudar de acordo com a natureza da varíavel.</p>

<p>A estatistica é uma área que se utiliza de diversas medidas de padronizadas para obter resultados.<br>
Por exemplo o z-score, a correlação (padronizada em -1 e 1) por que a covariancia (acima da correlação) não é. Estas padronizações são necessárias para conseguir comprar duas medidas diferentes como metros e altura.</p>


<p>Utilizando o documento <a href="https://github.com/claudineien/marketing-analytics-gretl-r/tree/main/0-documentation">01-Report_Descritivo.docx</a> como apoio para analisar as média, mediana, desvio-padrão, coeficiente de variação, no primeiro ano e no segundo ano por marca e extrair informações.</p>

<p>52 semanas para cada ano, as variáveis de preço variam ao longo do tempo e dependendem de alguns acontecimentos.<br>
Anotar todos os valores de todas as marcas das 52 semanas.<br>
É possível detectar : <br>
Marca Budges<br>
Analisando a variação das estratégias em dois anos, identificamos que a marca budget possivelmente é uma marca de combate por que :<br>
.comparando com as outras marcas : o valor da média é a mais inferior, o desvio-padrão esta zerado, o coeficiente de variação é o mais baixo
.comparando entre os anos : o preço cobrado é o mesmo nos dois anos, a media = mediana com desvio padrão 0 no segundo ano<br>
Marca Cadbury foi a lider de preço no primeiro ano, e lider de preço no segundo ano com outras duas marcas. Possivelmente esta relacionado ao desvio padrão que no primeiro ano foi menor que as demais e no segundo ano foi maior e/ou ao coeficiente de variação que no primeiro ano foi bem maior que as demais e igualou ou ficou com distância bem menor no segundo ano.<br>
</p>

<p>A estatistica descritiva nos dão idéia das estratégias de marketing</p>

<p>O Gretl não calcula moda (20201202 03:12pm)</p>

<h4>SOFTWARE A UTILIZAR E LINGUAGEM DE PROGRAMAÇÃO</h4>
<p>Nesta aula aprenderemos a instalar o RStudio para programar na linguagem R e utilizaremos o Gretl para aprender estatística descritiva.</p>
<p>Confira instalação do R a partir do minuto 03:56 na <a href="https://youtu.be/m4wZmFkaGQo">Aula 02: Marketing Analytics - Prof. Thiago Marques(USP/IBGE) e Marcos Severo (UFG)</a>
</p>

<br><br>
<hr>
<p>Fontes de estudo
    <ul>
        <li>Aula 02 : <a href="https://youtu.be/m4wZmFkaGQo">Marketing Analytics</a> - Instrutores : Prof. Thiago Marques(USP/IBGE) e Marcos Severo (UFG)</li>
        <li><a href="https://cran.r-project.org/bin/windows/base/">Download R 4.0.3 for Windows</a></li>
        <li>Software RStudio <a href="https://rstudio.com/products/rstudio/download/">RStudio</a></li>
        <li>Software Package for econometric analysis <a href="http://gretl.sourceforge.net/">Gretl</a></li>
    </ul>
</p>
