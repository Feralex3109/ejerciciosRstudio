# INTEGRANTE: Edwin Alexander Ospina Penna
# CORREO INSTITUCIONAL: eospinap@estudiante.ibero.edu.co
# IDBANNER: 100136699




# Establecer la semilla para la generación de números aleatorios para asegurar reproducibilidad
set.seed(123)

# Generar un vector de sexo con 30 muestras aleatorias de "Femenino" y "Masculino"
Sexo <- sample(c("Femenino", "Masculino"), 30, replace = TRUE)

# Generar un vector de edades con 30 muestras aleatorias entre 20 y 35 años
Edad <- sample(20:35, 30, replace = TRUE)

# Generar un vector de estaturas con 30 muestras aleatorias, con una media de 1.50 metros y desviación estándar de 0.1, redondeado a 2 decimales
Estatura <- round(rnorm(30, mean = 1.50, sd = 0.1), 2)

# Generar un vector de notas con 30 muestras aleatorias, con una media de 3.0 y desviación estándar de 1, redondeado a 1 decimal
Nota <- round(rnorm(30, mean = 3.0, sd = 1), 1)  

# Generar un vector de ciudades con 30 muestras aleatorias de diferentes ciudades
Ciudad <- sample(c("Bogotá", "Medellín", "Cali", "Barranquilla", "Cartagena", "Ibague", "Pereira"), 30, replace = TRUE)

# Crear un data frame que combine todos los vectores generados
datos <- data.frame(Sexo, Edad, Estatura, Nota, Ciudad)

# Mostrar un resumen estadístico del data frame
summary(datos)

# Crear un histograma para mostrar la distribución de edades
hist(datos$Edad, 
     main = "Histograma de Edades", # Título del histograma
     xlab = "Edad", # Etiqueta del eje x
     col = "yellow", # Color de las barras
     border = "black") # Color del borde de las barras  

# Crear un diagrama de caja y bigotes para las edades con un rango de 1.5
boxplot(datos$Edad, 
        main = "Diagrama de Caja y Bigotes de Edades (Rango = 1.5)", 
        ylab = "Edad", 
        range = 1.5) # El rango determina cómo se calculan los valores atípicos

# Extraer y mostrar los valores atípicos del diagrama de caja y bigotes con rango 1.5
valores_atipicos <- boxplot.stats(datos$Edad)$out
cat("Valores atípicos (rango = 1.5):", valores_atipicos, "\n")

# Crear un diagrama de caja y bigotes para las edades con un rango de 0.5
boxplot(datos$Edad, 
        main = "Diagrama de Caja y Bigotes de Edades (Rango = 0.5)", 
        ylab = "Edad", 
        range = 0.5) # Rango más estricto para identificar valores atípicos

# Extraer y mostrar los valores atípicos del diagrama de caja y bigotes con rango 0.5
valores_atipicos_05 <- boxplot.stats(datos$Edad, coef = 0.5)$out
cat("Valores atípicos (rango = 0.5):", valores_atipicos_05, "\n")

