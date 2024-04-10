
<!-- README.md is generated from README.Rmd. Please edit that file -->

# lotterybr

<!-- badges: start -->

[![R-CMD-check](https://github.com/tomasbp2/lotterybr/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/tomasbp2/lotterybr/actions/workflows/R-CMD-check.yaml)
<!-- badges: end -->

The goal of the package is to provide a function to automatically import
data from the lotteries of Caixa Econômica Federal into the R
environment. Data from the lotteries of Caixa Econômica Federal includes
information on various games such as Mega-Sena, Lotofácil, Quina, among
others. They are downloaded from the official website of the Federal
Savings Bank at <https://loterias.caixa.gov.br/>.

## Installation

You can install the development version of lotterybr like so:

``` r
# install.packages("devtools")
devtools::install_github("tomasbp2/lotterybr")
```

## Example

Downloading Megasena winners data:

``` r
devtools::install_github("tomasbp2/lotterybr")
#> ── R CMD build ─────────────────────────────────────────────────────────────────
#> * checking for file ‘/tmp/Rtmp7fv91x/remotes12f19679d973d/tomasbp2-lotterybr-029fe86/DESCRIPTION’ ... OK
#> * preparing ‘lotterybr’:
#> * checking DESCRIPTION meta-information ... OK
#> * checking for LF line-endings in source and make files and shell scripts
#> * checking for empty or unneeded directories
#> * building ‘lotterybr_0.1.0.tar.gz’
library(lotterybr)

lotofacil <- get_data(game= "lotofacil", type= "ganhadores")
```
