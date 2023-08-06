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
  results = numeric(length(data))

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
multiply_result <- multiply_by_two(plus_result)

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
head(employee_data)

# Bar chart with bars of alternating color for data in data frame d
BarChart(employee_data, fill=c("darkred", "darkblue"))

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
