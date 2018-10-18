## Test code
convert_column <- function(column) {
  nums <- numeric(length(column))
  #replace missing data with NA
  empties <- c(grep("^\\.:.*", column))
  nums[empties] <- NA
  #replace 0/0 data with 0
  zeros <- c(grep("^0/0:.*", column))
  nums[zeros] <- 0
  #replace 0/1 or 1/0 data with 0
  ones <- c(grep("^0/1:.*", column))
  nums[ones] <- 1
  more_ones <- c(grep("^1/0:.*", column))
  nums[more_ones] <- 1
  #replace 1/1 data with 2
  twos <- c(grep("^1/1:.*", column))
  nums[twos] <- 2
  
  return(nums)
}