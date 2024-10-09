# INTEGRANTE: Edwin Alexander Ospina Penna
# CORREO INSTITUCIONAL: eospinap@estudiante.ibero.edu.co
# IDBANNER: 100136699




# Datos de Gr1
gr1 <- data.frame(
  Sexo = c("Mujer", "Hombre", "Mujer", "Mujer", "Mujer", "Hombre", "Mujer", 
           "Hombre", "Hombre", "Mujer", "Mujer", "Hombre", "Hombre", 
           "Mujer", "Mujer", "Hombre", "Mujer", "Mujer", "Mujer", "Mujer"),
  Edad = c(25, 30, 28, 20, 23, 22, 22, 22, 21, 21, 22, 20, 22, 
           29, 29, 21, 30, 21, 22, 23),
  Estatura = c(1.82, 1.83, 1.78, 1.79, 1.80, 1.90, 1.79, 
               1.83, NA, 1.65, 1.73, 1.79, 1.80, 1.77, 
               1.69, 1.75, 1.66, NA, 1.79, 1.80),
  Grupo_Sanguineo = c("A", "B", "A", "AB", "O", "A", "B", "A", 
                      "B", "AB", "A", "B", "O", "O", "A", "B", 
                      "AB", "B", "B", "B")
)

# Filtrar edades para grupos A y B
edades_A <- gr1$Edad[gr1$Grupo_Sanguineo == "A"]
edades_B <- gr1$Edad[gr1$Grupo_Sanguineo == "B"]

# Función para detectar valores atipicos
detectar_valores_atipicos <- function(ages) {
  Q1 <- quantile(ages, 0.25, na.rm = TRUE)
  Q3 <- quantile(ages, 0.75, na.rm = TRUE)
  IQR <- Q3 - Q1
  lower_bound <- Q1 - 1.5 * IQR
  upper_bound <- Q3 + 1.5 * IQR
  valores_atipicos <- ages[ages < lower_bound | ages > upper_bound]
  return(valores_atipicos)
}

# Detectar valores atipicos en cada grupo
valores_atipicos_A <- detectar_valores_atipicos(edades_A)
valores_atipicos_B <- detectar_valores_atipicos(edades_B)

# Resultados
cat("Valores atipicos en el grupo A:", valores_atipicos_A, "\n")
cat("Valores atipicos en el grupo B:", valores_atipicos_B, "\n")


