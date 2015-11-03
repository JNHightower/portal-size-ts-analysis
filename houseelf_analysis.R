## House elf analysis code

# Function to import data

get_data <- function(){
  data <- read.csv("houseelf_earlength_dna_data.csv")
  return(data)
}
get_data(data)

# Assignment 9: Function to calculate the GC-content of a sequence, regardless of 
# the capitilization of that sequence

library(stringr)
library(dplyr)

# Load data
dna_data <- read.csv('data/houseelf_earlength_dna_data.csv')

# Select sequences out of data file
id <- select(dna_data, id)
ear_length <- select(dna_data, earlength)
dna_seq <- select(dna_data, dnaseq)

# Create function to determine GC content in sequence, regardless of capitilization
gc_content <- function(gc_percent, G, C){
  GC_upper <- str_to_upper(dna_seq)
  G <- str_count(i, 'G')
  C <- str_count(i, 'C')
  gc_percent <- (G + C) / str_length(i) * 100
}

# Create function to calculate size class of sequences
gc_size_class <- function(ear_length){
  #Calculate the size class of one or more sequences
  ear_lengths <- ifelse(ear_length > 10, "large", "small")
  return(ear_lengths)
}

ear_length_class <- gc_size_class(ear_length)

# Determine gc content for set of sequences
for(i in dna_seq){
  GC_Content_DNA_seqs <- gc_content(i)
  print(GC_Content_DNA_seqs)
}

# Create data frame of all variables 
EarLengthSC_GCcontent <- data.frame(id, ear_length_class, GC_Content_DNA_seqs)
EarLengthSC_GCcontent
write.csv(EarLengthSC_GCcontent, "HouseElf_Data.csv")
