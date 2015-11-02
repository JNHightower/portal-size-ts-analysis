## House elf analysis code

# Function to import data

get_data <- function(){
  data <- read.csv("houseelf_earlength_dna_data.csv")
  return(data)
}

# Assignment 9: Function to calculate the GC-content of a sequence, regardless of 
# the capitilization of that sequence

library(stringr)
library(dplyr)


c_content <- c('cGcGgCCCccccC')
c_content
C <- str_to_upper(c_content)
C
# Create function to determine GC content in sequence, regardless of capitilization
gc_content <- function(gc_percent, G, C){
  GC_upper <- str_to_upper(i)
  G <- str_count(i, 'G')
  C <- str_count(i, 'C')
  gc_percent <- (G + C) / str_length(i) * 100
}

# Load data
dna_data <- read.csv('data/houseelf_earlength_dna_data.csv')

# Select sequences out of data file
dna_seq <- select(dna_data, dnaseq)

# Determine gc content for set of sequences
for(i in dna_seq){
  GC_Content_DNA_seqs <- gc_content(i)
  print(GC_Content_DNA_seqs)
}


#