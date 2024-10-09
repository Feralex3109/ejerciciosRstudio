# INTEGRANTE: Edwin Alexander Ospina Penna
# CORREO INSTITUCIONAL: eospinap@estudiante.ibero.edu.co
# IDBANNER: 100136699




# Establecer la semilla para la generación de números aleatorios 
set.seed(123)

# Generar un vector de sexo con 30 muestras aleatorias de "Femenino" y "Masculino"
Sexo <- sample(c("Femenino", "Masculino"), 30, replace = TRUE)

# Generar un vector de edades con 30 muestras aleatorias entre 20 y 35 años
Edad <- sample(20:35, 30, replace = TRUE)

# Generar un vector de estaturas con 30 muestras aleatorias, con una media de 1.50 metros y desviacion estándar de 0.1, redondeado a 2 decimal
Estatura <- round(rnorm(30, mean = 1.50, sd = 0.1), 2) 

# Generar un vector de notas con 30 muestras aleatorias, con una media de 3.0 y desviacion estándar de 1, redondeado a 1 deciamal
Nota <- round(rnorm(30, mean = 3.0, sd = 1), 1)  

# Generar un vector de ciudades con 30 muestras aleatorias de diferentes ciudades
Ciudad <- sample(c("Bogotá", "Medellín", "Cali", "Barranquilla", "Cartagena", "Ibague", "Pereira"), 30, replace = TRUE)

# Crear un data frame que combine todos los vectores generados
datos <- data.frame(Sexo, Edad, Estatura, Nota, Ciudad)

# Mostrar un resumen estadístico del data frame
summary(datos)

# Calcular la tabla de frecuencias para las ciudades
tabla_ciudad <- table(datos$Ciudad)


# Crear un gráfico de barras para mostrar la distribución de estudiantes por ciudad
barplot(tabla_ciudad, 
        main = "Distribución de Estudiantes por Ciudad", 
        col = rainbow(length(tabla_ciudad)),
        ylab = "Frecuencia", 
        xlab = "Ciudad")

# Crear un gráfico circular para mostrar la proporción de estudiantes por ciudad
pie(tabla_ciudad, 
    main = "Proporción de Estudiantes por Ciudad", 
    col = rainbow(length(tabla_ciudad)), 
    labels = paste(names(tabla_ciudad), "\n", tabla_ciudad)) 

