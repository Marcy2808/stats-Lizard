packages <- c(
  "readr",     # Data import
  "ggplot2",   # Plotting
  "dplyr",     # Data manipulation
  "faraway",   # Example datasets
  "car",       # Linear hypothesis testing
  "lmreg",     # One-sided linear hypothesis testing
  "emmeans"    # Estimated marginal means
)

installed_packages <- rownames(installed.packages())
for (pkg in packages) {
  if (!pkg %in% installed_packages) {
    install.packages(pkg)
  }
}

lapply(packages, library, character.only = TRUE)
