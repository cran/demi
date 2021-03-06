% Generated by roxygen2 (4.1.0): do not edit by hand
% Please edit documentation in R/diffexp-methods.R
\docType{methods}
\name{matchExonGene}
\alias{matchExonGene}
\title{Matches exons to their corresponding transcripts.}
\usage{
matchExonGene(cluster, blatTable, annoTable)
}
\arguments{
\item{cluster}{A \code{vector}. A \code{vector} of probe ID's in the cluster.}

\item{blatTable}{A \code{data.frame}. A \code{data.frame} with alignment information.}

\item{annoTable}{A \code{data.frame}. A \code{data.frame} with annotation information.}
}
\value{
A \code{data.frame} where exons are matched to transcript.
}
\description{
The function \code{matchExonGene} matches exons to their corresponding transcripts. It is
used internally in DEMI analysis.
}
\author{
Sten Ilmjarv
}

