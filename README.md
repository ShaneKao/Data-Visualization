# Data-Visualization

## 1. What is the data that you chose? Why?

For this assignment, we will visualize social networking data using anonymized data from Facebook, 

The first file we will use, [edges.csv](https://courses.edx.org/asset-v1:MITx+15.071x_2a+2T2015+type@asset+block/edges.csv), contains variables V1 and V2, which label the endpoints of edges in our network. Each row represents a pair of users in our graph who are Facebook friends. For a pair of friends A and B, edges.csv will only contain a single row -- the smaller identifier will be listed first in this row. From this row, we will know that A is friends with B and B is friends with A.

The second file, [users.csv](https://courses.edx.org/asset-v1:MITx+15.071x_2a+2T2015+type@asset+block/users.csv), contains information about the Facebook users, who are the vertices in our network. This file contains the following variables:

In our visualizations, the vertices in our network will represent Facebook users and the edges will represent these users being Facebook friends with each other.

## 2. Did you use a subset of the data? If so, what was it?

Yes, I want to know what is the gender of the users with the highest degree in the graph?

## 3. Are there any particular aspects of your visualization to which you would like to bring attention?

We can update the colors by setting the color to black for all vertices, than setting it to red for the vertices with gender A and setting it to gray for the vertices with gender B:

```
V(g)$color = "black"

V(g)$color[V(g)$gender == "A"] = "red"

V(g)$color[V(g)$gender == "B"] = "gray"
```

![plot](https://raw.githubusercontent.com/ShaneKao/Data-Visualization/master/Rplot01.png)

Gender B with the highest degree in the graph

## 4. What do you think the data, and your visualization, shows?

Because the data is anonymized, we don't know which value refers to males and which value refers to females. 
The cliche goes that the world is an increasingly interconnected place, and the connections between different entities are often best represented with a graph. Graphs are comprised of vertices (also often called "nodes") and edges connecting those nodes. 
