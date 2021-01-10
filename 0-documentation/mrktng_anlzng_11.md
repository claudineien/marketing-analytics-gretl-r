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

<p>Desempenho Mercadológico é o coração do Marketing Analytics.</p>

<p>Modelos inferenciais são modelos de dependência como por exemplo análise de regressão. Nestes há variáveis que são dependentes/respostas de variáveis independentes/explicativas.
</p>

<p>Uma das habilidades necessárias que precisamos desenvolver na estatística é saber apresentar os dados. Exibir as informações mais relevantes que trazem valor a organização.</p>

<p>A decisão do gestão de marketing geralmente se baseia no curto prazo, se o resultado foi negativo entre quatro e seis semanas após sua decisão uma nova decisão será aplicada.</p>

<p>Interpretação econômica e mercadológica : O segredo da relação entre o preço e as vendas esta na variação do preço, e não no preço baixo.<br>
A variabilidade do preço influência no resultado das vendas.
</p>

<h3><strong>Datasets</strong></h3>

<p>Escolher uma dos datasets a seguir :</p>

<p>
01 Dataset <a href="/2-dataset/listings-RIo_de_Janeiro.csv">listings-RIo_de_Janeiro.csv</a><br>
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
02 Dataset <a href="/2-dataset/HollywoodMovies.xlsx">HollywoodMovies.xlsx</a><br>
Tamanho : aproximadamente 970 registros/linhas<br>
Fontes origem : <a href="https://www.lock5stat.com/datapage.html">https://www.lock5stat.com/datapage.html</a><br>
Dataset para r : <a href="https://cran.r-project.org/web/packages/Lock5Data/index.html">https://cran.r-project.org/web/packages/Lock5Data/index.html</a><br>
Description of the Columns : <a href="https://rdrr.io/cran/Lock5Data/man/HollywoodMovies.html">https://rdrr.io/cran/Lock5Data/man/HollywoodMovies.html</a><br>
<div>
  <table>
    <tr>
      <th>Campo</th>
      <th>Descrição</th>
    </tr>
    <tr>
      <td>Movie	LeadStudio</td>
      <td>Studio that released the movie</td>
    </tr>
    <tr>
      <td>RottenTomatoes</td>
      <td>Rotten Tomatoes rating (reviewers) Classificação/Pontuação criticos de filme no <a href="https://www.rottentomatoes.com/">https://www.rottentomatoes.com/</a></td>
    </tr>
    <tr>
      <td>AudienceScore</td>
      <td>Audience rating (via Rotten Tomatoes) Pontuação da audiencia/de quem assistiu</td>
    </tr>
    <tr>
      <td>Story</td>
      <td>General theme - one of 21 themes - História</td>
    </tr>
    <tr>
      <td>Genre</td>
      <td>One of 14 possible genres - Genero/Segmento : Ação, Animação, Aventura</td>
    </tr>
    <tr>
      <td>TheatersOpenWeek</td>
      <td>Number of screens for opening weekend - Faturamento Na Semana de Abertura</td>
    </tr>
    <tr>
      <td>OpeningWeekend</td>
      <td>Opening weekend gross (in $ millions) - Faturamento No Fim de Semana de Abertura</td>
    </tr>
    <tr>
      <td>BOAvgOpenWeekend</td>
      <td>Average opening week box office income (per theater) - Faturamento Médio Na Semana de Abertura</td>
    </tr>
    <tr>
      <td>DomesticGross</td>
      <td>Gross income for domestic viewers (in $ millions) - Faturamento Bruto Domestico-No pais de origem</td>
    </tr>
    <tr>
      <td>ForeignGross</td>
      <td>Gross income for foreign viewers (in $ millions) - Faturamento Bruto em paises no exterior</td>
    </tr>
    <tr>
      <td>WorldGross</td>
      <td>Gross income for all viewers (in $ millions) - Faturamento Mundial</td>
    </tr>
    <tr>
      <td>Budget</td>
      <td>Production budget (in $ millions) - Preço Gasto para produzir o filme</td>
    </tr>
    <tr>
      <td>Profitability</td>
      <td>WorldGross as a percentage of Budget - Lucros do Filme</td>
    </tr>
    <tr>
      <td>OpenProfit</td>
      <td>Percentage of budget recovered on opening weekend - Lucro no dia Abertura/Lançamento</td>
    </tr>
    <tr>
      <td>Year</td>
      <td>Year the movie was released - Ano produção do filme</td>
    </tr>
  </table>
</div>
Alguns Insights que podem ser extraidos :<br>
Qual filme fatura mais no Domestic ?, Qual filme fatura mais no Foreign ?, Trabalhar somente com receita Domestic, Trabalhar somente com receita Foreign, Comparar Faturamentos entre Domestic e Foreign, Análise global do mercado mundial, Relacionar mercado mundial com budget, Relacionar mercado mundial por ano, Desempenho dos estudos por ano.
</p>

<h3>O que produzir e entregar ?</h3>
<p>
Report : Relatório de Análise de dados com no máximo 15 páginas com seguinte conteúdo : <br>
.Linguagem de programação utilizada<br>
.Software utilizado<br>
.Análises relacionadas ao Marketing associado a Estatistica<br>
.Justificar a escolha da base de dados<br>
.Técnicas a aplicar : O que foi ensinado nas aulas 01 a 10<br>
.Conteúdo do report : Análise descritiva, Explorar dados/variáveis, Modelo Regressão Simples/ Não Linear/ Log-Log, Modelo Regressão Multipla, Descrever o Sentido da Análise de Dados em Desenvolvimento, Informar o que a variavel explicativa diz sobre o fenomeno, Correlação, Graficos, Explicar os gráficos, Informar a escolha do gráfico, Teste de hipótese (pearson) para comprovar Estatistica Descritiva, Dashboard, Explicar com base em Meta-Analysis, Betas, Variaveis fazem sentido ?, Quando uma variával x é alterada altera variável y, Contexto Descritivo Este é um relatório de análise, a base de dados usada foi tal, as variaveis escolhidas foram tal por que elas funcionas assim..., a media é tal, o desvio padrão é tal, condicionada a tal caracteristica acontecera x, y, z... , este é o grafico que evidencia x acontecimento, a transformação dos dados aplicada foi x, os possiveis padrões são x,y<br>
</p>

<h3>Método de correção :</h3>
<p>O método de Correção será comparativa, quanto mais completo o report melhor a nota.</p>

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
