# vectorized_function.R
# Botswana Johnson
# 10/08/2026
# improve a custom function using vectorization and error handling

# square each value and add five
sqAddFive <- function(x) {
  result <- try(x^2 + 5, silent = T)
  if (class(result) == "try-error") {
    return(rep(NA, length(x)))
  } else {
    return(result)
  }
}

# test the function with a numeric vector
v <- 1:5
sapply(v, sqAddFive)

# test the exception handler with a string
v2 <- c(1, 2, "three", 4, 5)
sapply(v2, sqAddFive)
