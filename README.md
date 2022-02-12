
<!-- README.md is generated from README.Rmd. Please edit that file -->

# Overview

<!-- badges: start -->

[![R build
status](https://github.com/gmcmacran/functional_playground/workflows/R-CMD-check/badge.svg)](https://github.com/gmcmacran/functional_playground/actions)
[![Codecov test
coverage](https://codecov.io/gh/gmcmacran/functional_playground/branch/main/graph/badge.svg)](https://codecov.io/gh/gmcmacran/functional_playground?branch=master)
<!-- badges: end -->

This package implements standard algorithms using a functional
programming approach.

-   Reduce/fold
    -   recursive_add
    -   recursive_multiply
    -   recursive_max
    -   recursive_min
    -   recursive_all
    -   recursive_any
-   Function operator
    -   negate
    -   filter
    -   first
    -   last
    -   nth
    -   compose
-   Map and function operator
    -   cumulative_add
    -   cumulative_multiply
    -   cumulative_max
    -   cumulative_min
    -   cumulative_all
    -   cumulative_any
-   Mutual recursion
    -   is_even
    -   is_odd
-   Recursion
    -   recursive_reverse
    -   ackermann
    -   recursive_length
    -   recursive_sort

## Installation

This package will not be on cran. A stable version can be installed
with:

``` r
# install.packages("devtools")
devtools::install_github("gmcmacran/functional_playground")
```
