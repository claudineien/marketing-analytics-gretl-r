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
<h2>AULA 11 - MARKETING ANALYTICS</h2>
<h4>PROJETO PRÁTICO</h4>
<p>A análise descritiva é o coração da análise estatística.</p>
<p>Utilizaremos o dataset <a href="https://github.com/claudineien/marketing-analytics-gretl-r/tree/main/2-dataset">BD_marcas_de_chocolate.csv</a> ou <a href="https://github.com/claudineien/marketing-analytics-gretl-r/tree/main/2-dataset">BD_marcas_de_chocolate.xlsx</a> com dados agregados de todas as informações consolidadas das vendas de determinadas marcas de chocolate de todas as lojas de uma grande rede de varejo dentro de um período de 104 semanas, aproximadamente dois anos.</p>

<p>Estes dados se caracterizam como Time Series (Serie Temporal) por que ocorrem dentro de um determinado tempo, prazo controlado por semana.</p>

<p>Modelos inferenciais são modelos de dependência como por exemplo análise de regressão. Nestes há variáveis que são dependentes/respostas de variáveis independentes/explicativas.<br>
Por exemplo : A variável Vendas_Budget é a variável dependente/resposta, que depende das outras variáveis independentes/explicativas que explicam o seu resultado.</p>

<h3><strong>Datasets</strong></h3>

<p>Escolher uma dos datasets a seguir :</p>

<p>
01 <a href="/2-dataset/listings-RIo_de_Janeiro.csv">listings-RIo_de_Janeiro.csv</a><br>
Tamanho : aproximadamente 35870 registros/linhas<br>
Fonte origem : <a href="http://insideairbnb.com/get-the-data.html">http://insideairbnb.com/get-the-data.html</a><br>
<div>
  <table>
    <tr>
      <th>Campo</th>
      <th>Descrição</th>
    </tr>
    <tr>
      <td>ID</td>
      <td>Identificação da propriedade</td>
    </tr>
    <tr>
      <td>NAME</td>
      <td>Nome da propriedade</td>
    </tr>
    <tr>
      <td>HOST_ID</td>
      <td>Identificação do host</td>
    </tr>
    <tr>
      <td>HOST_NAME</td>
      <td>Nome do host</td>
    </tr>
    <tr>
      <td>neighbourhood_group</td>
      <td>Grupo de vizinhos</td>
    </tr>
    <tr>
      <td>neighbourhood</td>
      <td>Bairros vizinhos</td>
    </tr>
    <tr>
      <td>latitude</td>
      <td>Código para geolocalização</td>
    </tr>
    <tr>
      <td>longitude</td>
      <td>Código para geolocalização</td>
    </tr>
    <tr>
      <td>room_type</td>
      <td>tipo do quarto</td>
    </tr>
    <tr>
      <td>price</td>
      <td>preço do quarto</td>
    </tr>
    <tr>
      <td>minimum_nights</td>
      <td>minimo de noites a alugar</td>
    </tr>
    <tr>
      <td>room_type</td>
      <td>tipo do quarto</td>
    </tr>
    <tr>
      <td>number_of_reviews</td>
      <td>numero de vizualizações/visitas ao quarto</td>
    </tr>
    <tr>
      <td>last_review</td>
      <td>ultima vizualizações/visitas ao quarto</td>
    </tr>
    <tr>
      <td>reviews_per_month</td>
      <td>numero de vizualizações/visitas ao quarto - esta menor que o number_of_reviews???</td>
    </tr>
    <tr>
      <td>calculated_host_listings_count</td>
      <td>host disponiveis para locacção</td>
    </tr>
    <tr>
      <td>availability_365</td>
      <td>disponibilidade do host no ano</td>
    </tr>
  </table>
</div>
Alguns Insights que podem ser extraidos :<br>
Preço : Por região (geolocalização), Por bairro, Por tipos de propriedades, Por quantidade de reviews, Será que mais reviews aumenta o preço? Será que mais reviews aumenta o preço? Será a quantidade de comentários aumenta o preço?<br>
Review : Padrão de intensidade na plataforma/rede social, Relacionar preço com reviews</p>

<p>
02 <a href="/2-dataset/HollywoodMovies.xlsx">HollywoodMovies.xlsx</a><br>
Tamanho : aproximadamente 970 registros/linhas<br>
Fontes origem : <a href="https://www.lock5stat.com/datapage.html">https://www.lock5stat.com/datapage.html</a><br>
Dataset para r : <a href="https://cran.r-project.org/web/packages/Lock5Data/index.html">https://cran.r-project.org/web/packages/Lock5Data/index.html</a>
Description of the Columns : https://rdrr.io/cran/Lock5Data/man/HollywoodMovies.html<br>
<div>
  <table>
    <tr>
      <th>Campo</th>
      <th>Descrição</th>
    </tr>
    <tr>
      <td></td>
      <td></td>
    </tr>
  </table>
</div>
Alguns Insights que podem ser extraidos :<br>
Preço : Por região (geolocalização), Por bairro, Por tipos de propriedades, Por quantidade de reviews, Será que mais reviews aumenta o preço? Será que mais reviews aumenta o preço? Será a quantidade de comentários aumenta o preço?<br>
Review : Padrão de intensidade na plataforma/rede social, Relacionar preço com reviews</p>

<p>
02  HollywoodMovies.xlsx - 970 registros/linhas/filmes - Fonte origem : https://www.lock5stat.com/datapage.html - Data set para r :  https://cran.r-project.org/web/packages/Lock5Data/index.html, Data set Describe Column : https://rdrr.io/cran/Lock5Data/man/
Movie	LeadStudio    Studio that released the movie
RottenTomatoes      Rotten Tomatoes rating (reviewers) Classificação/Pontuação criticos de filme no https://www.rottentomatoes.com/
AudienceScore       Audience rating (via Rotten Tomatoes) Pontuação da audiencia/de quem assistiu
Story               General theme - one of 21 themes - História
Genre               One of 14 possible genres - Genero/Segmento : Ação, Animação, Aventura
TheatersOpenWeek    Number of screens for opening weekend - Faturamento Na Semana de Abertura
OpeningWeekend      Opening weekend gross (in $ millions) - Faturamento No Fim de Semana de Abertura
BOAvgOpenWeekend    Average opening week box office income (per theater) - Faturamento Médio Na Semana de Abertura
DomesticGross       Gross income for domestic viewers (in $ millions) - Faturamento Bruto Domestico-No pais de origem
ForeignGross        Gross income for foreign viewers (in $ millions) - Faturamento Bruto em paises no exterior
WorldGross          Gross income for all viewers (in $ millions) - Faturamento Mundial
Budget              Production budget (in $ millions) - Preço Gasto para produzir o filme
Profitability       WorldGross as a percentage of Budget - Lucros do Filme
OpenProfit          Percentage of budget recovered on opening weekend - Lucro no dia Abertura/Lançamento
Year                Year the movie was released - Ano produção do filme

Alguns Insights:
Muitas variaveis resposta, Qual filme fatura mais no Domestic ? Qual filme fatura mais no Foreign ?, Trabalhar somente com receita Domestic, Trabalhar somente com receita Foreign, Comparar Faturamentos de Domestic e Foreign, Analise global do mercado mundial, Relacionar mercado mundial com budget, Relacionar mercado mundial por ano, Desempenho dos estudos por ano, 

Produzir um Report : Relatório de Análise de dados
Metodo de correção : Correção é comparativa, quanto mais completo o report melhor a nota

Conteudo do report : Abordado nas aulas 01 a 10
Análise descritiva, Modelo Regressão Simples/ Não Linear/ Log-Log, Modelo Regressão Multipla, Descrever o Sentido da Análise de Dados em Desenvolvimento, Justificar a Escolha da Base de dados
Explorar as Variáveis, Informar o que a variavel explicativa diz sobre o fenomeno, Correlação, Graficos, Teste de hipotese (pearson) para comprovar Estatistica Descritiva, Dashboard, Explicar com base em Meta-Analysis, Betas, Variaveis fazem sentido ?
</p>

Projeto
 Desenvolver no máximo 15 páginas
  Relatorio utilizado para tal
  Grafico mostra tal coisa
  Quando uma variával x é alterada altera variável y
--------------------------

Análise estatistica é desestruturada


Grafo no Marketing Analytics
 https://www.youtube.com/watch?v=VdSqwZ-w9Kw

Previsão de dados com Python
 https://youtu.be/ifaNfzRZW3U









<p>Serão gerados estatísticas descritivas no software <strong>RStudio</strong> utilizando a linguagem R e o documento <a href="https://github.com/claudineien/marketing-analytics-gretl-r/tree/main/0-documentation">01-Report_Descritivo-atualizado_0411.docx</a> como apoio para analisar as média, mediana, desvio-padrão, coeficiente de variação, no primeiro ano e no segundo ano por marca e extrair outras informações.</p>

<p>Importante : <br>
Dentro do fonte <a href="https://github.com/claudineien/marketing-analytics-gretl-r/tree/main/1-source-code">Marketing Analytics - Preco_atual.R</a> estão anotados muitos outros detalhes.<br>
Aqui mencionei os que eu julguei conceitualmente importantes relacionados ao Marketing Analytics.
</p>

<p>A Instrução <strong>s = summary(dados_choc)</strong> exibirá os valores minimo, 1o quartil, mediana, media, 3o quartil, valor máximo por coluna-variavel.<br>
Analisando a coluna Vendas_Budget valores em kilo entendemos :<br>
62.32 : vendas mínimas<br>
88.13 : vendas que alcançaram o 1o quartil/25% do total<br>
96.23 : vendas que alcançaram aproximadamente 50% das vendas<br>
95.53 : vendas médias ou ponto de equilíbio<br>
103.36 : vendas que alcançaram 3o quartil/75% do total<br>
132.00 : vendas máxima<br>
Os valores exibidos serão parecidos com a imagem a seguir :<br>
<img src="/3-img/smmryDtSt0.png" width='700'><br>
O comando <strong>d = describe(dados_choc)</strong> exibirá alguns dados resumidos por coluna-variável. Na coluna Vendas_Budget por exemplo :<br>
n = 104 : quantidade de elementos = linhas que contém dados para esta coluna<br>
missing = 0 : não há dados faltantes para esta coluna<br>
distinct = 99 : 99 valores de dados iguais<br>
Interessante saber que são informados valores a cada 1/2% a partir de 0.05 à 0.95.<br>
lowest : são os 5 menores valores<br>
highest : são os 5 maiores valores<br>
value : lowest + highest<br>
frequency : quantidade absoluta a cada lowest e highest do total<br>
proportion : proporção absoluta a cada lowest e highest do total<br>
Os valores exibidos serão parecidos com a imagem a seguir :<br>
<img src="/3-img/dscbDtSt0.png" width='700'><br>
</p>

<p>Estes valores podem ser representados graficamente pelo gráfico boxplot. Conforme a seguir :<br>
<img src="/3-img/boxplotVdsBdgt0.png" width='300'><br>
Observar que o 2o quartil esta mais próximo do primeiro do que do terceiro significando que a distribuição é assimétrica negativa e indica que as vendas se concentram mais nos maiores valores.</p>

<p>Importante : <br>
Dentro do fonte <a href="https://github.com/claudineien/marketing-analytics-gretl-r/tree/main/1-source-code">Marketing Analytics - Preco_atual.R</a> estão anotados muitos outros detalhes.<br>
Aqui mencionei os que eu julguei conceitualmente importantes relacionados ao Marketing Analytics.
</p>

<p>
Considerando os dois anos que estão no dataset vamos plotar gráfio time series para analisar coluna-variável Preço_atual de cada marca : <br>
<img src="/3-img/tmsrsDtSt0.png" width='900'><br>
<img src="/3-img/tmsrsDtSt1.png" width='900'><br>
No gráfico é possível verificar que o preço não varia muito na marca Budget em relação às outras marcas.<br>
</p>

<p>Importante : <br>
Interpretação econômica e mercadológica : O segredo da relação entre o preço e as vendas esta na variação do preço, e não no preço baixo.<br>
A variabilidade do preço influência no resultado das vendas.
</p>

<p>
Analisar em um gráfico dinâmico que ao passar o mouse são exibidas as informações programadas de um perído das primeiras 52 semana por marca.<br>
<img src="/3-img/ggplotVndsTtlsAno.png" width='900'><br>
Possível entender que um desvio padrão interno de uma marca é maior que o desvio padrão interno da outra marca.<br>
Quando pegamos várias observações ao longo do tempo analisamos os dados que é conhecido como painel, considerando dois desvios-padrão : 1 a variabilidade do interior das observações e o desvio-padrão between que é o desvio padrão entre as observações para cada período de tempo.<br>
</p>

<p>
Analisar evolução do preço atual de chocolate por semana em um gráfico dinâmico de área que ao passar o mouse são exibidas as informações programadas de um perído das primeiras 52 semana por marca.<br>
<img src="/3-img/ggplotVndsTtlsAnoArea.png" width='900'><br>
</p>

<br><br>
<hr>
<p>Fontes de estudo
    <ul>
        <li>Aula 04 : <a href="https://youtu.be/6VoKWYZdBzg">Marketing Analytics</a> - Instrutores : Prof. Thiago Marques(USP/IBGE) e Marcos Severo (UFG)</li>
        <li><a href="https://cran.r-project.org/bin/windows/base/">Download R 4.0.3 Core for Windows</a></li>
        <li>Download Software RStudio <a href="https://rstudio.com/products/rstudio/download/">RStudio</a></li>
        <li><a href="https://www.amazon.com/Estatstica-Revelando-Poder-dos-Dados/dp/8521633106">Estatística : Revelando o poder dos dados</a></li>
        <li><a href="https://www.lock5stat.com/">Statistics: Unlocking the Power of Data</a></li>
    </ul>
</p>
