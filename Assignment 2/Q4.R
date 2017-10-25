#Roll die 100 times 

# X be random variable for 1,2,3

# Y be random variable for 1,2


#(a) P(X <= 60).
prob_a <- pbinom(60, size=100, prob=0.5, lower.tail = TRUE)
print(prob_a)

#(b) P(Y >= 60).
prob_b <- pbinom(60, size=100, prob=(2/6), lower.tail = FALSE)
print(prob_b)

#(c) P(X==Y)
# However, it could be maybe assumed to be 2/6 since (X==Y)E{1,2} so E(P(x==Y)) = 2/6
sum <- 0
for(i in 1:100) {
  sum <- sum + pbinom(i, size=100, prob=2/6, lower.tail = FALSE)
}
prob_c <- sum/100
print(prob_c)

#(d) P(X > Y)
# However, it could maybe be assumed to be 2/6 since (X>Y)E{3} so E(P(x>Y)) = 1/6
sum <- 0
for(i in 1:100) {
  sum <- sum + pbinom(i, size=100, prob=(2/6)) - pbinom(i, size=100, prob=0.5)  #X - Y
}
prob_d <- sum/100
print(prob_d)
