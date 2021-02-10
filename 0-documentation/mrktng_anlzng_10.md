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
<h2>AULA 10 - ESPECIFICAÇÃO DO MODELO EMPÍRICO</h2>
<h4>DATASET VENDAS CHOCOLATE</h4>
<p>Utilizaremos o dataset <a href="https://github.com/claudineien/marketing-analytics-gretl-r/tree/main/2-dataset">BD_marcas_de_chocolate.csv</a> ou <a href="https://github.com/claudineien/marketing-analytics-gretl-r/tree/main/2-dataset">BD_marcas_de_chocolate.xlsx</a> com dados agregados de todas as informações consolidadas das vendas de determinadas marcas de chocolate de todas as lojas de uma grande rede de varejo dentro de um período de 104 semanas, aproximadamente dois anos.</p>

<p>Estes dados se caracterizam como Time Series (Serie Temporal) por que ocorrem dentro de um determinado tempo, prazo controlado por semana.</p>

<p>Modelos inferenciais são modelos de dependência como por exemplo análise de regressão. Nestes há variáveis que são dependentes/respostas de variáveis independentes/explicativas.<br>
Por exemplo : A variável Vendas_Budget é a variável dependente/resposta, que depende das outras variáveis independentes/explicativas que explicam o seu resultado.</p>

<p>Serão estimados os modelos de regressão no software <a href="http://gretl.sourceforge.net/pt.html">Gretl</a>.</p>

<p><strong>Estimar o modelo de regressão à marca Whittaker</strong>.<br>
Abrir o programa Gretl instalado em seu computador, selecionar a base de dados do gretl (pronuncia-se grêtél) com extensão .gdt, selecionar a opção Model/Modelo->Ordinary Least Square/Minimos Quadrados Ordinários, será exibida uma janela com título specify model/especificar modelo.<br>
Selecionar a variável log de vendas da marca Whittaker e colocá-la na Dependent Variable/Variável Dependente, depois selecionar a variável do índice de preço da Whittaker e a anúncio e display e colocá-las na Regressors/Regressores, que é variável explicativa. Figuras ilustrativas a seguir:<br>
<img src="/3-img/aula10marketinganalytics0.png"><br>
<img src="/3-img/aula10marketinganalytics1.png"><br>
<strong>Foram selecionadas :</strong><br>
Variáveis Dependentes/Resposta : logaritimo de vendas Whittaker<br>
Variáveis Independentes/Explicativas: índices de preço e anúncio e display da Whittaker<br>
<strong>Resultado:</strong><br>
<img src="/3-img/aula10marketinganalytics2.png">
</p>

<p><strong>Interpretar algumas informações da Ordinary Least Squares :</strong><br>
1º -Teste F(2, 101) e o P-value:<br>
São dois graus de liberdade, que são as duas variáveis explicativas.<br>
Verificamos se o modelo de regressão faz sentido, ou seja, se a parte da variação explicada é estatísticamente significativa. Sendo, então ao menos um dos betas estimados no modelo é estatísticamente diferente de zero.<br>
Se o beta for estatísticamente diferente de zero há uma relação funcional entre a variável y (vendas) e a variável x (neste caso preço + anúncio e display).<br>
O teste F divide a série de dados em duas partes : a variação não explicada e a variação explicada.<br>
O teste F esta com valor grande estatísticamente e o P-value/P-valor esta com valor muito pequeno.<br>
O P-value 3,32e-55 é 0,(55 0s)332 e está menor que 0.05 e menor que 0.01, então o h0 (hipótese nula) é rejeitada dando suporte a ha (hipótese alternativa) de que um dos valores é estatisticamente diferente de zero.<br>

<strong>Atenção:</strong><br>
Sendo rigoroso : Estatisticamente o beta é igual a zero<br>

2o Interpretar os betas individualmente<br>
O teste de hipótese é muito importante na estatística, por que temos que testar uma hipótese em cada beta.<br>
A hipótese nula significa nada esta acontecendo ou beta é igual a 0 e significa que não há relação entre as variáveis
A hipótese alternativa significa que o beta é diferente de 0, então o h0 (hipótese nula) é rejeitada dando suporte a ha (hipótese alternativa) de que um dos valores é estatisticamente diferente de zero.<br>
<strong>1. O beta índice de preço</strong><br>
Este esta com coeficiente -4.70154 deve ser testado contra 0, aonde verificamos se é estatisticamente diferente de zero.<br>
O seu p-value é 6.35e-036 ou 0.(36 0s)635 e esta menor que 0.05 e menor que 0.01.<br>
O valor -4.70154 é estatisticamente diferente de zero.<br>
Aqui a interpretação é que a cada 1% de aumento no indice de preço da Whittaker temos -4.70154% de redução nas vendas.<br>
A interpretação esta sendo em porcentagem por conta da transformação logarítimica das variáveis, em que suprimimos a escala da variável em quantidade e da variável em moeda pelo logatimo natural/neperiano para comparar variáveis diferentes como iguais.<br>
Utilizando o estudo científico <a href="/2-dataset/Bijmolt_et_al_2005.pdf">Bijmolt_et_al_2005.pdf (página 145)</a> disponibilizado <a href="/2-dataset/Bijmolt_et_al_2005.pdf">aqui</a>, identificamos que o coeficiente -4.70154% deste modelo está entre -4.99 e -4.00 do estudo científico que o coeficiente é igual a 145 estudos documentados na literatura de marketing e desta forma identificamos que faz sentido.<br>
Figura a seguir nos auxilia a entender:<br>
<img src="/3-img/aula10marketinganalytics3.png"><br>
<cite>Considerando apenas a variável resposta indice de preço o coeficiente fica −5.89903 e se afasta mais da centralidade do estudo científico, mesmo que ainda faça sentido ao modelo. Confirma na figura a seguir:</cite><br>
<img src="/3-img/aula10marketinganalytics4.png"><br>
O Modelo de regressão é Y = B0 - B1X1 + E onde :
```
Y = variável resposta
B0 = coeficiente linear
B1X1 = coeficiente angular associado a variável explicativa
E = erro
```
O efeito da correlação esta uma parte no índice de preço e uma parte no anuncio+display, retirando uma das variáveis o coeficiente aumenta, aumentando a distância da centralidade comparando ao estudo científico <a href="/2-dataset/Bijmolt_et_al_2005.pdf">Bijmolt_et_al_2005.pdf (página 145)</a>.<br>
Importante entender que no marketing não há ausência total de multicolinearidade -relacionamento entre as variáveis explicativas- por questões dinâmicas. O gestor de marketing aplica uma uma ou mais ações paralelamente. As variáveis são conhecidas como <strong>endógenas</strong>.<br>
Há uma meta-análise em marketing que analisa o efeito da propaganda nas vendas.<br>
Ao analisar o efeito da propaganda nas vendas até 1990 e outra a partir de 1990 foi descoberto que o efeito da propaganda diminuiu ao longo do tempo. Isto significa que as pessoas se acostumaram a propaganda.<br>
<strong>Importante</strong> :<br>
Em marketing este modelo é conhecido como modelo de resposta, no qual é estimada a influência de duas variáveis do marketing mix que são os 4Ps (produto, preço, praça, promoção).<br>
Neste caso esta estimando a influência do preço e da promoção nas vendas.<br>
<strong>2. O beta anúncio e display:</strong><br>
O coeficiente é 0.868475, o p-value 2.41e-011 ou 0.(11 0s)241.Este coeficiente é significativo a 90% por ser o seu p-value menor que 0.10%, é significativo a 95% por ser o seu p-value menor que 0.05% e é significativo a 99% por ser o seu p-value menor 0.01%.<br>
Na notação científica é muito pequeno.<br>
No teste de hipótese o beta do anúncio e display podemos rejeitar a h0 (hipótese nula) e estatisticamente é diferente de zero, ou seja, suporta ha (hipótese alternativa).<br>
Aqui a interpretação é que a cada 1% de aumento no anúncio e display da Whittaker há um aumento nas vendas de 0.868475% de aumento nas vendas.<br>
Esta variável esta mensurada de forma ponderada.<br>
</p>

<p><p><strong>Formas de detectar se o modelo com duas variáveis de resposta é melhor que om modelo com uma variável de resposta :</strong><br>
(A) Analisar<br>
- Quantidade de variáveis no modelo<br>
- Analisar se o incremento de determinada variável foi significativo ou não<br>
- Analisar se o R2 ajustado mudou muito, por que ele penaliza a quantidade de variáveis no modelo<br>
- Utilizar métricas como BIC-Critério de Informação Bayesiano e AIC-Critério de Informação Akaike.</p>
<p>(B) Utilizando o software Gretl vamos ajustar os valores das variáveis<br>
Selecionar Save/Salvar->Fitted Values/Valores Ajustados e inserir um nome. Esta tarefa deve ser feita no resultado da Ordinary Least Squares (figuras anteriormente exibidas), tanto no resultado com duas variáveis explicativas quanto no resultado com apenas uma variável explicativa. Figuras ilustrativas a seguir :<br>
<img src="/3-img/aula10marketinganalytics5.png"><br>
Escreva um nome para que o sistema salve o valor ajustado, na pequena janela que será exibida e clique no botão [OK] :<br>
<img src="/3-img/aula10marketinganalytics6.png"><br>
Vamos comparar o valor das variáveis logaritimicas de :<br>
1 Preço de vendas originais<br>
2 Preço de vendas ajustadas no modelo 1 com apenas 1 variável explicativa<br>
3 Preço de vendas ajustadas no modelo 2 com 2 variaveis explicativas<br>
Figura a seguir :<br>
<img src="/3-img/aula10marketinganalytics7.png"><br>
A figura contém três janelas distintas, unidas para melhor visualização e rápida análise.<br>
<strong>Analisando os valores é possivel identificar que os valores ajustados do modelo 2 com 2 variáveis explicativas esta mais próximo ao valor logaritimico original</strong></p>
<p><strong>Atenção </strong>:<br>
O ajuste aplicado é o grau de ajuste linear (R2) da reta de regressão linear. O R-quadrado é uma medida estatística de quão próximos os dados estão da linha de regressão ajustada. Ele também é conhecido como o coeficiente de determinação ou o coeficiente de determinação múltipla para a regressão múltipla.</p>
<p>Gráficamente fica da seguinte forma :<br>
No menu principal selecionar View/Ver->Graph specified vars/Gráfico de Variáveis->Time Series Plot/Grafico Série Temporal.<br>
<img src="/3-img/aula10marketinganalytics8.png"><br>
Selecionar as variáveis vendas, as variáveis ajustadas com uma variável e com duas variáveis explicativas da marca Whittaker. Figura a seguir :<br>
<img src="/3-img/aula10marketinganalytics9.png"><br>
Resultará no seguinte gráfico :<br>
<img src="aula10marketinganalytics10.png"><br>
É possível visualizar melhor que os modelos são muito próximos.<br>
Em uma oscilação brusca ambos os modelos erram bastante.<br>
Uma boa solução para evitar errar muito durante as quedas ou picos muito grande seria buscar variáveis dummy que indicam os períodos bruscos de queda ou pico indicados por alguma outra variável que esta tentando explicar o fenômeno.<br>
Por exemplo uma sazonalidade pode ter uma queda brusca ou pico muito alto, se inserir uma dummy o modelo o reconhece a queda brusca ou o pico e consegue estimar melhor.<br>
No geral o modelo 2 é melhor que o modelo 1.
</p>
</p>

<p><strong>Melhorar o modelo de regressão da Whittaker</strong><br>
Vamos incluir algumas variáveis da empresa concorrente para verificar se a marca concorrente influenciou nas vendas da marca em análise.<br>
<strong>Atenção</strong>:<br>
Para melhor entendimento da influência das váriaveis da marca concorrente, vamos pensar na fabricante de refrigerante Pepsi que aumenta o preço do seu produto e a fabricante concorrente 'direta' de refrigerante Coca-Cola tem aumento nas vendas. Surgem pelo menos duas questões :<br>
01 Será que o motivo do aumento das vendas da Coca-Cola esta relacionado ao aumento do preço dos produtos Pepsi?<br>
02 Alguns consumidores de Pepsi migraram para marca Coca-Cola?<br>
Selecionaremos o log de venda da Whittaker como variável resposta, o log de indice de preço da Whittaker + anúncio e display da Whittaker, log de indice de preço da Cadbury, anúncio + display da Cadbury como variáveis explicativas.<br>
Para isto selecionaremos a opção Ordinary Least Squares/Minimos Quadrados Ordinários (abordado nesta aula). Figuras a seguir :<br>
Variáveis a selecionar :<br>
<img src="/3-img/aula10marketinganalytics11.png"><br>
Resultado da correlação entre as variáveis :<br>
<img src="/3-img/aula10marketinganalytics12.png">
</p>

<p>Anteriormente tinhamos :<br>

```
                    coefficient  std. error  t-ratio   p-value 
  ---------------------------------------------------------------
  const                 4.47464    0.0368407   121.5    2.76e-111 ***
  l_Index_preco_Wh~    −4.70154    0.241768    −19.45   6.35e-036 ***
  AD_Whittaker          0.868475   0.115631      7.511  2.41e-011 ***
```
Agora temos :<br>
```
                      coefficient  std. error  t-ratio    p-value 
  ----------------------------------------------------------------
  const                4.52342     0.0402835   112.3     3.44e-106 ***
  l_Index_preco_Wh~   −4.65707     0.236768    −19.67    5.65e-036 ***
  AD_Whittaker         0.917767    0.114235      8.034   2.03e-012 ***
  l_Index_preco_Ca~    0.591616    0.265129      2.231   0.0279    **
  AD_Cadbury           0.0583859   0.147298      0.3964  0.6927   
```
Ao incluir as variáveis da concorrência Cadbury a variável indice de preço da Whittaker (l_Index_preco_Whittaker) informa que para cada 1% de aumento no preço, as vendas são reduzidas em -4.65707%. A Whittaker aumentou suas vendas em 0.591616%.<br>
Podemos entender que o indice de preço da Cadbury (l_Index_preco_Cadbury) influenciou positivamente no indice de preço da Whittaker. Quando a Cadbury aumenta o preço do seu produto a Whittaker vende mais.<br> Possivelmente houve uma migração do consumidor da Cadbury para o produto da Whittaker.<br>
Em Marketing a elasticidade preço-demanda revela a sensibilidade de uma marca para o aumento do preço, ou seja, uma marca mais forte que a Whittaker, que é mais tolerável ao aumento de preço o beta indice de peço (l_Index_preco_Whittaker) será menor ou menos negativo em relação ao resultado apresentado.<br>
Por exemplo : 10% de aumento no preço da Coca-Cola produz efeito na demanda menor que 10% no aumento do preço na Pepsi, por que a marca Coca-Cola é mais forte, possui consumidor mais fiel ou a Pepsi possui um consumidor menos fiel.<br>
<strong>Atenção</strong> :<br>
Em Marketing este fenômeno é chamado de Cross Elasticity/Elasticidade Cruzada aonde a ação de uma determinada marca altera/influencia o resultado na outra marca.<br>
</p>

<p><strong>Faz sentido comparar a marca mais fraca com a marca mais forte quando a marca mais forte continua aumentando o preço e a marca mais fraca continua perdendo venda?</strong><br>
Sim se as marcas fizerem parte do mesmo mercado. Deve-ser equiparar estrategicamente marcas diretamente concorrentes.<br>
Em marketing o consumo varia nos aspectos demográficos, em aspectos geográficos, em função de preferências então tem segmentos que competem por marcas que são próximas.
</p>

<h4>Verificar se o modelo esta bem especificado</h4>
<p>1º Teste : Heterocedasticidade - Koenker - Breusch-Pagan<br>
Verificar se resíduos em relação a linha de regressão variam constantemente.<br>
<img src="/3-img/aula10marketinganalytics13.png"><br>
<img src="/3-img/aula10marketinganalytics14.png"><br>
<img src="/3-img/aula10marketinganalytics15.png"><br>

```
Log-likelihood for Vendas_Whittaker = −553.809
Excluding the constant, p-value was highest for variable 19 (AD_Cadbury)
Breusch-Pagan test for heteroskedasticity (robust variant) -
  Null hypothesis: heteroskedasticity not present
  Test statistic: LM = 9.56645
  with p-value = P(Chi-square(4) > 9.56645) = 0.0483996
```
Perceba a h0 (Hipótese nula) é "sem heterocedasticidade", como o p-value de 0.0483996 é inferior ao nível de significância 0.05, rejeitamos h0 e consideremos ha (Hipotese alternativa) e temos um modelo heterocedástico.<br>
<strong>Sendo muito rigoroso</strong> vamos re-estimar o modelo calcular erros padrões robustos em que serão realizados ajustes matemáticos ponderando as observações em relação a reta de regressão, conforme figura a seguir :<br>
<img src="/3-img/aula10marketinganalytics16.png"><br>

Janela com o resultado :<br>
<img src="/3-img/aula10marketinganalytics17.png"><br>
</p>

<p>2º Teste : Calcular novamente Heterocedasticidade - Koenker - Breusch-Pagan

```
Breusch-Pagan test for heteroskedasticity OLS, using observations 1-104
Dependent variable: scaled uhat^2 (Koenker robust variant)

                       coefficient   std. error   t-ratio   p-value
  -----------------------------------------------------------------
  const                −0.0227639    0.0164226    −1.386    0.1688 
  l_Index_preco_Wh~    −0.237391     0.0965248    −2.459    0.0157  **
  AD_Whittaker         −0.122086     0.0465707    −2.622    0.0101  **
  l_Index_preco_Ca~    −0.178091     0.108087     −1.648    0.1026 
  AD_Cadbury           −0.0803619    0.0600498    −1.338    0.1839 

  Explained sum of squares = 0.12231

Test statistic: LM = 9.566448,
with p-value = P(Chi-square(4) > 9.566448) = 0.048400
```
Resultado :<br>
<img src="/3-img/aula10marketinganalytics18.png"><br>
Perceba a h0 (Hipótese nula) é "sem heterocedasticidade", o p-value continuou 0.0483996 que é inferior ao nível de significância 0.05, então ainda rejeitamos h0 e consideremos ha (Hipotese alternativa) e temos um modelo heterocedéstico.
</p>

<p>3º Teste : Aplicaremos o calculo de teste Ramsey's RESET sob squares and cubes/quadrados e cubos : <br>
Este teste vai verificar se o modelo esta bem especificado. Aplicará a predição da variável dependente/resposta para verificar se o modelo tem algum problema de variável omitida.<br>
Será exibido uma janela com o seguinte resultado :<br>

```
Auxiliary regression for RESET specification test OLS, using observations 1-104
Dependent variable: l_Vendas_Whittaker

                      coefficient  std. error  t-ratio   p-value
  --------------------------------------------------------------
  const                2.41753     12.9792      0.1863   0.8526 
  l_Index_preco_Wh~   −2.02838     23.0435     −0.08802  0.9300 
  AD_Whittaker         0.564993     4.61138     0.1225   0.9027 
  l_Index_preco_Ca~    0.246456     2.91697     0.08449  0.9328 
  AD_Cadbury           0.0373221    0.336554    0.1109   0.9119 
  yhat^2               0.164690     0.850428    0.1937   0.8469 
  yhat^3              −0.0138036    0.0478272  −0.2886   0.7735 

Test statistic: F = 1.470887,
with p-value = P(F(2,97) > 1.47089) = 0.235
```
O sistema vai inserir os cálculos na janela que fica atrás conforme imagem e resultados a seguir :<br>
<img src="/3-img/aula10marketinganalytics18.png"><br>
<img src="/3-img/aula10marketinganalytics19.png"><br>

```
Log-likelihood for Vendas_Whittaker = −553.809
Excluding the constant, p-value was highest for variable 19 (AD_Cadbury)
Breusch-Pagan test for heteroskedasticity (robust variant) -
  Null hypothesis: heteroskedasticity not present
  Test statistic: LM = 9.56645
  with p-value = P(Chi-square(4) > 9.56645) = 0.0483996

RESET test for specification -
  Null hypothesis: specification is adequate
  Test statistic: F(2, 97) = 1.47089
  with p-value = P(F(2, 97) > 1.47089) = 0.234799
```
O calculo de teste agora informa que o h0 (Hipotese Nula) é "Especificação esta Adequada".<br>
Isto significa que as variáveis consideradas no cálculo de Ordinary Least Square adequadamente explicam a variabilidade das vendas.<br>
Perceba que o novo p-value calculado é 0.234799, superior ao nível de significância 0.05 então aceitamos a hipótese nula de que a especificação do modelo esta adequada. 
</p>
 
<p>4º Teste : Normalidade dos resíduos<br>
Este cálculo será realizado sobre resuldado dos cálculo Ordinary Least Squares com a opção Robust Standard Erros/Erro Padrão Robusto ativada em que teremos como variável resposta, o log de indice de preço da Whittaker + anúncio e display da Whittaker, log de indice de preço da Cadbury, anúncio + display da Cadbury como variáveis explicativas. Figura a seguir mostra a opção Normality of residual :<br>
<img src="/3-img/aula10marketinganalytics20.png"><br>
O resultado será :<br>
<img src="/3-img/aula10marketinganalytics21.png"><br>
Atrás deste gráfico haverá uma janela com as seguintes informações:<br>

```
Frequency distribution for uhat4, obs 1-104
number of bins = 11, mean = 2.56205e-016, sd = 0.270886
       interval          midpt   frequency    rel.     cum.

           < -0.70283  -0.77494       2      1.92%    1.92% 
  -0.70283 - -0.55860  -0.63071       2      1.92%    3.85% 
  -0.55860 - -0.41437  -0.48648       3      2.88%    6.73% *
  -0.41437 - -0.27014  -0.34225       4      3.85%   10.58% *
  -0.27014 - -0.12591  -0.19802      15     14.42%   25.00% *****
  -0.12591 -  0.018325 -0.053790     31     29.81%   54.81% **********
  0.018325 -  0.16256   0.090440     22     21.15%   75.96% *******
   0.16256 -  0.30679   0.23467      11     10.58%   86.54% ***
   0.30679 -  0.45102   0.37890      11     10.58%   97.12% ***
   0.45102 -  0.59525   0.52313       2      1.92%   99.04% 
          >=  0.59525   0.66736       1      0.96%  100.00% 

Test for null hypothesis of normal distribution:
Chi-square(2) = 3.749 with p-value 0.15342
```
E atrás desta janela tera a janela conforme imagem a seguir :<br>
<img src="/3-img/aula10marketinganalytics22.png"><br>
Perceba a parte inferior com os seguintes dados :<br>
```
Test for normality of residual -
  Null hypothesis: error is normally distributed
  Test statistic: Chi-square(2) = 3.74911
  with p-value = 0.153423
```
O p-value esta com 0.153423 que é superior ao nível de significância 0.05 então aceitamos a hipótese nula de que 'o erro esta normalmente distribuido'.<br>
Este teste falha diversas vezes.
<strong>Observação</strong> :<br>
Diversos profissionais pesquisadores informam que os dados da ciência social aplicada são muito diferentes dos dados ciência exata e ciências naturais.<br>
Milhares de modelos
cada um é utilizado numa situação especifica então caso falhe tenta aplicar transformação box-cox, polinomial.
</p>


<p><strong>Estimar o modelo para Cadbury para saber se há influencia no preço a partir da Whittaker</strong><br>


</p>


<br><br>
<hr>
<p>Fontes de estudo
    <ul>
        <li>Aula 10 : <a href="https://youtu.be/DakioM831Ng">Marketing Analytics</a> - Instrutores : Prof. Thiago Marques(USP/IBGE) e Marcos Severo (UFG)</li>
        <li>Aula 10 : <a href="https://youtu.be/HxxFiUiHWQg">Vejo Marketing em tudo! / Marketing everywhere!</a></li>
        <li>Software Package for econometric analysis <a href="http://gretl.sourceforge.net/">Gretl</a></li>
        <li><a href="https://www.ama.org/">American Marketing Association</a></li>
        <li><a href="https://www.estudar.com.vc/cursos/49-econometria">Econometria - Estudar com você</a></li>
        <li><a href="https://pt.wikipedia.org/wiki/Heteroscedasticidade">Heteroscedasticidade</a></li>
        <li><a href="https://en.wikipedia.org/wiki/Homoscedasticity">Homoscedasticity</a></li>
    </ul>
</p>
