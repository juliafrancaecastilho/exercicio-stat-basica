
dados <- data.frame(nomes = c("Júlia", "Melanie", "André", "Carol"), idades = c(22, 56, 61, 20))

str(dados)

dados$idades

plot(dados$idades, main="Gráfico de Idades", xlab="Índice", ylab="Idade")

library(ggplot2)

ggplot(dados, aes(x = nomes, y = idades)) +
  geom_bar(stat = "identity", fill = "skyblue") +
  theme_minimal() +
  labs(title = "Gráfico de Barras de Idades", x = "Nomes", y =  "Idades")
