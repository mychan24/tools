# Initialize an empty data frame with NAs based on number of rows and 
# a list of column names.
# 
# Inputs:
#     nrows:    number of rows for the empty data frame (integer)
#     colvars:  column/variable names (strings; e.g., c("age","sex"))
#     values:   value to populate the data frame (default=NA)
#
# mchan 7-12-2023

empty_df <- function(nrows, colvars, values = NA){
  
  if(!round(nrows)==nrows) stop('nrow must be an integer')
  if(!is.character(colvars)) stop('colvars must be strings')
  
  emptydf <- as.data.frame(matrix(values, nrows, length(colvars)))
  names(emptydf) <- colvars
  return(emptydf)
}