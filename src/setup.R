library(lubridate)
library(tidyverse)
library(Hmisc)
library(data.table)
library(funModeling)
library(corrplot)
library(tsibble)
library(fable)
library(imputeTS)
library(feasts)
library(factoextra)
library(fpp3)

# mode function
getmode <- function(v) {
  uniqv <- unique(v)
  uniqv[which.max(tabulate(match(v, uniqv)))]
}