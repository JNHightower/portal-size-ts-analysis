# Function to calculate the GC-content of a sequence, regardless of the capitilization 
# of that sequence

gc_content <- function(gc_percent, G, C){
  G <- str_count(i, 'g')
  C <- str_count(i, 'c')
  gc_percent <- (G + C) / str_length(i) * 100
}