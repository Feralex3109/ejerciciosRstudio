# INTEGRANTE: Edwin Alexander Ospina Penna
# CORREO INSTITUCIONAL: eospinap@estudiante.ibero.edu.co
# IDBANNER: 100136699




# Definir los datos para el grupo 1 (Gr1)
Gr1 <- data.frame(
  Sexo = c("Mujer", "Hombre", "Mujer", "Mujer", "Mujer", "Hombre", "Mujer", "Hombre", 
           "Hombre", "Mujer", "Mujer", "Hombre", "Hombre", "Mujer", "Mujer", "Hombre", 
           "Mujer", "Mujer", "Mujer", "Mujer"),
  Edad = c(25, 30, 28, 20, 23, 22, 22, 22, 21, 21, 22, 20, 22, 29, 29, 21, 30, 21, 22, 23),
  Estatura = c(1.82, 1.83, 1.78, 1.79, 1.80, 1.90, 1.79, 1.83, NA, 1.65, 1.73, 1.79, 
               1.80, 1.77, 1.69, 1.75, 1.66, NA, 1.79, 1.80, 1.80),
  Grupo_Sanguineo = c("A", "B", "A", "AB", "O", "A", "B", "A", "B", "AB", "A", "B", 
                      "O", "O", "A", "B", "B", "B", "B", "B")
)

# Definir los datos para el grupo 2 (Gr2)
Gr2 <- data.frame(
  Sexo = c("Mujer", "Hombre", "Hombre", "Mujer", "Hombre", "Hombre", "Mujer", "Hombre", 
           "Hombre", "Mujer", "Mujer", "Hombre", "Hombre", "Mujer", "Hombre", "Hombre", 
           "Mujer", "Hombre", "Mujer", "Hombre"),
  Edad = c(25, 30, 38, 26, 23, 22, 32, 26, 25, 28, 22, 30, 22, 39, 29, 25, 30, 23, 32, 33),
  Estatura = c(1.72, 1.73, 1.78, 1.79, 1.83, 1.90, 1.79, 1.83, NA, 1.75, 1.79, 1.79, 
               1.85, 1.77, 1.79, 1.75, 1.66, NA, 1.79, 1.83, 1.83),
  Grupo_Sanguineo = c("B", "B", "A", "AB", "O", "AB", "B", "B", "B", "AB", "A", "B", 
                      "O", "O", "B", "B", "A", "O", "B", "B")
)

# Calcular la desviación estándar de la edad y estatura para el grupo 1
sd_edad_gr1 <- sd(Gr1$Edad, na.rm = TRUE)
sd_estatura_gr1 <- sd(Gr1$Estatura, na.rm = TRUE)

# Calcular la desviación estándar de la edad y estatura para el grupo 2
sd_edad_gr2 <- sd(Gr2$Edad, na.rm = TRUE)
sd_estatura_gr2 <- sd(Gr2$Estatura, na.rm = TRUE)

# Mostrar resultados
cat("Grupo 1:\n")
cat("Desviación estándar de la Edad:", sd_edad_gr1, "\n")
cat("Desviación estándar de la Estatura:", sd_estatura_gr1, "\n\n")

cat("Grupo 2:\n")
cat("Desviación estándar de la Edad:", sd_edad_gr2, "\n")
cat("Desviación estándar de la Estatura:", sd_estatura_gr2, "\n")

# Comparar homogeneidad
if (sd_edad_gr1 < sd_edad_gr2) {
  cat("La edad es más homogénea en el Grupo 1.\n")
} else {
  cat("La edad es más homogénea en el Grupo 2.\n")
}

if (sd_estatura_gr1 < sd_estatura_gr2) {
  cat("La estatura es más homogénea en el Grupo 1.\n")
} else {
  cat("La estatura es más homogénea en el Grupo 2.\n")
}




