library(tm)

twCor <-VCorpus(DirSource("txt", encoding="UTF-8"), readerControl = list(language="es"))

#Quitar acentos:
twCor <- tm_map(twCor, tolower)

#Quitar puntuación
twCor <- tm_map(twCor, removePunctuation)

#Quitar números
twCor <- tm_map(twCor, removeNumbers)

# remove stopwords
myStopwords <- c(stopwords("spanish"))
twCor <- tm_map(twCor, removeWords, myStopwords)

#Leer ficheros de datos y crear un corpus:
twCor <-VCorpus(DirSource("txt", encoding="UTF-8"), readerControl = list(language="es"))

#Para crear la matriz
twCor <-tm_map(twCor, PlainTextDocument)
matrizTweets <- TermDocumentMatrix(twCor, control = list(minWordLength = 1))

#Para el wordcloud
m <- as.matrix(matrizTweets)
v <- sort(rowSums(m), decreasing=TRUE)
myNames <- names(v)
k <- which(names(v)=="miners")
myNames[k] <- "mining"
d <- data.frame(word=myNames, freq=v)
wordcloud(d$word, d$freq, min.freq=5000, max.words = 50)



