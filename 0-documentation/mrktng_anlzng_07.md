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
<h2>AULA 7 - MARKETING ANALYTICS</h2>
<h4>DATASET VENDAS CHOCOLATE</h4>
<h4>EM DIREÇÃO AOS MODELOS DE REGRESSÃO LINEAR/NÃO LINEAR</h4>
<p>A análise descritiva é o coração da análise estatística.</p>
<p>Desempenho Mercadológico é o coração do Marketing Analytics.</p>
<p>Utilizaremos o dataset <a href="https://github.com/claudineien/marketing-analytics-gretl-r/tree/main/2-dataset">BD_marcas_de_chocolate.csv</a> ou <a href="https://github.com/claudineien/marketing-analytics-gretl-r/tree/main/2-dataset">BD_marcas_de_chocolate.xlsx</a> com dados agregados de todas as informações consolidadas das vendas de determinadas marcas de chocolate de todas as lojas de uma grande rede de varejo dentro de um período de 104 semanas, aproximadamente dois anos.</p>

<p>Estes dados se caracterizam como Time Series (Serie Temporal) por que ocorrem dentro de um determinado tempo, prazo controlado por semana.</p>

<p>Modelos inferenciais são modelos de dependência como por exemplo análise de regressão. Nestes há variáveis que são dependentes/respostas de variáveis independentes/explicativas.<br>
Por exemplo : A variável Vendas_Budget é a variável dependente/resposta, que depende das outras variáveis independentes/explicativas que explicam o seu resultado.</p>

<p>Utilizaremos o software <a href="http://gretl.sourceforge.net/pt.html">Gretl</a> para nos ajudar na interpretação dos resultados do relacionamento entre as variáveis mercadológicas.</p>

<p>Há duas variáveis de preço para cada marca :<br>
Preço Atual : preço que esta sendo cobrado<br>
Preço Regular : preço que deveria ser cobrado, sugerido pelo mercado<br>
A distância entre os preços denota volume de preço promocional pelas marcas.<br>
Quanto menor a distância entre os preços menos promoção a marca faz, quanto maior a distância mais promoção a marca faz.<br>
Grandes pesquisadores que orientam o desenvolvimento de modelos de regressão de marketing em que você inclui o preço como variável explicativa dizem : 'O preço é a principal variável determinante, como variável explicativa, no modelo mercadológico, principalmente se a variável dependente for demanda ou vendas.'<br>
O periódico Journal of Marketing Research, Vol 42, No 2 (May, 2005) informa sobre uma pesquisa New Empirical Generalizations on the Determinants of Price Elasticity.<br>
<strong>Elasticidade de preço é a influência do preço na demanda</strong>.<br>
Demanda elástica significa que o aumento de preço provoca diminuição na demanda proporcionalmente mais do que o aumento no preço.<br>
Ex : Aumento de 1% no preço e a demanda do produto cai mais de 1% o produto é classificado como de demanda elástica.<br>
Produdos classificados como demanda elástica são os que teem sua demanda reduzida por influência do aumento significativo no preço ou pela mudança no comportamento no consumidor influenciado por algum fator externo.<br>
Demanda inelástica significa que aumentos de 1% no preço provocam redução na demanda, mas redução é inferior a 1%.<br>
Ex : Aumento no Combustível provoca no consumidor encher o tanque do automóvel de combustível, mas não reduz a demanda pelo produto combústivel.<br>
Meta análise consolida todos os efeitos de preço nas pesquisas<br>
O periódico Journal of Marketing Research colheu todos os estudos em que analisaram a influência do preço na demanda entre 1961 e 2004 e fizeram uma distribuição de frequência de efeito de preço, conforme o gráfico a seguir :<br>
<img src="/3-img/aula07marketinganalytics0.png"><br>
A distribuição do gráfico se centraliza entre -2.00 a -2.99 em 468 estudos e isto significa que se estimar um modelo de regressão em que você prevê o efeito do preço na demanda você espera que esse efeito em média vai ser negativo em torno de -2.00 a -2.99. Pode variar para cima ou para baixo, mas observando o gráfico identificamos que a maioria dos efeitos são negativos.<br>
Futuramente neste curso geraremos o modelo de regressão e o efeito esperado é negativo.<br>
<strong>Importante</strong> : A estatística não é só apertar botão em software<br>
Vamos a um exemplo : <br>
Um modelo de regressão de efeito do preço encontra o efeito de aumento de 6% de demanda em um aumento de 1% do preço.<br>
Analisando este modelo versus os 30 anos de pesquisa citado anteriormente no qual informa que o aumento no preço diminui a demanda, então há probabilidade deste modelo de regressão estar errado por que não está de acordo com os resultados empíricos da pesquisa.<br>
A estatística nos guia 'dado que' esteja se orientando pelo conhecimento passado.<br>
O efeito do preço é conhecido por ser assimétrico em várias circunstâncias nas quais a elasticidade do preço é maior para aumentos de preço do que para diminuições de preço.</p>

<p>A variável preço atual é o preço cobrado e esta oscilando para cima e para baixo em relação ao preço que deveria estar sendo cobrado que esta na variável preço regular.<br>
Os pesquisadores orientam a criar uma variável de indexe de preço nos modelos empíricos de marketing para cada marca ou em relação ao mercado. Poderia criar uma variável de indexe de preço em relação a média de preço do mercado.<br>
Por exemplo : Há o preço de cada marca por semana, há a média de preço na semana e a orientação é :<br>
<ol>
  <li>Criar uma variável indexada de preço de cada marca em relação a esta média semanal</li>
  <li>Criar uma variável indexada de preço por marca que contenha a divisão do Preço atual pelo preço regular</li>
</ol>
Em nosso estudo criaremos cinco variáveis indexada de preço, conforme imagem a seguir :<br>
<img src="/3-img/aula07marketinganalytics1.png"><br>
As variáveis indexadas são conhecidas no Marketing Analytics como variáveis transformadas.<br>
As variáveis indexadas podem eliminiar a multicolinearidade, que são variáveis explicativas muito correlacionadas entre si sendo redundantes na explicação de variáveis dependentes.<br>
Um exemplo prático de multicolinearidade de duas variáveis diferentes e correlacionadas : Reduzir o preço e ao mesmo tempo investir em um encarte/display por exemplo informando que o preço esta baixo.<br>
<strong>Atenção</strong> :<br>
As variáveis de marketing são correlacionadas entre elas e faz parte da vida ter multicolinearidade no modelo, mas deve analisar detalhadamente para evitar que a multicolinearidade prejudique o modelo.</p>

<p>Vamos analisar as informações com gráfico de dispersão entre as variáveis Vendas_Whittaker no eixo X e Index_preco_Whittaker no eixo y a seguir :<br>
<img src="/3-img/aula07marketinganalytics2.png"><br>
Este gráfico mostra relação negativa entre as duas variáveis e exibe a função na parte superior que é Y = 2.38e+003 - 2.34e+003X que são o coeficiente linear da função e o coeficiente angular respectivamente. Lembrando que a reta é conhecida como reta de melhor ajuste, que apresenta a menor distância dos pontos em relação a ela.<br>
Ao posicionar o mouse sobre o ponto mais alto em relação a reta aparece o valor 37 que é o indexe de preço x vendas na semana 37, descendo em direção a reta em cima da reta esta a previsão de vendas para este ponto.<br>
Por exemplo :<br>
Qual será as vendas previstas quando o indexe de preço é 0.3?Para esta situação talvez este modelo não seja bom, por que 0.3 esta fora do intervalo (fora do range) dos valores x observados no dataset então estará estrapolando um valor que esta fora do intervalo.<br>
É certo dizer que entre o ponto e a previsão do ponto, existe uma distância/dispersão.<br>
Minimos quadrados ordinários por que se 'n' variáveis forem quantitativas vamos estimar um modelo funcional em que quero encontrar a reta que melhor se ajusta aos dados, que é a reta que tem a menor distância quadrada em relação aos pontos. A menor distância quadrada devido aos pontos que estão acima da reta, que significa que para alguns pontos o modelo subestimou e para outros superestimou.<br>
Somando as medidas de distância acima da reta e abaixo da reta o resultado é zero, por serem valores positivos menos valores negativos.<br>
Elevando os valores ao quadrado eliminamos a possibilidade dos valores positivos anularem os negativos.<br>
Também é certo dizer :<br>
A soma dos desvio em relação a média é zero e isto justifica elevar ao quadrado, por isto temos as medidas de dispersão por que se estamos querendo quantificar um erro e a distância pro erro, a soma, é sempre zero então é certo colocar o módulo ou elevar ao quadrado para eliminar a possibilidade dos valores positivos anularem os negativos.<br>
Este modelo não atende a maioria dos fenômenos de marketing por que é um modelo é linear, e o efeito nas vendas para uma variação de preço entre 0.6 e 0.65 é o mesmo efeito para uma variação das vendas quando tem uma variação de preço entre 0.85 e 0.90 .<br>
Em marketing :<br>
Voces acham que o efeito nas vendas e na demanda de um aumento de 10% num intervalo de 100 a 150 é o mesmo 20 a 25%?<br>
Resposta : Não é o mesmo<br>
Conclusão : A maioria dos modelos mercadológicos não são desenvolvidos pressupondo uma regressão linear.<br>
Será possível entender melhor com o gráfico de dispersão entre vendas no eixo y e anundio e display no eixo x :<br>
<img src="/3-img/aula07marketinganalytics3.png"><br>
Aqui a correlação é linear e positiva e é erroneo acreditar que conforme vai aumentando o anuncio e display as vendas também vão aumentando e assim será infinitamente, por que há uma situação na propaganda/no anúncio conhecido como saturação, então as vendas são aumentadas até um certo ponto ou seja, não adianta mais investimento.</p>

<p><strong>Tarefa : Pesquisar</strong> o motivo de não utilizar o módulo ao invés dos mínimos quadrados ordinários.</p>

<p>Aplicar transformação não linear nas váriaveis. Como as variáveis são quantitativas (venda e preço) podemos utilizar um artifício matemático para tirar estas variáveis da linearidade e quando estimar o modelo de regressão ela vai estar estimando um modelo não linear.<br>
A transformação será a logarítmica natural sobre todas as váriaveis venda e sobre as variáveis de indexe de preço. A figura a seguir mostra os valores de venda e a mesma variável transformada em logaritmo natural (software Gretl).<br>
<img src="/3-img/aula07marketinganalytics4.png"><br>
A seguir as figuras mostram em gráfico de dispersão a regressão linear entre as variáveis vendas e indexe de preço normais e as variáveis transformadas vendas e indexe de preço ambas em logaritmo natural, respectivamente :<br>
<img src="/3-img/aula07marketinganalytics5.png"><br>
<img src="/3-img/aula07marketinganalytics6.png"><br>
A função logaritmica comprimiu os dados, ajustou os dados e aproximou as observações da reta de previsão e consequentemente diminui a distância e diminui o erro.<br>
A transformação indica que é mais difícel prever valores exponenciais do que valores logaritmicos que são valores comprimidos.<br>
A figura a seguir mostra a <strong>transformação não linear</strong> da variável de vendas, aonde a variavel vendas permanece em seu estado natural versus a variável vendas em seu estado logaritmico.<br>
<img src="/3-img/aula07marketinganalytics7.png"><br>
Conforme vai avançando para faixas de números menores de vendas a dos logaritmos é menor, conforme vai avançando para faixas de números maiores de vendas a distância entre os pontos aumenta.<br>
<ol>Razões da transformação não linear das variáveis :
  <li>É devido a relação entre as variáveis de marketing normalmente não serem lineares como : preço e venda, propaganda e venda, anuncio e venda.<br>
Um modelo de regressão linear não estará bem exato/acurado em uma relação notadamente não linear.</li>
  <li>Imagine um modelo de regressão aonde a variável dependente é o faturamento e a variável independente é o número de funcionários, perceba que as variáveis estão em unidades distintas e desta forma é dificil a interpretação do beta por que os numeros estão em escalas diferentes em que um faturamento varia de dezenas à bilhões enquanto numeros de funcionarios vai variar de dezenas a centenas em uma mesma amostra. Então a transformação logaritmica comprime a série e a escala e evita perder a interpretabilidade e consegue interpretar em termos de mudança percentual.</li>
Com a transformação não linear o modelo de regressão interpreta o beta em termos de mudança percentual ao invés de ser interpretado em termos nominais.</p>
</ol>

<br><br>
<hr>
<p>Fontes de estudo
    <ul>
        <li>Aula 07 : <a href="https://youtu.be/gMovs4Y6L9Y">Marketing Analytics</a> - Instrutores : Prof. Thiago Marques(USP/IBGE) e Marcos Severo (UFG)</li>
        <li><a href="https://www.youtube.com/channel/UCyYHddVgHXAwDJ27-JxWqBA">Vejo Marketing em tudo! / Marketing everywhere!</a></li>
    </ul>
</p>
