
<!-- README.md is generated from README.Rmd. Please edit that file -->
readgmt
=======

[![License: GPL v3](https://img.shields.io/badge/License-GPLv3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0) [![CRAN status](https://www.r-pkg.org/badges/version/readgmt)](https://cran.r-project.org/package=readgmt) [![Travis build status](https://travis-ci.org/jhrcook/readgmt.svg?branch=master)](https://travis-ci.org/jhrcook/readgmt) [![AppVeyor build status](https://ci.appveyor.com/api/projects/status/github/jhrcook/readgmt?branch=master&svg=true)](https://ci.appveyor.com/project/jhrcook/readgmt) [![Coverage status](https://codecov.io/gh/jhrcook/readgmt/branch/master/graph/badge.svg)](https://codecov.io/github/jhrcook/readgmt?branch=master)

The goal of 'readgmt' is to easily import a GMT file from [MSigDB](http://software.broadinstitute.org/gsea/index.jsp) as a list of gene sets.

See the full documentation [here](https://jhrcook.github.io/readgmt).

Installation
------------

You can install the released version of 'readgmt' from [CRAN](https://CRAN.R-project.org) with:

``` r
install.packages("readgmt")
```

Or get the development version with

``` r
devtools::install_github("jhrcook/readgmt")
```

Example
-------

Here is an example of reading in the KEGG gene set.

``` r
library(readgmt)
kegg_path <- system.file("extdata", "c2.cp.kegg.v6.2.symbols.gmt.txt",
                         package = "readgmt")
kegg <- read_gmt(kegg_path)
head(names(kegg))
#> [1] "KEGG_GLYCOLYSIS_GLUCONEOGENESIS"              
#> [2] "KEGG_CITRATE_CYCLE_TCA_CYCLE"                 
#> [3] "KEGG_PENTOSE_PHOSPHATE_PATHWAY"               
#> [4] "KEGG_PENTOSE_AND_GLUCURONATE_INTERCONVERSIONS"
#> [5] "KEGG_FRUCTOSE_AND_MANNOSE_METABOLISM"         
#> [6] "KEGG_GALACTOSE_METABOLISM"
head(kegg$KEGG_COLORECTAL_CANCER)
#> [1] "JUN"   "CASP9" "RAF1"  "BIRC5" "APC2"  "RHOA"
```
