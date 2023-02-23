# strainselect_package

This package provides two methods for selecting strains for sequencing. 
The first, based on the clustering method, can be used if you have a limited number of strains to sequence. It allows you to choose the optimal number of clusters or to fix the number of clusters you can sequence. Clusters are defined thanks to a dissimilarity matrix obtained by calculating the Gower distance between each strain. Then, for each cluster, the best clustered strain is selected. This method allows the selection of strains that differ in their characteristics.
The second method, based on interaction, can be used if you're not limited by the number of strains to sequence. It groups the strains according to their interactions. This method groups strains that are completely similar, while identifying unique strains that are not similar to any other.

![image](https://user-images.githubusercontent.com/114993027/220967873-c8a4edaa-2d93-441c-b88e-7ec0a9bb674b.png)

