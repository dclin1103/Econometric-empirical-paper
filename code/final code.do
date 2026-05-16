/*
Project: Does democracy bring economic growth? Focusing on Sub-Saharan Africa and Southeast Asia countries.
Purpose: Clean raw datasets, construct a country-year panel, and estimate baseline models
Last updated: 2026-05-15
Inputs:
    data/raw/REAL GDP.csv
    data/raw/Tradeopenness.csv
    data/raw/GFCF.csv
    data/raw/democracy-index-polity.csv
    data/raw/mean-years-of-schooling-long-run.csv
    data/raw/democracy-index-polity extension.csv

Outputs:
    data/clean/
    output/tables/
    output/figures/
    output/logs/
****************************************************************************************/

clear all
set more off
version 18

/*0.Project directories */

global ROOT "`c(pwd)'"

global raw     "$ROOT/data/raw"
global clean   "$ROOT/data/clean"
global tables  "$ROOT/output/tables"
global figures "$ROOT/output/figures"
global logs    "$ROOT/output/logs"

foreach dir in "$clean" "$tables" "$figures" "$logs" {
    capture mkdir "`dir'"
}

capture log close
log using "$logs/final code.log", replace text

/*1.Install required packages if missing*/

cap which outreg2
if _rc ssc install outreg2, replace

cap which binscatter
if _rc ssc install binscatter, replace

/*2.Clean Raw Data*/


display "Project setup completed successfully."

log close
