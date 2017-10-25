# R function: inputs (n,m,k)

# Joe draws k balls from an urn containing n red balls and n green balls
# Mary draws k balls from an urn containing m red balls and m green balls

# The probabilities in this case are different as they draw from different
# urns. Thus, we need to find the intersection of both distributions


# Function to compute the probability that both draw the same number of red balls:

# For each value 1 to k we must compute the probability matrix



find_prob <- function(successes, number_balls, draws) {
  #variables for both red and green balls
  reds <- number_balls
  greens <- number_balls
  index <- 1
  #variable to track how many reds have been drawn so far
  red_success <- 0
  
  product_vector <- c()
  for(i in 1:draws) {
    if(red_success < successes) {
      product_vector[i] <- reds/(reds + greens)
      red_success <- red_success + 1
      reds <- reds - 1
      if(reds == 0) {
        print("no more reds, ignore result")
      }
    }else {
      product_vector[i] <- greens/(reds + greens)
      greens <- greens - 1
      if(greens == 0) {
        print("no more greens, ignore result")
      }
    }
  }
  prob <- prod(product_vector)*choose(draws,successes)
  return(prob)
}


probability_joe_and_mary <- function(n, m, k) {
  p_joe_and_mary <- 0
  for(i in 0:k) {
    print(i)
    p_joe_and_mary <- p_joe_and_mary + find_prob(successes=i, number_balls=n, draws=k)*find_prob(successes=i, number_balls=m, draws=k)
  }
  return(p_joe_and_mary)
}

#d) Try the function with n = 600, m = 500, and k = 400
find_prob(successes=45, number_balls=50, draws=100)

# Inputs are succeses (x), number of balls (n), and draws (k)
find_prob_log <- function(successes, number_balls, draws) {
  
  #variables for both red and green balls
  reds <- number_balls
  greens <- number_balls
  
  #index for appending in R (it seems there is no .append() function in R like in python...)
  index <- 1
  
  #variable to track how many reds have been drawn so far
  red_success <- 0
  
  #vector to track the products
  product_vector <- c()
  
  # This loop runs k times. 
  for(i in 1:draws) {
    if(red_success < successes) {
      product_vector[i] <- log(reds) - log(reds + greens)
      red_success <- red_success + 1
      reds <- reds - 1
      if(reds == 0) {
        print("No more reds, result should be 0.")
      }
    }else {
      product_vector[i] <- log(greens) - log(reds + greens)
      greens <- greens - 1
      if(greens == 0) {
        print("No more greens, result should be 0.")
      }
    }
  }
  #multiply the product of the occurences by the number of possible events that create the product.
  prob <- sum(product_vector) + (lfactorial(draws) - lfactorial(successes) - lfactorial(draws-successes))
  return(prob)
}


probability_joe_and_mary_log <- function(n, m, k) {
  p_joe_and_mary <- 0
  for(i in 0:k) {
    print(k)
    p_joe_and_mary <- p_joe_and_mary + exp(find_prob_log(successes=i, number_balls=n, draws=k) + find_prob_log(successes=i, number_balls=m, draws=k))
  }
  return(p_joe_and_mary)
}

probability_joe_and_mary_log(n=6000, m=5000, k=4000)