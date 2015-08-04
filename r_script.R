edges = read.csv("edges.csv")

users = read.csv("users.csv")

library(igraph)
g = graph.data.frame(edges, FALSE, users) 
V(g)$color = "black"

V(g)$color[V(g)$gender == "A"] = "red"

V(g)$color[V(g)$gender == "B"] = "gray"


plot(g, vertex.size=5, vertex.label=NA)
