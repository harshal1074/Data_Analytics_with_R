#Assignment 2
#Q.1)
data(iris)
par(mfrow = c(1, 2)) 
boxplot(Sepal.Length ~ Species, data = iris, main = "Sepal Length", xlab = "Species", ylab = "Length")
boxplot(Petal.Length ~ Species, data = iris, main = "Petal Length", xlab = "Species", ylab = "Length")

plot(Sepal.Length ~ Petal.Length, data = iris, col = iris$Species, xlab = "Petal Length", ylab = "Sepal Length")
legend("topright", legend = unique(iris$Species), col = unique(iris$Species), pch = 1)
#Q.2)
library(imager)

flip <- function(image) {
  
  width <- dim(image)[2]
  height <- dim(image)[1]
  
  flipped_image <- as.cimg(matrix(NA, nrow = height, ncol = width))
  
  for (y in 1:height) {
    flipped_image[y, ] <- image[y, width:1, ]
  }
  
  return(flipped_image)
}

#Q.3)
library(MASS)

str(ships)
summary(ships)

barplot(table(ships$type), main = "Number of Accidents by Ship Type", xlab = "Ship Type", ylab = "Number of Accidents")

prop_table <- prop.table(table(ships$type))
barplot(prop_table, main = "Proportion of Accidents by Ship Type", xlab = "Ship Type", ylab = "Proportion", legend.text = prop_table)

boxplot(acc ~ type, data = ships, main = "Distribution of Accidents by Ship Type", xlab = "Ship Type", ylab = "Number of Accidents")

