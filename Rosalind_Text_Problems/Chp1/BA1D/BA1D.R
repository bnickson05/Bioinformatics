library(tidyverse)
library(Biostrings)

text <- read_lines("~/Desktop/School FIles/UBC/Research_Stuff/Independent Studying/R/R_basics/Rosalind/DNA-Seq-BA1D.txt")
whole_DNA <- DNAString(text)
pattern <- "CAGGTGACA"
Matches <- matchPattern(pattern, whole_DNA) %>% as.data.frame()
macthes_edited <- mutate(Matches, start - 1)
write_lines(matches_edited$`start - 1`, "matches-location.txt")


            