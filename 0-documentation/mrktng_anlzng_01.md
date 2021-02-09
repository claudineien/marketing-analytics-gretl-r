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
<h3>AULA 1 - ANALISAR DATASET SOB CONCEITOS DE MARKETING</h3>
<h4>DATASET VENDAS CHOCOLATE</h4>
<p>Utilizaremos um dataset classificado em marketing como dataset em nível de cadeia. Exemplo clássico em marketing de varejo.</p>
<p>A planilha <a href="https://github.com/claudineien/marketing-analytics-gretl-r/tree/main/2-dataset">BD_marcas_de_chocolate.csv</a> contém dados agregados de todas as informações consolidadas das vendas de determinadas marcas de chocolate de todas as lojas de uma grande rede de varejo dentro de um período de 104 semanas, aproximadamente dois anos.</p>
<p>Estes dados se caracterizam como Time Series (Serie Temporal) por que ocorrem dentro de um determinado tempo, prazo controlado por semana.</p>
<p>Este dataset contém seis variáveis/atributos/colunas correspondentes às decisões de budgets sobre de cinco marcas dentro de 104 semanas em todas as lojas. As variáveis são :
    <ul>
        <li>Vendas_Budget : Conhecida como a principal variável de resposta. Esta coluna/variável representa a quantidade total em kilo de todas as vendas em todas as lojas na primeira semana desta grande rede de lojas</li>
        <li>Preco_atual_Budget : preço cobrado no momento atual</li>
        <li>Preco_regular_Budget : preço que deveria estar sento cobrado. Preço sugerido.</li>
        <li>Anuncio_Budget : variável ponderada ou transformada</li>
        <li>Display_Budget : ornamentação no ponto de venda para aumentar a sinalização da marca</li>
        <li>AD_Budget : a marca colocou anuncio e o display no ponto de venda</li>
    </ul>
</p>
<p>Atenção : <br>
Os preços dos chocolates registrados nas colunas Preco_atual_Budget e Preco_regular_Budget estão na planilha por que são o principal determinante da decisão do consumidor</p>
<p>Em elasticidade da demanda em microeconomia identificamos a forte relação entre preço de venda e venda. Conforme aumenta os valores do preço de venda as vendas diminuem.</p>
<p>A distância entre Preco_atual_Budget e Preco_regular_Budget informa se a marca faz ou não muitas promoções.</p>
<p>Se houver muita promoção de preço possivelmente prejudicará o valor da marca, ainda que aumente as vendas.</p>
<p>Diversos modelos de estatísticas se baseiam na distância em relação a média ou em relação a uma medida pontual.</p>
<p>A seguir algumas variáveis/decisões controláveis conhecidas em marketing como 4 ps (Felipe Kotler):
    <ol>
        <li>produto</li>
        <li>preço</li>
        <li>praça</li>
        <li>promoção</li>
    </ol>
</p>
<p>No dataset em estudo há somente dois p's sendo : preço e promoção</p>
<p>Decisões sobre promoção envolvem relações publicas, propaganda, ações em redes sociais, propaganda ponto de venda, etc</p>
<p>Anuncio_Budget : variável ponderada ou transformada, como por exemplo maketing share. Divisão das vendas da marca pelo total do mercado. Variável em razão. Por exemplo : 0.21 = 21% da cadeia de lojas continham naquela semana um anuncio da semana num encarte. Se relacionar esta variável com as vendas conseguimos identificar o efeito do Anuncio_Budget nas vendas.</p>

<h4>IMPORTANTE</h4>
<p>Podemos extrair muitas informações mercadológicas relevantes como:
    <ul>
        <li>Gerar vendas ao longo do tempo</li>
        <li>Relacionar Vendas com preço</li>
        <li>Ao relacionar vendas com preço é possivel medir a sensibilidade das vendas em relação ao preço</li>
        <li>Multiplicando preço por quantidade vendida temos receita/faturamento</li>
        <li>Relacionar preço com receita/faturamento</li>
        <li>Relacionar promoção com receita/faturamento</li>
        Identificar os efeitos para todas as marcas</li>
    </ul>
</p>
<p>A maioria das variáveis relevantes são transformadas. As informações estão nas transformações das variáveis.</p>
<p>Este dataset possui cada marca em cada coluna para permitir gerar :<br>
    <ul>
        <li>modelo por marca</li>
        <li>relacionar o modelo por marca ao longo do tempo</li>
        <li>somar o tamanho do mercado ao longo do tempo</li>
    </ul>
</p>

<h4>SOFTWARE A UTILIZAR</h4>
<p>Nesta aula utilizaremos Gretl.</p>
<p>Confira instalação a partir do minuto 36:05 na <a href="https://youtu.be/lRTR7XHwOe4">Aula 01: Marketing Analytics - Prof. Thiago Marques(USP/IBGE) e Marcos Severo (UFG)</a>
</p>
<p>Atenção : <br>
É Possível transformar variável qualitativa em uma distribuição ponderada para rodar análises no Gretl. Por exemplo % de acertos em questões de prova ao longo do tempo.
</p>
<br><br>
<hr>
<p>Fontes de estudo
    <ul>
        <li>Aula 01 : <a href="https://www.youtube.com/watch?v=lRTR7XHwOe4">Marketing Analytics</a> - Instrutores : Prof. Thiago Marques(USP/IBGE) e Marcos Severo (UFG)</li>
        <li>Aula 01 : <a href="https://youtu.be/EjRz4co50Yw">Marketing Analytics-Vejo Marketing em tudo</a> - Instrutores : Prof. Thiago Marques(USP/IBGE) e Marcos Severo (UFG)</li>
        <li>Modeling Markets, Peter S.H Leeflang, Jaap E.Wieringa, Tammo H.A. Bijmolt, Koen H. Pauwels</li>
        <li>4ps do marketing, Philip Kotler, Criado por Neil Borden, em 1949, e aprimorado por Jerome McCarthy.</li>
        <li>Software Package for econometric analysis <a href="http://gretl.sourceforge.net/">Gretl</a></li>
    </ul>
</p>
