## ----setup2, include = FALSE--------------------------------------------------
knitr::opts_chunk$set(echo = TRUE,
                      comment = "",
                      collapse = TRUE,
                      error = TRUE, # do not interrupt in case of errors
                      message = FALSE,
                      warning = FALSE,
                      comma = function(x) format(x, digits = 2, big.mark = ",")
)

## ----setup--------------------------------------------------------------------
library(OBL)

## ----instalation, include = TRUE, eval = FALSE--------------------------------
#  install.packages("devtools")
#  devtools::install_github("sta189332/OBL")

## ----usage_blockboot, include = TRUE, eval = FALSE----------------------------
#  blockboot(ts,
#            R,
#           seed,
#           n_cores,
#           methods = c("optnbb", "optmbb", "optcbb", "opttmbb", "opttcbb"))

## ----usage_lolliblock, include = TRUE, eval = FALSE---------------------------
#  lolliblock(ts,
#            R,
#           seed,
#           n_cores,
#           methods = c("optnbb", "optmbb", "optcbb", "opttmbb", "opttcbb"))

## ----simulate1, include = TRUE, eval = FALSE----------------------------------
#  # simulate univariate time series data
#  set.seed(289805)
#  ts <- arima.sim(n = 10, model = list(ar = 0.8, order = c(1, 0, 0)), sd = 1)
#  # get the optimal block length table
#  OBL::blockboot(ts = ts, R = 100, seed = 6, n_cores = 2)
#  #  Methods lb      RMSE
#  #1     nbb  9 0.2402482
#  #2     mbb  9 0.1023012
#  #3     cbb  8 0.2031448
#  #4    tmbb  4 0.2654746
#  #5    tcbb  9 0.4048711

## ----simulate2, include = TRUE, eval = FALSE----------------------------------
#  # simulate univariate time series data
#  set.seed(289805)
#  ts <- arima.sim(n = 10, model = list(ar = 0.8, order = c(1, 0, 0)), sd = 1)
#  # get the optimal block length table
#  OBL::lolliblock(ts = ts, R = 100, seed = 6, n_cores = 2)

