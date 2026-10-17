# strainselect

<!-- badges: start -->
[![R-CMD-check](https://github.com/lguillier/strainselect_package/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/lguillier/strainselect_package/actions/workflows/R-CMD-check.yaml)
<!-- badges: end -->

{strainselect} helps choosing which bacterial strains to sequence from a
collection described by metadata (sampling context, matrix, region, sector,
year...). It provides two methods.

The first, based on **clustering**, can be used if you have a limited number
of strains to sequence. It allows you to choose the optimal number of clusters
or to fix the number of clusters you can sequence. Clusters are defined thanks
to a dissimilarity matrix obtained by calculating the Gower distance between
each strain. Then, for each cluster, the best clustered strain is selected.
This method allows the selection of strains that differ in their
characteristics.

The second method, based on **profiles** (interactions), can be used if
you're not limited by the number of strains to sequence. It groups the strains
that are completely similar, while identifying unique strains that are not
similar to any other, and selects one strain per group.

![image](https://user-images.githubusercontent.com/114993027/220967873-c8a4edaa-2d93-441c-b88e-7ec0a9bb674b.png)

## Installation

Install the development version from GitHub:

``` r
# install.packages("remotes")
remotes::install_github("lguillier/strainselect_package", build_vignettes = TRUE)
```

## Usage

``` r
library(strainselect)

# Example data: 100 Salmonella strains described by 24 variables
datafile <- system.file("data_test.csv", package = "strainselect")
raw_data <- read.csv(datafile, sep = ";")

# Keep the metadata used for the selection and extract the year of sampling
prepared_data <- prepare_input(raw_data, col_select = c(7, 10, 13, 14, 17, 24),
                               id = 1, date = 17, year = TRUE)

# Clustering method: select 20 strains as different as possible
gower <- assess_gower(prepared_data, graph = FALSE)
stats <- cstats_table(gower$gower_dist, gower$aggl.clust.c, k = 50, step = 10)
selection <- select_silhouette(prepared_data, gower$gower_dist, k = 20, seed = 1)
unique(selection$selected)

# Profile method: select one strain per distinct profile
profiles <- define_profiles(prepare_upset(prepared_data))
selection <- select_profiles(profiles, prepared_data, seed = 1)
unique(selection$selected)
```

See the "Get started" vignette (`vignette("get-started", package =
"strainselect")`) for a step-by-step description of both methods.

## Funding

This work was supported by funding from the European Union’s Horizon 2020
Research and Innovation programme under grant agreement No 773830: One Health
European Joint Programme (project CARE: Cross-sectoral framework for quality
Assurance Resources for countries in the European Union)
