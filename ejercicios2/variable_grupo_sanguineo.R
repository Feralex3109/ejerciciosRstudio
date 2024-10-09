# INTEGRANTE: Edwin Alexander Ospina Penna
# CORREO INSTITUCIONAL: eospinap@estudiante.ibero.edu.co
# IDBANNER: 100136699




# Instalar paquetes si no están instalados
if (!require("dplyr")) install.packages("dplyr")
if (!require("ggplot2")) install.packages("ggplot2")

library(dplyr)

# Datos del Grupo 1
grupo1 <- data.frame(
  Sexo = c("Mujer", "Hombre", "Mujer", "Mujer", "Mujer", "Hombre", "Mujer", "Hombre", "Hombre", "Mujer", "Mujer", 
           "Hombre", "Hombre", "Mujer", "Mujer", "Hombre", "Mujer", "Mujer", "Mujer", "Mujer"),
  Edad = c(25, 30, 28, 20, 23, 22, 22, 22, 21, 21, 22, 20, 22, 29, 29, 21, 30, 21, 22, 23),
  Estatura = c(1.82, 1.83, 1.78, 1.79, 1.80, 1.90, 1.79, 1.83, NA, 1.65, 1.73, 1.79, 1.80, 1.77, 1.69, 1.75, 1.66, NA, 1.79, 1.80),
  Grupo_Sanguineo = c("A", "B", "A", "AB", "0", "A", "B", "A", "B", "AB", "A", "B", "0", "0", "A", "B", "AB", "B", "B", "B")
)

# Datos del Grupo 2
grupo2 <- data.frame(
  Sexo = c("Mujer", "Hombre", "Hombre", "Mujer", "Hombre", "Hombre", "Mujer", "Hombre", "Hombre", "Mujer", 
           "Mujer", "Hombre", "Hombre", "Mujer", "Hombre", "Hombre", "Mujer", "Hombre", "Mujer", "Hombre"),
  Edad = c(25, 30, 38, 26, 23, 22, 32, 26, 25, 28, 22, 30, 22, 39, 29, 25, 30, 23, 32, 33),
  Estatura = c(1.72, 1.73, 1.78, 1.79, 1.83, 1.90, 1.79, 1.83, NA, 1.75, 1.79, 1.79, 1.85, 1.77, 1.79, 1.75, 1.66, NA, 1.79, 1.83),
  Grupo_Sanguineo = c("B", "B", "A", "AB", "0", "AB", "B", "B", "B", "AB", "A", "B", "0", "0", "B", "B", "A", "0", "B", "B")
)

# Función para crear gráfico de sectores
crear_grafico_pie <- function(data, titulo) {
  # Contar la cantidad de cada grupo sanguíneo
  conteo_grupo <- data %>% count(Grupo_Sanguineo)
  
  # Definir los colores
  colores <- c("blue", "yellow", "pink", "green")
  
  # Crear gráfico de torta
  pie(conteo_grupo$n, labels = conteo_grupo$Grupo_Sanguineo, col = colores, main = titulo)
}

# Gráfico para Grupo 1
crear_grafico_pie(grupo1, "Distribución del Grupo Sanguíneo - Grupo 1")

# Gráfico para Grupo 2
crear_grafico_pie(grupo2, "Distribución del Grupo Sanguíneo - Grupo 2")
