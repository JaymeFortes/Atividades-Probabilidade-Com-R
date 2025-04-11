# Quantidade de fichas por cor
azul <- 6
branca <- 4
cinza <- 5

# Total de fichas
total <- azul + branca + cinza

# a) Probabilidade de sair ficha azul
p_azul <- azul / total

# b) Probabilidade de sair ficha branca
p_branca <- branca / total

# c) Probabilidade de sair ficha cinza
p_cinza <- cinza / total

# d) Probabilidade de sair azul ou cinza
p_azul_ou_cinza <- (azul + cinza) / total

# e) Probabilidade de sair ficha que NÃO seja azul
p_nao_azul <- (branca + cinza) / total  # ou: 1 - p_azul

# Exibir os resultados
cat("Probabilidades:\n")
cat("a) P(azul)           =", round(p_azul, 4), "\n")
cat("b) P(branca)         =", round(p_branca, 4), "\n")
cat("c) P(cinza)          =", round(p_cinza, 4), "\n")
cat("d) P(azul ou cinza)  =", round(p_azul_ou_cinza, 4), "\n")
cat("e) P(não azul)       =", round(p_nao_azul, 4), "\n")



