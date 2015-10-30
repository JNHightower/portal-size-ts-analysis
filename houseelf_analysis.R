## House elf analysis code

# Function to import data

get_data <- function(){
  data <- read.csv("houseelf_earlength_dna_data.csv")
  return(data)
}

gc_content <- function(seq){
   #Calculate the GC-content for one or more sequences
   ear_lengths <- ifelse(seq > 10, "large", "small")
   return(ear_lengths)
}
