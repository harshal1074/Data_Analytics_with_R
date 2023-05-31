library(tidyverse)
library(rvest)
library(dplyr)
library(imager)
library(stringr)
#-------------------------------#
# Ques a,b and e
# Excel Link = "https://1drv.ms/x/s!Ar13V-kxXp6Sg2Me_V12WgYqKPql?e=LFyPVl"

# c) part 1
tennis <- function(p) {
  x <- 0  
  while (x < 5) {
    if (runif(1) <= p) {  # Player A wins 
      x <- x + 1
    } else {  # Player B wins 
      x <- x + 1
      
      if (x < 5 && runif(1) <= p) {
        return(x)
      }
    }
  }
  
  return(x)
}
# part 2 
p <- 0.70

matches <- vector(length = 1000)

for (i in 1:1000) {
  x <- tennis(p)
  matches[i] <- x
}

ans <- mean(matches)

print(ans)
# d)
MontyHall <- function() {
  car_door <- sample(1:3, 1)
  initial_choice <- sample(1:3, 1)
  monty_open <- sample(setdiff(1:3, c(car_door, initial_choice)), 1)
  remaining_door <- setdiff(1:3, c(initial_choice, monty_open))
  final_choice <- remaining_door[1]
  
  if (final_choice == car_door) {
    return(1)
  } else {
    return(0)
  }
}

# Repeat the simulation 1000 times
num_simulations <- 1000
wins <- 0

for (i in 1:num_simulations) {
  result <- MontyHall()
  wins <- wins + result
}

probability_switch <- wins / num_simulations
print(probability_switch)

