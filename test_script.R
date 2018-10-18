## Test code
convert_column <- function(column) {
  nums <- numeric(length(column))
  
  empties <- c(grep("^\\.:.*", column))
  nums[empties] <- NA
  
  zeros <- c(grep("^0/0:.*", column))
  nums[zeros] <- 0
  
  ones <- c(grep("^0/1:.*", column))
  nums[ones] <- 1
  
  more_ones <- c(grep("^1/0:.*", column))
  nums[more_ones] <- 1
  
  twos <- c(grep("^1/1:.*", column))
  nums[twos] <- 2
  
  return(nums)
}