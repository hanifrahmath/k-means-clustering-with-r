newiris <- iris
newiris$Species <- NULL

# Apply kmeans to newiris, 
# and store the clustering result in kc. 
# The cluster number is set to 3
(kc <- kmeans(newiris, 3))

# Compare the Species label with the clustering result
table(iris$Species, kc$cluster)

# Plot the clusters and their centres. 
# Note that there are four dimensions in the data 
# and that only the first two dimensions are used to draw 
# the plot below. 
# Some black points close to the green centre (asterisk) 
# are actually closer to the black centre in 
# the four dimensional space.
plot(newiris[c("Sepal.Length", "Sepal.Width")], col=kc$cluster)
points(kc$centers[,c("Sepal.Length", "Sepal.Width")], col=1:3, pch=8, cex=2)
