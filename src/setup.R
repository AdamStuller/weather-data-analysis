library(lubridate)
library(tidyverse)
library(Hmisc)
library(data.table)
library(funModeling)
library(corrplot)
library(tsibble)
library(fable)
library(imputeTS)
library(EnvStats)
library(feasts)
library(factoextra)
library(fpp3)

# mode function
getmode <- function(v) {
  uniqv <- unique(v)
  uniqv[which.max(tabulate(match(v, uniqv)))]
}

NA_values <- c("", '999', '9999', '99999', '999999', '+999', '+9999','+99999', '+999999', '009999')

process_col <- function(val, scaling = 1) {
  if (is.na(as.numeric(val)) || as.numeric(val) %in% NA_values){
    val <- NA
  }
  return (as.numeric(val)/scaling)
} 
