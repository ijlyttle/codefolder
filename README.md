
<!-- README.md is generated from README.Rmd. Please edit that file -->

# codefolder

<!-- badges: start -->

[![CRAN
status](https://www.r-pkg.org/badges/version/codefolder)](https://CRAN.R-project.org/package=codefolder)
[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://www.tidyverse.org/lifecycle/#experimental)
<!-- badges: end -->

The goal of codefolder is to provide “aftermarket” code-folding
capabilty for [bookdown](https://bookdown.org/yihui/bookdown) and
[distill](https://rstudio.github.io/distill).

## Installation

You can install the delevopment version of codefolder from
[GitHub](https://github.com/ijlyttle/codefolder) with:

``` r
# install.packages("devtools")
devtools::install_github("ijlyttle/codefolder")
```

## Example

Bookdown:

    ```{r codefolder, echo=FALSE, results='asis'}
    codefolder::bookdown(init = "hide")
    ```

Distill:

    <aside>
    ```{r codefolder, echo=FALSE, results='asis'}
    codefolder::distill(init = "hide")
    ```
    </aside>
