# install.packages("languageserver")
# install.packages("magrittr")
# install.packages("lessR")
# install.packages(c("haven", "tzdb"))

# Function to update one or more packages
# update.packages()

# Use installed libraries
library(magrittr)
library(lessR)

# Browse for the data file’s location, then read into R
# d <- Read("")

# Read data from a computer file on the web into R
# d <- Read("http://lessRstats.com/data/employee.csv")
# d <- Read("http://lessRstats.com/data/employee.csv", var_labels = TRUE)

# Read data from a lessR data file
# d <- Read("Employee")

# Suppress console output
# d <- Read("http://lessRstats.com/data/employee.csv", quiet=TRUE)

# Read data with specified character and numeric missing data codes 
# d <- Read("http://lessRstats.com/data/employee.csv", missing=c("XX",-99))

# Specify the row name when reading data
# d <- Read("http://lessRstats.com/data/employee.csv", row_names=1)

# Read a SPSS .sav data file that includes value labels
# d <- Read("http://lessRstats.com/data/SPSS/employee.sav")
# d <- Read("http://lessRstats.com/data/SPSS/Mach4.sav", var_labels=TRUE)
# l <- Read("http://lessRstats.com/data/SPSS/Mach4.sav", var_labels=TRUE)

# Input. Read fixed width formatted data with numbered variable names
# d <- Read("http://lessRstats.com/data/SPSS/Mach4.sav", widths=c(4,1,rep(1,20)),
#           col.names=c("ID", "Gender", to("m",20)), fill=TRUE)

# Missing data of variable Years for James Wu, second line of data, NA.
# head(d, n=2)

# More detailed analysis of data with full details() function
# details()

# display a histogram
# hist(d$m06, breaks=seq(-.5, 5.5, 1), xlab = label(m06))


