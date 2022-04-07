data <- read.csv(file.choose())
str(data)

data$Year.of.release <- factor(data$Year.of.release)
data$Genre <- factor(data$Genre)
colnames(data) <- c("Film", "Genre", "Official_rating", "Audience_rating", "Budget", "Year")

plot <- ggplot(data, aes(data$Official_rating, data$Audience_rating))
