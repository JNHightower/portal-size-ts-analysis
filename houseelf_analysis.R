## House elf analysis code

# Function to import data

get_data <- function(){
  data <- read.csv("houseelf_earlength_dna_data.csv")
  return(data)
}