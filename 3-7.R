# Cria a tabela de contingência com os dados fornecidos
# As linhas representam a "Marca" e as colunas o "Serviço".
vendedores <- matrix(
  c(64, 16, 42, 78),   # dados preenchidos por linha: [Determinada: 64 (Bom), 16 (Deficiente); 
                        #                      Qualquer: 42 (Bom), 78 (Deficiente)]
  nrow = 2,
  byrow = TRUE,
  dimnames = list(
    Marca   = c("Determinada", "Qualquer"),
    Servico = c("Bom", "Deficiente")
  )
)
print("Tabela de vendedores:")
print(vendedores)

# Cálculo do total de vendedores
total <- sum(vendedores)

# a) Probabilidade de escolher um vendedor de determinada marca:
# Somamos as contagens da linha "Determinada" (64 + 16) e dividimos pelo total.
determinada_total <- sum(vendedores["Determinada", ])
p_a <- determinada_total / total

# b) Probabilidade de escolher um vendedor que presta bons serviços:
# Somamos as contagens da coluna "Bom" (64 + 42) e dividimos pelo total.
bom_total <- sum(vendedores[, "Bom"])
p_b <- bom_total / total

# c) Probabilidade de ser de determinada marca E prestar bom serviço:
p_c <- vendedores["Determinada", "Bom"] / total

# d) Probabilidade de prestar bom serviço, dado que é de determinada marca:
p_d <- vendedores["Determinada", "Bom"] / determinada_total

# e) Probabilidade de prestar bom serviço, dado que NÃO é de determinada marca.
nao_determinada_total <- sum(vendedores["Qualquer", ])
p_e <- vendedores["Qualquer", "Bom"] / nao_determinada_total

# Exibindo os resultados com arredondamento
print(paste("a) P(vendedor de determinada marca) =", round(p_a, 2)))
print(paste("b) P(vendedor com bom serviço) =", round(p_b, 2)))
print(paste("c) P(determinada marca e bom serviço) =", round(p_c, 2)))
print(paste("d) P(bom serviço | determinada marca) =", round(p_d, 2)))
print(paste("e) P(bom serviço | não determinada marca) =", round(p_e, 2)))