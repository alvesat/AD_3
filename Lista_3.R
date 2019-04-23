##[AD-2019]
##LISTA III
##ANTÔNIO FERNANDES

##Questão 2

  ##Declarando duas variáveis

x <- 4 #x igual a 4
y <- 3 #y igual a 3

  ##Soma de x e Y atribuído a Z

z <- x + y #z é igual a x+y

  ##multiplicando z pelo cpf

a <- z*08819478498 #a é igual ao resultado da multiplicação de z pelo cpf

print(a) #apresentar o resultado de a

##Questão 3

head(mtcars)

    ##Descrição dos tipos de variáveis da base

str(mtcars) ##identificando os tipos de variáveis da base por meio da função str


    ##Dimensões da base mtcars

dim(mtcars) ##identificando as dimensões da base por meio da função dim 

    ##Terceira coluna da base mtcars

print(mtcars[,3]) ##idenficando a terceira coluna da base 'mtcars'

    ##Segunda linha da base mtcars

print(mtcars[2,]) ##identificando a segunda linha da base 'mtcars'

    ##Quarto elemento presente na variável 'cly' da base 'mtcars'

print(mtcars$cyl[4]) ##apresentando o quarto elemento presente na variável 'cyl'

    ##resumo descritivo da base

str(mtcars)

## Por meio desse comando, é possível verificar que o banco 'mtcars' apresenta
## 32 observações e 11 variáveis. Também é possivel observar que todas as variáveis
## são númericas. 

names(mtcars) 

##A função names apresenta os nomes das variáveis presentes no banco 'mtcars'.
##os nomes são: "mpg"  "cyl"  "disp" "hp"   "drat" "wt"   "qsec" "vs"   "am"   "gear" "carb".

summary(mtcars)

##O comando summary apresente 6 informações estatísticas de cada variável do banco 'mtcars':
## Valor minimo, 1º quartil, Mediana, Média, 3º quartil e valor máximo. 


boxplot(mtcars)

##o comando boxplot apresenta um diagrama de caixa para cada variável presente no banco
##'mtcars'. Observa-se que as variáveis 'disp' e 'hp' são as variáveis que apresentam 
## as maiores variações enquanto que as outras variáveis apresentam pouca variação. 

##Ainda observando o boxplot, é possível identificar outliers nas variáveis hp, wt, qsec e
##carb. As variáveis hp e disp também são as que apresentam os maiores valores.


##Questão 4

library(ffbase)  ##abrindo pacote 'ffbase'

setwd("~/Dados/Dados_Encontro/dados_encontro_1_ufpe") ##Definindo diretório onde está a base

Turmas <- read.csv2.ffdf(file = "TURMAS.csv", sep = "|") ##Lendo o banco turmas.csv

Turmas <- as.data.frame(Turmas) ##Transformando 'Turmas' em um data.frame

Turmas_PE <- subset(Turmas, Turmas$CO_UF == '26') ##Selecionando apenas as turmas de Pernambuco

save(Turmas_PE, file = "Turmas_PE.RData") ##Salvando o data.frame "Turmas_PE" como arquivo "RData"

##Questão 5

load("Turmas_PE.RData") ##Carregando o banco "Turmas_PE"

mean(Turmas_PE$NU_MATRICULAS) ##Calculando a média do número de matrículas por turma em PE

##Questão 6

Docente_NE <- read.csv2.ffdf(file = "DOCENTES_NORDESTE.csv", sep = "|", first.rows=100000) ##Abrindo banco 'DOCENTES_NORDESTE.csv'

Docentes_PE <- subset.ffdf(Docente_NE, CO_UF == '26') ##Selecionado Docentes de PE

Raca <- as.data.frame(table.ff(Docentes_PE$TP_COR_RACA)) ##Data frame da Tabela de contigência da variável raça dos docentes de PE

length(Docentes_PE$TP_COR_RACA) ##Idenficando tamanho da coluna TP_COR_RACA

Raca$Perc <- (Raca$Freq/412663)*100 ##Calculando a porcentagem de cada item da coluna TP_COR_RACA no Dataframe criado

print(Raca$Perc)

##44% dos docentes de Pernambuco não declararam a sua raça no censo de 2016

sum(Raca$Perc[2:3]) ##Soma da porcentagem da cor preta e parda

##27.35% dos docentes de Pernambuco se auto-declararam como preto ou pardo no censo de 2016





