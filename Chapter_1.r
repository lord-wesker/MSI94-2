# install.packages("languageserver")
# install.packages("magrittr")
# install.packages("lessR")

# Function to update one or more packages
# update.packages()

# Use installed libraries
library(magrittr)
library(lessR)

# Access the lessR vignettes
# browseVignettes("lessR")

# Create an array
numbers_array <- c(1:5)

# Adds 2 to every number on data
plus_two <- function(data) {
  results <- numeric(length(data))

  for (i in 1:length(data)) {
    results[i] <- data[i] + 2
  }

  return(results)
}

# Multiplies by 2 to every number on data
multiply_by_two <- function(data) {
  results <- numeric(length(data))

  for (i in 1:length(data)) {
    results[i] <- data[i] * 2
  }

  return(results)
}

# Adds 2 to every number on data using pipe
pipe_plus_two <- function(data) {
  # return(data %>% add(2)) # Using magrittr pipe
  return(data + 2)
}

# Multiplies by 2 to every number on data using pipe
pipe_multiply_by_two <- function(data) {
  # return(data %>% multiply_by(2)) # Using magrittr pipe
  return(data * 2)
}

# Adds and Multiplies by 2 to every number on the array
plus_result <- plus_two(numbers_array)
multiply_result = multiply_by_two(plus_result)

# Adds and Multiplies by 2 to every number on the array
# using magrittr pipe operator
pipe_result <- numbers_array %>%
  pipe_plus_two() %>%
  pipe_multiply_by_two()

# Prints result on the console
print(multiply_result) # Result: 6 8 10 12 12
print(pipe_result) # Result: 6 8 10 12 12

# Read a data file from the web into the d data frame
employee_data <- Read("http://lessRstats.com/data/employee.xlsx")
# employee_data <- Read("http://lessRstats.com/data/Mach4.fwd", format = "text")

# Show XLSX data on the console
employee_data # Shows the entire data set
head(employee_data) # Shows first elements
tail(employee_data) # Shows last elements
names(employee_data) # Show table variable names
dim(employee_data) # Shows table dimensions (x, y)
nrow(employee_data) # Shows table rows size
ncol(employee_data) # Shows table columns size

# Bar chart with bars of alternating color for data in data frame d
BarChart(Gender, fill=c("darkred", "darkblue"), data = employee_data)

# Create a matrix
my_matrix <- matrix(1:9, nrow = 3, ncol = 3)
print(my_matrix)
# Access first row
row_1 <- my_matrix[1,] # Using [1,] allows to access the entire row 
print(row_1)
# Access first column
col_1 <- my_matrix[,1] # Using [,1] allows to access the entire column 
print(col_1)

# 1.4 Analysis Problems
#######################
# 1.4.2. Vectors
#######################
# 1.4.2.a Consecutive integers from 10 to 16.
consecutives_array <- c(10:16)
# 1.4.2.b The numbers -5, 0, 5
nums_array <- c(-5, 0, 5)
# 1.4.2.c The letters d, o, and g.
letters_array <- c("d", "o", "g")
#######################
# 1.4.3 Data
#######################
# 1.4.3.c Classify data variables
# Gender: Categorical - Nominal
# Weight: Continuous - Ratio
# Height: Continuous - Ratio
#######################
# 1.4.3.g Value encoded as NA:
# The computer encoding is consistent with the continuous and categorical distinction because:
# - Continuous Data Encoding: Storing continuous data as "double" 
#   allows the computer to accurately represent real numbers with 
#   precision. It supports arithmetic operations, decimal values,
#   and continuous ranges.
# - Categorical Data Encoding: Storing categorical data as "factor"
#   allows the computer to efficiently manage discrete categories.
#   Factors ensure that each category is represented by a unique integer
#   level, optimizing memory usage and enabling efficient comparisons and grouping.





