
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

#Fecha de hoy
#fecha <- as.character(Sys.Date()) 
fecha <- "2016-05-11"

#Creamos una variable que almacena los terminos de busqueda
busqueda1 <- "estado islamico"
busqueda2 <- "en Iraq"
busqueda3 <- "califato"
busqueda4 <- "allah"
busqueda5 <- "yihad"


#Buscar tweets con fecha de hoy
# los almacenamos en una variable, que es una lista de objetos
searchTwitteR(busqueda1, since=fecha, n=5000, lang="es") -> twits1
searchTwitteR(busqueda2, since=fecha, n=5000, lang="es") -> twits2
searchTwitteR(busqueda3, since=fecha, n=5000, lang="es") -> twits3
searchTwitteR(busqueda4, since=fecha, n=5000, lang="es") -> twits4
searchTwitteR(busqueda5, since=fecha, n=5000, lang="es") -> twits5


#Quitar RT
no_retweets1 = strip_retweets(twits1)
no_retweets2 = strip_retweets(twits2)
no_retweets3 = strip_retweets(twits3)
no_retweets4 = strip_retweets(twits4)
no_retweets5 = strip_retweets(twits5)


#Graba twits en fichero
nombreFichero1 <- sprintf("Datos/%s_%s.rds", fecha, "estado_islamico")
saveRDS(no_retweets1, nombreFichero1)

nombreFichero2 <- sprintf("Datos/%s_%s.rds", fecha, "en_Iraq")
saveRDS(no_retweets2, nombreFichero2)

nombreFichero3 <- sprintf("Datos/%s_%s.rds", fecha, "califato")
saveRDS(no_retweets3, nombreFichero3)

nombreFichero4 <- sprintf("Datos/%s_%s.rds", fecha, "allah")
saveRDS(no_retweets4, nombreFichero4)

nombreFichero5 <- sprintf("Datos/%s_%s.rds", fecha, "yihad")
saveRDS(no_retweets5, nombreFichero5)

