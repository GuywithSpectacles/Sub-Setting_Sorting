#Consider the data frame

set.seed(13435)

X <- data.frame("var1"=sample(1:5), 'var2'=sample(6:10), 'var3'=sample(11:15))

#Sub-Setting

X<- X[sample(1:5),];X$var2[c(1,3)] = NA

X


X[,1]

X[,'var1']

X[1:2,'var2']

#Logical operation

X[(X$var1 <= 3 & X$var3 > 11),]


X[(X$var1 <= 3 | X$var3 > 15),]


#SORTING

sort(X$var1)


sort(X$var1, decreasing=TRUE)

sort(X$var2,na.last=TRUE)

sort(X$var3, decreasing= TRUE)


#ORDERING in DATA FRAME

X[order(X$var1),]

X[order(X$var1,X$var3),]

X[order(X$var2),]
