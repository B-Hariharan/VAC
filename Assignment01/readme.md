# Scraping Most Runs in a Trophy using R

This repository contains an R script to scrape the top run-scorers in a specific cricket trophy from the [ESPNcricinfo website](https://www.espncricinfo.com/).

## Overview

The script uses the `rvest` package in R to extract data from the [Most runs in a career](https://stats.espncricinfo.com/ci/engine/records/batting/most_runs_career.html?id=117;type=trophy) page on ESPNcricinfo. Specifically, it scrapes the name of each player, the span of their career, the number of matches played, and the total runs scored in the tournament.

The extracted data is then stored in a data frame and saved as a CSV file.

## Usage

To run the script, you need to have the `rvest` and `robotstxt` package installed in R. You can install it by running:

```r
install.packages("rvest")
```

```r
install.packages("robotstxt")
```
