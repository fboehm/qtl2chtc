#' Calculate likelihood ratio tests for all files in a single directory. Each file contains output of a two-dimensional scan.
#'
#' @param directory path to directory that contains the collection of files with names ending in the specified pattern.
#' @param pattern regular expression to pass to dir() to identify the results files
#' @export
#' @importFrom utils read.table

calc_lrt_dir <- function(directory, pattern = "*.txt"){
  dir(path = directory, pattern = pattern) -> fns
  lrt <- numeric()
  i <- 1
  for (fn in fns){
    read.table(file.path(directory, fn)) -> scan_out
    qtl2pleio::calc_lrt_tib(scan_out) -> lrt[i]
    i <- i + 1
  }
  tibble::tibble(fns, lrt) -> foo
  return(foo)
}
