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
$$P(x) = \frac{1}{\sigma\sqrt{2\pi}} e^{\frac{-(x-\mu)^2}{2\sigma^2}}$$
<p>
<img src='/5-marketing-analytics-project/mrktng_anlzng_prj_img01.jpg'><br>
<font size='2'>Imagem: Shuttestock</font><br>
<img src='/5-marketing-analytics-project/mrktng_anlzng_prj_img04hotel-2158962_640.png'><br>
Image by <a href="https://pixabay.com/users/marianka1308-3749559/?utm_source=link-attribution&amp;utm_medium=referral&amp;utm_campaign=image&amp;utm_content=2158962">Ivana Mariankova</a> from <a href="https://pixabay.com/?utm_source=link-attribution&amp;utm_medium=referral&amp;utm_campaign=image&amp;utm_content=2158962">Pixabay</a>
</p>

<h4>1. Objetivo do Trabalho</h4>
<p>Aplicar analises relacionadas ao Marketing e associado a Estatística.</p>

<p>Desenvolver modelo preditivo para ajudar novos locatários a decidir sobre quais valores deverão colocar em seus imóveis considerando as características :
  <ul>
    <li>tipo de quarto</li>
    <li>latitude e longitude</li>
    <li>quantidade mínima de noites a locar</li>
  </ul>
"Um bom preço agrega valor ao imóvel e aumenta sua visualização e acredito que imóvel sempre visto e/ou lembrado, maior probabilidade terá de ser alugado."
</p>

<h4>2. Justificativa - Escolha dataset Airbnb</h4>
<p>Escolhi o dataset <a href="/5-marketing-analytics-project/listings-RIo_de_Janeiro.csv">Airbnb Rio de Janeiro</a> por ser empresa de economia compartilhada, que considero uma das metodologias mais inteligentes de distribuição compartilhada de renda à pessoas empreendedoras. Esta economia compartilhada esta centrada em torno de alugar quartos das suas casas ou a casa inteira de terceiros em e de qualquer parte do mundo.<br>
"Airbnb permitiu às pessoas de todo o mundo a oportunidade de conquistar mais independência financeira."
</p>

<p>Este arquivo contém informações resumidas e métricas para listagens no Rio de Janeiro. A seguir :<br>
Link do Dataset : <a href="/2-dataset/listings-RIo_de_Janeiro.csv">listings-RIo_de_Janeiro.csv</a><br>
Quantidade de Registros : 35.731<br>
Fonte Origem Dataset : <a href="http://insideairbnb.com/get-the-data.html">http://insideairbnb.com/get-the-data.html</a>. Procure por Rio de Janeiro.<br>

<div>
  <table>
    <tr>
      <th>Campo</th>
      <th>Descrição</th>
    </tr>
    <tr>
      <td>id</td>
      <td>Número de Identificação da propriedade na lista</td>
    </tr>
    <tr>
      <td>name</td>
      <td>Nome da propriedade divulgada</td>
    </tr>
    <tr>
      <td>host_id</td>
      <td>Número de Identificação do host/locador. Relacionado ao name.</td>
    </tr>
    <tr>
      <td>host_name</td>
      <td>Nome do host/locador/anfitrião. Relacionado ao host_id.</td>
    </tr>
    <tr>
      <td>neighbourhood_group</td>
      <td>Grupo dos bairros vizinhos</td>
    </tr>
    <tr>
      <td>neighbourhood</td>
      <td>Nome de Bairros vizinhos</td>
    </tr>
    <tr>
      <td>latitude</td>
      <td>Coordenada latitude para geolocalização</td>
    </tr>
    <tr>
      <td>longitude</td>
      <td>Coordenada longitude para geolocalização</td>
    </tr>
    <tr>
      <td>room_type</td>
      <td>Tipo do quarto oferecido</td>
    </tr>
    <tr>
      <td>price</td>
      <td>Preço para alugar o imóvel</td>
    </tr>
    <tr>
      <td>minimum_nights</td>
      <td>Quantidade minima de noites a reservar</td>
    </tr>
    <tr>
      <td>number_of_reviews</td>
      <td>Quantidade de comentários que o imóvel recebeu</td>
    </tr>
    <tr>
      <td>last_review</td>
      <td>Data da último comentáro ao imóvel</td>
    </tr>
    <tr>
      <td>reviews_per_month</td>
      <td>Quantidade de comentários sobre o imóvel por mês - Verificar por que menor que o number_of_reviews???</td>
    </tr>
    <tr>
      <td>calculated_host_listings_count</td>
      <td>Quantidade de imóveis do mesmo anfitrão</td>
    </tr>
    <tr>
      <td>availability_365</td>
      <td>Númvero de dias de disponibilidade dentro de 365 dias</td>
    </tr>
  </table>
</div>
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

<p>O resultado provavelmente vai ajudar os anunciantes a aumentarem a quantidade de negociação por deixá-los cientes sobre os valores praticados pela concorrência em produtos semelhantes e/ou iguais ao seu produto.
</p>

<p><h4>6. Base de dados</h4>
<h5>6.1 Base Original</h5>
<ul>
  <li>Visão da base :<br>
  Listagem de hostels a alugar no Rio de Janeiro
  </li>
  <li>Filtros de inclusão :<br>
  Não Ná
  </li>
  <li>Filtros de exclusão :<br>
  Foi excluída a coluna/feature neighbourhood_group, por estar totalmente sem dados (NaN / Null)
  </li>
</ul>
<h5>6.2 Principais Variáveis</h5>
<ul>
  <li>Variáveis explicativas :<br>
  Bairros vizinhos (neighbourhood), Coordenada latitude (latitude), Coordenada longitude (longitude), Tipo do quarto (room_type), Quantidade mínima de noites que deve contratar (minimum_nights), Quantidade de comentários sobre o listing number_of_reviews)
  </li>
  <li>Variável resposta :<br>
  Preço para alugar o imóvel (price)
  </li>
</ul>
</p>

<p><h4>7. Explorar dataset</h4>


Através de gráficos, planilhas e/ou relatórios com ajuda de algorítimos matemáticos e estatísticos o Cientista de dados deve :
detectar se a quantidade e/ou conteúdo de dados são suficientes para desenvolver a solução

ok analisar o encoding nos dados : ascii, iso, utf

ok detectar campos com opções como ramo atividade empresa (serviço, comércio, indústria, agricultura), genero (F-Feminino, M-Masculino), estado cívil (S-solteiro, C-Casado, V-Viuvo)

ok analisar o tipo de cada dado : string, objeto, float, inteiro

analisar o conteúdo de cada dado, inclusive os nulos, vazios e nan
detectar padrões nos dados
detectar tendências nos dados
detectar correlação entre os dados


Registros divergentes :
 O python leu 35731
 O csv contém 35873
 50+30+30+32 = 142 registros divergência

Ao verificar o arquivo identifiquei inconsistências em algumas linhas/registros que podem prejudicar análise e causar problemas no modelo :
```
2177761,"Mar à Vista 
#CommuitaPaz
2 quartos puro charme",1091866,Claudia,,Ipanema,-22.98393,-43.20167,Entire home/apt,376,2,3,2020-02-25,0.04,3,364
```
```
2979612,"2 quartos em Botafogo p/ a Copa
",15197576,Mara,,Urca,-22.95641,-43.16486,Entire home/apt,1606,1,0,,,1,365
```
```
4815085,"Loft em vila residencial 

",24797835,Augusto,,Catete,-22.9233,-43.18255,Entire home/apt,171,1,1,2015-02-18,0.02,2,365
```

Para garantir a melhor análise de dados possível<br>
1o Verificar as colunas 
```
df00.info()
<class 'pandas.core.frame.DataFrame'>
RangeIndex: 35731 entries, 0 to 35730
Data columns (total 16 columns):
 #   Column                          Non-Null Count  Dtype  
---  ------                          --------------  -----  
 0   id                              35731 non-null  int64  
 1   name                            35673 non-null  object 
 2   host_id                         35731 non-null  int64  
 3   host_name                       35726 non-null  object 
 4   neighbourhood_group             0 non-null      float64
 5   neighbourhood                   35731 non-null  object 
 6   latitude                        35731 non-null  float64
 7   longitude                       35731 non-null  float64
 8   room_type                       35731 non-null  object 
 9   price                           35731 non-null  int64  
 10  minimum_nights                  35731 non-null  int64  
 11  number_of_reviews               35731 non-null  int64  
 12  last_review                     20740 non-null  object 
 13  reviews_per_month               20740 non-null  float64
 14  calculated_host_listings_count  35731 non-null  int64  
 15  availability_365                35731 non-null  int64  
dtypes: float64(4), int64(7), object(5)
memory usage: 4.4+ MB
```
name - nome do objeto a alugar = 58 NaNs
```
# 58 hostles sem nome do host
df00.loc[df00.name.isna(), :]
df00["name"].isnull().sum()
```
host_name - nome do locador = 5 NaNs
```
# Exibe os registros sem host_name
df00.loc[df00["host_name"].isna(), :]
# Os nomes vazios possuem apenas um host_id
df00.query('(host_id == [44994758, 81549860, 83284834, 83284834, 1016923])')
```
last_review
```
# Exibir registros com NaNs nesta coluna = 14991
df00["last_review"].isnull().sum()
df00["last_review"].isna().sum()
```
reviews_per_month
```
# Exibir registros NaNs nesta coluna = 14991
df00["reviews_per_month"].isna().sum()
```

2o Copia do dataframe principal
```
df01 = df00.copy()
```

3o Identificar todos os campos null ou NaN
```
# Exibir quais colunas possuem Null Datas
df01.isnull().any()
```
```
# Exibir quais colunas possuem NaN Data
df01.isnull().any()
```

4o Preencher dados de collumns que estão NaN ou Null
```
df01["name"].fillna(value="", inplace=True)
```
```
df01["host_name"].fillna(value="", inplace=True)
```

5o Excluir coluna desnecessária esta totalmente NaN ou Null
```
# Excluir coluna desnecessária
df01.drop("neighbourhood_group", axis=1, inplace=True)
```





</p>

<p><h4>7. Limpeza</h4>
1o momento da estatstica é a centralidade (média, mediana)<br>
x
2o momento na estatística é a variabilidade ou distância<br>

Alguns Insights :<br>
Preço<br>
Por região (geolocalização)<br>
Por bairro<br>
Por tipos de propriedades<br>
Por quantidade de reviews<br>
Será que mais reviews aumenta o preço?<br>
Será a quantidade de comentários aumenta o preço?<br>
Relacionar preço com reviews<br>
Review : Padrão de intensidade na plataforma/rede social<br>
</p>


<p><h4>7. Análise Descritiva</h4>
1o momento da estatstica é a centralidade (média, mediana)<br>
x
2o momento na estatística é a variabilidade ou distância<br>

Alguns Insights :<br>
Preço<br>
Por região (geolocalização)<br>
Por bairro<br>
Por tipos de propriedades<br>
Por quantidade de reviews<br>
Será que mais reviews aumenta o preço?<br>
Será a quantidade de comentários aumenta o preço?<br>
Relacionar preço com reviews<br>
Review : Padrão de intensidade na plataforma/rede social<br>
</p>

<p><h4>8. Análise Exploratória</h4>

</p>

<br><br>
<hr>
<p><strong>Fontes de estudo</strong>
    <ul>
      <li>Professor e pesquisador <a href="https://www.linkedin.com/in/marcos-severo-30967936/">Marcos Severo</a>
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
