setwd('C:/Users/prisc/Desktop/AED')

read.csv("milsa.csv")


dados <- read.csv(file = "milsa.csv", header = TRUE, sep = ",")

summary(dados)

mean(dados$Anos)

median(dados$Anos)

sd(dados$Anos)

var(dados$Anos)

hist(dados$Anos)

barplot(dados$Anos)

is.na(dados$Filhos)

which(is.na(dados$Filhos))

dados$Filhos[which(is.na(dados$Filhos))] <- 0

dados

dados["cargo"] <- "NA"

dados

for (i in 1:36){
  if(dados$Salario[i] <= 5.00){
    dados$cargo[i] <- "Junior"
  }
  if (dados$Salario[i] > 5.00 && dados$Salario[i] <= 10.00){
    dados$cargo[i]<- "Pleno"
  }
  else if(dados$Salario[i] > 10.00){
    dados$cargo[i]<- "Senior"
  }
}



dados

dados$Meses <- NULL


dados



write.csv(dados, file = "C:/Users/prisc/Desktop/AED/milsaCopia.csv")


