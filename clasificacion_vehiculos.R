datos <- mtcars

# Modelo de Regresión Logística (Binomial) para clasificar tipos de transmisión
modelo_clasificacion <- glm(am ~ mpg + hp, data = datos, family = binomial)

# Inferencia sobre nuevos registros vehiculares
auto_misterioso <- data.frame(mpg = 25, hp = 110)
probabilidad <- predict(modelo_clasificacion, auto_misterioso, type = "response")