# R/setup.R
# Central package management for ACL Research Design Guide

# Install and load pacman if not available
if (!require("pacman")) install.packages("pacman")

# Load all required packages
pacman::p_load(
  # Core tidyverse packages
  "tidyverse",
  "readr",
  "dplyr",
  "ggplot2",
  "forcats",
  "stringr",
  "purrr",
  "tibble",
  "tidyr",
  
  # Statistical analysis
  "survival",
  "Hmisc",
  "simstudy",
  "simsurv",
  "powerSurvEpi",
  "wmwpow",
  "pwrss",
  "confintr",
  
  # Data visualization
  "ggdist",
  "ggsurvfit",
  "ggfortify",
  "gt",
  "gtsummary",
  "cardx",
  
  # Simulation and parallel processing
  "parallel",
  "parallelly",
  "future",
  "furrr",
  "progressr",
  "memoise",
  
  # Text and data processing
  "stringdist",
  "scrutiny",
  "labelled",
  "epoxy",
  
  # File and data management
  "here",
  "yaml",
  "gargle",
  "googledrive",
  "googlesheets4",
  "gert",
  
  # Research tools
  "rcrossref",
  "httr",
  "jsonlite",
  "synthesisr",
  "statcheck",
  "grateful",
  
  # Specialized packages
  "rsprite2",
  "reshape",
  
  install = TRUE,
  update = FALSE
)

# Set global options
options(
  scipen = 999,
  digits = 3,
  dplyr.summarise.inform = FALSE,
  knitr.kable.NA = ""
)

# Set up ggplot2 theme
theme_set(theme_minimal(base_size = 12))

# Define custom colors for consistency
acl_colors <- c(
  primary = "#2E86AB",
  secondary = "#A23B72",
  tertiary = "#F18F01",
  success = "#C73E1D",
  neutral = "#666666"
)

# Set up future for parallel processing
future::plan(future::multisession)

# Message about successful setup
message("✓ ACL Research Design Guide packages loaded successfully")
message("✓ Global options configured")
message("✓ Custom theme and colors set")