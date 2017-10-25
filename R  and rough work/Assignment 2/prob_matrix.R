# R function: inputs (n,m,k)

# Joe draws k balls from an urn containing n red balls and n green balls
# Mary draws k balls from an urn containing m red balls and m green balls

# The probabilities in this case are different as they draw from different
# urns. Thus, we need to find the intersection of both distributions


# Function to compute the probability that both draw the same number of red balls:

# For each value 1 to k we must compute the probability matrix

prob_matrix <- function(n_red, n_green, m_red, m_green) {
    n_red_m_red <- (n_red/(n_red + n_green))*(m_red/(m_red + m_green))
    n_red_m_green <- (n_red/(n_red + n_green))*(m_green/(m_red + m_green))
    n_green_m_red <- (n_green/(n_red + n_green))*(m_red/(m_red + m_green))
    n_green_m_green <- (n_green/(n_red + n_green))*(m_green/(m_red + m_green))
    probability_matrix <- matrix( 
                               c(n_red_m_red, n_red_m_green, n_green_m_red, n_green_m_green), # the data elements 
                               nrow=2,              # number of rows 
                               ncol=2,              # number of columns 
                               byrow = TRUE)        # fill matrix by rows
    return(probability_matrix)
}

main <- function(n=5, m=6, k=3) {
    n_red <- n
    n_green <- n
    m_red <- m
    m_green <- m
    
    target_val <- 2 # 2 reds
    reds_so_far <- 0
    for(i in 1:k) {
        prob_matrix(n_red, n_green, m_red, m_green)
        if(reds_so_far < target_val) {
            reds_so_far <- reds_so_far + 1
            n_red <- n_red - 1
            m_red <- m_red - 1
        } else {
            n_green <- n_green - 1
            m_green <- m_green -1
        }
    }
    
}

main()
