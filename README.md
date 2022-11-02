
<!-- README.md is generated from README.Rmd. Please edit that file -->

## Overview

<!-- badges: start -->

[![R build
status](https://github.com/gmcmacran/functional_playground/workflows/R-CMD-check/badge.svg)](https://github.com/gmcmacran/functional_playground/actions)
[![Codecov test
coverage](https://codecov.io/gh/gmcmacran/functional_playground/branch/main/graph/badge.svg)](https://codecov.io/gh/gmcmacran/functional_playground?branch=master)
<!-- badges: end -->

The package explores functional programming (map, reduce, operators,
recursion, etc.). Motivating questions include

- Is factoring out looping w/ map truly better than having loops within
  each function?
- If I come back to the code after 3 months, can I understand it?
- How hidden are the dependencies?
- Do higher order functions feel like a purpose built tools or forcing a
  round peg in a square hole?
- Is there some aspect of R’s language definition that prevent
  functional implementations?

This package implements standard algorithms using a functional
programming approach to answer these questions.

## Algorithms

- Fold
  - recursive_add
  - recursive_multiply
  - recursive_max
  - recursive_min
  - recursive_all
  - recursive_any
- Function operator
  - negate
  - recursive_none
  - filter
  - first
  - last
  - nth
  - compose
- Map and function operator
  - cumulative_add
  - cumulative_multiply
  - cumulative_max
  - cumulative_min
  - cumulative_all
  - cumulative_any
  - cumulative_none
- Map and fold
  - recursive_is_in
- Mutual recursion
  - is_even
  - is_odd
  - hofstadter_female
  - hofstadter_male
- Recursion
  - recursive_reverse
  - ackermann
  - recursive_length
  - recursive_sort
  - hofstadter_g
  - hofstadter_h
  - hofstadter_q
  - recursive_gcd
  - recursive_lcm

## Installation

This package will not be on cran. A stable version can be installed
with:

``` r
# install.packages("devtools")
devtools::install_github("gmcmacran/functional_playground")
```
