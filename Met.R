#Q1:
x = ppois(4,lambda = 3, lower.tail = FALSE)
1 - pbinom(1, 6, x)

#Q2:
#A)Modelo: Distribuição Binomial, Variável: Aleatória X, Parâmetros: N = 50, Probabilidade = 0.15
#B)zero tanques
dbinom(0, 50, 0.15)

#C)menos de 5 tanques
pbinom(4, 50, 0.15)

#D)pelo menos 10 tanques
1 - pbinom(9, 50, 0.15)

#E)no máximo 30 tanques
pbinom(30, 50, 0.15)

#F)menos de 12 e mais de 3 tanques
sum(dbinom(4:11, 50, 0.15))

#G)de 13 a 27 tanques
sum(dbinom(13:27, 50, 0.15))

#Q3: lambda = 1000/250 = 4
#A)Nenhum defeito
dpois(0,lambda = 4)

#B)No máximo três defeitos
ppois(3,lambda = 4)

#C)Pelo Menos cinco defeitos
ppois(4,lambda = 4, lower.tail = FALSE)

#D)Em 10 peças de 500 metros, probabilidade de pelo menos 3 peças nenhum defeito
x = dpois(0,lambda = (500/250))
1 - pbinom(2, 10, x)

#Q4:
#A)modelo aleatório: distribuiççãp binomial, paramentros: N = 15, prob = 0.20

#B)esperança: N * prob, variancia = N * prob * (1 - prob)
esperanca = 15 * 0.20
variancia = 15 * 0.20 * (1 - 0.20)

#C)pelo menos 4 moradores tenham alergia
1 - pbinom(3, 15, 0.20)

#D)pelo menos três pessoas não apresentarem alergia
1 - pbinom(2, 15, 1 - 0.20)

#E)com 20 pessoas, pelo menos três e menos de 10 pessoas com alergia
sum(dbinom(3:9, 20, 0.20))

#Q5:morrer de câncer pulmonar se a mesma é fumante
morrerCancer = dbinom(1, 1, 0.06)
fumantes = dbinom(1, 1, 0.20)
(morrerCancer * fumantes) * 10

#Q6:
#A)queimar com mais de 1900h
pnorm(1900, 2060, 150, lower.tail = FALSE)

#B)queimar entre 1800 e 1900h
pnorm(1900, 2060, 150) - pnorm(1800, 2060, 150)

#C)duração mínima para 2,5% dos valores
qnorm(0.025, 2060, 150)

#D)máximo uma lâmpada, de 4 lâmpadas, queimar com mais de 1800h
sucesso = pnorm(1800, 2060, 150, lower.tail = FALSE)
pbinom(1, 4, sucesso)

#E)Exatamente 2 lâmpadas, de 5 lâmpadas, queimarem com menos de 2060h
sucesso = pnorm(2060, 2060, 150)
dbinom(2, 5, sucesso)

#Q7:
#A)porcentagem de garrafas em que o volume de líquido é menor que 990 cm3
pnorm(990, 1000, 10)

#B)porcentagem de garrafas em que o volume de líquido não se desvia da média em mais do que dois desvios padrões
pnorm(1020, 1000, 10) - pnorm(980, 1000, 10)

#C)10 garrafas são selecionadas ao acaso, probabilidade de que, no máximo, 4 tenham volume de líquido superior a 1002 cm3
sucesso = pnorm(1002, 1000, 10, lower.tail = FALSE)
pbinom(4, 10, sucesso)

#Q8: gráfico da distribuição de probabilidade binomial com n = 20 e probabilidades de sucesso iguais a 0.10.
probs = dbinom(0:20, 20 , 0.10)
plot(0:20, probs, type = "h", main = "Distribuição Binomial N = 20, Sucesso = 0.10")

#Q9: amostra de 200 observações referente a variável peso. Distribuição Normal: N(65,5)
numeros = rnorm(200, 65, 5)
hist(numeros)
plot(numeros, dnorm(numeros, 65, 5), type = "l")
