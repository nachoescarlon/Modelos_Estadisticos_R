# 1. Cargamos el dataset incorporado de vehículos
datos <- mtcars

# 2. Entrenamos un modelo de Regresión Lineal Múltiple
# Le pedimos predecir el consumo (mpg) en función del peso (wt) y los cilindros (cyl)
modelo_estadistico <- lm(mpg ~ wt + cyl, data = datos)

# 3. Imprimimos el resumen estadístico completo
print("Resumen del Modelo de Regresión:")
print(summary(modelo_estadistico))