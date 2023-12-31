% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/additional_documentation.R
\docType{data}
\name{example_hmm_mcmc_normal}
\alias{example_hmm_mcmc_normal}
\title{Example of a Simulated Normal Model}
\format{
hmm_mcmc_normal object
}
\usage{
example_hmm_mcmc_normal
}
\description{
Example of a Simulated Normal Model
}
\examples{
# Data stored in the object
plot(density(example_hmm_mcmc_normal$data), main = "")

# Priors used in simulation
example_hmm_mcmc_normal$priors

# Model
example_hmm_mcmc_normal

summary(example_hmm_mcmc_normal)
}
\keyword{datasets}
