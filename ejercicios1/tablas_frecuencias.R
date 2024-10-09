# INTEGRANTE: Edwin Alexander Ospina Penna
# CORREO INSTITUCIONAL: eospinap@estudiante.ibero.edu.co
# IDBANNER: 100136699




# Establecer la semilla para la generación de números aleatorios
set.seed(123)

# Generar un vector de sexo con 30 muestras aleatorias de "Masculino" y "Femenino"
Sexo <- sample(c("Masculino", "Femenino"), 30, replace = TRUE)

# Generar un vector de edades con 30 muestras aleatorias entre 20 y 35 años
Edad <- sample(20:35, 30, replace = TRUE)

# Generar un vector de estaturas con 30 muestras aleatorias entre 1.50 y 1.90 metros, redondeado a 2 decimal
Estatura <- round(runif(30, min = 1.50, max = 1.90), 2)

# Generar un vector de notas con 30 muestras aleatorias entre 0 y 5, redondeado a 1 decimal.
Nota <- round(runif(30, min = 0, max = 5), 1)

# Generar un vector de ciudades con 30 muestras aleatorias de diferentes ciudades
Ciudad <- sample(c("Bogotá", "Medellín", "Cali", "Cartagena", "Barranquilla", "Ibague", "Pereira"), 30, replace = TRUE)

# Crear un data frame que combine todos los vectores generados
datos <- data.frame(Sexo, Edad, Estatura, Nota, Ciudad)

# Imprimir un mensaje y mostrar las primeras seis filas del data frame
print("Primeras filas de los datos:")
print(head(datos))

# Calcular la tabla de frecuencias absolutas para las notas
absolutas <- table(datos$Nota)

# Imprimir un mensaje y la tabla de frecuencias absolutas
print("Tabla de frecuencias absolutas para la calificación:")
print(absolutas)

# Calcular la tabla de frecuencias relativas a partir de las frecuencias absolutas
relativas <- prop.table(absolutas)

# Imprimir un mensaje y la tabla de frecuencias relativas
print("Tabla de frecuencias relativas para la calificación:")
print(relativas)

# Crear un gráfico de barras para mostrar las frecuencias absolutas de las notas
barplot(absolutas, main = "Frecuencia Absoluta de Notas", col = "lightblue", ylab = "Frecuencia", xlab = "Nota")



