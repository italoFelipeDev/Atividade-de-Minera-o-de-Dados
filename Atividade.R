setwd('/home/italo-basis/Documentos/Universidade/Topicos avançados')

read.csv("top50contry.csv")

dados <- read.csv(file = "top50contry.csv", header = TRUE, sep = ",")

summary(dados)

dados$year <- NULL

write.csv(dados, file = '/home/italo-basis/Documentos/Universidade/Topicos avançados/top50contryAlterado.csv')

summary(dadosnovos)
