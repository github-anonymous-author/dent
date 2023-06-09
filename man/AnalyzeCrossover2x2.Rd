% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/analyzeCrossover.R
\name{AnalyzeCrossover2x2}
\alias{AnalyzeCrossover2x2}
\title{Equivalence-Based Tests for 2\eqn{\times}2 Crossover Studies}
\usage{
AnalyzeCrossover2x2(
  X = NULL,
  Y = NULL,
  type = "welch",
  deltaL = -Inf,
  deltaU = Inf,
  alpha = NULL
)
}
\arguments{
\item{X}{a matrix of data values with at least two rows of observations from Group 1. The observations in each row should be of the form \eqn{\boldsymbol{x}_{i} = (x_{i1}, x_{i2})}, where \eqn{i} denotes the \eqn{i}th subject in the 1st sequence and the second subscript denotes the period. That is, column \eqn{j} corresponds to the \eqn{j}th period of sequence 1. The relevant intra-subject contrasts will be computed, and there should be at least two distinct values for these contrasts. Please exclude missing data and \code{NA} values.}

\item{Y}{a matrix of data values with at least two rows of observations from Group 2. The observations in each row should be of the form \eqn{\boldsymbol{y}_{i} = (y_{i1}, y_{i2})}, where \eqn{i} denotes the \eqn{i}th subject in the 2nd sequence and the second subscript denotes the period. That is, column \eqn{j} corresponds to the \eqn{j}th period of sequence 2. The relevant intra-subject contrasts will be computed, and there should be at least two distinct values for these contrasts. Please exclude missing data and \code{NA} values.}

\item{type}{a character string specifying the type of \emph{t}-test(s) to be used, must be one of \code{"welch"} (default, does not assume intra-subject variance is the same in both groups) or \code{"student"} (assumes intra-subject variance is the same in both groups).}

\item{deltaL}{the lower bound for the interval of equivalence (can be \code{-Inf} for noninferiority test).}

\item{deltaU}{the upper bound for the interval of equivalence (can be \code{Inf} for noninferiority test).}

\item{alpha}{the significance level \eqn{\alpha \in (0,1)}.}
}
\value{
The test results are returned as a list with supplementary information. Equivalence or noninferiority is concluded when all \emph{p}-values in the Results table are less than \code{alpha}. Otherwise, we do not reject the null hypotheses of inequivalence or inferiority.
}
\description{
Conducts equivalence and noninferiority tests for 2\eqn{\times}2 crossover studies.
}
\examples{
# analyze data from a 2x2 crossover trial
AnalyzeCrossover2x2(X = cbind(rnorm(15), rnorm(15, 0.5)), Y = cbind(rnorm(10, 0.5), rnorm(10)),
type = "welch", deltaL = -1, deltaU = 1, alpha = 0.05)

}
