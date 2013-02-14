\docType{methods}
\name{probe.plot}
\alias{probe.plot}
\alias{probe.plot,DEMIExperiment,character-method}
\title{Draws a plot of the normalized expression levels of the specified targets}
\arguments{
  \item{object}{A \code{DEMIExperiment} object.}

  \item{target}{A \code{vector}. Depending on the analysis
  the \code{target} can be ensembl gene ID or gene symbol
  (e.g. 'MAOB'), ensembl transcript ID, ensembl peptide ID
  or genomic region ID.}
}
\value{
  A \code{ggplot} object.
}
\description{
  The function \code{probe.plot} draws a plot of the
  normalized expression levels for the specified targets.
  Depending on the analysis the \code{target} can be
  ensembl gene ID or gene symbol (e.g. 'MAOB'), ensembl
  transcript ID, ensembl peptide ID or genomic region ID.
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

# Now we can continue the example of the function probe.plot

# Set up an experiment
demiexp <- DEMIExperiment( analysis = 'gene', celpath = destfolder,
			experiment = 'myexperiment', organism = 'homo_sapiens' )

# Draw probes levels measuring the gene 'MAOB'
pdf( "MAOB_probe_plot.pdf", width=8, height=8 )
probe.plot( demiexp, "MAOB" )
dev.off()

}
}
\author{
  Sten Ilmjarv
}
\seealso{
  \code{DEMIExperiment}
}

