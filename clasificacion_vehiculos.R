# 1. Cargamos los datos
datos <- mtcars

# 2. Entrenamos un modelo de Regresión Logística
# Predecimos la transmisión 'am' (0 = Automático, 1 = Manual)
# en función del consumo (mpg) y los caballos de fuerza (hp)
modelo_clasificacion <- glm(am ~ mpg + hp, data = datos, family = binomial)

# 3. Simulamos un auto desconocido
# Encontramos un auto que rinde 25 millas por galón y tiene 110 hp
auto_misterioso <- data.frame(mpg = 25, hp = 110)

# 4. Le pedimos a la IA estadística que calcule la probabilidad de que sea Manual
probabilidad <- predict(modelo_clasificacion, auto_misterioso, type = "response")

# Mostramos el resultado limpio
resultado_porcentaje <- round(probabilidad * 100, 2)
print(paste("La probabilidad estadística de que el auto sea manual es del:", resultado_porcentaje, "%"))