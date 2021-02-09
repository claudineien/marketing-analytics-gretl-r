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

<p><strong>Formas de detectar se o modelo com duas variáveis de resposta é melhor que om modelo com uma variável de resposta :</strong>
<ul>(A)
 <li>Quantidade de variáveis no modelo</li>
 <li>Analisar se o incremento de determinada variável foi significativo ou não</li>
 <li>Analisar se o R2 ajustado mudou muito, por que ele penaliza a quantidade de variáveis no modelo</li>
 <li>Utilizar meéticas como BIC-Critério de Informação Bayesiano e AIC-Critério de Informação Akaike.</li>
</ul>
<ul>(B)
 <li>Utilizando o software Gretl<br>
b.1 Selecionar Save/Salvar->Fitted Values/Valores Ajustados e inserir um nome. Esta tarefa deve ser feita no resultado da Ordinary Least Squares (figuras anteriormente exibidas), tanto no resultado com duas variáveis explicativas e quanto no resultado com apenas uma variável explicativa. Figuras ilustrativas a seguir:<br>
<img src="/3-img/aula10marketinganalytics5.png"><br>
Escreva um nome para que o sistema salve o valor ajustado, na pequena janela que será exibida e clique no botão [OK] :<br>
<img src="/3-img/aula10marketinganalytics6.png"><br>
b.2 No sistema Gretl, vamos comparar os valores das variáveis logaritmicas originais de vendas, com as variáveis ajustadas previstas do modelo 1 com apenas 1 variável explicativa, com as variáveis ajustadas previstas do modelo 2 variáveis explicativas, conforme figura a seguir :<br>
<img src="/3-img/aula10marketinganalytics7.png"><br>
Esta figura possui são três janelas distintas, que juntei para melhor visualização.<br>
<strong>Analisando os valores é possivel identificar que os valores ajustados do modelo 2 com 2 variáveis explicativas (o último) esta mais próximo ao valor logaritimico original</strong><br>

O ajuste aplicado sobre as variáveis é o .......<br>

Graficamente fica da seguinte forma :<br>
No sistema Gretl, selecionar View/Ver->Graph specified vars/Gráfico de Variáveis->Time Series Plot/Grafico Série Temporal no menu principal.<br>
<img src="/3-img/aula10marketinganalytics8.png"><br>
Selecionar as variáveis vendas, as variáveis ajustadas com uma variável e com duas variáveis explicativas da marca Whittaker. Figura a seguir :
<img src="/3-img/aula10marketinganalytics9.png">
Resultará no seguinte gráfico :
<img src="/3-img/aula10marketinganalytics10.png">


</li>

</ul>

</p>


<p></p>

<p></p>

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
