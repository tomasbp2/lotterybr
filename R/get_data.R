#' Function to download lottery data from git repository

#' @export
#'
#' @param game select which Brazilian lottery game
#' @param type select if you want the winners database or the numbers result

#' @return tibble/data.frame containing the downloaded data

#' @description This function downloads the Brazilian lottery game data from Caixa Federal up to the date declared

#' @examples
#' \dontrun{
#' library(LotteryBrasil)
#' megasena_ganhadores <- get_data(game= "megasena",type = "winners")
#' megasena_ganhadores
#'
#' lotofacil_dezenas <- get_data(game= "lotofacil",type = "numbers")
#' lotofacil_dezenas
#' }
#'

get_data = function(game= c("maismilionaria", "megasena", "lotofacil",  "quina", "lotomania", "duplasena", "diadesorte"),
                    type = c("numbers","winners")){

  game = match.arg(game)
  type = match.arg(type)
  url = paste0("https://github.com/tomasbp2/LotteryBrasilDATA/blob/main/",game,"/",type,".rds?raw=true")
  file = readRDS(url(url))

  return(file)
}
