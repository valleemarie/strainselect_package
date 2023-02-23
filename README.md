# strainselect_package

This package offers two methods for selecting strains to be sequenced. The first one based on clustering method can be use if you are limited on the number of strain to sequence. It allows choosing the optimal number of cluster or fix the number of cluster you can sequence. Clusters are defined thanks to a dissimilarity matrix that results from the calculation of the gower distance between each strain. Then the strain which is the best clustered is choose for each cluster. This method allows the selections of strains that differ in their characteristics.

The second method based on interaction can be use if you aren't limited on the number of strain to sequence. It groups the strains according to their interactions. For this method, strains that are completely similar are grouped while identifying unique strains that are not similar to any other.

![image](https://user-images.githubusercontent.com/114993027/220967873-c8a4edaa-2d93-441c-b88e-7ec0a9bb674b.png)

