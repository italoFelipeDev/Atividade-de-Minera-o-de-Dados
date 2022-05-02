install.packages("dplyr")
install.packages('stringr')
library('stringr')

setwd('/home/italo-basis/Documentos/Universidade/Topicos avançados/atividade-mineracao-de-dados')

read.csv("diabetes_binary_health_indicators.csv")

dados <- read.csv(file = "diabetes_binary_health_indicators.csv", header = TRUE, sep = ",")

summary(dados$HighBP)

summary(dados$HighChol)

summary(dados$CholCheck)

summary(dados$BMI)

summary(dados$Smoker)

summary(dados$Stroke)

summary(dados$HeartDiseaseorAttack)

summary(dados$PhysActivity)

summary(dados$Fruits)

summary(dados$Veggies)

summary(dados$HvyAlcoholConsump)

summary(dados$AnyHealthcare)

summary(dados$NoDocbcCost)

summary(dados$GenHlth)

summary(dados$MentHlth)

summary(dados$PhysActivity)

summary(dados$DiffWalk)

summary(dados$Sex)

summary(dados$Age)

summary(dados$Education)

summary(dados$Income)

dados_novos <-dados[!dados$BMI > 65.0,]

write.csv(dados_novos, file = '/home/italo-basis/Documentos/Universidade/Topicos avançados/atividade-mineracao-de-dados/diabetes_binary_health_indicators_processado.csv')

