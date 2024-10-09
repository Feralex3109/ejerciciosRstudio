# INTEGRANTE: Edwin Alexander Ospina Penna
# CORREO INSTITUCIONAL: eospinap@estudiante.ibero.edu.co
# IDBANNER: 100136699




# Instalar y cargar la librería 'e1071' si aún no está instalada
if (!require(e1071)) {
  install.packages("e1071")
}
library(e1071)

# Datos del grupo A
Gr1 <- data.frame(
  Sexo = c("Mujer", "Hombre", "Mujer", "Mujer", "Mujer", "Hombre", "Mujer", "Hombre", "Hombre", "Mujer", 
           "Mujer", "Hombre", "Hombre", "Mujer", "Mujer", "Hombre", "Mujer", "Mujer", "Mujer", "Mujer"),
  Edad = c(25, 30, 28, 20, 23, 22, 22, 22, 21, 21, 22, 20, 22, 29, 29, 21, 30, 21, 22, 23),
  Estatura = c(1.82, 1.83, 1.78, 1.79, 1.80, 1.90, 1.79, 1.83, NA, 1.65, 1.73, 1.79, 1.80, 1.77, 1.69, 1.75, 1.66, NA, 1.79, 1.80),
  Grupo_Sanguíneo = c("A", "B", "A", "AB", "0", "A", "B", "A", "B", "AB", "A", "B", "0", "0", "A", "B", "AB", "B", "B", "B")
)

# Calcular la asimetría y la curtosis de la variable Estatura
asimetria <- skewness(na.omit(Gr1$Estatura))
curtosis <- kurtosis(na.omit(Gr1$Estatura))

# Mostrar resultados
cat("Asimetría de la variable Estatura en el grupo A:", asimetria, "\n")
cat("Curtosis de la variable Estatura en el grupo A:", curtosis, "\n")
