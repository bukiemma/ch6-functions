# Exercise 4: functions and conditionals

# Define a function `is_twice_as_long` that takes in two character strings, and 
# returns whether or not (e.g., a boolean) the length of one argument is greater
# than or equal to twice the length of the other.
# Hint: compare the length difference to the length of the smaller string
is_twice_as_long <- function(string_1, string_2){
  smaller <- min(nchar(string_1), nchar(string_2))
  diff <- abs(nchar(string_1) - nchar(string_2))
  diff >= smaller
}

# Call your `is_twice_as_long` function by passing it different length strings
# to confirm that it works. Make sure to check when _either_ argument is twice
# as long, as well as when neither are!
is_twice_as_long("hahahahahaha", "haha")
is_twice_as_long("heythere", "whassup")
is_twice_as_long("four", "ad")

# Define a function `describe_difference` that takes in two strings. The
# function should return one of the following sentences as appropriate
#   "Your first string is longer by N characters"
#   "Your second string is longer by N characters"
#   "Your strings are the same length!"
describe_difference <- function(str1, str2){
  shorter <- min(nchar(str1), nchar(str2))
  if(nchar(str2) == nchar(str2)){
    "Your strings are the same length!"
  }else if(shorter == str1){
    char <- nchar(str2) - nchar(str1)
    paste("Your second string is longer by ",char, " characters")
  }else{
    char <- nchar(str1) - nchar(str2)
    paste("Your first string is longer by " , char, "characters")
  }
}

# Call your `describe_difference` function by passing it different length strings
# to confirm that it works. Make sure to check all 3 conditions1
describe_difference("hahaha", "haha")
describe_difference("hahaha", "hahaha")
