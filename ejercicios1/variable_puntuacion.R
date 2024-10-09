# INTEGRANTE: Edwin Alexander Ospina Penna
# CORREO INSTITUCIONAL: eospinap@estudiante.ibero.edu.co
# IDBANNER: 100136699




# Establecer una semilla para asegurar la reproducibilidad de los resultados
set.seed(123)

# Generar un vector aleatorio de 30 muestras con los valores "Femenino" y "Masculino"
Sexo <- sample(c("Femenino", "Masculino"), 30, replace = TRUE)

# Generar un vector aleatorio de 35 muestras de edades entre 20 y 35 años
Edad <- sample(20:35, 30, replace = TRUE)

# Generar un vector de estaturas con 30 muestras aleatorias de una distribución normal,
# con una media de 1.50 metros y una desviación estándar de 0.1, redondeado a 2 decimales
Estatura <- round(rnorm(30, mean = 1.50, sd = 0.1), 2) 

# Generar un vector de notas con 30 muestras aleatorias, con una media de 3.0 y desviación estándar de 1, redondeado a 1 decimal
Nota <- round(rnorm(30, mean = 3.0, sd = 1), 1)  

# Generar un vector aleatorio de ciudades con 30 muestras de una lista de posibles ciudades
Ciudad <- sample(c("Bogotá", "Medellín", "Cali", "Barranquilla", "Cartagena", "Ibague", "Pereira"), 30, replace = TRUE)

# Crear un data frame que combine todos los vectores generados
datos <- data.frame(Sexo, Edad, Estatura, Nota, Ciudad)

# Generar un resumen estadístico de la variable 'Nota'
resumen_nota <- summary(datos$Nota)
print("Resumen de la variable Nota:")
print(resumen_nota)

# Calcular y mostrar la media de la variable 'Nota'
media_nota <- mean(datos$Nota, na.rm = TRUE)

# Calcular y mostrar la mediana de la variable 'Nota'
mediana_nota <- median(datos$Nota, na.rm = TRUE)

# Calcular y mostrar la varianza de la variable 'Nota'
varianza_nota <- var(datos$Nota, na.rm = TRUE)

# Calcular y mostrar la desviación estándar de la variable 'Nota'
desviacion_estandar_nota <- sd(datos$Nota, na.rm = TRUE)

# Calcular y mostrar el valor mínimo de la variable 'Nota'
minimo_nota <- min(datos$Nota, na.rm = TRUE)

# Calcular y mostrar el valor máximo de la variable 'Nota'
maximo_nota <- max(datos$Nota, na.rm = TRUE)

# Mostrar los resultados de las medidas calculadas individualmente
cat("\nMedidas calculadas individualmente:\n")
cat("Media:", media_nota, "\n")
cat("Mediana:", mediana_nota, "\n")
cat("Varianza:", varianza_nota, "\n")
cat("Desviación Estándar:", desviacion_estandar_nota, "\n")
cat("Mínimo:", minimo_nota, "\n")
cat("Máximo:", maximo_nota, "\n")
