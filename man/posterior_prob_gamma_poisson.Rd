% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/MCMC_poisson.R
\name{posterior_prob_gamma_poisson}
\alias{posterior_prob_gamma_poisson}
\title{Forward-Backward Algorithm to Calculate the Posterior Probabilities of Hidden States in Poisson-Gamma Model}
\usage{
posterior_prob_gamma_poisson(data, pi, mat_T, betas, alpha)
}
\arguments{
\item{data}{(numeric) Poisson data}

\item{pi}{(numeric) prior probability of states}

\item{mat_T}{(matrix) transition probability matrix}

\item{betas}{(numeric) vector with prior rates}

\item{alpha}{(numeric) prior scale}
}
\value{
List with the following elements: 
\itemize{
  \item \code{F}: auxiliary forward variables
  \item \code{B}: auxiliary backward variables
  \item \code{s}: weights
}
}
\description{
Forward-Backward Algorithm to Calculate the Posterior Probabilities of Hidden States in Poisson-Gamma Model
}
\details{
Please see supplementary material at \doi{10.1101/2023.06.26.546495} for more details on the algorithm.
}
\examples{
mat_T <- rbind(c(1-0.01,0.01,0),
               c(0.01,1-0.02,0.01),
               c(0,0.01,1-0.01))
L <- 2^10
betas <- c(0.1, 0.3, 0.5)
alpha <- 1

sim_data <- hmm_simulate_gamma_poisson_data(L = L,
                                            mat_T = mat_T,
                                            betas = betas,
                                            alpha = alpha)
pi <- sim_data$pi
hmm_poison_data <- sim_data$data
hist(hmm_poison_data, breaks = 100)

# Calculate posterior probabilities of hidden states
post_prob <- posterior_prob_gamma_poisson(data = hmm_poison_data,
                                          pi = pi,
                                          mat_T = mat_T,
                                          betas = betas,
                                          alpha = alpha)
str(post_prob)
}
