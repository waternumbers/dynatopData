# dynatopData

<!-- badges: start -->
  [![Travis build
  status](https://travis-ci.org/waternumbers/dynatopGIS.svg?branch=master)](https://travis-ci.org/waternumbers/dynatopGIS)
  [![AppVeyor Build Status](https://ci.appveyor.com/api/projects/status/github/waternumbers/dynatopGIS?branch=master&svg=true)](https://ci.appveyor.com/project/waternumbers/dynatopGIS)
[![Coveralls test coverage](https://coveralls.io/repos/github/waternumbers/dynatop_gis/badge.svg)](https://coveralls.io/r/waternumbers/dynatop_gis?branch=master)
<!-- badges: end -->

This R package contains the example data used in the [dynatopGIS](https://waternumbers.github.io/dynatopGIS) package example and vignettes.

If there is a feature or improvement you want or you experience problems
please raise an [issue](https://github.com/waternumbers/dynatopData/issues)
(or better still submit a pull request with alterations or fixes!) rather than contact the
maintainers directly in the first instance.

Thanks goes to:
* Peter Metcalfe who developed the original port of Dynamic TOPMODEL to R
during his PhD sponsored by the [JBA Trust](https://www.jbatrust.org).
* The [NERC Q-NFM project (NE/R004722/1)](https://www.lancaster.ac.uk/lec/sites/qnfm/) at Lancaster University for supporting this update to dynatop.
* The original developers of Dynamic TOPMODEL, [Keith
Beven](https://www.lancaster.ac.uk/lec/about-us/people/keith-beven) and [Jim
Freer](http://www.bristol.ac.uk/geography/people/jim-e-freer/index.html), who
contributed to the original R port of Dynamic TOPMODEL.

## Using the code

Currently the package is not available on
[CRAN](https://cran.r-project.org/). They can be installed from within R using
the devtools package: 

```
devtools::install_github("waternumbers/dynatopDara")
```

Prebuild packages (usually including the latest
version) are available from the waternumbers drat repository [here](https://github.com/waternumbers/drat).
