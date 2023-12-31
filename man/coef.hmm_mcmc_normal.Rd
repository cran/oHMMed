% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/MCMC_normal.R, R/MCMC_poisson.R
\name{coef.hmm_mcmc_normal}
\alias{coef.hmm_mcmc_normal}
\alias{coef.hmm_mcmc_gamma_poisson}
\title{Extract Model Estimates}
\usage{
\method{coef}{hmm_mcmc_normal}(object, ...)

\method{coef}{hmm_mcmc_gamma_poisson}(object, ...)
}
\arguments{
\item{object}{an object of class inheriting from "\code{mcmc_hmm_*}"}

\item{...}{not used}
}
\value{
Estimates extracted from MCMC HMM objects
}
\description{
\code{coef} is a generic function which extracts model estimates from \code{mcmc_hmm_*} objects
}
\examples{
coef(example_hmm_mcmc_normal)
coef(example_hmm_mcmc_gamma_poisson)
}
