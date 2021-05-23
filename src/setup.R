library(lubridate)
library(tidyverse)
library(Hmisc)
library(data.table)
library(funModeling)
library(corrplot)
library(tsibble)
library(fable)

# mode function
getmode <- function(v) {
  uniqv <- unique(v)
  uniqv[which.max(tabulate(match(v, uniqv)))]
}