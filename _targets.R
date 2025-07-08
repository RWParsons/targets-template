source("setup.R")

############################
##### Targets Pipeline #####
############################


list(
  tar_target(
    name = data,
    command = tibble(x = rnorm(100), y = rnorm(100))
  ),
  tar_target(
    name = model,
    command = coefficients(lm(y ~ x, data = data))
  )
)
