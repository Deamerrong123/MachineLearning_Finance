library('quantmod')

## download time series for apple.inc from Yahoo Finance, start from 2010-01-01
getSymbols("AAPL", from='2010-01-01')

## get use of the AAPL.Adjusted price
APPL.Adjusted.price <- AAPL$AAPL.Adjusted

## get linear return serise for AAPL
APPL.linret <- diff(APPL.Adjusted.price)/APPL.Adjusted.price[-length(APPL.Adjusted.price)]

## download time series for Macy.inc, start from 2010-01-01
getSymbols("M",from = "2010-01-01")

## get use of M.Adjusted price
M.Adjusted.price <- M$M.Adjusted

## get linear return serise for Macy
M.linret <- diff(M.Adjusted.price)/M.Adjusted.price[-length(M.Adjusted.price)]


## create a data.frame that combine two data sets
Set <- data.frame(APPL.Adjusted.price,M.Adjusted.price)

## plot, make the AAPL's price on the x-axis, Macy's price on the y-axis
plot(Set)


