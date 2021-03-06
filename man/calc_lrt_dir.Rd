% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/calc_lrt_dir.R
\name{calc_lrt_dir}
\alias{calc_lrt_dir}
\title{Calculate likelihood ratio tests for all files in a single directory. Each file contains output of a two-dimensional scan.}
\usage{
calc_lrt_dir(directory, pattern = "*.txt")
}
\arguments{
\item{directory}{path to directory that contains the collection of files with names ending in the specified pattern.}

\item{pattern}{regular expression to pass to dir() to identify the results files}
}
\description{
Calculate likelihood ratio tests for all files in a single directory. Each file contains output of a two-dimensional scan.
}
