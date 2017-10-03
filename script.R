
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

for(i in c(prob_20, prob_25, prob_30)) {
  print(i)
}

# ii)

