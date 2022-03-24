### EJERCICIO 1:

a <- c(23,3,6,5,22,64,31,20, 22)

b <- c()
d <- c()
i <- 1
while (i <= length(a)) {
  if (a[i] %% 2 == 0) {
    b <- append(b, a[i]^2)
  }
  i <- i + 1
}
i <- 1
while (i <= length(a)) {
  if (a[i] %% 2 != 0) {
    d <- append(d, a[i]^3)
  }
  i <- i + 1
}


b <- c()
d <- c()



for (v in a) {
  if (v %% 2 == 0) {
    b <- append(b, v)
  } else {
    d <- append(d, v)
  }
}

### EJERCICIO 2:


i <- 10
result <- c()
while (i <= 100000) {
  if (i %% 50 == 10) {
    result <- append(result, i)
  }
  i <- i + 1
}
length(result)

result <- c()

i <- 10
while (i <= 100000) {
  result <- append(result, i)
  i <- i + 50
}
result[1]

seq(10,100000, 50)
?seq
rep(10, 10)

#EJERCICIO 3:

b <- c(1,2,3,4)
b[-3:-2]
b[4]
b[-2:-3]

#EJERCICIO 4:
start <- Sys.time()

n <- 100000000
n_s <- seq(1,1000000, 500)
deltas <- c()
# implementar algo que cuando n sea 5 devuelva bigO   O(2 + 3 * n) --> O(n)
result <- 0
for (v in 1:n) { # for (v in seq(1, n))
  result <- result + v
}

finish <- Sys.time()
print(finish - start)

# n * (n + 1) / 2
start <- Sys.time()
n <- 100000000
result_2 <- n * (n + 1) / 2 # O(4) --> O(1)
result_2
finish <- Sys.time()
print(finish - start) # 

plot(n_s, seq(1,1000000, 500))





