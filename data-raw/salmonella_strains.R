# Build the `salmonella_strains` dataset from inst/data_test.csv
# Run from the package root: source("data-raw/salmonella_strains.R")
salmonella_strains <- read.csv("inst/data_test.csv", sep = ";", header = TRUE,
                               encoding = "UTF-8")
save(salmonella_strains, file = "data/salmonella_strains.rda",
     compress = "xz", version = 2)
