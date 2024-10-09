# INTEGRANTE: Edwin Alexander Ospina Penna
# CORREO INSTITUCIONAL: eospinap@estudiante.ibero.edu.co
# IDBANNER: 100136699




# Establecer una semilla para asegurar la reproducibilidad de los resultados
set.seed(123)

# Generar un vector aleatorio de 30 muestras con los valores "Femenino" y "Masculino"Sexo <- sample(c("Femenino", "Masculino"), 30, replace = TRUE)
Sexo <- sample(c("Femenino", "Masculino"), 30, replace = TRUE)

# Generar un vector aleatorio de 30 muestras de edades entre 20 y 35 años
Edad <- sample(2:35, 30, replace = TRUE)

# Generar un vector de estaturas con 30 muestras aleatorias de una distribución normal,
# con una media de 1.50 metros y una desviación estándar de 0.1, redondeado a 2 decimales
Estatura <- round(rnorm(30, mean = 1.50, sd = 0.1), 2) 

# Generar un vector de notas con 30 muestras aleatorias, con una media de 3.0 y desviación estándar de 1, redondeado a 1 decimal
Nota <- round(rnorm(30, mean = 3.0, sd = 1), 1)  

# Generar un vector aleatorio de ciudades con 30 muestras de una lista de posibles ciudades
Ciudad <- sample(c("Bogotá", "Medellín", "Cali", "Barranquilla", "Cartagena", "Ibague", "Pereira"), 30, replace = TRUE)

# Crear un data frame que combine todos los vectores generados
datos <- data.frame(Sexo, Edad, Estatura, Nota, Ciudad)

# Calcular la estatura media de los estudiantes (omitimos los valores NA si existiesen
estatura_media <- mean(datos$Estatura, na.rm = TRUE)

# Mostrar la estatura media en la consola
cat("Estatura media de los estudiantes:", estatura_media, "metros\n")

# Calcular la varianza de la estatura (omitimos los valores NA si existiesen)
varianza_estatura <- var(datos$Estatura, na.rm = TRUE)

# Calcular la desviación estándar de la estatura (omitimos los valores NA si existiesen)
desviacion_estandar_estatura <- sd(datos$Estatura, na.rm = TRUE)

# Mostrar la varianza de la estatura en la consola
cat("Varianza de la estatura:", varianza_estatura, "metros^2\n")

# Mostrar la desviación estándar de la estatura en la consola
cat("Desviación estándar de la estatura:", desviacion_estandar_estatura, "metros\n")

