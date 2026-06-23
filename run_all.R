# run_all.R
# This script reproduces the entire analysis

packages <- c("tidyverse", "rmarkdown", "yaml", "eurostat", 
              "maps", "patchwork", "dplyr", "ggnewscale", "renv")
install_if_missing <- function(pkg) {
  if (!require(pkg, character.only = TRUE)) {
    install.packages(pkg)
  }
}
invisible(lapply(packages, install_if_missing))

rmarkdown::render("Template_Assignment.Rmd")

