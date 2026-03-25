
dados <- data.frame(nomes = c("Júlia", "Melanie", "André", "Carol"), idades = c(22, 56, 61, 20))

str(dados)

dados$idades

plot(dados$idades, main="Gráfico de Idades", xlab="Índice", ylab="Idade")

library(ggplot2)

ggplot(dados, aes(x = nomes, y = idades)) +
  geom_bar(stat = "identity", fill = "skyblue") +
  theme_minimal() +
  labs(title = "Gráfico de Barras de Idades", x = "Nomes", y =  "Idades")

pie(c(22, 56, 61, 20), labels = c("Júlia", "Melanie", "André", "Carol"), col = c("#66c2a5", "#fc8d62", "#8da0cb", "#e78ac3"),
    main = "Gráfico de Pizza - Idades")
