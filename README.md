ritis
=====



[![Build Status](https://travis-ci.org/ropensci/ritis.svg?branch=master)](https://travis-ci.org/ropensci/ritis)
[![Build status](https://ci.appveyor.com/api/projects/status/pvrc9muevha00fie/branch/master?svg=true)](https://ci.appveyor.com/project/sckott/ritis/branch/master)
[![codecov](https://codecov.io/gh/ropensci/ritis/branch/master/graph/badge.svg)](https://codecov.io/gh/ropensci/ritis)
[![rstudio mirror downloads](http://cranlogs.r-pkg.org/badges/ritis)](https://github.com/metacran/cranlogs.app)
[![cran version](http://www.r-pkg.org/badges/version/ritis)](https://cran.r-project.org/package=ritis)

* [ITIS API Docs](https://www.itis.gov/ws_description.html)
* [Solr service](https://www.itis.gov/solr_documentation.html)

## Installation

Stable, CRAN version


```r
install.packages("ritis")
```

Dev version


```r
devtools::install_github("ropensci/ritis")
```


```r
library("ritis")
```

## Solr service

matches only monomials


```r
itis_search(q = "nameWOInd:/[A-Za-z0-9]*[%20]{0,0}*/")
#> # A tibble: 10 × 27
#>      tsn          nameWInd         nameWOInd             unit1   usage
#>    <chr>             <chr>             <chr>             <chr>   <chr>
#> 1     51     Schizomycetes     Schizomycetes     Schizomycetes invalid
#> 2     50          Bacteria          Bacteria          Bacteria   valid
#> 3     52     Archangiaceae     Archangiaceae     Archangiaceae invalid
#> 4     53   Pseudomonadales   Pseudomonadales   Pseudomonadales   valid
#> 5     54 Rhodobacteriineae Rhodobacteriineae Rhodobacteriineae invalid
#> 6     55  Pseudomonadineae  Pseudomonadineae  Pseudomonadineae invalid
#> 7     56  Nitrobacteraceae  Nitrobacteraceae  Nitrobacteraceae invalid
#> 8     57       Nitrobacter       Nitrobacter       Nitrobacter   valid
#> 9     65      Nitrosomonas      Nitrosomonas      Nitrosomonas   valid
#> 10    70  Thiobacteriaceae  Thiobacteriaceae  Thiobacteriaceae invalid
#> # ... with 22 more variables: unacceptReason <chr>,
#> #   credibilityRating <chr>, completenessRating <chr>,
#> #   currencyRating <chr>, kingdom <chr>, rankID <chr>, rank <chr>,
#> #   hierarchySoFar <chr>, hierarchySoFarWRanks <chr>, hierarchyTSN <chr>,
#> #   synonyms <chr>, synonymTSNs <chr>, otherSource <chr>,
#> #   acceptedTSN <chr>, comment <chr>, createDate <chr>, updateDate <chr>,
#> #   `_version_` <dbl>, taxonAuthor <chr>, vernacular <chr>,
#> #   hierarchicalSort <chr>, parentTSN <chr>
```

matches only binomials


```r
itis_search(q = "nameWOInd:/[A-Za-z0-9]*[%20]{1,1}[A-Za-z0-9]*/")
#> # A tibble: 10 × 25
#>      tsn                  nameWInd                 nameWOInd        unit1
#>    <chr>                     <chr>                     <chr>        <chr>
#> 1     58        Nitrobacter agilis        Nitrobacter agilis  Nitrobacter
#> 2     59        Nitrobacter flavus        Nitrobacter flavus  Nitrobacter
#> 3     60  Nitrobacter oligotrophis  Nitrobacter oligotrophis  Nitrobacter
#> 4     61   Nitrobacter polytrophus   Nitrobacter polytrophus  Nitrobacter
#> 5     62      Nitrobacter punctata      Nitrobacter punctata  Nitrobacter
#> 6     64  Nitrobacter winogradskyi  Nitrobacter winogradskyi  Nitrobacter
#> 7     66     Nitrosomonas europaea     Nitrosomonas europaea Nitrosomonas
#> 8     67 Nitrosomonas groningensis Nitrosomonas groningensis Nitrosomonas
#> 9     68   Nitrosomonas javenensis   Nitrosomonas javenensis Nitrosomonas
#> 10    69    Nitrosomonas monocella    Nitrosomonas monocella Nitrosomonas
#> # ... with 21 more variables: unit2 <chr>, usage <chr>,
#> #   unacceptReason <chr>, credibilityRating <chr>, kingdom <chr>,
#> #   rankID <chr>, rank <chr>, hierarchySoFar <chr>,
#> #   hierarchySoFarWRanks <chr>, hierarchyTSN <chr>, synonyms <chr>,
#> #   synonymTSNs <chr>, otherSource <chr>, acceptedTSN <chr>,
#> #   comment <chr>, createDate <chr>, updateDate <chr>, `_version_` <dbl>,
#> #   taxonAuthor <chr>, parentTSN <chr>, hierarchicalSort <chr>
```

## REST API

Get accepted names for a TSN


```r
accepted_names(tsn = 504239)
#> # A tibble: 1 × 3
#>          acceptedName acceptedTsn     author
#>                 <chr>       <chr>      <chr>
#> 1 Dasiphora fruticosa      836659 (L.) Rydb.
```

Get common names for a TSN


```r
common_names(tsn = 183833)
#> # A tibble: 3 × 3
#>            commonName language    tsn
#>                 <chr>    <chr>  <chr>
#> 1 African hunting dog  English 183833
#> 2    African Wild Dog  English 183833
#> 3 Painted Hunting Dog  English 183833
```

Full hierarchy for a TSN


```r
hierarchy_full(tsn = 37906)
#> # A tibble: 60 × 5
#>         parentname parenttsn      rankname       taxonname    tsn
#> *            <chr>     <chr>         <chr>           <chr>  <chr>
#> 1                                  Kingdom         Plantae 202422
#> 2          Plantae    202422    Subkingdom   Viridiplantae 954898
#> 3    Viridiplantae    954898  Infrakingdom    Streptophyta 846494
#> 4     Streptophyta    846494 Superdivision     Embryophyta 954900
#> 5      Embryophyta    954900      Division    Tracheophyta 846496
#> 6     Tracheophyta    846496   Subdivision Spermatophytina 846504
#> 7  Spermatophytina    846504         Class   Magnoliopsida  18063
#> 8    Magnoliopsida     18063    Superorder       Asteranae 846535
#> 9        Asteranae    846535         Order       Asterales  35419
#> 10       Asterales     35419        Family      Asteraceae  35420
#> # ... with 50 more rows
```

## Meta

* Please [report any issues or bugs](https://github.com/ropensci/ritis/issues).
* License: MIT
* Get citation information for `ritis` in R doing `citation(package = 'ritis')`
* Please note that this project is released with a [Contributor Code of Conduct](CONDUCT.md). By participating in this project you agree to abide by its terms.

[![ropensci_footer](http://ropensci.org/public_images/github_footer.png)](http://ropensci.org)
