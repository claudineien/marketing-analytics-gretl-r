#Bloco geral 

#Marketing Analytics - Prof´s Thiago Marques e Marcos Severo

# Bibliotecas que serão importadas para utilizar nesta aplicação
vetor_pacotes=c("readr","ggplot2","plotly","e1071",
                "dplyr","Hmisc","DescTools","esquisse",
                "gridExtra","readxl","tidyr","kableExtra","stringr")

# Eliminar o sinal # da linha abaixo e executar o comando para instalar os pacotes que estão na variável 
# vetor_pacotes. Atenção : Retornar o # na linha
# install.packages(vetor_pacotes)
# Carregar todas as bibliotecas de uma vez
lapply(vetor_pacotes, require, character.only = TRUE)
# Executar comandos a seguir para carregar as bibliotecas individualmente. Para isto eliminar o # de cada linha
#library(readr)
#library(ggplot2)
#library(plotly)
#library(e1071)
#require(dplyr)
#require(Hmisc)
#require(esquisse)
#library(DescTools)
#require(gridExtra)
#library(readxl)
#library(tidyr)

# Direcionar pasta no diretório que contém o arquivo
# Set Work Directory-setwd
setwd("C:\\zclass\\marketinanalytcs\\youtube\\20201029\\")
# Conferir se o caminho esta sendo considerado
getwd()

# Importar Dataset que esta em arquivo .csv
#base do R (Mais flexível e menor performance de velocidade)
dados_choc <- read.csv("BD_marcas_de_chocolate.csv",
                       header = TRUE, 
                       sep=";", 
                       dec = ","
                       )
# Importar Dataset que esta em arquivo excel-xlsx
# Caso prefira utilizar este, elimine o # no inicio e execute a instrução
# dados_choc_excel <- read_excel("BD_marcas_de_chocolate.xlsx",sheet="Plan1")

# Obter o nome das colunas-variaveis
names(dados_choc)

# Renomear a primeira coluna-variavel que esta com formatacao ruim para ser utilizada
names(dados_choc)[1]="semana"

# ANALISE DESCRITIVA DAS VARIAVEIS
# Obter valores minimo, 1o quartil, mediana, media, 3o quartil, valor maximo por coluna-variavel
s = summary(dados_choc)
# Exibir valores minimo, 1o quartil, mediana, media, 3o quartil, valor maximo por coluna-variavel
d = describe(dados_choc)
# Analisar uma coluna-variávei específica de interesse
d$Vendas_Budget
# Analisar outros valores de uma coluna-variável específica de interesse
d$Vendas_Budget$values
# Analisar quatro colunas-variáveis, obtida pela função summary()
s[1:6,1:4]

# Plotar Boxplot
boxplot(dados_choc$Vendas_Budget)

# Identificar a semana 1
dados_choc == 1
# Identificar a quantidade de semanas 1 que existe no dataset
sum(dados_choc$semana == 1)
# Identificar a quantidade total de semanas 1 existe por marca no dataset
sum(dados_choc == 1)
# Verificar se existe NA's na coluna-variável semana. True = Existe; False = Não Existe
is.na(dados_choc$semana)
# Obter a quantidade total de NA's na coluna-variável semana
sum(is.na(dados_choc$semana))
# Verificar quantos NA´S há em cada coluna do dataset
resumo_nas=dados_choc %>%
  select(everything()) %>%  
  summarise_all(list(~sum(is.na(.))))

#--------------- ---------------------------------- -------------------
# Analisar coluna-variável Preco_atual
# Geral

# Selecionar variável semana
dados_choc_Preco_atual_full0 = dados_choc %>% select(semana)

# Para saber o tipo do objeto que esta sendo utilizado/consultado
class(dados_choc)
class(dados_choc_Preco_atual_full0)

# Selecionar as séries de preço atual de ambos os anos que inicial com desctição 'Preco_atual'
dados_choc_Preco_atual_full = dados_choc %>%  select(starts_with("Preco_atual"))
dados_choc_Preco_atual_full

# Transformar dataframe para time series
dados_choc_Preco_atual_full_ts = ts(dados_choc_Preco_atual_full)
dados_choc_Preco_atual_full_ts
# Verificar o tipo do objeto carregado na variável dados_choc_Preco_atual_full_ts
class(dados_choc_Preco_atual_full_ts)

# Plotar os dados time series
plot(dados_choc_Preco_atual_full_ts)

# Graficos um pouco mais elegantes
library(lattice)

# Plotar time series do dois anos registrados no dataset
xyplot(dados_choc_Preco_atual_full_ts, superpose = F)

# ------- ANO 1  ------- 
# Filtrar dados somente do primeiro ano para Calcular estatísticas resumo
dados_choc_Preco_atual_ano1_full = dados_choc %>%
                  filter(semana %in% c(1:52)) %>%  
                  select(semana|starts_with("Preco_atual"))

# Exibira os dados em uma outra guia para melhor visualização
View(dados_choc_Preco_atual_ano1_full)

# Função a utilizar para Calcular Coeficiente de variação
# Desvio padrão / média aritmética
cv = function(x){
                 sd(x) / mean(x)
                }

# Calcular Estatísticas resumo para o ano 1 - Traz todas as informações em uma única linha
dados_choc_Preco_atual_ano1 = dados_choc %>% filter(semana %in% c(1:52)) %>%
                              summarise(across(starts_with("Preco_atual"),
                                        list(media=mean,
                                        mediana=median,
                                        desvio=sd,
                                        cvar = cv
                                            )
                                          )
                                        )

# Exibira os dados em uma outra guia para melhor visualização
View(dados_choc_Preco_atual_ano1)

# Obter os dados por marca
resumo_budget_ano1 = dados_choc_Preco_atual_ano1 %>% select(contains("Budget"))
resumo_Whittake_ano1 = dados_choc_Preco_atual_ano1 %>% select(contains("Whittake"))
resumo_Cadbury_ano1 = dados_choc_Preco_atual_ano1 %>% select(contains("Cadbury"))
resumo_Donovan_ano1 = dados_choc_Preco_atual_ano1 %>% select(contains("Donovan"))
resumo_Pams_ano1 = dados_choc_Preco_atual_ano1 %>% select(contains("Pams"))

# Consolidar todos os dados acima para ficar em colunas
dados_consolidados_Preco_atual_ano1= t (data.frame(
                                         resumo_budget_ano1=t(resumo_budget_ano1),
                                         resumo_Whittake_ano1=t(resumo_Whittake_ano1),
                                         resumo_Cadbury_ano1=t(resumo_Cadbury_ano1),
                                         resumo_Donovan_ano1=t(resumo_Donovan_ano1),
                                         resumo_Pams_ano1=t(resumo_Pams_ano1)
                                         )
                                        )
# Visualizar em forma de tabela. Sera exibida em um guia ao lado, da guia deste fonte
View(dados_consolidados_Preco_atual_ano1)

# Alterar o nome das colunas para facilitar leitura
colnames(dados_consolidados_Preco_atual_ano1)=c("Media","Mediana","Desvio","CV")

# Exibir a tabela com os dados com fundo black
dados_consolidados_Preco_atual_ano1 %>% kbl %>% kable_material_dark(full_width = F, 
                                                                    font_size = 15)

# ------- ANO 2  ------- 
# Calculae Estatísticas Resumo Ano 2
dados_choc_Preco_atual_ano2_full = dados_choc %>%
                                   filter(semana %in% c(53:104)) %>%  
                                   select(semana|starts_with("Preco_atual"))
dados_choc_Preco_atual_ano2_full

# Calcular Estatísticas resumo para o ano 2 - Traz todas as informações em uma única linha
dados_choc_Preco_atual_ano2 = dados_choc %>% filter(semana %in% c(53:104)) %>%  
                              summarise(across(starts_with("Preco_atual"),
                                               list(media=mean,
                                                    mediana=median,
                                                    desvio=sd,
                                                    cvar=cv
                                                    )
                                               )
                                        )
# Exibira os dados em uma outra guia para melhor visualização
View(dados_choc_Preco_atual_ano2)

# Obter os dados por marca
resumo_budget_ano2=dados_choc_Preco_atual_ano2 %>% select(contains("Budget"))
resumo_Whittake_ano2=dados_choc_Preco_atual_ano2 %>% select(contains("Whittake"))
resumo_Cadbury_ano2=dados_choc_Preco_atual_ano2 %>% select(contains("Cadbury"))
resumo_Donovan_ano2=dados_choc_Preco_atual_ano2 %>% select(contains("Donovan"))
resumo_Pams_ano2=dados_choc_Preco_atual_ano2 %>% select(contains("Pams"))

# Consolidar todos os dados acima para ficar em colunas
dados_consolidados_Preco_atual_ano2 = t(data.frame(resumo_budget_ano2=t(resumo_budget_ano1),
                                                   resumo_Whittake_ano2=t(resumo_Whittake_ano1),
                                                   resumo_Cadbury_ano2=t(resumo_Cadbury_ano1),
                                                   resumo_Donovan_ano2=t(resumo_Donovan_ano1),
                                                   resumo_Pams_ano2=t(resumo_Pams_ano1)
                                                 )
                                       )
dados_consolidados_Preco_atual_ano2

# Alterar o nome das colunas para facilitar leitura
colnames(dados_consolidados_Preco_atual_ano2)=c("Media","Mediana","Desvio","CV")

# Exibir a tabela com os dados com fundo black
dados_consolidados_Preco_atual_ano2 %>% kbl %>% kable_material_dark(full_width = F,
                                                                    font_size=15)


# ------- ANO 1 BASE LONG  ------- 
# Transformando o formato wide em long 

# Colocar todas as séries de preços de chocolates juntas
# Formato painei = Varias observações ao longo do tempo
dados_choc_Preco_atual_ano1_full_long = dados_choc_Preco_atual_ano1_full %>%
                                        select(semana, contains("Preco_atual")) %>%
                                        gather(key = "marcas", value = "valor_Preco_atual", -semana)

library(stringr)
# Criar coluna no final do dataframe das marcas extraindo os padrões dos textos, neste caso Preco_atual_
dados_choc_Preco_atual_ano1_full_long$marcas_novo=str_extract(dados_choc_Preco_atual_ano1_full_long$marcas,'[:alpha:]+$')
dados_choc_Preco_atual_ano1_full_long

# Plotar Gráfico de linha utilizando a base long
grafico_linhas=ggplot(dados_choc_Preco_atual_ano1_full_long, aes(x=semana, y=valor_Preco_atual)) +
                      geom_line(aes(color = marcas_novo), size = 1) + 
                      scale_x_continuous(breaks = seq(1,52,1)) +
                      geom_hline(yintercept = c(dados_consolidados_Preco_atual_ano1[,1][1],
                                                dados_consolidados_Preco_atual_ano1[,1][2]))+
                                                xlab("Semana") + 
                                                ylab("Ganho em Vendas") +
                                                labs(color = "Marcas")
# Colocar título no grafico
ggtitle("Evolução do preço atual de chocolate por semana")
grafico_linhas_Preco_atual = grafico_linhas
# Plotar Grafico Dinâmico
ggplotly(grafico_linhas_Preco_atual)

# Plotar Gráfico de Área de linha utilizando a base long
grafico_linhas = ggplot(dados_choc_Preco_atual_ano1_full_long, 
                        aes(x=semana, y=valor_Preco_atual)
                        ) +
                        geom_area(aes(color = marcas, fill = marcas_novo), 
                                       alpha = 0.5, position = position_dodge(0.8)
                                  )+
  #geom_hline(yintercept = c(dados_consolidados_ano1[,1][1],dados_consolidados_ano1[,1][2]))+
  scale_x_continuous(breaks = seq(1,52,2)) +
  xlab("Semana") + 
  ylab("Ganho em Vendas") + 
  ggtitle("Evolução do preço atual de chocolate por semana") 

grafico_area_Preco_atual=grafico_linhas               
ggplotly(grafico_area_Preco_atual)

# Segunda forma de obter as estatísticas resumo e geral, utilizando formato long
dados_choc_Preco_atual_ano1_full_long_segunda_forma = dados_choc_Preco_atual_ano1_full_long %>% 
                                                      group_by(marcas_novo) %>% 
                                                      summarise(media=mean(valor_Preco_atual),
                                                                mediana=median(valor_Preco_atual),
                                                                desvio=sd(valor_Preco_atual),
                                                                cvar=cv(valor_Preco_atual)
                                                                )
# Deixar a tabela mai elegante preta com o kable
dados_choc_Preco_atual_ano1_full_long_segunda_forma %>% 
  kbl %>% 
  kable_material_dark(full_width = F)

# Exportar o arquivo em csv. Neste caso exportara para o local setado em setwd()
write.csv(dados_choc_Preco_atual_ano1_full_long_segunda_forma,"resumoano1budgeprecoatual.csv", row.names = F)

# Ano 2 Base long                                                                                                font_size=15)
# Transformar o formato wide em long
# Colocar todas as séries de preços de chocolates juntas
dados_choc_Preco_atual_ano2_full_long = dados_choc_Preco_atual_ano2_full %>%
  select(semana, 
         contains("Preco_atual")
         ) %>%
  gather(key = "marcas", value = "valor_Preco_atual", -semana)

library(stringr)
#Criando a coluna das marcas extraindo padrões dos textos para criar uma coluna de marcas
dados_choc_Preco_atual_ano2_full_long$marcas_novo=str_extract(dados_choc_Preco_atual_ano2_full_long$marcas,'[:alpha:]+$')

#Gráfico de linha utilizando a base long
grafico_linhas=ggplot(dados_choc_Preco_atual_ano2_full_long, 
                      aes(x=semana, y=valor_Preco_atual)) +
  geom_line(aes(color = marcas_novo), size = 1) + 
  scale_x_continuous(breaks = seq(1,52,1)) +
  geom_hline(yintercept = c(dados_consolidados_Preco_atual_ano1[,1][1],dados_consolidados_Preco_atual_ano1[,1][2]))+
  xlab("Semana") + 
  ylab("Ganho em Vendas") +
  labs(color = "Marcas")
ggtitle("Evolução do preço atual de chocolate por semana")


grafico_linhas_Preco_atual=grafico_linhas               
ggplotly(grafico_linhas_Preco_atual)

#Gráfico de linha utilizando a base long
grafico_linhas=ggplot(dados_choc_Preco_atual_ano1_full_long, 
                      aes(x=semana, y=valor_Preco_atual)) +
  geom_area(aes(color = marcas, fill = marcas_novo), 
            alpha = 0.5, position = position_dodge(0.8))+
  #geom_hline(yintercept = c(dados_consolidados_ano1[,1][1],dados_consolidados_ano1[,1][2]))+
  scale_x_continuous(breaks = seq(1,52,2)) +
  xlab("Semana") + 
  ylab("Ganho em Vendas") + 
  ggtitle("Evolução do preço atual de chocolate por semana") 

grafico_area_Preco_atual=grafico_linhas               
ggplotly(grafico_area_Preco_atual)

#Segunda forma de obter as estatísticas resumo e geral, utilizando formato long

dados_choc_Preco_atual_ano1_full_long_segunda_forma =
  dados_choc_Preco_atual_ano1_full_long %>% 
  group_by(marcas_novo) %>% 
  summarise( 
    media=mean(valor_Preco_atual),
    mediana=median(valor_Preco_atual),
    desvio=sd(valor_Preco_atual),
    cvar=cv(valor_Preco_atual)
  )

#Deixar a tabela bonitinha preta com o kable
dados_choc_Preco_atual_ano1_full_long_segunda_forma %>% 
  kbl %>% 
  kable_material_dark(full_width = F)

#Exportar o arquivo em csv
write.csv(dados_choc_Preco_atual_ano1_full_long_segunda_forma,"resumoano1budgeprecoatual.csv", row.names = F)


# Geral Transformação de Variáveis (Feature Engineering)

#Voltando na base original e Criando variáveis transformadas 
#(Feature Engineering) 

dados_choc_novas_var = dados_choc %>% mutate ( mercado = Vendas_Budget + Vendas_Pams + Vendas_Cadbury + Vendas_Whittaker + Vendas_Donovan,
                                               participacao_budget=Vendas_Budget/mercado,
                                               participacao_Pams=Vendas_Pams/mercado,
                                               participacao_Cadbury=Vendas_Cadbury/mercado,
                                               participacao_Whittaker=Vendas_Whittaker/mercado,
                                               participacao_Donovan=Vendas_Donovan/mercado
)
names(dados_choc_novas_var)                          

dados_choc_full_long = dados_choc_novas_var %>%
  select(semana, 
         contains("Preco_atual"),
         contains("Preco_regular"),
         contains("Anuncio"),
         contains("Display"),
         contains("AD"),
         contains("Vendas"),
         contains("participacao"),
         contains("mercado")
         
  ) %>%
  gather(key = "marcas", value = "valor", -semana)

#Criando a coluna das marcas extraindo padrões dos textos para criar uma coluna de marcas
dados_choc_full_long$marcas_novo=str_extract(dados_choc_full_long$marcas,'[:alpha:]+$')
