#' @keywords internal
#' @section Methods:
#' Both methods start with [prepare_input()], which cleans the table of
#' metadata.
#'
#' * The **clustering method** is suited when the number of strains that can
#'   be sequenced is limited: [assess_gower()] computes Gower distances and a
#'   hierarchical clustering, [cstats_table()] helps choosing the number of
#'   clusters, and [select_silhouette()] selects the best clustered strain of
#'   each cluster.
#' * The **profile method** is suited when the number of strains is not
#'   limited: [prepare_upset()] builds a binary table of modalities,
#'   [define_profiles()] groups strictly identical strains, and
#'   [select_profiles()] selects one strain per group.
#'
#' See `vignette("get-started", package = "strainselect")` for a complete
#' example.
"_PACKAGE"
