## TESTING FOR R MAPPING

options(error = function() traceback(3))

rm(list=ls())

#install packages

list.of.install.packages <- c('imagerExtra','tesseract','pdftools','magick','corpus','tidyverse','stringr','here','readr','opencv','Rcpp',
                              'rlist','stringi','foreach','devtools','tryCatchLog')

list.of.used.packages <- list.of.install.packages #this will work for now, may have to modify

#installing any new packages

new.packages <- list.of.install.packages[!(list.of.install.packages %in% installed.packages()[,"Package"])]

if(length(new.packages)>0){
  install.packages(new.packages)
  #  install_github("aryoda/tryCatchLog")
}

lapply(list.of.used.packages, library, character.only = TRUE)