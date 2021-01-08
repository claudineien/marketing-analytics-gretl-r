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
<h2>AULA 8 - MARKETING ANALYTICS</h2>
<h4>DATASET VENDAS CHOCOLATE</h4>
<h4>[ o que esta sendo abordado no curso]</h4>
<p>A análise descritiva é o coração da análise estatística.</p>
<p>Desempenho Mercadológico é o coração do Marketing Analytics.</p>
<p>Utilizaremos o dataset <a href="https://github.com/claudineien/marketing-analytics-gretl-r/tree/main/2-dataset">BD_marcas_de_chocolate.csv</a> ou <a href="https://github.com/claudineien/marketing-analytics-gretl-r/tree/main/2-dataset">BD_marcas_de_chocolate.xlsx</a> com dados agregados de todas as informações consolidadas das vendas de determinadas marcas de chocolate de todas as lojas de uma grande rede de varejo dentro de um período de 104 semanas, aproximadamente dois anos.</p>

<p>Estes dados se caracterizam como Time Series (Serie Temporal) por que ocorrem dentro de um determinado tempo, prazo controlado por semana.</p>

<p>Modelos inferenciais são modelos de dependência como por exemplo análise de regressão. Nestes há variáveis que são dependentes/respostas de variáveis independentes/explicativas.<br>
Por exemplo : A variável Vendas_Budget é a variável dependente/resposta, que depende das outras variáveis independentes/explicativas que explicam o seu resultado.</p>

<p>Utilizaremos o software <a href="http://gretl.sourceforge.net/pt.html">Gretl</a> para nos ajudar na interpretação dos resultados do relacionamento entre as variáveis mercadológicas.</p>

<p>Utilizar o ********************************
C:\zclass\marketinanalytcs\youtube\20201217\BD_marcas_de_chocolate.csv
C:\zclass\marketinanalytcs\youtube\20201217\Marketing Analytics - Geral Transformadas e modelos.</p>

<p>Serão geradas a transforamção de variáveis, gerados os índices de preço e modelagens utilizando o arquivo <strong>Marketing Analytics - Geral Transformadas e modelos.R</strong>. Utilizaremos a linguagem R no software RStudio.</p>

<p>Com a linguagem r aplicaremos a <strong>transformação de Variáveis (Feature Engineering)</strong> criando as variáveis:<br>
  <ul>
    <li>mercado : contendo as vendas de todas as marcas. As marcas Budget, Pams, Cadbury, Whittaker e Donovan</li>
    <li>variáveis de cada marca / pelo mercado : Market share</li>
  </ul>
Foram criadas as colunas mercado e participações (market share) de cada empresa, para aplicar o Marketing Analytics e desenvolver um modelo mais performático.</p>

<p><a href="https://en.wikipedia.org/wiki/Market_share">Marketing Share - O que é?</a><br>
É uma porcentagem que corresponde à relevância da sua empresa diante dos competidores da indústria em que ela atua.</p>

<p>Foram calculados os índices de preço e o logarítmo de indice de preço, para comprimir as variáveis e facilitar a predição dos valores.<br>
O índice de preço é o preço atual de cada marca dividido pelo sugerido (que deveria ser cobrado). Este último normalmente esta na embalagem.<br>
<strong>Atenção :</strong> Caso a marca utilize o valor diferente do sugerido podemos identificar que a marca esta utilizando uma estratégia que se diferencia do preço sugerido.</p>
<p>Ao executar a linha com a instrução <strong>names(dados_choc_novas_var)</strong> e depois aplicar duplo clique em uma das linhas na guia Environment (*) a imagem a seguir exibe o dataset lido pela linguagem 'r' e que será utiliza nesta aula 8.<br>
<img src="/3-img/aula08marketinganalytics1.png"><br>
<strong>Atenção : </strong>(*) A guia Environment pode estar localizada em local diferente do exibido aqui, por que depende da versão e/ou personalização realizada pelo usuario do RStudio. Instalação <a href="https://github.com/claudineien/marketing-analytics-gretl-r/blob/main/0-documentation/mrktng_anlzng_02.md">do r e do RStudio</a></p>

<p>A variável 'dados_choc_novas_var' será o novo dataset que utilizaremos para aplicar os calculos</p>

<p>Foi aplicado o cálculo da correlação de person nas variáveis de vendas e preço atual de cada marca.</p>

<p>Ao executar a linha com a instrução <strong>View(c_pearson)</strong> será exibido um dataframe com os valores da correlação de person conforme imagem a seguir :<br>
<img src="/3-img/aula08marketinganalytics2.png"></p>

<p>A instrução 'corrplot(c_pearson)' vai gerar o gráfico de correlação conforme exibido a seguir :<br>
  <img src="/3-img/aula08marketinganalytics3.png"><br>
  <strong>Importante :</strong>
  <ol>Um pouco de conceito sobre correlação:<br>
    <li>Correlação menor que zero:Se a correlação é menor que zero, significa que é negativo, isto é, que as variáveis são inversamente relacionadas.<br>
    Quando o valor de alguma variável é alto, o valor da outra variável é baixo. Quanto mais próximo você estiver de -1, mais clara será a covariação extrema. Se o coeficiente é igual a -1, nos referimos a uma correlação negativa perfeita.</li>
    <li>Correlação maior que zero: Se a correlação for igual a +1, significa que é perfeito positivo. Neste caso, significa que a correlação é positiva, isto é, que as variáveis estão diretamente correlacionadas.<br>
    Quando o valor de uma variável é alto, o valor da outra variável também é alto, o mesmo acontece quando eles são baixos. Se estiver próximo de +1, o coeficiente será covariado.</li>
    <li>Correlação igual a zero: Quando a correlação é igual a zero, significa que não é possível determinar qualquer senso de covariação. No entanto, isso não significa que não haja relação não linear entre as variáveis.<br>
    Quando as variáveis são independentes, significa que elas estão correlacionadas, mas isso significa que o resultado é verdadeiro.</li>
</ol>
A direita há uma representação que lembra um termômetro onde +1 é a correlação perfeita 0 correlação nula e -1 correlação fraca.<br>
Algumas interpretações sobre correlação de algumas variáveis :<br>
01- Preco_atual_Pams (horizontal) e Vendas_Pams (vertical) significa que o preço atual diminuiu um pouco as vendas.<br>
02- Indice I_Vendas_Whittaker (horizontal) e Preco_atual_Whittaker (vertical) significa que o preço atual esta acima do preço sugerido 'inflação'.<br>
03- Preco_atual_Pams (horizontal) e Preco_atual_Cadbury (vertical) significa que preço da Pams pode ter influenciado um melhor preço na marca Cadbury.</p>

<p>Também é gerado o gráfico de correlação a seguir que visualmente é mais agradável e além de melhor interpretativo :<br>
<img src="/3-img/aula08marketinganalytics4.png"><br>
É importante observar a correlação do Preco_atual_Donavan (horizontal) e Vendas_Budget (vertical) em que podemos entender que o preço superior da marca Donavan em relação a Budget pode ter sido o motivo do aumento das vendas da Budget.</p>

<p>O de dispersão a seguir :<br>
<img src="/3-img/aula08marketinganalytics5.png"><br>
É importante observar a correlação do Preco_atual_Donavan (horizontal) e Vendas_Budget (vertical) em que podemos entender que o preço superior da marca Donavan em relação a Budget pode ter sido o motivo do aumento das vendas da Budget.</p>

Na aula 7 foi abordado sobre as variáveis em logaritimo natual 


<br><br>
<hr>
<p>Fontes de estudo
    <ul>
        <li>Aula 08 : <a href="https://youtu.be/o9U9y6260cA">Marketing Analytics</a> - Instrutores : Prof. Thiago Marques(USP/IBGE) e Marcos Severo (UFG)</li>
        <li><a href="https://www.youtube.com/channel/UCyYHddVgHXAwDJ27-JxWqBA">Vejo Marketing em tudo! / Marketing everywhere!</a></li>
        <li><a href="https://en.wikipedia.org/wiki/Market_share">Marketing Share - O que é?</a></li>
    </ul>
</p>
