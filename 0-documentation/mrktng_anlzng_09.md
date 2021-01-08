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
<h2>AULA 9 - MARKETING ANALYTICS</h2>
<h4>DATASET VENDAS CHOCOLATE</h4>
<h4>ESTIMAR OS MODELOS DE REGRESSÃO LINEAR</h4>
<p>Utilizaremos o dataset <a href="https://github.com/claudineien/marketing-analytics-gretl-r/tree/main/2-dataset">BD_marcas_de_chocolate.csv</a> ou <a href="https://github.com/claudineien/marketing-analytics-gretl-r/tree/main/2-dataset">BD_marcas_de_chocolate.xlsx</a> com dados agregados de todas as informações consolidadas das vendas de determinadas marcas de chocolate de todas as lojas de uma grande rede de varejo dentro de um período de 104 semanas, aproximadamente dois anos.</p>

<p>Estes dados se caracterizam como Time Series (Serie Temporal) por que ocorrem dentro de um determinado tempo, prazo controlado por semana.</p>

<p>Modelos inferenciais são modelos de dependência como por exemplo análise de regressão. Nestes há variáveis que são dependentes/respostas de variáveis independentes/explicativas.<br>
Por exemplo : A variável Vendas_Budget é a variável dependente/resposta, que depende das outras variáveis independentes/explicativas que explicam o seu resultado.</p>

<p>Uma das habilidades necessárias que precisamos desenvolver na estatística é saber apresentar os dados. Exibir as informações mais relevantes que trazem valor a organização.</p>

<p>A decisão do gestão de marketing geralmente se baseia no curto prazo, se o resultado foi negativo entre quatro e seis semanas após sua decisão uma nova decisão será aplicada.</p>

<p>Serão estimados os modelos de regressão no software <a href="http://gretl.sourceforge.net/pt.html">Gretl</a>.</p>

<p>
Criar o logaritmo natural das vendas e do indice de preço de todas as marcas.<br>
Abrir o programa Gretl instalado em seu computador, abrir a base de dados, procurar cada uma das variáveis Vendas_['nome_marca'], pressionar o botão esquerdo do mouse e selecionar Add Log, depois procurar cada uma das variáveis Index_preco_['nome_marca'] pressionar o botão esquerdo do mouse e selecionar Add Log. Figura ilustrativa a seguir:
<img src="/3-img/aula09marketinganalytics00.png"><br>

</p>




<br><br>
<hr>
<p>Fontes de estudo
    <ul>
        <li>Aula 09 : <a href="https://youtu.be/DakioM831Ng">Marketing Analytics</a> - Instrutores : Prof. Thiago Marques(USP/IBGE) e Marcos Severo (UFG)</li>
        <li>Software Package for econometric analysis <a href="http://gretl.sourceforge.net/">Gretl</a></li>
    </ul>
</p>
