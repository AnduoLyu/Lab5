#Question 1
game <- function(x, N){
  X <- replicate(N, sample(1 : 6, size = x, replace = T))
  count <- 0
  for(i in 1 : N){
    if(length(which(X[,i] == 6)) >= 1){
    count <- count + 1
  }
  }
  prop <- count/N
  prop
}

game(4, 1000)
game(4, 10000)


#Question 2
findmin <- function(a){
  n <- length(a)
  target <- a[1]
  for (i in 2 : n){
    if(target > a[i]){
      target <- a[i]
    }
  }
  print(paste("The smallest element is", target, "and the index is", which(a == target), "." ))
}

a <- c(1, 4, 2, 0, 5)
findmin(a)
