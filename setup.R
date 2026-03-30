library(targets)
library(tarchetypes)

pkgs <- c(
  "dplyr",
  "ggplot2",
  "glue",
  "lubridate",
  "purrr",
  "stringr",
  "targets",
  "tarchetypes",
  "tibble",
  "tidyr",
  "tidyselect",
  "usethis"
)

if (interactive() && !tar_active()) {
  lapply(pkgs, library, character.only = TRUE)
}

tar_option_set(
  packages = pkgs,
  controller = crew::crew_controller_local(workers = 2),
  error = "continue"
)

tar_source()
