suppressPackageStartupMessages({
  library(crew)
  library(dplyr)
  library(ggplot2)
  library(glue)
  library(lubridate)
  library(purrr)
  library(stringr)
  library(targets)
  library(tarchetypes)
  library(tibble)
  library(tidyr)
  library(tidyselect)
  library(usethis)
})


tar_option_set(
  controller = crew_controller_local(workers = 2),
  error = "continue"
)

tar_source()
