install.packages("dplyr")
install.packages('stringr')
library('stringr')

setwd('/home/italo-basis/Documentos/Universidade/Topicos avançados/atividade-mineracao-de-dados')

read.csv("top50contry.csv")

dados <- read.csv(file = "top50contry.csv", header = TRUE, sep = ",")

summary(dados)

dados$year <- NULL

dados$added <- NULL

dados$year <- NULL

dados$X.2 <- NULL

dados$X.1 <- NULL

dados$X <- NULL

dados$dB <- NULL

#print.data.frame(data.frame(x=c(dados$title)), 
                 #quote=FALSE)

#gsub("[^[:alnum:][:blank:]+?&/\\-]", "","'", dados$title)

#as.data.frame(sapply(df, function(x) gsub("\"", "", dados$title)))

dados_novos <-dados[!(dados$country=="japan" | dados$country=="israel"),]

titles <- dados_novos$title

dados_novos$title <- gsub('"', "'", titles)

dados <-dados_novos

summary(dados)

mean(dados)

median(dados)

sd(dados)

var(dados)

hist(dados)

barplot(dados)

write.csv(dados, file = '/home/italo-basis/Documentos/Universidade/Topicos avançados/atividade-mineracao-de-dados/top50contryNormalizado.csv')
 
