library(lubridate)
library(tidyverse)
library(Hmisc)
library(data.table)
library(funModeling)
library(corrplot)


# mode function
getmode <- function(v) {
  uniqv <- unique(v)
  uniqv[which.max(tabulate(match(v, uniqv)))]
}