#Bloco geral

#Marketing Analytics - Prof´s Thiago Marques e Marcos Severo


#Importando bibliotecas

vetor_pacotes = c(
  "readr",
  "ggplot2",
  "plotly",
  "e1071",
  "dplyr",
  "Hmisc",
  "DescTools",
  "esquisse",
  "gridExtra",
  "readxl",
  "tidyr",
  "kableExtra",
  "stringr"
)

#install.packages(vetor_pacotes)
lapply(vetor_pacotes, require, character.only = TRUE)

# Se quiser carregar individualmente as variáveis eliminar o caracter # nas linha 28 a 38 a seguir
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

# BLOCO CARREGANDO O BANCO
#Direcionando a pasta no diretório que contém o arquivo - Este deve conter barras duplas '\\'
setwd(
  "C:\\zclass\\marketinanalytcs\\youtube\\20201217"
)

#Conferindo
getwd()

#Carregando o banco de dados

#base do R (Mais flexível e menor performance de velocidade)
dados_choc <- read.csv(
  "BD_marcas_de_chocolate.csv",
  header = TRUE,
  sep = ";",
  dec = ","
)

# Caso queira importar planilha no formato excel retirar # da linha abaixo e executar com cntrl+Enter
#dados_choc_excel <-read_excel("BD_marcas_de_chocolate.xlsx", sheet = "BD_marcas_de_chocolate")

#Verificando o nome das variáveis do banco
names(dados_choc)

#renomeando a primeira variável que estava com i..semana
names(dados_choc)[1] = "semana"

# Geral Transformação de Variáveis (Feature Engineering)


#Voltando na base original e Criando variáveis transformadas
#(Feature Engineering)

dados_choc_novas_var = dados_choc %>% mutate (
  mercado = Vendas_Budget + Vendas_Pams + Vendas_Cadbury + Vendas_Whittaker + Vendas_Donovan,
  participacao_budget = Vendas_Budget /
    mercado,
  participacao_Pams = Vendas_Pams /
    mercado,
  participacao_Cadbury = Vendas_Cadbury /
    mercado,
  participacao_Whittaker =
    Vendas_Whittaker / mercado,
  participacao_Donovan = Vendas_Donovan /
    mercado
)
names(dados_choc_novas_var)

#Criando os índices de preço e log
dados_choc_novas_var = dados_choc_novas_var %>% mutate (
  index_preco_budget = Preco_atual_Budget /
    Preco_regular_Budget,
  index_preco_pams = Preco_atual_Pams /
    Preco_regular_Pams,
  index_preco_Cadbury = Preco_atual_Cadbury /
    Preco_regular_Cadbury,
  index_preco_Whittaker = Preco_atual_Whittaker /
    Preco_regular_Whittaker,
  index_preco_Donovan = Preco_atual_Donovan /
    Preco_regular_Donovan,
  
  l_index_preco_budget=log(index_preco_budget),
  l_index_preco_pams=log(index_preco_pams),
  l_index_preco_Cadbury=log(index_preco_Cadbury),
  l_index_preco_Whittaker=log(index_preco_Whittaker),
  l_index_preco_Donovan=log(index_preco_Donovan),
  
  l_Vendas_Whittaker=log(Vendas_Whittaker)
  

)
# Exibir todas as colunas inclusive as novas criadas pelo comando anterior
names(dados_choc_novas_var)
# Carregar a Biblioteca para permitir plotar a correlação calculada
library(corrplot)

#correlação vendas

#Filtrando as variáveis para gerar a correlação
dados_choc_novas_var_cor_vendas = dados_choc_novas_var %>%
   select(
     contains("Vendas_budget"),
     contains("Vendas_pams"),
     contains("Vendas_Cadbury"),
     contains("Vendas_Whittaker"),
     contains("Vendas_Donovan"),
     
     contains("Preco_atual_budget"),
     contains("Preco_atual_pams"),
     contains("Preco_atual_Cadbury"),
     contains("Preco_atual_Whittaker"),
     contains("Preco_atual_Donovan"),
   )

# Exibir o nome das variáveis selecionadas para calcular a correlação
names(dados_choc_novas_var_cor_vendas)
# Calcular a correlação de person entre as variáveis
c_pearson=cor(dados_choc_novas_var_cor_vendas)
# Exibir os cálculo da correlação de person em um dataframe
View(c_pearson)

#Matriz de correlação da forma 1
corrplot(c_pearson)

#Matriz de correlação da forma 2 (personalizada)
corrplot(
  c_pearson,
  method = "color",
  cl.pos = "b",
  type = "lower",
  addgrid.col = "white",
  addCoef.col = "white",
  tl.col = "black",
  tl.cex = 0.7,
  number.cex = 0.7,
  cl.cex = 0.7
)

#Gerando o gráfico de dispersão das variáveis originais
dados = dados_choc_novas_var
grafico_dispersao_whittaker = ggplot(dados, aes(x = index_preco_Whittaker, 
                                                y = Vendas_Whittaker)) +
  geom_point(aes(size = Vendas_Whittaker)) +
  geom_smooth(method = "lm", se = T) +
  ggtitle("Gráfico de Dispersão do preço regular da marca whittaker vs vendas") +
  xlab("índice de preços da marca Whittaker") +
  ylab("Vendas da Marca Whittaker")

ggplotly(grafico_dispersao_whittaker)

#Gerando o gráfico de dispersão das variáveis transformadas - logaritmo natural/neperiano aplicado
dados = dados_choc_novas_var
grafico_dispersao_l_whittaker = ggplot(dados, aes(x = l_index_preco_Whittaker, 
                                                  y = log(Vendas_Whittaker)) ) +
  geom_point(aes(size = log(Vendas_Whittaker)) ) +
  geom_smooth(method = "lm", se = T) +
  ggtitle("Gráfico de Dispersão do log do preço regular da marca whittaker vs log das vendas") +
  xlab("Log do índice de preços da marca Whittaker") +
  ylab("Log de Vendas da Marca Whittaker")

ggplotly(grafico_dispersao_l_whittaker)

library(ggpubr)

#Gerando o gráfico de dispersão das variáveis originais
ggscatter(dados, 
          x = "index_preco_Whittaker", 
          y = "Vendas_Whittaker", 
          add = "reg.line") +
  stat_cor(label.x = 0.85, 
           label.y = 1200) +
  stat_regline_equation(label.x = 0.85, 
                        label.y=1100)

#Explica o motivo da reta não tocar o 2400
summary(dados$index_preco_Whittaker)
#Gerando o gráfico de dispersão das variáveis transformadas
ggscatter(dados, 
          x = "l_index_preco_Whittaker", 
          y = "l_Vendas_Whittaker", 
          add = "reg.line") +
  stat_cor(label.x = -0.2, 
           label.y = 7.5) +
  stat_regline_equation(label.x = -0.2, 
                        label.y = 7.2)

# Valor exato da correlação das variáveis originais e em escala logaritmica
cor(dados$Vendas_Whittaker, dados$index_preco_Whittaker)
cor(dados$Vendas_Whittaker, dados$index_preco_Whittaker)^2
cor(dados$l_Vendas_Whittaker, dados$l_index_preco_Whittaker)
cor(dados$l_Vendas_Whittaker, dados$l_index_preco_Whittaker)^2

library(MASS)
#
modelo1=lm(data=dados, Vendas_Whittaker ~ index_preco_Whittaker )
summary(modelo1)
#
modelo2=lm(data=dados, l_Vendas_Whittaker ~ l_index_preco_Whittaker )
summary(modelo2)

#########teste

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

#fazer regressão para cada marca mudando de wide para long
#dados$marcas_novo=str_extract(dados_choc_Display_ano1_full_long$marcas,'[:alpha:]+$')