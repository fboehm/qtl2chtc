#' Read boot output files - which contain lrt statistics - and assemble into a single table
#'
#' @param boot_run_num integer to indicate which run of experimental design this is.
#' @param total_number_of_scans_per_trait number of scans ie number of 2d scans - for each trait file
#' @param nlrt_per_file positive integer specifying number of lrt statistics per boot output file
#' @export

make_results_table <- function(boot_run_num = 301, total_number_of_scans_per_trait = 400, nlrt_per_file = 10){
  res <- list()
  i <- 1
  for (traitid in 0:(total_number_of_scans_per_trait - 1)){
    foo <- read_boot_lrt(job_num = traitid, total_number_of_scans = total_number_of_scans_per_trait,
                         nlrt_per_file = nlrt_per_file,
                         boot_run_num = boot_run_num
                         )
    foo$traitid <- traitid
    res[[i]] <- foo
    i <- i + 1
  }
  do.call("rbind", res) -> tib
  return(tib)
}
