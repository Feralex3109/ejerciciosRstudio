# INTEGRANTE: Edwin Alexander Ospina Penna
# CORREO INSTITUCIONAL: eospinap@estudiante.ibero.edu.co
# IDBANNER: 100136699




# Datos del grupo A
grupo_A <- c(1.82, 1.78, 1.79, 1.90, 1.79, 1.73, 1.79, 1.75, 1.66, 1.77, 1.69, 1.75, 1.80, 1.80, 1.79, 1.80, 1.79, 1.78, 1.80, 1.83)

# Datos del grupo B
grupo_B <- c(1.73, 1.79, 1.78, 1.79, 1.83, 1.90, 1.83, 1.75, 1.79, 1.75, 1.66, 1.77, 1.79, 1.66, 1.79, 1.83, 1.90, 1.85, 1.83, 1.83)

# Calcular el valor máximo del 40% de las estaturas más pequeñas en el grupo A
max_40_percent_A <- quantile(grupo_A, 0.4)

# Calcular el valor mínimo del 30% de las estaturas más grandes en el grupo B
min_30_percent_B <- quantile(grupo_B, 0.7)

# Mostrar resultados
max_40_percent_A
min_30_percent_B



