# Question 3

# Joe draws k balls from an urn containing n red balls and n green balls
# Mary draws k balls from an urn containing m red balls and m green balls
# For both cases, the balls are not replaced after they are drawn.
#
# We want to compute the probability that Joe and Mary will draw the same # of red balls.



# Main Function 
myFunction <- function(n, m, k) {
  # Requirements for inputs to function. 
  if((n < 0) | (m < 0) | (k < 0) | (2*n < k) | (2*m < k)) {
    return(FALSE)
  }
  # Assuming inputs are valid:
  

  
  return(p_j_int_m)
}

sample_space <- function(n,k) {
  l <- list()
  
}