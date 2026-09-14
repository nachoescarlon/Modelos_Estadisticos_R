# 1. Cargamos el dataset y seleccionamos solo las columnas de los pétalos (Largo y Ancho)
datos_flores <- iris[, 3:4]

# 2. Fijamos una "semilla" para que la matemática aleatoria inicial nos dé el mismo resultado siempre
set.seed(123)

# 3. Entrenamos el modelo K-Means pidiéndole que agrupe la información en 3 clústeres
modelo_agrupamiento <- kmeans(datos_flores, centers = 3)

# 4. Imprimimos el resultado para ver el tamaño de cada grupo
print("Cantidad de flores asignadas a cada clúster:")
print(modelo_agrupamiento$size)


# 5. Preparamos un archivo de imagen (lienzo en blanco)
png("grafico_flores.png", width = 800, height = 600)

# 6. Dibujamos el plano cartesiano coloreando según los 3 clústeres
plot(datos_flores$Petal.Length, datos_flores$Petal.Width,
     col = modelo_agrupamiento$cluster,
     pch = 19, # Usa puntos circulares sólidos
     main = "Segmentación de Flores por IA (K-Means)",
     xlab = "Largo del Pétalo",
     ylab = "Ancho del Pétalo")

# 7. Marcamos los "centros de gravedad" de cada grupo con una estrella
points(modelo_agrupamiento$centers, col = 1:3, pch = 8, cex = 3)

# 8. Guardamos la imagen y cerramos el renderizador
dev.off()