
<!-- README.md is generated from README.Rmd. Please edit that file -->

# codefolder

<!-- badges: start -->

[![CRAN
status](https://www.r-pkg.org/badges/version/codefolder)](https://CRAN.R-project.org/package=codefolder)
[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://www.tidyverse.org/lifecycle/#experimental)
[![Travis build
status](https://travis-ci.org/ijlyttle/codefolder.svg?branch=master)](https://travis-ci.org/ijlyttle/codefolder)
<!-- badges: end -->

The goal of codefolder is to provide “aftermarket” code-folding
capabilty for [bookdown](https://bookdown.org/yihui/bookdown) and
[distill](https://rstudio.github.io/distill). The operative code is
based on this Stack Overflow
[answer](https://stackoverflow.com/a/45501553) by Sébastien Rochette.

## Installation

You can install the delevopment version of codefolder from
[GitHub](https://github.com/ijlyttle/codefolder) with:

``` r
# install.packages("devtools")
devtools::install_github("ijlyttle/codefolder")
```

## Example

This is a quick way to enable code-folding, for an entire page, on a
page-by-page basis.

The idea is to put an Rmd-chunk near the top of a page. When rendered,
the chunk places a button in the right margin which can be used to show
or hide code.

There is a function each for Bookdown and Distill. The main argument is
`init`, which indicates if you want, initially, to `"show"` or `"hide"`
the code. The other arguments are `query`, the CSS selector for to match
the code elements, and the `style` to the button.

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

If you like, you can create these as RStudio [code
snippets](https://support.rstudio.com/hc/en-us/articles/204463668-Code-Snippets)
for markdown. I use `cfb` and `cfd` as my short-codes.

It will be up to you to add some CSS according to your tastes.

## Code of Conduct

Please note that the ‘codefolder’ project is released with a
[Contributor Code of Conduct](CODE_OF_CONDUCT.md). By contributing to
this project, you agree to abide by its terms.
