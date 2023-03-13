#Statistical analysis

# **Statistical Analysis
install.packages("readxl")

setwd("G:/Statistics seminars DC/RvsPython")
library(readxl)
elements <-read_excel("BLS_URATE_CPI_DEMO.xlsx")


# linear single regression

#lm function

# use lm to fit a regression line through these data

x<-elements$CPI
y<-elements$UNEMPY

model1<-lm(y~x, data=elements)
summary(model1)


#to pull individual statistics

coefficients(model1)