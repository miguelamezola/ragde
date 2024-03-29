% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/mul_inv.R
\name{mul_inv}
\alias{mul_inv}
\title{This function returns the inverse of x under multiplication mod n.
Recall that x and n must be relatively prime.}
\usage{
mul_inv(x, n)
}
\arguments{
\item{x}{an integer}

\item{n}{an integer}
}
\value{
x-inverse under multiplication mod n
}
\description{
This function returns the inverse of x under multiplication mod n.
Recall that x and n must be relatively prime.
}
\examples{
mul_inv(3, 10)
}

