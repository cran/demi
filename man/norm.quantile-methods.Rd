\docType{methods}
\name{norm.quantile}
\alias{norm.quantile}
\alias{norm.quantile,matrix-method}
\title{Quantile normalization function}
\arguments{
  \item{object}{A \code{matrix}. The raw expression
  matrix.}
}
\value{
  A \code{data.frame} representing the normalized
  expression matrix.
}
\description{
  A function for normalizing the expression matrix with
  quantiles. In the current It tries to mimic rma quantile
  normalization. In the current state it is not used in
  DEMI analysis.
}
\examples{
\dontrun{

# Create a matrix with 1000 values that represents raw expression values
rawmatrix <- matrix(rexp(1000, rate=1), ncol=8)

# Normalize the raw expression matrix
normmatrix <- norm.quantile( rawmatrix )

}
}
\author{
  Sten Ilmjarv
}

