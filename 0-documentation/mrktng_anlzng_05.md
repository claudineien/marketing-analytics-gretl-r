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
<h2>AULA 5 - MARKETING ANALYTICS</h2>
<h4>DATASET VENDAS CHOCOLATE</h4>
<h4>ANÁLISE DESCRITIVA - DESEMPENHO MERCADOLÓGICO</h4>
<p>A análise descritiva é o coração da análise estatística.</p>
<p>Desempenho Mercadológico é o coração do Marketing Analytics.</p>
<p>Utilizaremos o dataset <a href="https://github.com/claudineien/marketing-analytics-gretl-r/tree/main/2-dataset">BD_marcas_de_chocolate.csv</a> ou <a href="https://github.com/claudineien/marketing-analytics-gretl-r/tree/main/2-dataset">BD_marcas_de_chocolate.xlsx</a> com dados agregados de todas as informações consolidadas das vendas de determinadas marcas de chocolate de todas as lojas de uma grande rede de varejo dentro de um período de 104 semanas, aproximadamente dois anos.</p>

<p>Estes dados se caracterizam como Time Series (Serie Temporal) por que ocorrem dentro de um determinado tempo, prazo controlado por semana.</p>

<p>Modelos inferenciais são modelos de dependência como por exemplo análise de regressão. Nestes há variáveis que são dependentes/respostas de variáveis independentes/explicativas.<br>
Por exemplo : A variável Vendas_Budget é a variável dependente/resposta, que depende das outras variáveis independentes/explicativas que explicam o seu resultado.</p>

<p>Utilizaremos o documento <a href="https://github.com/claudineien/marketing-analytics-gretl-r/tree/main/2-dataset">01-Report_Descritivo-atualizado_0411.docx</a> para analisar conteúdo relacionado às variáveis de desempenho e entender como o as variáveis de marketing influenciam o desempenho mercadológico. A seguir parte do documento que será analisado: <img src="/3-img/aula05mktAnltcs_dctwrd_dsmpMrcd.png"><br></p>

<p>O Desempenho Mercadológico esta refletido nas variáveis vendas, participação de mercado, receita, compra, lealdade comportamental, lealdade atitudinal.<br>
Os modelos analíticos mercadológicos inferênciais devem considerar variáveis de desempenho como variáveis de resposta também conhecidas como variáveis dependentes.</p>

<p>O Marketing Analytics tem detectado que as variáveis de marketing produzem influência diversa nas variávies de desempenho.<br>
As vezes uma variável do mix de marketing é significativa para explicar um determinada variável de desempenho mas não é significativa para explicar outra variável de desempenho.<br>
As vezes uma variável do mix de marketing tem sinal trocado em relação a variável de desempenho, isto é, a variável do mix de marketing é negativa e a variável de desempenho é positiva.<br>
Esta situação é o motivo de precisarmos compreender os padrões e o comportamento das variáveis de desempenho para desenvolver modelos mais completos e exatos sobre o comportamento destas variáveis.</p>

<p>Importante :<br>
O coração do modelo é a Análise Descritiva por que permite entender de que forma as variáveis se comportam.</p>

<h3>Iniciando a análise - Segundo ano em relação ao primeiro ano </h3>
<p>A primeira análise é identificar o que aconteceu com o padrão de desempenho das cinco marcas de chocolate ano a ano.<br>
Foram gerados média, mediana, desvio-padrão, coeficiente de variação, condicionado aos dois anos à cada marca.<br>
A análise foi realizada nas variáveis de desempenho vendas, participação de mercado e receita.</p>

<p><strong>Situação das Vendas :</strong><br>
Budget :<br>
-aumentou nominalmente suas vendas<br>
-o desvio padrão diminui o que significa que as vendas variaram menos<br>
-o coeficiente de variação também indica que as vendas variaram menos</p>

<p>Whitaker :<br>
-diminuiu nominalmente suas vendas<br>
-o desvio padrão diminui o que significa que as vendas variaram menos<br>
-o coeficiente de variação também indica que as vendas variaram menos</p>

<p>Cadbury :<br>
-consideravelmente aumentou nominalmente suas vendas<br>
-o desvio padrão aumentou significativamente e significa que as vendas variaram mais<br>
-o coeficiente de variação aumentou pouco mas confirma que as vendas variaram mais</p>

<p>Donavan :<br>
-diminui nominalmente suas vendas, perdeu mercado<br>
-o desvio padrão diminuiu e significa que as vendas variaram menos<br>
-o coeficiente de variação diminuiiu e confirma que as vendas variaram menos</p>

<p>Pams :<br>
-aumentou nominalmente suas vendas, ganhou um pouco de mercado<br>
-o desvio padrão aumentou e significa que as vendas variaram para mais<br>
-o coeficiente de variação ficou praticamente com o mesmo valor e significa que as vendas variaram menos de 0.10%</p>

<p>De forma geral houve uma diferença significativa nas vendas das marcas Whitaker, Cadbury e Pams.</p>

<p>Lembrar que o coeficiente de variação é uma medida padronizada. É a divisão do desvio-padrão pela média.</p>

<p>Vamos entender se as diferenças nas vendas se converteram em participação de mercado.</p>

<p><strong>Situação Participação de Mercado :</strong><br>
Esta variável foi criada no Gretl para possibilitar esta análise.<br>
São as vendas / total de vendas no periodo de tempo<br>
</p>

<p>Budget :<br>
-aumentou menos de 1 ponto percentual a sua participação</p>

<p>Whittaker :<br>
-diminuiu consideravelmente</p>

<p>Cadbury :<br>
-ganhou quase 5% de participação</p>

<p>Uma rápida conclusão a considerar é que : <br>
- O aumento considerável da Cadbury x a queda considerável da Whittaker indica que o público migrou de marca.<br>
- O preço de venda atual em que ambas as marcas aumentaram seu preço e suas médias são quase iguais significa que são concorrentes diretas. Ambas estão atentas as oscilações uma da outra.</p>

<p>Donavan :<br>
-perdeu quase 2 pontos percentuais</p>

<p>Pams :<br>
-aumentou mais de 3 pontos percentuais</p>

<p>O desvio padrão da participação de mercado de todas as marcas reduziram consideravelmente de primeiro ano ao segundo, ainda que a média tenha aumentado para algumas marcas.</p>

<p>Drivers variáveis de marketing determinantes que geraram toda esta mudança.</p>

<p><strong>Situação da Receita :</strong><br></p>
<p>Vendas x Preço</p>
<p>Budget :<br>
-a receita média aumentou aproximadamente 0.50 centavos</p>

<p>Whittaker :<br>
-teve a receita média reduzida em aproximadamente 59.50</p>

<p>Cadbury :<br>
-a receita média aumentou em aproximadamente 43.50</p>

<p>Donavan :<br>
-a receita média reduziu em aproximadamente 12.22</p>

<p>Pams :<br>
-a receita média aumentou em aproximadamente 28.14</p>

<p>Gráfico de série temporal para a variável de mercado<br>
Estatísticamente a posição final é parecida com a posição inicial.<br>
Esta série temporal possui alguns picos, mas retorna à sua média e isto a define como Série Estacionária ao longo do tempo que é um processo que a média retorna ao centro. Percebe-se que há alguns padrões de sazonalidade<br>
<img src="/3-img/aula05VarMrcPlot.png"></p>

<p>Modelos em séries temporais tem que ter pressuposto de estacionariedade para conseguir previsão mais acurada possível.
Importante utilizar métodos de suavização, aplicar modelos de Holt-Winters ou Arima para sazonalidade por que elas pressupoe estacionariedade da série.<br>
Se houver algum ruido (sujeira) na série temporal torna difícil captar a variação da variável, então é necessário suavizar e/ou eliminar o ruido.</p>

<p>Matriz BCG<br>
O primeiro modelo e também o mais básico é a Matriz de Crescimento versus Participação de Mercado. Elaborada pelo Boston Consulting Group (Hooley, Sauders, Piercy, 2005)<br>
<img src="/3-img/aula05MtrzBCG0.png"><br>
São gráficos de dispersão em quatro quadrantes, para analisar Unidades Estratégicas de Negócio-UEN.<br>
Esta ferramenta também admite a existência de duas dimensões : Externa e Interna<br>
Dimensão Externa : Taxa de crescimento do mercado<br>
Dimensão Interna : Taxa de crescimento do mercado</p>

<p>Através da Matriz BCG é possível analisar as marcas aonde o mercado cresce que estão na parte superior.</p>

<p>Analisar a taxa de crescimento do mercado aonde a unidade estratégica de negócio esta incluida. Se for baixa classificar nos quadrantes inferiores, caso contrário nos quadrantes superiores.<br>
Para esta classificação é necessário analisar a segunda dimensão, a horizontal, no qual analisamos a minha participação no mercado.</p>

<p>Qualquer coisa que pode ser medida e gerenciada de maneira separada as demais pode ser qualificada como unidade estratégica de negócio.
Qualquer empresa pode aplicar a Matriz BCG para diferentes marcas, produtos, suas subempresas no seu negócio.</p>

<p>Mercado em Marketing significa : Conjunto de consumidores reais e potenciais de um produto ou serviço.<br>
Mercado com taxa de crescimento alta : há novos consumidores reais e potenciais.<br>
Mercado com taxa de crescimento baixa : não há novos consumidores reais e potenciais.</p>

<p>Exemplo :<br>
Uma empresa oferece de brinde o sorteio de uma câmera digital na compra de seu produto.<br>
Atualmente (2020) este apelo será dificilmente aceito pelo mercado, por que a taxa de crescimento para camera digital diminuiu por que se utiliza outro produto como câmera digital.</p>

<p>Quadrante superior a direita :<br>
Taxa de crescimento do mercado é alta e unidade estratégica de negócio tem pequena participação e considerada com '?' e pode ser interpretada como 'criança problema'.</p>

<p>Quadrante superior a esquerda :<br>
Taxa de crescimento do mercado é alta e unidade estratégica de negócio tem grande participação e considerada com estrela.</p>

<p>Quadrante inferior a esquerda :<br>Participação grande com mercado que não cresce é considerado como 'vaca leiteira'.</p>

<p>Quadrante inferior a direita :<br>
Participação de mercado pequena em uma taxa de crescimento baixa a unidade estratégica de negócio é classificada como um 'abacaxi'.</p>

<p>Trazendo todo o conceito BCG as marcas de chocolate são ou 'vacas leiteira' ou 'abacaxis', por que a taxa de crescimento do mercado em estudo é pequena.</p>

<p>O Boston Consulting Group-BCG define como grande participação de mercado quando o percentual é superior a 22%. Este é o limiar entre a vaca leiteira e o abacaxi.</p>

<p>Mercado em Marketing é diferente de Mercado em Economia.<br>
O Mercado em microeconomia não se interessa por preferências qualitativas individuais de um individuo para outro.<br>
O Mercado em Marketing deve ser tratado separadamente o indivíduo que prefere marca A de cerveja do que prefere marca B de cerveja.<br>
O Marketing analisa o segmento demografico, psicográfica comportamental e outras atribuições diferentes.</p>

<p>A Budget tinha participação média de mercado de 10.41% no primeiro ano em um mercado que não cresceu, para o BCG significa que esta marca é um abacaxi e no segundo ano continua sendo um abacaxi por sua participação teve um aumento quase inexistente.<br>
A variação de preço nos dois anos é quase inexistente, as estatísticas de anúncio de display é quase inexistente. Estas informações confirmam que esta é uma marca de combate. Provavelmente continuara desta forma todo os anos.</p>

<p>Manter uma marca abacaxi pode ser muito vantajoso por que há mercado consumidor. Talvez não seja vantajoso investir em esforço promocional, a não ser que faça um grande posicionamento de marca.</p>

<p>Um exemplo de reposicionamento de marca brasileira é uma sandália conhecida como 'sandália de dedo', que na década de 80 e 90 era percebida como de baixo valor e vendia pouco então a empresa fez um reposicionamento de marca que a tornou um produto de luxo e atualmente 2020, é considerada uma marca premium.</p>

<p>A Whittaker era uma vaca leiteira no primeiro ano, e no segundo ano quase se tornou um abacaxi com seus 22.92% de participação do mercado.</p>

<p>A lógica da vaca leiteira é utilizar recursos daquela unidade estratégica de negócio para desenvolver produtos e lançar produtos aonde você vai gastar dinheiro para mantê-lo que é aonde a taxa de crescimento do mercado é alta. <br>
Se a taxa de crescimento do mercado é alta haverá novos consumidores e estes consumidores entram no mercado e então você precisa promover o produto, desenvolver novas linhas e desenvolver novas versões.</p>

<p>Há uma técnica métrica em que o cliente é qualificado como detrator e promotor conhecida como Net Promoter Score-NPS. Esta técnica ajuda a detectar o cliente mais importante e o cliente que precisa ser mais trabalhado.</p>

<p>A métrica curva ABC é a curva 80-20 e ajuda a detectar qual a parte pequena dos produtos que retorna significamente a receita para o négócio.</P>

<p>Condições matemáticas ideais para tomar a decisão de um reposicionamento de marca é muito díficil por que trabalhar com pesquisa quantitativa é trabalhar com números exatos.<br>
Admininstração, Marketing é ciência social aplicada e como tal trabalha com pessoas, para pessoas então o que hoje é verdade pode não ser daqui a alguns anos.<br>
Vamos pensar :<br>
Voltando à década de 90 e ano 2000 aonde haviam a grande quantidade uso de cd, dvd e blue ray, qual seria o grande concorrente destes produtos ?<br>
Quem poderia advinhar que algo semelhante ao netflix seria o concorrente direto e que os substituiram?</p>

<p>Se o mercado parar de consumir pode haver guerras de preço ?<br>
Resposta : Mercado estabilizado no contexto aqui é aonde a Taxa de crescimento do mercado é pequena. Se o produto não é de tecnologia significa que o mercado é mais perene do que os outros. Os grandes players já possuem participação de mercado e é difícil encontrar uma inovação naquele mercado especificamente e possivelmente este mercado será microsegmentado.<br>
Exemplo :<br>
Produto Refrigerante Carbonatado com players formados e o mercado maduro e estável.<br>
Cada player/marca vai buscar novos usos para este produto como : lançar embalagem de um litro, um litro e meio, dois litros, com sabores ainda não existentes, acrescentar cafeína, entre outras ações.<br>
Em mercado estabilizado a guerra de preço não funciona como um atrativo, por que o mercado não é orientado apenas a preço.</p>

<p>Importante : <br>
Marketing trabalha com comportamento do consumidor e a percepção muda.</p>

<p>O mercado de chocolate é um mercado que não cresce muito então o ideal é encontrar novos usos para o produto.<br>
Uma idéia por exemplo é a marca Budget entrar para o mercado de picoles/sorvete, lançar o produto com uma fórmula diferente ou chocolate funcional. Estas ações significar aumentar o escopo de atuação da marca que esta em um mercado que não cresce.</p>

<br><br>
<hr>
<p>Fontes de estudo
    <ul>
        <li>Aula 04 : <a href="https://youtu.be/6VoKWYZdBzg">Marketing Analytics</a> - Instrutores : Prof. Thiago Marques(USP/IBGE) e Marcos Severo (UFG)</li>
        <li><a href="https://youtu.be/WaEz_Gk4RpA">Vejo Marketing em tudo! / Marketing everywhere!</a></li>
        <li><a href="https://pt.wikipedia.org/wiki/Philip_Kotler">Phillip Kotler</a></li>
        <li><a href="https://pt.wikipedia.org/wiki/Net_Promoter_Score">Net Promoter Score</a></li>
    </ul>
</p>
