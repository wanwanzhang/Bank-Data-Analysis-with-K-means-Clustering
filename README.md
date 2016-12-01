# Bank-Data-Analysis-with-K-means-Clustering

Analysis report:
1.	normolize the dataset, remove the NA.
2.	convert the factor to number for k-means implement 
3.	check and deal with outliers.
4.	choose the number of clusters we need 
5.	check the clusters, size, means, vectors, sum of squares
6.	plot the correlation 
7.	check centers, clusters 

Actually, in this case, we use K-means algorithm to classify group. k-means is sensitive to outliers, but in this case, do not have outliers, it is a good way to do data mining.The k value here as I mentioned before, it is supposed to be 2 according to the graph which plotted 9 iterations.
Every group has similar features, as the result shows, people who is 62 years old, their income higher, and the number of the children they have also a little bit more than other generation. The 42 age generation they have less children. The features are below with size.
As we can see, For the business men, they can make decision depend on size of group and the all kinds of features that this group have and make objective strategy more effectively.
Grou1:83 
Group2:139 
Group3:130  
Group4:45 
Group5:142  
Group6:61

    Age      sex     region   income  married  children      car save_act
1 50.09639 1.433735 1.855422 36048.88 1.397590 1.1445783 1.421687 1.337349
2 37.30216 1.489209 1.892086 20587.08 1.273381 0.9856115 1.568345 1.438849
3 45.26154 1.584615 1.992308 27755.18 1.369231 0.9230769 1.430769 1.353846
4 62.64444 1.600000 2.155556 55105.82 1.444444 1.1777778 1.488889 1.000000
5 27.81690 1.471831 1.802817 12895.36 1.359155 0.9929577 1.577465 1.359155
6 56.40984 1.426230 2.000000 44945.61 1.229508 1.0000000 1.491803 1.000000
  
  current_act mortgage      pep
1    1.228916 1.662651 1.433735
2    1.280576 1.633094 1.539568
3    1.269231 1.615385 1.561538
4    1.200000 1.688889 1.177778
5    1.218310 1.676056 1.697183
6    1.196721 1.672131 1.573770

