data <- read.csv(file.choose())
str(data)

data$Year.of.release <- factor(data$Year.of.release)
data$Genre <- factor(data$Genre)
colnames(data) <- c("Film", "Genre", "Official_rating", "Audience_rating", "Budget", "Year")

ggplot(data, aes(Official_rating, Audience_rating,color=Genre)) + geom_point()

cor(data$Official_rating, data$Audience_rating)
cor(data$Official_rating, data$Budget)

# Calcular las correlaciones entre rating oficial y público por género

for (genre in levels(data$Genre)) {
  print(genre)
  a <- data[data$Genre == genre,]
  print(cor(a$Official_reating, a$Audience_rating))
}