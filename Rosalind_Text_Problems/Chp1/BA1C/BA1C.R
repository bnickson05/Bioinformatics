library(tidyverse)
#Finding reverse complement of a DNA string

input_DNA <- read_file("rosalind_ba1c-3.txt")
bases <- strsplit(input_DNA, split = "") %>% unlist() #split into individual chars

# Changing bases function
Complement_DNA <- function(base){
  if (base == "G" | base == 'g') {base <- "C"}
  else if (base == "A" | base == 'a') {base <- "T"}
  else if (base == "C" | base == "c") {base <- "G"}
  else if (base == "T" | base == "t") {base <- "A"}
  base
}

count <- 1
Complementary_DNA <- c()
# Loop through bases and repalce with complementary ones
for (i in bases){
  Complementary_DNA <- c(Complementary_DNA, Complement_DNA(i))
  count = count + 1
}
# Print the complementary DNA in reverse complement
output <- paste(rev(Complementary_DNA), collapse = "")
writeLines(output, "answer.txt")

