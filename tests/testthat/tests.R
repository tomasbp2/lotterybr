

library(lotterybr)

games <- c("maismilionaria", "megasena", "lotofacil", "quina", "lotomania",
         "duplasena", "diadesorte")
types <- c("dezenas", "ganhadores")
for(game in games){
  for(type in types){
    data <- get_data(game = game, type = type)
  }
}

