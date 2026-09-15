datos <- mtcars

# Modelo de Regresión Lineal Múltiple: Predicción de consumo (mpg) basado en peso (wt) y cilindros (cyl)
modelo_estadistico <- lm(mpg ~ wt + cyl, data = datos)

print("Resumen del Modelo de Regresión:")
print(summary(modelo_estadistico))