
# Esta funcion va a leeer un fichero .rds y extraera el texto. Un solo fichero.
library(twitteR)
library (tm)
library(wordcloud)
library(cluster)

grabaTextoTweet <- function(fichero, dir="Datos", dirTxt="txt") {
  nf<-sprintf("%s/%s", dir, fichero)
  listTweets <- strip_retweets(readRDS(nf))
  sapply(listTweets, function(x) TweetTexto(x, dirTxt))
  
  
}
#Esta funcion, graba el texto de un tweet en un fichero.
TweetTexto <- function(t, directorio="txt"){
  nf <- sprintf("%s/%s.txt", directorio, t$id)
  writeBin(t$text, nf, useBytes = TRUE)
}
#Esta funcion te saca todos los tweets a texto
GrabaTodosDatosTxt <- function(dirDatos="Datos", dirTxt="txt"){
  ficheros <- list.files(dirDatos)
  sapply(ficheros, function(x) grabaTextoTweet(x, dirDatos, dirTxt))
}


