% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/prepare_upset.R
\name{prepare_upset}
\alias{prepare_upset}
\title{prepare_upset}
\usage{
prepare_upset(prepared_data)
}
\arguments{
\item{prepared_data}{a dataframe}
}
\value{
a dataframe
}
\description{
prepare_upset
}
\examples{
# Example with your dataset in "inst/"
datafile <- system.file("data_test.csv", package = "strainselect")
raw_data <- read.csv(datafile, sep = ";",header = T)
prepared_data <- prepare_input(raw_data,col_select = c(7,10,13,14,17,24),
              id=1,date=17,m=FALSE,a=TRUE)
# Apply my function
prepare_upset(prepared_data)
}
