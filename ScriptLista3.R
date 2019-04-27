#Caio Gomes Brandão Rios - Lista de Exercícios Nº 3

#Questão 1: https://github.com/caio-rios/Lista3

#Questão 2

x <- 55
y <- 80
z <- x + y
z*08819883406


#Questão 3

str(mtcars)

dim(mtcars)

print (mtcars[ ,3])

print (mtcars[2, ])

print (mtcars$cyl[4])

summary(mtcars)


#Questão 4

require(ffbase)

setwd ("C:/Users/kibca/Desktop/Aula_Moreira/dados_encontro_1_ufpe/Lista3/Lista3/Dados")

turmas <- read.csv2.ffdf(file = "TURMAS.csv", sep = "|")

turmas_pe <- turmas [turmas$CO_UF == "26", ]

turmas_pe <- data.frame(turmas_pe)

save(turmas_pe, file = "turmas_pe.RData")

#Questão 5

setwd("C:/Users/kibca/Desktop/Aula_Moreira/dados_encontro_1_ufpe/Lista3/Lista3/Dados")

load("turmas_pe.RData")

print(mean(turmas_pe$NU_MATRICULAS))


#Questão 6

docentes_ne <- read.csv2(file = "DOCENTES_NORDESTE.csv", sep = "|")
docentes_pe <- docentes_ne [docentes_ne$CO_UF == "26", ]
save(docentes_pe, file = "docentes_pe.RData")

#Primeiro ponto da questão 6 (TP_COR_RACA = 0 são os prof que não 
#definiram com e raça)

n_total <- nrow(docentes_pe)
n_CorRaca0 <- nrow(docentes_pe [docentes_pe$TP_COR_RACA == "0", ])
print ((n_CorRaca0*100)/n_total)

#Segundo ponto da questão 6

n_PretoPardo <- nrow(docentes_pe[docentes_pe$TP_COR_RACA == "2", ]) +
  nrow(docentes_pe[docentes_pe$TP_COR_RACA == "3", ])
print ((n_PretoPardo*100/n_total))
                       
