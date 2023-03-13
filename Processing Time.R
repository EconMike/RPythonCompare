# **Processing Time


# sample func, whose exec time will be measured


super_sleepers <- data.frame(rating=1:4,
                             animal=c('koala', 'hedgehog', 'sloth', 'panda'),
                             country=c('Australia', 'Italy', 'Peru', 'China'),
                             avg_sleep_hours=c(21, 18, 17, 10))
sleep_func <- function() { Sys.sleep(5) } 
startTime <- Sys.time()

for (row in 1:nrow(super_sleepers)) {
  for (col in 1:ncol(super_sleepers)) {
    print(paste('Row', row, 'col', col, 'value', super_sleepers[row, col]))
  }
}


endTime <- Sys.time()

# prints recorded time
print(endTime - startTime)

data(iris)                                        # Loading iris flower data set
head(iris)                                        # Inspecting iris flower data set

#Our example data frame contains five columns consisting of information on iris flowers. Let’s also replicate our data in a new data frame object called iris_new1:
iris_new <- iris                                           # Replicate iris data set
#Now, we can loop over the columns of our data frame using the ncol function within the head of the for-statement. Within the for-loop, we are also using a logical if-condition:

startTime <- Sys.time()
for(i in 1:ncol(iris_new)) {                              # Head of for-loop
  
    iris_new[ , i] <- iris_new[ , i] + 1000               # Code block
 # }
}
head(iris_new)
endTime <- Sys.time()

# prints recorded time
print(endTime - startTime)

startTime <- Sys.time()
for(i in 1:ncol(iris_new)) {                              
  
  iris_new[ , i] <- iris_new[ , i] + 1000             

}
head(iris_new)
endTime <- Sys.time()

# prints recorded time
print(endTime - startTime)