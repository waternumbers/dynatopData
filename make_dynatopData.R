## script for creating and building the dynatop R package
rm(list=ls())
graphics.off()

## path of the package
pacPath <- './dynatopData'
devtools::document(pacPath)
devtools::check(pacPath)

## check documentation build
pkgdown::clean_site(pacPath)
pkgdown::build_site(pacPath)
pkgdown::clean_site(pacPath)

## build, populate drat
## linux
dratPath <- "~/Documents/Software/drat"
tmp <- devtools::build(pacPath)
install.packages(tmp)
drat::insertPackage(tmp,dratPath)

## mac and windows
rhub::validate_email() # for first time that session
pkgName <- sub('\\.tar.gz$', '', basename(tmp)) 
## rhub::platforms()[,1] # lists platforms
mch <- rhub::check(path = tmp,
                   platform = c("macos-highsierra-release-cran","windows-x86_64-release"))

tmp <- paste0(pkgName,".tgz")
download.file(file.path(mch$urls()$artifacts[1],tmp),tmp)
drat::insertPackage(tmp,dratPath)

tmp <- paste0(pkgName,".zip")
download.file(file.path(mch$urls()$artifacts[2],tmp),tmp)
drat::insertPackage(tmp,dratPath)

## tidy up drat
drat::pruneRepo(dratPath,pkg=pkgName,remove="git")## this only does source files
