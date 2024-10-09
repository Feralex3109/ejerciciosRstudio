# INTEGRANTE: Edwin Alexander Ospina Penna
# CORREO INSTITUCIONAL: eospinap@estudiante.ibero.edu.co
# IDBANNER: 100136699




# Cargar librería ggplot2
library(ggplot2)

# Crear los datos del Grupo 1 (Gr1)
Gr1 <- data.frame(
  Sexo = c("Mujer", "Hombre", "Mujer", "Mujer", "Mujer", "Hombre", "Mujer", "Hombre", "Hombre", "Mujer",
           "Mujer", "Hombre", "Hombre", "Mujer", "Mujer", "Hombre", "Mujer", "Mujer", "Mujer", "Mujer"),
  Edad = c(25, 30, 28, 20, 23, 22, 22, 22, 21, 21,
           22, 20, 22, 29, 29, 21, 30, 21, 22, 23),
  Estatura = c(1.82, 1.83, 1.78, 1.79, 1.80, 1.90, 1.79, 1.83, NA, 1.65,
               1.73, 1.79, 1.80, 1.77, 1.69, 1.75, 1.66, NA, 1.79, 1.80),
  Grupo_Sanguineo = c("A", "B", "A", "AB", "0", "A", "B", "A", "B", "AB",
                      "A", "B", "0", "0", "A", "B", "AB", "B", "B", "B")
)

# Crear los datos del Grupo 2 (Gr2)
Gr2 <- data.frame(
  Sexo = c("Mujer", "Hombre", "Hombre", "Mujer", "Hombre", "Hombre", "Mujer", "Hombre", "Hombre", "Mujer",
           "Mujer", "Hombre", "Hombre", "Mujer", "Hombre", "Hombre", "Mujer", "Hombre", "Mujer", "Hombre"),
  Edad = c(25, 30, 38, 26, 23, 22, 32, 26, 25, 28,
           22, 30, 22, 39, 29, 25, 30, 23, 32, 33),
  Estatura = c(1.72, 1.73, 1.78, 1.79, 1.83, 1.90, 1.79, 1.83, NA, 1.75,
               1.79, 1.79, 1.85, 1.77, 1.79, 1.75, 1.66, NA, 1.79, 1.83),
  Grupo_Sanguineo = c("B", "B", "A", "AB", "0", "AB", "B", "B", "B", "AB",
                      "A", "B", "0", "0", "B", "B", "A", "0", "B", "B")
)

# Remover los valores NA en la columna Estatura para cada grupo
Gr1_clean <- Gr1[!is.na(Gr1$Estatura), ]
Gr2_clean <- Gr2[!is.na(Gr2$Estatura), ]

# Crear el histograma para el Grupo 1
ggplot(Gr1_clean, aes(x = Estatura)) +
  geom_histogram(binwidth = 0.05, fill = "blue", color = "black") +
  labs(title = "Histograma de Estatura - Grupo 1", x = "Estatura (m)", y = "Frecuencia") +
  theme_minimal()

# Crear el histograma para el Grupo 2
ggplot(Gr2_clean, aes(x = Estatura)) +
  geom_histogram(binwidth = 0.05, fill = "green", color = "black") +
  labs(title = "Histograma de Estatura - Grupo 2", x = "Estatura (m)", y = "Frecuencia") +
  theme_minimal()

