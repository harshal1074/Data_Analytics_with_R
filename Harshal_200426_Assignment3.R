Q.1) 
# Load the required libraries
library(ggplot2)

# Load the iris dataset
data(iris)

# Create the scatterplot
ggplot(iris, aes(x = Sepal.Length, y = Petal.Length, color = Species)) +
  geom_point() +
  labs(x = "Sepal Length", y = "Petal Length", color = "Species")

Explaination - 
  
  Relationship between Sepal Length and Petal Length: There appears to be a Positive (+ve) correlation between Sepal Length and Petal Length. As Sepal Length increases, Petal Length tends to increase.

Species Clustering: The points on the scatterplot show distinct clusters or groups corresponding to different iris species. This suggests that Sepal Length and Petal Length can be indicative of the species of iris.

Q.2)

library(ggplot2)
data(txhousing)

str(txhousing)
summary(txhousing)

#Checking missing values
missing_rows <- !complete.cases(txhousing)
sum(missing_rows)  # Total number of missing rows

#Scatter Plot
ggplot(txhousing, aes(x = median, y = sales)) +
  geom_point()

#filtering data
filtered_data <- subset(txhousing, inventory > 3)

# Aggregation
aggregated_data <- aggregate(median ~ sales, data = filtered_data, FUN = mean)


