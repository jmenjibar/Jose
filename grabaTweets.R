
#Para usar paquete Twitter
library(twitteR)

#Para conseguir la autorización de Twitter setup_twitter_oauth( [Twitter tokens] )
#Para sacar las keys del archivo que NO esta en R por seguridadli:
api_key <- read.csv("TweetTok")

#La siguiente instrucción introduce los datos de acceso de Twitter:
setup_twitter_oauth (api_key[["Key"]],api_key[["Secret"]],api_key[["Token"]],api_key[["TokSecret"]])



#Para seleccionar lenguaje buscar ISO code 639-1
  #ESPAÑOLhel: es; INGLES: en; ARABE: ar; FRANCES: fr
  
#A partir de aqui para pedir cosas a Twitter
  
#Para buscar cosas en Twitter  

#Creamos una variable que almacena los terminos de busqueda
busqueda <- "Otegui"
#fecha de hoy
fecha <- as.character(Sys.Date())
#Buscar tweets con fecha de hoy
# los almacenamos en una variable, que es una lista de objetos
searchTwitteR(busqueda, since=fecha, n=1000) -> twits

# iconv("état", "latin1", "UTF-8")

#Función que graba un objeto tweet en archivo como data frame
grabaFichero <- function(twit) {
  num <- 0
  fichero <- function() {
    num <<- num + 1
    fecha <- format(Sys.Date(), format="%B_%d_%Y")
    nombre <- sprintf("Datos/%s_%i", fecha, num)
    nombre
  }
  write.csv(fichero(), as.data.frame(twit))
}
}