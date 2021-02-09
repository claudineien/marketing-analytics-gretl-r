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
<h2>AULA 8 - DESENVOLVENDO MODELO DE REGRESSÃO LINEAR NO R</h2>
<h4>DATASET VENDAS CHOCOLATE</h4>
<p>A análise descritiva é o coração da análise estatística.</p>
<p>Desempenho Mercadológico é o coração do Marketing Analytics.</p>
<p>Utilizaremos :
  <ol>
    <li>dataset <a href="https://github.com/claudineien/marketing-analytics-gretl-r/tree/main/2-dataset">BD_marcas_de_chocolate.csv</a> ou <a href="https://github.com/claudineien/marketing-analytics-gretl-r/tree/main/2-dataset">BD_marcas_de_chocolate.xlsx</a> com dados agregados de todas as informações consolidadas das vendas de determinadas marcas de chocolate de todas as lojas de uma grande rede de varejo dentro de um período de 104 semanas, aproximadamente dois anos.</li>
    <li>fonte <a href="https://github.com/claudineien/marketing-analytics-gretl-r/tree/main/1-source-code/Marketing Analytics - Geral Transformadas e modelos.R">Marketing Analytics - Geral Transformadas e modelos.R</a></li>
  </ol>
</p>

<p>Estes dados se caracterizam como Time Series (Serie Temporal) por que ocorrem dentro de um determinado tempo, prazo controlado por semana.</p>

<p>Modelos inferenciais são modelos de dependência como por exemplo análise de regressão. Nestes há variáveis que são dependentes/respostas de variáveis independentes/explicativas.<br>
Por exemplo : A variável Vendas_Budget é a variável dependente/resposta, que depende das outras variáveis independentes/explicativas que explicam o seu resultado.</p>

<p>Utilizaremos a linguagem R no software RStudio para aplicarmos a <strong>transformação de Variáveis (Feature Engineering)</strong> e desenvolver um modelo linear. Variáveis que serão criadas:<br>
  <ul>
    <li>mercado : contendo as vendas de todas as marcas. As marcas Budget, Pams, Cadbury, Whittaker e Donovan</li>
    <li>variáveis de cada marca / pelo mercado : Market share de todas as marcas</li>
  </ul>
Estas variáveis serão novas colunas para cada marca, para aplicar o Marketing Analytics e desenvolver um modelo mais performático.</p>

<p>Fazer download do arquivo fonte <a href="https://github.com/claudineien/marketing-analytics-gretl-r/tree/main/1-source-code/Marketing Analytics - Geral Transformadas e modelos.R">Marketing Analytics - Geral Transformadas e modelos.R</a></p>

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
  <strong>Importante :</strong><br>
    <ol>
    <li>Correlação menor que zero:Se a correlação é menor que zero, significa que é negativo, isto é, que as variáveis são inversamente relacionadas.<br>
    Quando o valor de alguma variável é alto, o valor da outra variável é baixo. Quanto mais próximo você estiver de -1, mais clara será a covariação extrema. Se o coeficiente é igual a -1, nos referimos a uma correlação negativa perfeita.</li>
    <li>Correlação maior que zero: Se a correlação for igual a +1, significa que é perfeito positivo. Neste caso, significa que a correlação é positiva, isto é, que as variáveis estão diretamente correlacionadas.<br>
    Quando o valor de uma variável é alto, o valor da outra variável também é alto, o mesmo acontece quando eles são baixos. Se estiver próximo de +1, o coeficiente será covariado.</li>
    <li>Correlação igual a zero: Quando a correlação é igual a zero, significa que não é possível determinar qualquer senso de covariação. No entanto, isso não significa que não haja relação não linear entre as variáveis.<br>
    Quando as variáveis são independentes, significa que elas estão correlacionadas, mas isso significa que o resultado é verdadeiro.</li>
    </ol>
A direita no gráfico há uma representação que lembra um termômetro onde +1 é a correlação perfeita 0 correlação nula e -1 correlação fraca.<br>
Algumas interpretações sobre correlação de algumas variáveis :<br>
01- Preco_atual_Pams (horizontal) e Vendas_Pams (vertical) significa que o preço atual diminuiu um pouco as vendas.<br>
02- Indice I_Vendas_Whittaker (horizontal) e Preco_atual_Whittaker (vertical) significa que o preço atual esta acima do preço sugerido 'inflação'.<br>
03- Preco_atual_Pams (horizontal) e Preco_atual_Cadbury (vertical) significa que preço da Pams pode ter influenciado um melhor preço na marca Cadbury.</p>

<p>Também é gerado o gráfico de correlação a seguir que visualmente é mais agradável além de melhor interpretativo :<br>
<img src="/3-img/aula08marketinganalytics4.png"><br>
É importante observar a correlação do Preco_atual_Donavan (horizontal) e Vendas_Budget (vertical) em que podemos entender que o preço superior da marca Donavan em relação a Budget pode ter sido o motivo do aumento das vendas da Budget.</p>

<p>A seguir analisaremos as variáveis Vendas e Índice de preços da Marca Whittaker nos dados no gráfico de dispersão também conhecido como scatterplot, que serve para nos mostrar a relação ou associação e tendências entre as variáveis de resposta (eixo y) e as variáveis explicativas (eixo x).<br>
Plotaremos e analisaremos primeiramente os gráficos com valor e em escala original e depois sob cálculos em logarítmo natural também conhecido como logaritmo neperiano.</p>

<p><strong>Gráficos de dispersão com valores em escala originais</strong>:<br>
<img src="/3-img/aula08marketinganalytics5.png"><br>
O gráfico de dispersão a seguir contém os mesmos dados do anterior sendo exibido a correlação de pearson de -0,82 que significa correlação forte e negativa, o p-value da regressão exibe os valores da regressão que são o coeficiente linear da reta 2400 que é onde toca o eixo y e o coeficiente angular da reta 2300.<br>
<img src="/3-img/aula08marketinganalytics7.png"><br>
Motivo da reta de melhor ajuste não tocar no valor 2400 no eixo y :<br>
Ao fazer o modelo de regressão devemos analisar os valores mínimo e máximo da variável explicativa/independente.<br>
Instrução em r :<br>

```
#Obter valor mínimo e máximo da variável explicativa
summary(dados$index_preco_Whittaker)
```
Resultado :
```
  Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
 0.5882  0.7684  0.9770  0.8837  0.9923  1.0000 
```
Ao fazer o modelo de regressão, as variáveis explicativas de índices de preço que tentam explicar o fenômeno de vendas, por exemplo, e só é possível estimar e/ou interpretar o modelo dentro do intervalo que a variável explicativa foi construída que neste caso esta entre 0.5882 e 1.0000, informado anteriormente.<br>
Sendo o valor minimo 0.5882 e o máximo é 1.000 e significa que o y para este valor mínimo será um pouco acima de 1000 para o modelo de regressão linear, enquanto que o valor 2400 é para um valor mínimo de 0 no eixo x.<br>
Então o valor 2400, neste caso, serve como um parâmetro analítico desta regressão linear.<br>
Não é correto interpretar a regressão linear extrapolando a variável explicativa, como por exemplo considerar um valor 0 para o valor mínimo.<br>
É importante lembrar que 'A regressão existe na interpolação dos valores criados, nos valores da variável explicativa'.<br>
Se fosse regressão linear multipla todos os valores da variavel explicativa tem que estar dentro do range, por isto que não faz sentido 2400 por não conter o zero.<br>
Quando a variavel explicativa não contem o zero não pode interpretar o coeficiente linear.<br>

<p>Na <a href="https://github.com/claudineien/marketing-analytics-gretl-r/blob/main/0-documentation/mrktng_anlzng_07.md">aula 7</a> foi abordado sobre as variáveis em logaritimo natural também conhecido como logaritmo neperiano que possibilita estudar fenômenos que evoluem de maneira exponencial.<br>
Com a aplicação do logaritmo natural a dispersão tende a ficar dentro do intervalo de confiança da previsão e a reta de melhor ajuste será mais performática ao modelo. Aproximação para dentro da área do intervalo.</p>

<p>O gráfico de dispersão a seguir esta sob o cálculo de logaritmo natural ou neperiano :<br>
<img src="/3-img/aula08marketinganalytics6.png"></p>

<p>A transformação da escala sob calculo do logaritmo natural deve conservar a inclinação da reta, o coeficiente de correlação de Pearson, e a direção negativa/positiva. O logatitmo natural transforma os valores em escala exponencial aproximandos-os para um melhor ajuste do modelo.</p>

<p>O gráfico de dispersão a seguir contém os mesmos dados do anterior sendo exibido a correlação de pearson de -0,93 que significa correlação forte (mais que a anterior) e negativa, o p-value da regressão exibe os valores da regressão que são o coeficiente linear da reta 4.400 que é onde toca o eixo y e o coeficiente angular da reta 5.9.<br>
<img src="/3-img/aula08marketinganalytics8.png"></p>

<p>O modelo melhorou por que as variáveis estão transformadas pelo logaritmo natural/neperiano.</p>

<p>O <strong>R2</strong> é poder explicativo do modelo. É o quanto variável explicativa explica sobre a sua variavel resposta, ou seja, o quanto o indice de preco esta explicando da venda.<br>
Neste caso estamos modelando a 'regressão linear simples' e podemos interpretar o R2 como aplicando coeficiente de pearson ao quadrado, como por exemplo :<br>
-0.82^2 = 0.6724 é 67.24% que é o poder de explicação do modelo, ou seja, a variavel X explica 67.24% da variavel y.<br>
No caso das variáveis transformadas pelo logaritmo natural o poder de explicação aumenta, conforme a seguir:<br>
-0.93^2 = 0.8649 é 86,49% que é o valor do R2, que é o poder de explicação do moelo, ou seja, a variável X explica 86,49% da variável y.<br>
Analisar também se o R2 esta próximo do R2 ajustado, por que penaliza a quantidade de variaveis dentro do modelo</p>

<p>O p-value é do teste F, significância conjunta dos parâmetros da regressão, em que pelo menos um beta é estatísticamente diferente de zero.</p>

<p><strong>Coferindo os valores da correlação exibida nos gráficos de dispersão :</strong><br>
Na regressão linear simples se elevar ao quadrado o coeficiente de Pearson o resultado é R2.<br>
Instrução em r :<br>

```
# Valor exato da correlação das variáveis originais e em escala logaritmica
cor(dados$Vendas_Whittaker, dados$index_preco_Whittaker)
# Elevado ao quadrado
cor(dados$Vendas_Whittaker, dados$index_preco_Whittaker)^2
cor(dados$l_Vendas_Whittaker, dados$l_index_preco_Whittaker)
# Elevado ao quadrado
cor(dados$l_Vendas_Whittaker, dados$l_index_preco_Whittaker)^2
```
Resultado :<br>
```
> cor(dados$Vendas_Whittaker, dados$index_preco_Whittaker)
[1] -0.8234906
> cor(dados$Vendas_Whittaker, dados$index_preco_Whittaker)^2
[1] 0.6781368
> cor(dados$l_Vendas_Whittaker, dados$l_index_preco_Whittaker)
[1] -0.9327394
> cor(dados$l_Vendas_Whittaker, dados$l_index_preco_Whittaker)^2
[1] 0.8700028
```
A imagem a seguir mosta como seria no RStudio : <br>
<img src="/3-img/aula08marketinganalytics9.png"></p>

<p>Resumo Estatístico : R-squared, Ajusted R-squared, F-statistic, p-value :<br>
Instrução em r :<br>

```
library(MASS)
# Resumo Estatístico : R-squared, Ajusted R-squared, F-statistic, p-value
modelo1=lm(data=dados, Vendas_Whittaker ~ index_preco_Whittaker)
summary(modelo1)
```
Resultado :<br>
```
> summary(modelo1)
Call:
lm(formula = Vendas_Whittaker ~ index_preco_Whittaker, data = dados)
Residuals:
    Min      1Q  Median      3Q     Max 
-370.64 -104.21   25.50   48.92  878.27 
Coefficients:
                      Estimate Std. Error t value Pr(>|t|)    
(Intercept)             2378.0      142.5   16.69   <2e-16 ***
index_preco_Whittaker  -2339.5      159.6  -14.66   <2e-16 ***
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1
Residual standard error: 204.8 on 102 degrees of freedom
Multiple R-squared:  0.6781,	Adjusted R-squared:  0.675 
F-statistic: 214.9 on 1 and 102 DF,  p-value: < 2.2e-16
```
Instrução em r :<br>
```
library(MASS)
# Resumo Estatístico : R-squared, Ajusted R-squared, F-statistic, p-value
modelo2=lm(data=dados, l_Vendas_Whittaker ~ l_index_preco_Whittaker)
summary(modelo2)
```
Resultado :<br>
```
> modelo2=lm(data=dados, l_Vendas_Whittaker ~ l_index_preco_Whittaker )
> summary(modelo2)
Call:
lm(formula = l_Vendas_Whittaker ~ l_index_preco_Whittaker, data = dados)
Residuals:
     Min       1Q   Median       3Q      Max 
-1.08897 -0.16647 -0.00776  0.16294  0.92108 
Coefficients:
                        Estimate Std. Error t value Pr(>|t|)    
(Intercept)              4.44344    0.04547   97.71   <2e-16 ***
l_index_preco_Whittaker -5.89903    0.22578  -26.13   <2e-16 ***
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1
Residual standard error: 0.3452 on 102 degrees of freedom
Multiple R-squared:   0.87,	Adjusted R-squared:  0.8687 
F-statistic: 682.6 on 1 and 102 DF,  p-value: < 2.2e-16
```
<p><strong>Benefício do Logaritmo Natural </strong> :<br>
Utilizar o coeficiente em logaritmo natural ou neperiano possibilita comparar coeficientes de variáveis em escalas diferentes ou comparar unidades de medidas diferente.<br>
Por exemplo:<br>
As ações na rede social em unidade de intensidade de interação é 0.04%<br>
O investimento em midia tradicional em unidade dinheiro-moeda é 0.02%<br>
O logaritmo natural os transformam em coeficiente de mudança percentual possibilitando comparar, analisar e tomar decisões.<br>
Neste exemplo diriamos que as acoes em rede social produzem efeito maior que a midia tradicional mesmo em medidas diferentes.</p>

<p><strong>INTERPRETAÇÃO MARKETING ANALYTICS COM RELAÇÃO AO MODELO GERADO</strong><br>
Em ambos os gráficos é possível entender que quando o índice de preço aumenta (é inflacionado) as vendas diminuem.<br>
Indice de preço = Preço atual / Pelo preço sugerido</p>

<hr>
<p><strong>Entender Regressão Linear com coeficiente diferente de zero</strong><br>
As instruções a seguir geram dados com valores zerados, para que didáticamente entendermos que ao considerar 0 no X a reta de melhor ajuste tocará no valor exato de y que é o coeficiente linear da reta.<br>
Executar em r :<br>

```
###adicionando uma linha 0 no dataframe
dados[105,]=0
dim(dados)
#criando o modelo com a nova obs
modelo1=lm(data=dados, Vendas_Whittaker ~ index_preco_Whittaker )
summary(modelo1)
#Gerando o gráfico de dispersão
ggscatter(dados, 
          x = "index_preco_Whittaker", 
          y = "Vendas_Whittaker", 
          add = "reg.line") +
  stat_cor(label.x = 0.85, 
           label.y = 1200) +
  stat_regline_equation(label.x = 0.85, 
                        label.y=1100)
```
Resultado :<br>
```
Call:
lm(formula = Vendas_Whittaker ~ index_preco_Whittaker, data = dados)
Residuals:
     Min       1Q   Median       3Q      Max 
-1602.80   -73.65   -47.77   -21.81  1147.73 
Coefficients:
                      Estimate Std. Error t value Pr(>|t|)    
(Intercept)             1602.8      160.0  10.016  < 2e-16 ***
index_preco_Whittaker  -1479.7      180.1  -8.214 6.61e-13 ***
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1
Residual standard error: 280.3 on 103 degrees of freedom
Multiple R-squared:  0.3958,	Adjusted R-squared:  0.3899 
F-statistic: 67.47 on 1 and 103 DF,  p-value: 6.614e-13
```
Um gráfico semelhante a figura a seguir será apresentado :<br>
<img src="/3-img/aula08marketinganalytics10.png"><br>
A interpretação do coeficiente linear tocar o eixo y só vale quando a variável explicativa tem o valor mínimo igual a 0 em seu intervalo.</p>

<p><strong>Atenção . . .</strong><br>
"<strong>prof Thiago Marques</strong><br>
O R2 pode ter poder de explicação, mas o modelo pode não existir."<br>
"<strong>prof Marcos Severo:</strong><br>
Discussão importante entre os pesquisadores :<br>
Se o objetivo do modelo é fazer previsão, então calcula, considera analisa o R2.<br>
Se o objetivo do modelo é identificar influência conhecido pelos economistas como 'efeito marginal' de uma variável na outra o R2 pode ser próximo de zero."</p>

<br><br>
<hr>
<p>Fontes de estudo
    <ul>
        <li>Aula 08 : <a href="https://youtu.be/o9U9y6260cA">Marketing Analytics</a> - Instrutores : Prof. Thiago Marques(USP/IBGE) e Marcos Severo (UFG)</li>
        <li>Aula 08 : <a href="https://youtu.be/dkKoF4GxNsg">Vejo Marketing em tudo! / Marketing everywhere!</a></li>
        <li><a href="https://www.youtube.com/channel/UCyYHddVgHXAwDJ27-JxWqBA">Vejo Marketing em tudo! / Marketing everywhere!</a></li>
        <li><a href="https://en.wikipedia.org/wiki/Market_share">Marketing Share - O que é?</a></li>
        <li><a href="https://en.wikipedia.org/wiki/John_Napier">John Napier - Logaritmo Natural ou Neperiano</a></li>
    </ul>
</p>
