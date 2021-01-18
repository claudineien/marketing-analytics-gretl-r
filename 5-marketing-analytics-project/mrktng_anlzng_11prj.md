<h5><a href="blank_">[en]</a> | <a href="blank_">[pt-br]</a>
</h5>
<h5>
<div>
  <table>
    <tr>
      <th>PROJETO DESAFIO</th>
      <th>OBJETIVO</th>
      <th>TIPO DE DADOS</th>
    </tr>
    <tr>
      <td>Marketing Analytics no Airbnb</td>
      <td>Aplicar Estatística descritiva, Exploração dos Dados, Análise de Regressão e Modelos básicos de Séries Temporais</td>
      <td>Time Series</td>
    </tr>
    <tr>
        <td colspan="4">LinkedIn : https://www.linkedin.com/in/claudineien/</td>
    </tr>
  </table>
</div>
</h5>
<hr>
<h2>PROJETO DESAFIO</h2>
<img src='/5-marketing-analytics-project/mrktng_anlzng_prj_img01.jpg'><br>

<h4>1. Justifiicativa - Escolha dataset Airbnb</h4>
<p>Escolhi o dataset <a href="/5-marketing-analytics-project/listings-RIo_de_Janeiro.csv">Airbnb Rio de Janeiro</a> por ser empresa de economia compartilhada, centrada em torno de alugar quartos das suas casas ou a casa inteira de terceiros em e de qualquer parte do mundo. Considero uma das metodologias mais inteligentes de distribuição compartilhada de renda à pessoas empreendedoras.<br>
"Airbnb criou às pessoas de todo o mundo a oportunidade de conquistar mais independência financeira."<br>
Airbnb recebe um percentual sobre o valor das locações.<br>
Alugar imóvel de outra pessoa e sublocar.<br>
A escolha do dataset do Rio de Janeiro foi realizada pelo professor e pesquisador <a href="https://www.linkedin.com/in/marcos-severo-30967936/">Marcos Severo</a>
</p>

<p>Este arquivo contém informações resumidas e métricas para listagens no Rio de Janeiro <a href="http://insideairbnb.com/get-the-data.html">Inside Airbnb<a>. Procure por Rio de Janeiro.
</p>

<h4>2. Linguagem de programação utilizada</h4>
<p>Python 3.7.7<br>
<img src="/5-marketing-analytics-project/mrktng_anlzng_prj_img02.png">
</p>

<h4>3. Plataforma de programação utilizada</h4>
<p><a href="https://docs.conda.io/en/latest/miniconda.html">Jupyter Notebook - Miniconda</a></p>

<h4>1. Objetivo do Trabalho</h4>
<p>Aplicar analises relacionadas ao Marketing e associado a Estatística.</p>

<p>Desenvolver modelo preditivo para ajudar novos locatários a decidir sobre quais valores diários que deverão colocar em seus imóveis considerando as características :
  <ul>
    <li>tipo de quarto</li>
    <li>latitude e longitude</li>
    <li>quantidade mínima de noites a locar</li>
  </ul>
Um bom valor aumenta a visualização do imóvel, e Imóvel visto e/ou lembrado Pode ser imóvel alugado.
</p>

<h4>Contextualização do problema</h4>
<p>
- contextualizando ...-<br>
Fontes :<br>
-/ <a href="https://www.forbes.com.br/forbeslife/2020/03/airbnb-reembolsa-hospedes-por-conta-do-coronavirus-e-cria-crise-para-anfitrioes/">Airbnb reembolsa hóspedes por conta do coronavírus e cria crise para anfitriões</a><br>
-/ <a href="https://neofeed.com.br/blog/home/uma-das-startups-mais-afetadas-pela-crise-airbnb-corta-25-de-sua-forca-de-trabalho/">Uma das startups mais afetadas pela crise, Airbnb corta 25% de sua força de trabalho</a><br>
-/ <a href='https://www.seudinheiro.com/2020/empresas/airbnb-ipo-10-12/'>Que crise? Airbnb precifica ações acima do teto e levanta US$ 3,5 bilhões em IPO</a>
</p>

<br><br>
<hr>
<p>Fontes de estudo
    <ul>
      <li><a href="http://insideairbnb.com/about.html">Inside Airbnb</a></li>
    <li><a href="https://www.airbnb.com/">Airbnb</a></li>
    <li><a href="https://cran.r-project.org/bin/windows/base/">Download R 4.0.3 Core for Windows</a></li>
    <li>Download Software RStudio <a href="https://rstudio.com/products/rstudio/download/">RStudio</a></li>
    </ul>
</p>

<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>

<h3>REGRAS</h3>

<p>Report : Relatório de Análise de dados com no máximo 15 páginas com seguinte conteúdo :<br>
ok .Justificar a escolha da base de dados<br>
ok .Linguagem de programação utilizada<br>
ok .Software utilizado<br>
.Análises relacionadas ao Marketing associado a Estatistica<br>
.Técnicas a aplicar : O que foi ensinado nas aulas 01 a 10<br>
.Conteúdo do report : Análise descritiva, Explorar dados/variáveis, Modelo Regressão Simples/ Não Linear/ Log-Log, Modelo Regressão Multipla, Descrever o Sentido da Análise de Dados em Desenvolvimento, Informar o que a variavel explicativa diz sobre o fenomeno, Correlação, Graficos, Explicar os gráficos, Informar a escolha do gráfico, Teste de hipótese (pearson) para comprovar Estatistica Descritiva, Dashboard, Explicar com base em Meta-Analysis, Betas, Variaveis fazem sentido ?, Quando uma variával x é alterada altera variável y, Contexto Descritivo Este é um relatório de análise, a base de dados usada foi tal, as variaveis escolhidas foram tal por que elas funcionas assim..., a media é tal, o desvio padrão é tal, condicionada a tal caracteristica acontecera x, y, z... , este é o grafico que evidencia x acontecimento, a transformação dos dados aplicada foi x, os possiveis padrões são x,y.
</p>

<p>ANALISAR<br>
Entendendo o dataset<br>
Campos/Colunas<br>
host_id duplicado para endereços e apartamentos diferentes<br>
host_id diretamente relacionado ao host_name. Um par aum.
</p>

<p>Insigths<br>
Alguns Insights que podem ser extraidos :<br>
Preço : Por região (geolocalização), Por bairro, Por tipos de propriedades, Por quantidade de reviews, Será que mais reviews aumenta o preço? Será a quantidade de comentários aumenta o preço?<br>
Review : Padrão de intensidade na plataforma/rede social, Relacionar preço com reviews
</p>

<p>Utilizaremos o dataset <a href="https://github.com/claudineien/marketing-analytics-gretl-r/tree/main/2-dataset">BD_marcas_de_chocolate.csv</a> ou <a href="https://github.com/claudineien/marketing-analytics-gretl-r/tree/main/2-dataset">BD_marcas_de_chocolate.xlsx</a> com dados agregados de todas as informações consolidadas das vendas de determinadas marcas de chocolate de todas as lojas de uma grande rede de varejo dentro de um período de 104 semanas, aproximadamente dois anos.</p>

<p>Estes dados se caracterizam como Time Series (Serie Temporal) por que ocorrem dentro de um determinado tempo, prazo controlado por semana.</p>

<p>Modelos inferenciais são modelos de dependência como por exemplo análise de regressão. Nestes há variáveis que são dependentes/respostas de variáveis independentes/explicativas.<br>
Por exemplo : A variável Vendas_Budget é a variável dependente/resposta, que depende das outras variáveis independentes/explicativas que explicam o seu resultado.</p>

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
      <li><a href="http://insideairbnb.com/about.html">Inside Airbnb</a></li>
    <li><a href="https://www.airbnb.com/">Airbnb</a></li>
    <li><a href="https://cran.r-project.org/bin/windows/base/">Download R 4.0.3 Core for Windows</a></li>
    <li>Download Software RStudio <a href="https://rstudio.com/products/rstudio/download/">RStudio</a></li>
    </ul>
</p>
