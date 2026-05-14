# Simpson Diversity Function
#
# This function calculates the biodiversity index of a specific area, given the 
# total number of species and the number of individuals in each species. Lower
# index values are associated with lower diversity

# param: n_i is the number of individuals of each species
# param: N is the total number of species
# return: diversity value (D)

simpson.div <- function(n_i){
  N = sum(n_i)
  D = sum((n_i/N)^2)
  return(D)
}
