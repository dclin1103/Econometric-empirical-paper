# Democracy and Economic Growth: A Reproducible Stata Project

This repository contains a Stata-based empirical project examining the relationship between democracy and real GDP per capita growth using a country-year panel dataset. The project was originally developed for an econometrics empirical paper and has been reorganized as a reproducible research workflow for data cleaning, panel construction, regression analysis, robustness checks, and automated output generation.

The main purpose of this repository is to demonstrate an end-to-end empirical workflow in Stata, including raw data processing, merge validation, variable construction, fixed-effects regressions, clustered standard errors, unit-root tests, and generated tables and figures.

## Research Question

Does democracy bring economic growth? Evidence from Selected Developing Countries

The analysis focuses on whether standardized democracy scores are positively associated with economic growth after controlling for lagged growth, education, investment, trade openness, country fixed effects, year fixed effects, and missing-value indicators.

## Data Sources

The project uses publicly available country-level datasets:

- World Bank: real GDP per capita, trade openness, and gross fixed capital formation
- Our World in Data / Polity V: democracy index
- Our World in Data / Barro-Lee: average years of schooling

The raw data files are stored in `data/raw/`.

## Project structure

```text
code/
    final＿code.do

data/
    raw/
        REAL GDP.csv
        Tradeopenness.csv
        GFCF.csv
        democracy-index-polity.csv
        democracy-index-polity extend.csv
        mean-years-of-schooling-long-run.csv
    clean/
        final_country_year_panel.dta
output/
    tables/
        table_outcome
    figures/
        figure_1
        figure_2
    logs/
        final code.log
