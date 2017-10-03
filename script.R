


# Question 2:

# A)
#
# Calculate probability that a normal random variable with mean 22
# and variance 25:

sigma<- sqrt(25) #Obviously computer isnt actually needed here.
u <- 22
  
# i) lies between 16.2 and 27.5

#Recall: density function dnorm() and help()
#Thus, probability can be found using the probability density between the values.

prob_between <- pnorm(27.5, mean=u, sd=sigma) - pnorm(16.2, mean=u, sd=sigma)
prob_between

# ii) greater than 29

prob_greater <- 1-pnorm(29, mean=u, sd=sigma)
prob_greater

# iii) less than 17

prob_lesser <- pnorm(17, mean=u, sd=sigma)
prob_lesser

# iv) less than 15 or greater than 25

prob_less_or_greater <- (1-pnorm(25, mean=u, sd=sigma)) + pnorm(15, mean=u, sd=sigma)
prob_less_or_greater

#B)
#
# Probability that in 60 tosses of a fair coin that heads comes up:

# i) 20, 25, 30 times

prob_20 <- dbinom(20, size=60, prob=0.5)

prob_25 <- dbinom(25, size=60, prob=0.5)

prob_30 <- dbinom(30, size=60, prob=0.5)


probabilities <- c(prob_20, prob_25, prob_30)


for(probability in probabilities) {
  print(probability)
}


# ii)

sum <- 0
for(i in 1:19) {
  sum <- sum + dbinom(i, size=60, prob=0.5)
}
prob_less_20 <- sum
prob_less_20

prob_less_20 <- (1 - pbinom(20, size=60, prob=0.5, lower.tail = FALSE))
prob_less_20

# iii)


prob_less_30 <- (1 - pbinom(30, size=60, prob=0.5, lower.tail = FALSE))
prob_less_20 <- (1 - pbinom(20, size=60, prob=0.5, lower.tail = FALSE))

prob_between <- prob_less_30 - prob_less_20
prob_between

#C) 
#
# Rand variable X has Poisson dist with mean 7:

u <- 7

#i) X less than 5

prob <- ppois(5, lambda=7)
prob

#ii) X greater than 10 (strictly)

prob <- (1 - ppois(10, lambda=7))
prob

#iii) X between 4 and 16

prob <- ppois(16, lambda=7) - ppois(4, lambda=7)
prob



