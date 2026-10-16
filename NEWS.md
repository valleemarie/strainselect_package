# strainselect 0.1.0

## Breaking changes

* `prepare_input()`: the arguments `m` and `a` are renamed `month` and
  `year`; `cstats_table()`: the argument `l` is renamed `step`. The old names
  still work but give a deprecation warning.
* `prepare_input()` no longer keeps the identifier column in the selected
  metadata when `col_select` includes it (it was used in the distances).
* `cstats_table()` returns the table of statistics (it returned `NULL` or
  only the plot), and its rows are named `Test <number of clusters>`.

## New features

* `select_silhouette()` and `select_profiles()` gain a `seed` argument to
  make the selection reproducible.
* `select_silhouette()` checks that `k` is between 2 and the number of
  strains minus 1.

## Bug fixes and improvements

* The package can be installed and used without loading its dependencies
  first; `select_silhouette()` and `define_profiles()` no longer depend on
  global objects; `select_profiles()` fills the `size` column.
* `prepare_upset()`, `define_profiles()`, `select_profiles()` and
  `select_silhouette()` are vectorised (about 2000 times faster on 3000
  strains, same results).
* Information is displayed with `message()` and can be silenced with
  `suppressMessages()`.
* The example data `data_test.csv` is encoded in UTF-8.
* Complete documentation of the functions, a "Get started" vignette, unit
  tests for every function and continuous integration on GitHub.

# strainselect 0.0.0.9000

* First version.
