# Simpson Diversity Function Amended
#
# This function calculates the biodiversity index of a specific area, given the 
# total number of species and the number of individuals in each species. Lower
# index values are associated with lower diversity

# param: n_i is the number of individuals of each species
# param: N is the total number of species
# return: diversity value (D)

simpson.div <- function(species){
  species = as.factor(species)
  N = sum(summary(species))
  tmp = sum((summary(species)/N)^2)
  diversity = 1-tmp
  
  nspecies = length(summary(species))
  max.spp = names(which.max(summary(species)))
  return(list(
    diversity, number = nspecies, dominant=max.spp
  ))
}
