
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

#Creamos una variable que almacena la busqueda. Esta variable es una lista
busqueda <- "Ã‰tat califat"

searchTwitteR(busqueda) -> twits

# iconv("état", "latin1", "UTF-8")