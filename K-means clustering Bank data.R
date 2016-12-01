#######k-MEANS CLUSTER

#install.packages("XLConnect")

library(XLConnect)

bank<- read.csv("C:/Users/Wanwan Zhang/Desktop/2016FALL/ADS/2/bank-data.csv", stringsAsFactors=FALSE)
##checking structure of the fetched data
str(bank)
summary(bank)
##list of rows with missing values
bank[!complete.cases(bank),]
##list of columns with missing values
bank[,!complete.cases(bank)]
##if any missing values are there omit them 
bank<-na.omit(bank,na.action = TRUE)
####data reduction and projection 
##select only numeric data and removing id column 
bank 
bank[,3][bank[,3] == "MALE"] = 1
bank[,3][bank[,3] == "FEMALE"] = 2
as.numeric(bank[,3])

bank[,4][bank[,4] == "INNER_CITY"] = 1
bank[,4][bank[,4] == "TOWN"] = 2
bank[,4][bank[,4] == "RURAL"] = 3
bank[,4][bank[,4] == "SUBURBAN"] = 4
as.numeric(bank[,4])

bank[,6][bank[,6] == "YES"] = 1
bank[,6][bank[,6] == "NO"] = 2
as.numeric(bank[,6])

bank[,8][bank[,8] == "YES"] = 1
bank[,8][bank[,8] == "NO"] = 2
as.numeric(bank[,8])

bank[,9][bank[,9] == "YES"] = 1
bank[,9][bank[,9] == "NO"] = 2
as.numeric(bank[,9])

bank[,10][bank[,10] == "YES"] = 1
bank[,10][bank[,10] == "NO"] = 2
as.numeric(bank[,10])

bank[,11][bank[,11] == "YES"] = 1
bank[,11][bank[,11] == "NO"] = 2
as.numeric(bank[,11])

bank[,12][bank[,12] == "YES"] = 1
bank[,12][bank[,12] == "NO"] = 2
as.numeric(bank[,12])

# First check the complete set of components for outliers
mydataNUM<-bank[,c(2,5,7)]
mydata<- bank[,2:12]
boxplot(mydataNUM)

# since therer is not any outliers, so we do not do additional replace
#### Choosing the data mining task
## Calculating variance and storing at the first index in wss
## given columns to caculate the variance and sum them,
wss <-(nrow(mydata)-1)*sum(apply(mydata,2,var))
wss
####use k-means algorithm for this clustering
## iterate through wss array 15 times and sum up all the variance in every iteration and store it in wss array
for(i in 2:15)wss[i]<- sum(fit=kmeans(mydata,centers=i,15)$withinss)
## plot each iteration to display the elbow graph 
plot(1:15,wss,type="b",main="15 clusters",xlab="no. of cluster",ylab="with clsuter sum of squares")
####Searching for patterns of interest in a particular representational form
##As we can see from the above output the slope of the graph changes majorly in 6 iteration, hence we consider the optimized number of cluster as 3 in which we can get the optimum result
fit <- kmeans(mydata,6)
## Let's check the summary of the kmeans objects
fit
## checking withinss i.e. the intra cluster bond strength factor for each cluster
fit$withinss
## checking betweenss i.e. the inter cluster distance between cluster
fit$betweenss
fit$size  
####Interpreting mined patterns
plot(mydata,col=fit$cluster,pch=15)
fit$size
fit$centers

library(cluster)
#install.packages("fpc")
library(fpc)
#plotcluster(mydata,fit$cluster)
#points(fit$centers,col=1:8,pch=16)
clusplot(mydata, fit$cluster, color=TRUE, shade=TRUE, labels=0, lines=0)
