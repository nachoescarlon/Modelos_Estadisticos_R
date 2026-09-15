# Selección de features continuas y control de aleatoriedad
datos_flores <- iris[, 3:4]
set.seed(123)

# Entrenamiento de clustering no supervisado
modelo_agrupamiento <- kmeans(datos_flores, centers = 3)

# Exportación visual de la segmentación dimensional
png("grafico_flores.png", width = 800, height = 600)
plot(datos_flores$Petal.Length, datos_flores$Petal.Width,
     col = modelo_agrupamiento$cluster, pch = 19,
     main = "Segmentación K-Means", xlab = "Largo", ylab = "Ancho")
points(modelo_agrupamiento$centers, col = 1:3, pch = 8, cex = 3)
dev.off()