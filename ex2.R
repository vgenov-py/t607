chess_board <- matrix()

counter <- 8

letters <- c("A", "B", "C", "D", "E", "F", "G", "H")

for (letter in letters) {
  if (counter < 8) {
    chess_board <- cbind(chess_board,paste(8:1, rep(letter, 8)))
  } else{
    chess_board <- cbind(paste(8:1, rep(letter, 8)))
  }
  counter <- counter - 1
}

t(matrix(paste(rep(letters, 8), rep(8:1, each=8)), ncol=8))

letters <- c("A", "B", "C", "D", "E", "F", "G", "H")
t(matrix(paste(rep(letters, 8), rep(8:1, each=8)), ncol=8))

letters[1:8]
t(matrix(1:9, 3))


1:10 * 11:20

Test_a <- matrix(1:9, 3)
Test_b <- matrix(10:18, 3)

Test_a * Test_b

Test_a <- matrix(8:1,8, 8)

Test_b <- t(matrix(LETTERS[1:8],8,8))

Chess_board <- matrix(paste(Test_a, Test_b), 8)


#BASKET:
a <- colnames(FieldGoals)
colnames(FieldGoals) <- a

# 2

e_2 <- round(FieldGoals / Games, 2)
e_2["DerrickRose", "2012"] <- 0

# sum(e_2) / length(e_2) 

# 3

max(rowMeans(e_2))

# 4

e_4 <- FieldGoals / FieldGoalAttempts
e_4["DerrickRose", "2012"] <- 0

which( e_4 == max(e_4), arr.ind = TRUE)
max(e_4, na.rm = T)

most_p <- which(e_4 == max(e_4), arr.ind = T)

# a <- c("a", "b", "c")
# max(a)
# which(a == "c")

# 5
e_5 <- rowMeans(MinutesPlayed / FieldGoals)
mean(e_5[1,]) 

# 6
e_5["DerrickRose", "2012"] <- 100
which(e_5==min(e_5), arr.ind=T)

#7

e_7 <- MinutesPlayed / FieldGoals
e_7 <- e_7[, 6:10] # e_7[, c("2010", "2011", "2012", "2013", "2014")]
e_7["DerrickRose", "2012"] <- 100
which(e_7==min(e_7), arr.ind=T)

# 8


sum(Salary[1,]) / sum(FieldGoals[1,])

rowSums(Salary) / rowSums(FieldGoals)
print("---------------------------------")
rowMeans(Salary) / rowMeans(FieldGoals)
# un comentario

# COSAS NUEVAS
#...