# Bayesian Model Comparison for Mortality Forecasting

## Project Overview

This repository contains the final project for a demography course (UW STATS566), focusing on Bayesian model comparison techniques for mortality forecasting. The analysis is based on the methodological framework introduced by Wong, Forster, and Smith (2023; *Journal of the Royal Statistical Society Series C: Applied Statistics*, [https://doi.org/10.1093/jrsssc/qlad021](https://doi.org/10.1093/jrsssc/qlad021)), specifically utilizing the Age-Period-Cohort-Improvement (APCI) model with overdispersion.


## Data Description

### England and Wales (Female)
- **`1x1EWdeath.txt`**: Annual death counts by single year of age (0–99) from 1961 to 2002.
- **`1x1EWexposure.txt`**: Corresponding exposure data for the same period and age groups.
- **`1x1EWdeath_validation_correct.txt`**: Corrected death counts for validation.
- **`1x1EWexposure_validation_correct.txt`**: Corrected exposure data for validation.

### USA (Female)
- **`1x1USA_Deaths.txt`**: Annual death counts by single year of age (0–99) from 1961 to 2002.
- **`1x1USA_Exposures.txt`**: Corresponding exposure data for the same period and age groups.

## Analysis Script

- **`Bayesian_model_compare_MF_Rcode_female.R`**: Implements Bayesian model comparison and mortality forecasting tailored for female mortality data.

## Supplementary Material

- **`supplementary.pdf`**: Detailed mathematical algorithms and methodological explanations provided by Wong, Forster, & Smith (2023).

## Project Summary

This project explores a Bayesian approach for mortality forecasting using the APCI model, incorporating overdispersion to enhance model accuracy. A comparative analysis is conducted against the widely used Lee-Carter Cohort (LCC) model, emphasizing the mathematical relationships between model parameters and the selection of appropriate prior distributions. The Laplace distribution is validated as an optimal prior through simulated density functions.

The APCI model demonstrates superior performance both computationally and in fitting mortality data for females in England and Wales. Additionally, robustness to potential time series misspecifications is addressed by applying two ARIMA models (random walk and AR(1)) to the time-dependent parameter \\(\kappa_t\\), combined using Bayesian model averaging based on posterior probabilities.

The same analytical framework is extended to USA mortality data, estimating crude mortality rates and projecting life expectancy under different model assumptions.

## Reference
- Wong, J. S. T., Forster, J. J., & Smith, P. W. (2023). Bayesian model comparison for mortality forecasting. *Journal of the Royal Statistical Society Series C: Applied Statistics*, 72(3), 566–586. [https://doi.org/10.1093/jrsssc/qlad021](https://doi.org/10.1093/jrsssc/qlad021)

