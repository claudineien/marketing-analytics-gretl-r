<h5><a href="blank_">[en]</a> | <a href="blank_">[pt-br]</a>
</h5>
<h5>
<div>
  <table>
    <tr>
      <th>PROJETO DESAFIO</th>
      <th>OBJETIVO</th>
      <th>TIPO DE DADOS</th>
    </tr>
    <tr>
      <td>Marketing Analytics no Airbnb</td>
      <td>Aplicar Estatística descritiva, Exploração dos Dados, Análise de Regressão e Modelos básicos de Séries Temporais</td>
      <td>Time Series</td>
    </tr>
    <tr>
        <td colspan="4">LinkedIn : https://www.linkedin.com/in/claudineien/</td>
    </tr>
  </table>
</div>
</h5>
<hr>
<h2>PROJETO DESAFIO</h2>
<p>
<img src='/5-marketing-analytics-project/mrktng_anlzng_prj_img01.jpg'><br>
<font size='2'>Imagem: Shuttestock</font>
</p>

<h4>1. Objetivo do Trabalho</h4>
<p>Aplicar analises relacionadas ao Marketing e associado a Estatística.</p>

<p>Desenvolver modelo preditivo para ajudar novos locatários a decidir sobre quais valores deverão colocar em seus imóveis considerando as características :
  <ul>
    <li>tipo de quarto</li>
    <li>latitude e longitude</li>
    <li>quantidade mínima de noites a locar</li>
  </ul>
Um bom valor aumenta a visualização do imóvel<br>
Imóvel visto e/ou lembrado, Pode ser imóvel alugado.
</p>

<h4>2. Justificativa - Escolha dataset Airbnb</h4>
<p>Escolhi o dataset <a href="/5-marketing-analytics-project/listings-RIo_de_Janeiro.csv">Airbnb Rio de Janeiro</a> por ser empresa de economia compartilhada, centrada em torno de alugar quartos das suas casas ou a casa inteira de terceiros em e de qualquer parte do mundo. Considero uma das metodologias mais inteligentes de distribuição compartilhada de renda à pessoas empreendedoras.<br>
"Airbnb permitiu às pessoas de todo o mundo a oportunidade de conquistar mais independência financeira."<br>
Airbnb recebe um percentual sobre o valor das locações.<br>
Alugar imóvel de outra pessoa e sublocar.<br>
A escolha do dataset do Rio de Janeiro foi realizada pelo professor e pesquisador <a href="https://www.linkedin.com/in/marcos-severo-30967936/">Marcos Severo</a>
</p>

<p>Este arquivo contém informações resumidas e métricas para listagens no Rio de Janeiro <a href="http://insideairbnb.com/get-the-data.html">Inside Airbnb<a>. Procure por Rio de Janeiro.
</p>

<h4>3. Linguagem de programação utilizada</h4>
<p>Python 3.7.7<br>
<img src="/5-marketing-analytics-project/mrktng_anlzng_prj_img02.png">
</p>

<h4>4. Plataforma de programação utilizada</h4>
<p><a href="https://docs.conda.io/en/latest/miniconda.html">Jupyter Notebook - Miniconda</a></p>


<h4>5. Contextualização do problema</h4>
<p>Fundada em agosto 2008 por Brian Chesky e Joe Gebbia, a Airbnb nasceu na crise financeira global deste mesmo ano, da qual se beneficiou.<br>
Durante uma conferência de designers em 2008 na cidade de São Francisco-EUA, ao hospedar uma mulher de meia idade, um indiano e um pai de família em seu próprio apartamento perceberam que a idéia poderia se tornar um grande negócio e decidiram extender esta idéia a outras pessoas. As pessoas fariam todo o processo on-line através de uma plataforma na internet.<br>
O modelo utilizado pela Airbnb é conhecido como economia compartilhada, em que as pessoas alugam suas casas ou quartos a outras pessoas para que estas não aluguem hotel.<br>
Sem um perfil de público definido, podendo atender a todas as pessoas, a plataforma permite que os proprietários anunciem suas casas, apartamentos entre outros objetos gratuitamente. Todo o processo de reserva de estadias, pagamento, trocas de mensagens acontece dentro da própria plataforma. O Airbnb cobra do hóspede uma taxa que varia de 6% a 12% do valor total, apenas se a reserva for efetuada.
</p>

<p>O objetivo deste estudo é aplicar a análise de Marketing associado a Estatística para tentar prever o melhor valor para o negócio do anunciante considerando as características do objeto, o local e a regra de locação mínima.
</p>

<p>O resultado provavelmente vai ajudar os anunciantes a aumentarem a quantidade de negociação por deixá-los cientes sobre os valores praticados pela concorrência em produtos semelhantes e/ou iguais ao seu.
</p>

<p><h4>6. Base de dados</h4>
<h5>6.1 Base Original</h5>
<ul>
  <li>Visão da base :<br>
  Listagem Rio de Janeiro
  </li>
  <li>Filtros de inclusão :<br>
  Não Ná
  </li>
  <li>Filtros de exclusão :<br>
  Foi excluída a coluna/feature neighbourhood_group, por estar totalmente NaN.
  </li>
</ul>
<h5>6.2 Principais Variáveis</h5>
<ul>
  <li>Variáveis explicativas :<br>
  Coordenada latitude, Coordenada longitude, Tipo da sala (room_type), Quantidade mínima de noites que deve ficar (minimum_nights)
  </li>
  <li>Variável resposta :<br>
  Preço do produto. Coluna price.
  </li>
</ul>
</p>

<p><h4>7. Análise Descritiva</h4>

</p>

<p><h4>8. Análise Exploratória</h4>

</p>

<br><br>
<hr>
<p><strong>Fontes de estudo</strong>
    <ul>
      <li><a href="http://insideairbnb.com/about.html">Inside Airbnb</a></li>
    <li><a href="https://www.airbnb.com/">Airbnb</a></li>
    <li>Crise :<br>
    -/ <a href="https://www.forbes.com.br/forbeslife/2020/03/airbnb-reembolsa-hospedes-por-conta-do-coronavirus-e-cria-crise-para-anfitrioes/">Airbnb reembolsa hóspedes por conta do coronavírus e cria crise para anfitriões</a><br>
    -/ <a href="https://neofeed.com.br/blog/home/uma-das-startups-mais-afetadas-pela-crise-airbnb-corta-25-de-sua-forca-de-trabalho/">Uma das startups mais afetadas pela crise, Airbnb corta 25% de sua força de trabalho</a></li>
    <li>IPO :<br>
    -/ <a href='https://www.seudinheiro.com/2020/empresas/airbnb-ipo-10-12/'>Que crise? Airbnb precifica ações acima do teto e levanta US$ 3,5 bilhões em IPO</a></li>
    <li>Curiosidades :<br>
    -/ <a href="https://canaltech.com.br/curiosidades/Airbnb-Plataforma-de-de-hospedagens-traz-opcoes-para-todo-o-tipo-de-turista/">Airbnb: a história da startup que, hoje, vale 1 bilhão de dólares</a><br>
    -/ <a href="https://www.whow.com.br/negocios/especial-empreendedores-airbnb-capta-us-1-bilhao-em-investimento-em-meio-a-crise/">Especial empreendedores</a></br>
    </ul>
</p>
