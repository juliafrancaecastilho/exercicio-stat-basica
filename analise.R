
dados <- data.frame(nomes = c("Júlia", "Melanie", "André", "Carol"), idades = c(22, 56, 61, 20))

str(dados)

dados$idades

plot(dados$idades, main="Gráfico de Idades", xlab="Índice", ylab="Idade")

library(ggplot2)

ggplot(dados, aes(x = nomes, y = idades)) +
  geom_bar(stat = "identity", fill = "skyblue") +
  theme_minimal() +
  labs(title = "Gráfico de Barras de Idades", x = "Nomes", y =  "Idades")

ggplot(dados, aes(x = "", y = idades, fill = nomes)) +
  geom_bar(stat = "identity", width = 1, color = "white") +
  coord_polar("y") +
  geom_text(aes(label = idades),
            position = position_stack(vjust = 0.5),
            color = "white",
            size = 5) +
  labs(title = "Gráfico de Pizza - Idades em anos") +
  theme_void() +
  theme(
    plot.title = element_text(hjust = 0.5, size = 16),
    legend.title = element_blank()
  )

  