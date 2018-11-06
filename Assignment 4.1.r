#Q1
df1 = data.frame(CustId = c(1:6), Product = c(rep("TV", 3), rep("Radio", 3)))
df2 = data.frame(CustId = c(2, 4, 6), State = c(rep("Texas", 2), rep("NYC", 1)))
df1 #left table
df2 #right table

#Return only the rows in which the left table have match.
merge(df1, df2, by.x = "CustId")

#Returns all rows from both tables, join records from the left which have matching keys in the right table
merge(df1,df2, all.x=TRUE)

#Return all rows from the left table, and any rows with matching keys from the right table.
merge(df1, df2, by.x = "CustId", all.x=TRUE)

#Return all rows from the right table, and any rows with matching keys from the left table
merge(x = df1, y = df2, by.y = "CustId", all.y=TRUE)


#Q2 Perform the below operations on above given data frames and tables:

#Return a long format of the datasets without matching key.
merge(df1,df2, all.x=TRUE, all.y=TRUE)

#Keep only observations in df1 that match in df2
df1 = data.frame(CustId = c(1:6), Product = c(rep("TV", 3), rep("Radio", 3)))
df1<-df1[(as.character(df1$CustId) %in% as.character(df2$CustId)), ]
df1

#Drop all observations in df1 that match in df2.
df1 = data.frame(CustId = c(1:6), Product = c(rep("TV", 3), rep("Radio", 3)))
df1<-df1[!(as.character(df1$CustId) %in% as.character(df2$CustId)), ]
df1
