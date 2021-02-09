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
<img src="/3-img/aula10marketinganalytics2.png"></p>

<p><strong>Interpretar algumas informações da Ordinary Least Squares :</strong><br>
1º -Teste F(2, 101) e o P-value: São dois graus de liberdade, que são as duas variáveis explicativas. 
Verificamos se o modelo de regressão faz sentido, ou seja, se a parte da variação explicada é estatísticamente significativa. Sendo, então ao menos um dos betas estimados no modelo é estatísticamente diferente de zero.
Se o beta for estatísticamente diferente de zero há uma relação funcional entre a variável y (vendas) e a variável x (neste caso preço + anúncio e display).
O teste F divide a série de dados em duas partes : a variação não explicada e a variação explicada.

O teste F esta com valor grande estatísticamente e o P-value/P-valor esta com valor muito pequeno.
O P-value 3,32e-55 é 0,(55 0s)332 está é menor que 0.05 e menor que 0.01, então o h0 (hipótese nula) é rejeitada dando suporte a ha (hipótese alternativa) de que um dos valores é estatisticamente diferente de zero.

2o Interpretar os betas individualmente


O teste de hipótese é muito importante na estatística, por que temos que testar uma hipótese em cada beta.

hipótese nula = nada esta acontecendo ou beta é igual a 0 e significa que não há relação entre as variáveis
hipótese alternativa = é o beta é diferente de 0

<strong>Atenção:</strong><br>
Sendo rigoroso : Estatisticamente o beta é igual a zero

</p>

<p>Vamos aprender a prever a influência do preço nas vendas e estimar o modelo de regressão de mínimos quadrados para marca Whittaker.<br>
Executar procedimentos no software Gretl conforme imagem a seguir :<br>
<img src="/3-img/aula09marketinganalytics01.png"><br>
01- Model\OLS-Ordinary Least squares regression<br>
02- Selecionar a variável dependente/de resposta l_Vendas_Whittaker e clicar na seta na parte superior para ser incluida no campo Dependent variable.<br>
03- Selecionar a variável independente/explicativa l_Index_preco_Whittaker e clicar na seta na parte superior para ser incluida no campo Regressors.<br>
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
Temos aqui uma demanda que é elástica.<br>
Se esse beta fosse <-1 (entre -0.1 e -0.9) seria uma demanda inelástica.<br>
O aumento de 1% no preço provoca uma redução na demanda mas < 1%, mas não é o caso aqui.<br>
O caso aqui é eu tenho um acréscimo de 1% no preço e tenho uma redução na demanda maior que 1%.<br>
É possível fazer um intervalo de confiança esperado para onde vai variar, e para isto basta usar o erro padrão. Considerando dois erros padrão para cima ou para baixo e com isto produzimos um intervalo de onde vai variar o intervalo do efeito do preço nas vendas, a influência do preço nas vendas.<br>

<strong>-5.89903 Faz Sentido ?</strong><br>
O resultado de -5.8903 faz sentido por conta de uma meta-analysis realizado por diversos pesquisadores em que foram considerados 1851 elasticidades de preços entre 1961 e 2004 (43 anos de dados) das influências de preço nas vendas publicada no American Marketing Association, em que provarão que a distribuição é centrada no valor negativo.<br>
Confira no documento <a href="/2-dataset/Bijmolt_et_al_2005.pdf">Bijmolt_et_al_2005.pdf</a> disponibilizado <a href="/2-dataset/Bijmolt_et_al_2005.pdf">aqui</a>.<br>
Vale lembrar que o produto aqui em estudo é chocolate, que é um produto de alta frequência, portanto na média um aumento no preço implica na redução das vendas.</p>

<p>Talvez o coeficiente -5.89903 se ajuste mais quando for considerados outras variáveis, e faz sentido por ser uma regressão simples. É possível que o coeficiente esteja considerando o preço e outro valor, e/ou que significa que pode estar considerando quase todo o erro padrão.<br>
Para melhor entendimento sobre o que pode estar contido no coeficiente, imagine o dono de uma loja quando reduz o preço ele divulga de alguma forma a redução nos preços e isto indica que há muitas outras variáveis para ajudar o coeficiente se ajustar. Isto significa que quando o preço é reduzido outra ação é realizada para compensar.</p>

<p><strong>Importante :</strong><br>
Antes de interpretar o coeficiente, como foi feito aqui, deve-se :<br>
1o Interpretar se a regressão faz sentido e isto significa fazer um teste de hipótese para saber se o modelo global faz sentido. O modelo global divide a variação na parte não explicada e na parte explicada, e com base nestas é aplicado o teste F.<br>
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

<p>2o Interpretar as Estatisticas Descritivas básicas totais. Lembando que aqui estamos analisando valores em logaritmo.<br>

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

<p><strong>Regressão Múltipla</strong><br>
Vamos tentar melhorar o modelo em estudo<br>
Executar procedimentos no software Gretl conforme imagem a seguir :<br>
<img src="/3-img/aula09marketinganalytics03.png"><br>
01- Selecionar a variável dependente/de resposta l_Vendas_Whittaker e clicar na seta na parte superior para ser incluida no campo Dependent variable.<br>
02- Selecionar as variáveis independentes/explicativas l_Index_preco_Whittaker e clicar na seta na parte superior para ser incluida no campo Regressors, depois a variável AD_Whittaker.<br>
Uma janela semelhante a janela a seguir será exibida :<br>
<img src="/3-img/aula09marketinganalytics04.png"><br>
As vendas provavelmente variam sob influência do preço e sob influência do anuncio e display. Anuncio e display é uma variável ponderada e esta em percentual, portanto não precisa ser aplicado o logaritmo natural por que já esta na mesma escala percentual.<br>

1o Teste F faz sentido?<br>
```
F(2, 101)            554.9428   P-value(F)           3.32e-55
```
Resposta : Sim. O teste F possui um valor alto e o p-value associado é baixo. Será rejeitado hipótese nula e ao menos um dos betas da regressão é estatisticamente diferente de zero.<br>
2o Variáveis Explicativas melhoraram?<br>
```
R-squared            0.916590   Adjusted R-squared   0.914938
```
Resposta : Sim. Agora 91.49% da variável resposta é explicada pelas variáveis explicativas. Houve melhora com a inclusão da variável explicativa Anuncio e Display.<br>

O R2 ajustado sempre vai aumentar independente de qualquer variável que seja incluida. O que deve ser entendido é se o aumento é significativo ou não significativo. No caso de aumento não significativo e que aumentou a complexidade do modelo deve ser avaliado se será o custo-benefício em incluir esta variável pouco aumentou no R2.<br>

3o Qual o valor do coeficiente individual da variável indice de preco nas vendas?<br>
```
                    coefficient  std. error  t-ratio   p-value 
l_Index_preco_Wh~    −4.70154    0.241768    −19.45   6.35e-036 ***
```
Resposta : Analisando o documento meta-análise <a href="/2-dataset/Bijmolt_et_al_2005.pdf">Bijmolt_et_al_2005.pdf</a> página 145, concluimos que valor esta próximo da média central. Aqui entendemos que houve ajustes com base em estudos ciêntíficos empíricos.<br>

4o Qual o valor do coeficiente individual da variável anúncio e display nas vendas? <br>
```
AD_Whittaker          0.868475   0.115631      7.511  2.41e-011 ***
```
Para cada 1% de acrescimo de anúncio e display nas lojas haverá aumento de 0.8684% nas vendas da marca Whittaker.<br>
É interpretado em percentual por que esta em decimal, se fosse inteiro a interpretação seria outra.<br>

A variável indice de preço deve ser negativa e a variável anuncio e display deve ser positiva, caso contrário revisar tudo desde o início.</p>

<h3>Um Intervalo Importante</h3>
<p><strong>Estatística Descritiva</strong><br>
A estatistica descritiva é a base da construção de um modelo performático, por que é com ela que aprendemos o que é, como usar e para que serve Média Aritmética, Média Ponderada, Desvio padrão, Explorar comportamento de variáveis explicativas, Explorar comportamento de variáveis resposta, Explorar fenômeno que esta estudando, Outliers, Medidas de tendência central, Dispersão, Curtose, Coeficiente de assimetria, Probabilidade, Histograma, Box-Plot, Variaveis Discretas, Variaveis Continuas
Inferencia Estatistica, Noções de Amostragem de estimação, Amostragem Probabilística, Amostragem Não Probabilística, Minimos Quadrados Ordinais</p>

<p>Antes de estudar regressão linear entenda primeiro tudo sobre Estatística Básica</p>

<p>Ao pegar uma base de dados para estimar um modelo iniciar passo-a-passo, validar o modelo a cada passo que o constroi assim terá um modelo com uma validade de face ou face validity (em inglês), termo originado dos modelos de econometria aplicada de marketing.<br>
Se o coeficiente que estiver interpretando estiver difícil de ser explicado significa que o modelo esta errado ou que você não conhece o básico da estatistica descritiva.</p>

<p>Homocedasticidade (Homoscedasticity)<br>
Erros normalmente distribuidos em torno da reta de regressão, significa que a mesma proporção de pontos acima da reta tem que estar abaixo da reta caso contrário haverá um problema no coeficiente em si.<br>
Talvez o modelo não esteja captando e ai ocorre um problema que para alguns valores o modelo de regressão superestima o efeito do preço e para outros valores ele subestima.<br>
<img src="/3-img/aula09marketinganalytics05.png"><br>
Estes são modelos preditivos para y em função de X.
A linha vermelha é a linha de melhor ajuste/regressão/previsão e os pontos azuis são as observações/amostras. Relação entre X e y conforme avança nos valores X há um aumento nos valores y.<br>
1a Figura - Homocedásticos<br>
A distância dos valores observados/amostras (pontos azuis) e a previsão (linha vermelha/reta de melhor ajuste) é constante ao longo da previsão.<br>
2a Figura - Heterocedásticos<br>
A distância dos valores observados/amostras (pontos azuis) e a previsão (linha vermelha/reta de melhor ajuste) diminui ao longo da previsão.<br>
3a Figura - Heterocedásticos<br>
Ocorre o inverso da 2a Figura<br>
O interessante é que ambas as situações formam um cone.</p>

<p>Sobre a janela com os cálculos estatísticos abertos clicar em Tests\Heteroskedasticity\Koenker conforme imagem a seguir :<br>
<img src="/3-img/aula09marketinganalytics06.png"><br>
A informação Breusch-Pagan test for heteroskedasticity (robust variant) - é exibida na parte inferior.<br>
<img src="/3-img/aula09marketinganalytics07.png"><br>

```
Breusch-Pagan test for heteroskedasticity (robust variant) -
  Null hypothesis: heteroskedasticity not present
  Test statistic: LM = 7.5884
  with p-value = P(Chi-square(1) > 7.5884) = 0.00587449
```
O valor de p-value nos permite rejeitar a hipótese nula<br>
A Hipotese nula esta sem Heterocedasticidade<br>
Hipotese alternativa esta com Heterocedasticidade<br>

Conclusão : O modelo é heterocedastico por que aceitamos a hipotese alternativa que é heterocedastica. Então é necessário melhorar.</p>

<p>Executar o mesmo procedimento informado anteriormente sobre a janela dos cálculos de regressão múltipla, que deve estar aberta.<br>
<img src="/3-img/aula09marketinganalytics08.png"><br>

```
Breusch-Pagan test for heteroskedasticity (robust variant) -
  Null hypothesis: heteroskedasticity not present
  Test statistic: LM = 6.19689
  with p-value = P(Chi-square(2) > 6.19689) = 0.0451193
```
O valor de p-value nos permite rejeitar a hipótese nula<br>
A Hipotese nula esta sem Heterocedasticidade<br>
Hipotese alternativa esta com Heterocedasticidade<br>
Observar o p-value passou de 0.00587449 para 0.0451193 e isto significa que o modelo esta sendo melhorado.<br>
Conclusão : O modelo é heterocedastico por que aceitamos a hipotese alternativa que é heterocedastica. Ainda é necessário melhorar.</p>

<p><strong>Modelo Heterocedastico :</strong>
Em um modelo heterocedastico é muito provável que uma variável muito importante esteja sendo omitida. E quando esta variável é incluinda o modelo vai melhorado.</p>


<br><br>
<hr>
<p>Fontes de estudo
    <ul>
        <li>Aula 10 : <a href="https://youtu.be/DakioM831Ng">Marketing Analytics</a> - Instrutores : Prof. Thiago Marques(USP/IBGE) e Marcos Severo (UFG)</li>
        <li>Aula 10 : <a href="https://youtu.be/HxxFiUiHWQg">Vejo Marketing em tudo! / Marketing everywhere!</a></li>
        <li>Software Package for econometric analysis <a href="http://gretl.sourceforge.net/">Gretl</a></li>
    </ul>
</p>
