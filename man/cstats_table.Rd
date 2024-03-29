% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cstats_table.R
\name{cstats_table}
\alias{cstats_table}
\title{cstats_table}
\usage{
cstats_table(dist, tree, k, l, graph_silhouette = T)
}
\arguments{
\item{dist}{a distance object}

\item{tree}{a dendrogram object}

\item{k}{a number}

\item{l}{a number}

\item{graph_silhouette}{a boolean}
}
\value{
a dataframe
}
\description{
cstats_table
}
\examples{
# Example with your dataset in "inst/"
datafile <- system.file("data_test.csv", package = "strainselect")
raw_data <- read.csv(datafile, sep = ";",header = T)
gower <- assess_gower(prepared_data, graph = T)
# Apply my function
cstats_table(dist = gower$gower_dist, tree = gower$aggl.clust.c, k = 50,l = 10)
}
