\docType{methods}
\name{check4probe}
\alias{check4probe}
\alias{check4probe,DEMIExperiment,vector-method}
\title{Checks if the probes are available}
\arguments{
  \item{object}{A \code{DEMIExperiment} object.}

  \item{probes}{A \code{vector}. A vector of probe ID's.}
}
\value{
  Returns NULL if all the probes are exist in the alignment
  data, else returns an error message.
}
\description{
  The function \code{check4probe} checks if the probe ID's
  specified in the probes vector are present in the
  alignment data of the specified \code{DEMIExperiment}
  object.
}
\details{
  To see which probes are available in the alignment data
  use the function getAlignment(x)$probeID where x is an
  object of class \code{DEMIExperiment}.
}
\examples{
\dontrun{

# To use the example we need to download a subset of CEL files from http://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE9819 published by Pradervand et al. 2008.

# Set the destination folder where the downloaded files fill be located
destfolder <- "demitest/testdata/"

# Download packed CEL files and change the names according to the feature they represent (for example to include UHR or BRAIN in them to denote the features).
# It is a good practice to name the files according to their features which allows easier identification of the files later.
download.file( "ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM247nnn/GSM247694/suppl/GSM247694.CEL.gz", destfile = paste( destfolder, "UHR01_GSM247694.CEL.gz", sep = "" ) )
download.file( "ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM247nnn/GSM247695/suppl/GSM247695.CEL.gz", destfile = paste( destfolder, "UHR02_GSM247695.CEL.gz", sep = "" ) )
download.file( "ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM247nnn/GSM247698/suppl/GSM247698.CEL.gz", destfile = paste( destfolder, "UHR03_GSM247698.CEL.gz", sep = "" ) )
download.file( "ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM247nnn/GSM247699/suppl/GSM247699.CEL.gz", destfile = paste( destfolder, "UHR04_GSM247699.CEL.gz", sep = "" ) )
download.file( "ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM247nnn/GSM247696/suppl/GSM247696.CEL.gz", destfile = paste( destfolder, "BRAIN01_GSM247696.CEL.gz", sep = "" ) )
download.file( "ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM247nnn/GSM247697/suppl/GSM247697.CEL.gz", destfile = paste( destfolder, "BRAIN02_GSM247697.CEL.gz", sep = "" ) )
download.file( "ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM247nnn/GSM247700/suppl/GSM247700.CEL.gz", destfile = paste( destfolder, "BRAIN03_GSM247700.CEL.gz", sep = "" ) )
download.file( "ftp://ftp.ncbi.nlm.nih.gov/geo/samples/GSM247nnn/GSM247701/suppl/GSM247701.CEL.gz", destfile = paste( destfolder, "BRAIN04_GSM247701.CEL.gz", sep = "" ) )

# We need the gunzip function (located in the R.utils package) to unpack the gz files.
# Also we will remove the original unpacked files for we won't need them.
library( R.utils )
for( i in list.files( destfolder ) ) {
	gunzip( paste( destfolder, i, sep = "" ), remove = TRUE )
}

# Now we can continue the example of the function check4probe

# Set up an experiment
demiexp <- DEMIExperiment( analysis = 'gene', celpath = destfolder,
			experiment = 'myexperiment', organism = 'homo_sapiens' )

# Create clusters with an optimized wilcoxon's rank sum test incorporated within demi that precalculates the probabilities
demiclust <- DEMIClust( demiexp, group = c( "BRAIN", "UHR" ), clust.method = demi.wilcox.test.fast )

# Check for probe ID's
check4probe( demiexp, c( 1155955, 100210 ) )

# To see what probes gave the error
setdiff( c( 1155955, 100210 ), getAlignment( demiexp )$probeID )

}
}
\author{
  Sten Ilmjarv
}
\seealso{
  \code{DEMIExperiment}
}

