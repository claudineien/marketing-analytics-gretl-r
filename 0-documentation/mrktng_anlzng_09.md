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
<h4>ESTIMAR OS MODELOS DE REGRESSÃO NÃO LINEAR</h4>
<p>Utilizaremos o dataset <a href="https://github.com/claudineien/marketing-analytics-gretl-r/tree/main/2-dataset">BD_marcas_de_chocolate.csv</a> ou <a href="https://github.com/claudineien/marketing-analytics-gretl-r/tree/main/2-dataset">BD_marcas_de_chocolate.xlsx</a> com dados agregados de todas as informações consolidadas das vendas de determinadas marcas de chocolate de todas as lojas de uma grande rede de varejo dentro de um período de 104 semanas, aproximadamente dois anos.</p>

<p>Estes dados se caracterizam como Time Series (Serie Temporal) por que ocorrem dentro de um determinado tempo, prazo controlado por semana.</p>

<p>Modelos inferenciais são modelos de dependência como por exemplo análise de regressão. Nestes há variáveis que são dependentes/respostas de variáveis independentes/explicativas.<br>
Por exemplo : A variável Vendas_Budget é a variável dependente/resposta, que depende das outras variáveis independentes/explicativas que explicam o seu resultado.</p>

<p>Uma das habilidades necessárias que precisamos desenvolver na estatística é saber apresentar os dados. Exibir as informações mais relevantes que trazem valor a organização.</p>

<p>A decisão do gestão de marketing geralmente se baseia no curto prazo, se o resultado foi negativo entre quatro e seis semanas após sua decisão uma nova decisão será aplicada.</p>

<p>Serão estimados os modelos de regressão no software <a href="http://gretl.sourceforge.net/pt.html">Gretl</a>.</p>

<p>Criar o logaritmo natural das vendas e do indice de preço de todas as marcas.<br>
Abrir o programa Gretl instalado em seu computador, abrir a base de dados, procurar cada uma das variáveis Vendas_['nome_marca'], pressionar o botão esquerdo do mouse e selecionar Add Log, depois procurar cada uma das variáveis Index_preco_['nome_marca'] pressionar o botão esquerdo do mouse e selecionar Add Log. Figura ilustrativa a seguir:
<img src="/3-img/aula09marketinganalytics00.png"><br></p>

<p>Nesta aula aprenderemos a criar um modelo de regressão não linear, também conhecido como modelo log-log. Este modelo é citado em livros de econometria. Um aspecto importante do modelo log-log é o cálculo da elasticidade de Y em relação a X. As variáveis estarão transformadas em logaritmo natural por que pressupõe um efeito não linear das variáveis, efeitos decrescentes da escala e significa que conforme há aumento dos volumes da variávei X ocorre um aumento na variável Y até certo ponto e este aumento vai diminuindo conforme há aumento na variável X isto significa efeito descrecente a escala.<br>
Pensando em um modelo estritamente linear, quanto mais propaganda, mais anuncios as vendas sempre aumentam... mas na prática isto não ocorre.</p>

<p>Vamos aprender a prever a influência do preço nas vendas e estimar o modelo de regressão de mínimos quadrados para marca Whittaker.<br>
Executar procedimentos no software Gretl conforme imagem a seguir :<br>
<img src="/3-img/aula09marketinganalytics01.png"><br>
01- Selecionar a variável dependente/de resposta l_Vendas_Whittaker e clicar na seta na parte superior para ser incluida no campo Dependent variable.<br>
02- Selecionar a variável independente/explicativa l_Index_precoWhittaker e clicar na seta na parte superior para ser incluida no campo Regressors.<br>
Uma janela semelhante a janela a seguir será exibida :<br>
<img src="/3-img/aula09marketinganalytics02.png"></p>

<p>Vamos analisar as informações calculadas da regressão :<br> 
1o<br>

```
                      coefficient  std. error  t-ratio   p-value 
  ---------------------------------------------------------------
  const                 4.44344    0.0454744    97.71   1.34e-102 ***
```
O coeficiente da constante é estatisticamente significativo.<br>
Nesta linha o sistema esta testando se o beta é estatisticamente igual a zero.<br>
No teste de hipótese a hipótese nula H0 é nada esta acontecendo, que é o mesmo que não há regressão. O X aumenta mas nada acontece em y.<br>
Os três asterísticos do p-value associado ao t-ratio é estatísticamente significativo ao intervalo de confiança de 90% = *, 95% = * *, 99% = * * *<br>
2o<br>
```
                      coefficient  std. error  t-ratio   p-value 
  ---------------------------------------------------------------
  l_Index_preco_Wh~    −5.89903    0.225781    −26.13   5.46e-047 ***
```

O indice do preço tem o coeficiente negativo.<br>
Como as variáveis estão em logaritmo natural, matematicamente podemos interpretar em termos de mudança percentual.<br>
O p-value é muito pequeno isto significa que o beta é estatisticamente diferente de zero.<br>
O coeficiente -5.89903 é diferente de zero então é possivel interpretar diretamente que o beta é estatisticamente diferente de zero.<br>
Para cada acréscimo de 1% no indice de preço eu tenho uma redução nas vendas de -5.89903 em média.<br>
Temos aqui uma demanda é elástica.<br>
Se esse beta fosse <-1 (entre -0.1 e -0.9) seria uma demanda inelástica.<br>
O aumento de 1% no preço provoca uma redução na demanda mas < 1%, mas não é o caso aqui.<br>
O caso aqui é eu tenho um acréscimo de 1% no preço e tenho uma redução na demanda maior que 1%.<br>
É possível fazer um intervalo de confiança esperado para onde vai variar, e para isto basta usar o erro padrão. Considerando dois erros padrão para cima ou para baixo e com isto produzimos um intervalo de onde vai variar o intervalo do efeito do preço nas vendas, a influência do preço nas vendas.<br>

<strong>-5.89903 Faz Sentido ?</strong><br>
O resultado de -5.8903 faz sentido por conta de uma meta-analysis incluindo 1851 elasticidades de preços entre 1961 e 2004 (43 anos de dados) das influências de preço nas vendas publicada no American Marketing Association, em que a distribuição é centrada no valor negativo.<br>
Confira no documento <a href="/2-dataset/Bijmolt_et_al_2005.pdf">Bijmolt_et_al_2005.pdf</a> disponibilizado <a href="/2-dataset/Bijmolt_et_al_2005.pdf">aqui</a>.

Talvez o coeficiente -5.89903 se ajuste mais quando for considerados outras variáveis, e faz sentido por ser uma regressão simples. É possível que o coeficiente esteja considerando o preço e outro valor, e/ou que significa que pode estar considerando quase todo o erro padrão.<br>
Para melhor entendimento sobre o que pode estar contido no coeficiente, imagine o dono de uma loja quando reduz o preço ele divulga de alguma forma a redução nos preços e isto indica que há muitas outras variáveis para ajudar o coeficiente se ajustar. Isto significa que quando o preço é reduzido outra ação é realizada para compensar.</p>

<p><strong>Importante :</strong><br>
Antes de interpretar o coeficiente, como foi feito aqui, deve-se 1st-Primeira análise é interpretar se a regressão faz sentido e isto significa fazer um teste de hipótese para saber se o modelo global faz sentido. O modelo global divide a variação na parte não explicada e na parte explicada, e com base nestas é aplicado o teste F.<br>
Com as 104 observações do dataset utilizado aqui fazemos o teste F com grau de liberdade, conforme a linha a seguir, extraida dos calculos do Gretl :<br>

```
F(1, 102)            682.6323   P-value(F)           5.46e-47
```
Aqui esta o valor da estatistica do teste f e o p-value associado.<br>
Quando há várias variaveis a hipótese alternativa (Ha) do teste F é que ao menos um dos betas é estatisticamente diferente de zero.<br>
A hipótese nula (H0) do teste F é todos os betas são iguais a zero e a hipótese alternativa ao menos um dos betas são estatísticamente diferente de zero.<br>
Sendo um dos betas diferente de zero haverá uma relação/associação com um sentido positivo ou negativo, ao invés de ser sentido nulo.<br>
Neste caso o modelo global faz sentido estatístico, por que ao menos um dos betas é estatisticamente diferente de zero e também significa que há modelo.<br>
É importante destacar que o beta do coeficiente linear não é considerado, somente os outros betas são considerados.</p>

<p>2sd-Secunda análise é interpretar as Estatisticas Descritivas básicas total. Lembando que aqui estamos analisando valores em logaritmo.<br>

```
Mean dependent var   5.236838   S.D. dependent var   0.952753
Sum squared resid    12.15436   S.E. of regression   0.345196
```
S.D. = Desvio padrão da variável dependente<br>
S.E. = Erro padrão da regressão<br>
<strong>Atenção - Quadrado dos resíduos</strong><br>
O residuo é o resultado da distância entre valor observado na base de dados e a previsão deste valor que esta exatamente na reta de melhor ajuste.<br>
O quadrado dos resíduos é elevar o resíduo ao quadrado.<br>
Temos o R-squared que é o percentual de variação da variável dependente que é explicado pela variável explicativa.
```
R-squared            0.870003   Adjusted R-squared   0.868728
```
Recapitulando o que estamos analisando :<br>
1o Teste F faz sentido ?<br>
Resposta : Faz<br>
2o Qual percentual de variação da variável dependente é explicado pela variável explicativa?<br>
Resposta : Adjusted R-squared 0.868728<br>
Vamos considerar o Adjusted R-squared por que é ponderado (média com pesos) e aqui significa que 86,87% da variação das vendas da whittaker é explicada pelo preço da whittaker.<br>
Este modelo é simples incompleto e temos mais informações variáveis em nossa base de dados para analisar. Em marketing é sabido que as vendas oscilam além das variáveis de preço.<br>
Vamos a um exemplo para reforçar entendimento sobre as diversas váriaveis que podem ajudar a construir um bom modelo:<br>
Na comunidade de estatística EstaTiDados a quantidade de vagas vendidas vão oscilar não apenas por conta do preço, mas também vão oscilar pelo padrão de intensidade das postagens que faz na rede social, pela autoridade da marca que esta construindo, pela quantidade de seguidores que teem nas redes sociais e outras variáveis.<br>
Todas estas são variáveis explicativas do modelo.<br>
Então se fizer um modelo de regressão se baseando apenas pelo preço, este modelo esta incompleto. É preciso mais!</p>

<p>Análise sobre R2 ajustado e R2 original :<br>
R2 ajustado sempre deve ser analisado, mas no caso de regressão simples não precisa ser fortemente considerado.<br>
O R2 ajustado considera as outras váriaveis.<br>
O R2 penaliza a quantidade de variáveis dentro do modelo, então quanto mais proximo o R2 ajustado do R2 original significa que o modelo esta bem especificado, o modelo não contem muitas variáveis.<br>
O R2 ajustado muito distante do R2 original significa muitas variáveis no modelo e estas variáveis não estão ajudando a ter um bom modelo.</p>

<p><strong>Teste T e Teste F</strong><br>
O test-T para significância individual dos parâmetros. Este testa de forma individual se os betas estão significativos.<br>
O teste-F testa tudo de uma vez.</p>

<p><strong>Analisar a significância geral e individual</strong><br>
  <ol>
    <li>Significância geral do modelo :<br>
    Há ao menos um dos betas estatisticamente diferente de zero ?<br>
    Resposta : O teste F responde
    </li>
    <li>Análise individual dos coeficientes no modelo :<br>
    Individualmente os betas são estatisticamente diferentes de zero ?<br>
    Rsposta : O teste T responde
    </li>
  </ol>
</p>

<p><strong>Estatística Descritiva</strong><br>
-
  -
  -
</p>


<p>Model 1: OLS : Ordinary Least squares regression
using observations 1-104 : 104 amostras
Dependent variable: l_Vendas_Whittaker : variavel resposta
const : Há uma constante que é o beta zero e associado a este temos 
coefficient 4.44344 : coeficiente linear
std. error 0.0454744 : erro padrão associado ao coeficiente
t-ratio 97.71 : teste t
p-value 1.34e-102 * * * : 

                      coefficient  std. error  t-ratio   p-value 
    const                 4.44344    0.0454744    97.71   1.34e-102 * * *
  l_Index_preco_Wh~    −5.89903    0.225781    −26.13   5.46e-047 * * *
Mean dependent var   5.236838   S.D. dependent var   0.952753
Sum squared resid    12.15436   S.E. of regression   0.345196
R-squared            0.870003   Adjusted R-squared   0.868728
F(1, 102)            682.6323   P-value(F)           5.46e-47
Log-likelihood      −35.94107   Akaike criterion     75.88215
Schwarz criterion    81.17093   Hannan-Quinn         78.02479
rho                  0.251536   Durbin-Watson        1.492843
Log-likelihood for Vendas_Whittaker = −580.572
Aqui é esperado uma relação negativa, por que a maioria dos efeitos de preço já estudados por diversos pesquisados provaram que o efeito é negativo.
Vale lembrar que o produto aqui em estudo é chocolate que é um produto de alta frequencia, portanto na média um aumento no preco implica na redução das vendas.</p>


<br><br>
<hr>
<p>Fontes de estudo
    <ul>
        <li>Aula 09 : <a href="https://youtu.be/DakioM831Ng">Marketing Analytics</a> - Instrutores : Prof. Thiago Marques(USP/IBGE) e Marcos Severo (UFG)</li>
        <li>Software Package for econometric analysis <a href="http://gretl.sourceforge.net/">Gretl</a></li>
        <li><a href="https://pt.wikipedia.org/wiki/%C3%8Dndice_de_pre%C3%A7os#:~:text=Um%20%C3%8Dndice%20de%20pre%C3%A7os%20(plural,um%20determinado%20intervalo%20de%20tempo.">Índices de preços</a></li>
        <li><a href="https://en.wikipedia.org/wiki/John_Napier">John Napier - Logaritmo Natural ou Neperiano</a></li>
        <li><a href="https://www.ama.org/">American Marketing Association</a></li>
        <li><a href="https://www.estudar.com.vc/cursos/49-econometria">Estudar com você</a></li>
    </ul>
</p>
