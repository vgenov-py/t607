setwd("f:/t607")
library(ggplot2)
library(stringr)
data <- read.csv(paste(getwd(), "/jamon.csv", sep=""), sep=";", encoding = "UTF-8")
str(data)
data$DescripcionArticulo <- factor(data$DescripcionArticulo)

i <- 7
for (col in data[7:14]) {
  data[i] <- str_replace(col, ",",".")
  data[i] <- as.double(data[,i])
  i <- i + 1
}

data$PesoEntradaEntrada <- as.double(str_replace(data$PesoEntradaEntrada, ",", "."))
data$PesoSalida <- as.double(str_replace(data$PesoSalida, ",", "."))
data$Alimentacion <- factor(data$Alimentacion)
data$Raza <- factor(data$Raza)

partidas <- c()
`%!in%` <- Negate(`%in%`)
i <- 1
total <- 0
for (. in 1:nrow(data)) {
  row <- data[i,]
  if (row[1,3] %!in% partidas) {
    total <- total + row[1,17]
  }
  partidas <- append(partidas, row[1,3])
  i <- i + 1
}
levels(factor(data$Partida))

