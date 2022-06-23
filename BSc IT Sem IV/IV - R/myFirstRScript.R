"My first R Script"

x <- 69
typeof(x)

y <- 10L
typeof(y)

z <- "Hello R"
typeof(z)

a = t
typeof(a)
b = T
typeof(b)

c = 1+88i
typeof(c)

san = "Hello Sandesh"
typeof(san)

gok <- 2i + 7
typeof(gok)

log = FALSE
typeof(log)

bye = 55L
typeof(bye)

hy = 21
typeof(hy)

axe <- 10
banana <- 15
salad <- axe + banana
salad
banana

cotton = 10
candy = 9
sweet = cotton + candy

cv <- 11L
vc <- 81L
cvcv <- cv+vc
cv

var1 <- 2
var2 <- 5L
var <- var1+var2
var2
var3 <- var2/var1

b1 = 10
b2 = 23L
bb = b1/b2
ans <- sqrt(b2)
ans
an <- sqrt(b1)

n1 <- "Sandesh"
n2 <- "Key"
name <- paste(n1, n2)
name

num1 <- 10 > 9
num2 <- 20 < 20
num1 | num2  #In R, | is OR. The output is TRUE if one is TRUE

num3 <- 22 < 11
num4 <- 21 > 12
num3 & num4 #With '&', both should be TRUE or the result is FALSE

num5 <- 22<1
num6 <- 21>20
num5 & num6

num7 <- !(20>21) # The '!' sign means 'Not equal to'
num7

num8 <- c(1, 5, 7, 9)
min(num8)
max(num8)

#Printing numbers from 1 to 10
1 : 10
11 : 20
print(11:18)

myFirstVector <- c(11, 12, 32, 23)
myFirstVector
typeof(myFirstVector)

mySecondVector <- c(10L, 7L, 11L, 18L)
mySecondVector
is.numeric(mySecondVector)
typeof(mySecondVector)

myThirdVector <- c("Hello", "Namaste", "H69")
typeof(myThirdVector)
myThirdVector

myFourthVector <- c("Hy", "Bye", "M69", 17)
myFourthVector

#Sequence Function : seq()
seq(1, 19) #displays sequence of number from 1 to 19

seq(1, 19, 2) #displays sequence of number with step '2'
seq(1, 19, 3) #displays sequence of number with step '3'

mySequence <- seq(1, 19, 5) 
mySequence

#Replicate Function : rep()
rep(69, 10) #This replicates '69' for 10 times

myReplica <- rep(10, 18)
myReplica

#Replicating Characters
myReplica2 <- rep("Messi", 7)
myReplica2

myReplica3 <- c(6, 9)
myReplica4 <- rep(myReplica3, 10)
myReplica4

myReplica5 <- c(7, 10, 17, 19)
myReplica6 <- rep(myReplica5, 4)
myReplica6

num9 <- 12 == 12
num9

num10 <- 12<11
num10

num11 <- 11 != 11
num11

num9 | num10
num9 & num10
typeof(num9)

#While Loop
num12 <- 100
while(num12 <= 103){
  print("Hello Num 12")
  num12 <- num12 + 1
}

counter <- 1
while(counter < 10){
  print(counter)
  counter <- counter+1
}

#For Loop
for (num in 1:5) {
  print("Hey R")
}

for (n in 100:107) {
  print(n)
}

for (vari in 12:15) {
  print("Variables in For Loops")
}

rnorm(1, 2, 4)

rm(valid)
random <- rnorm(1)
if(random > 1){
  valid <- "The number is valid"
}else{
  valid <- "The number is invalid"
}

num13 <- rnorm(1)
if(num13 < 1){
  numny <- "It is Great"
}else if(num13 > 1 & num13 < 1.5){
  numny <- "It is not bad"
} else{
  numny <- "It is bad bad"
}

#Rough
for (num14 in rnorm(100)) {
  print(num14)
  
  if(num14 > -1 & num14 < 1){
    print(num14)
    num14 <- num14 + 1
  }
}
length(num14)

#matrix()
num15 <- 1:15
num15
is.numeric(num15)
matrix(num15, 3, 5)
A <- matrix(num15, 3, 5, byrow = TRUE)
A
A[2, 5]

#rbind()
row16 <- c("My", "name", "is", "Sandesh")
row17 <- c("I", "Live", "in", "Pokhara")
row18 <- c(6, 9, 6, 9)
row19 <- rbind(num16, num17, num18)
row19

#cbind()
col20 <- 1:5
col21 <- 6:10
col22 <- cbind(col20, col21)
col22

#Using Matrix() function along with 'byrow = TRUE'
num21 <- 1 : 18
num21
A21 <- matrix(num21, 3, 6, TRUE)
A21

#Use of rbind() and cbind()
num22 <- c(99, 98, 97, 96)
num23 <- c(95, 94, 93, 92)
num24 <- c(91, 90, 89, 88)
row22 <- rbind(num22, num23, num24)
row22
col22 <- cbind(num22, num23, num24)
col22

#Using 'each' in rep() function 
col25 <- 1:5
col25 <- rep(col25, each=2)
col25

col26 <- 1:9
matrix(col26, 3, 3, TRUE)
rownames(col26)
rownames(col26) <- c("Hy", "Bye", "Bb")

v1 <- c(1:4)
v2 <- c(11:18)
v <- array(c(v1, v2), dim = c(3, 4, 2))
v

#While loop 
col27 <- 1
while(col27 <= 5){
  print("Hello")
  col27 <- col27+1
}

col28 <- 100
while (col28 < 107) {
  print(col28)
  col28 <- col28 + 1
}

#For Loop
for (col29 in 1:11) {
  print("Namaste Col")
}

for (col30 in 100:105) {
  print(col30)
}

#If Statement
col31 <- 11
if(col31 <= 10){
  print("You are correct")
} else{
  print("Shut up")
}

#Switch Statement
col32 <- switch(3, "First", "Second", "Third", "Fourth")
print(col32)


col33 <- 10
col34 <- 5
col35 <- "c"
col36 <- switch(col35,
                "a" = cat(col33 + col34),
                "b" = cat(col33 - col34),
                "c" = cat(col33 * col34),
                "d" = cat(col34 / col33))
print(col36)
#Using '<-' after "a", "b", ... does not work. Dont know why. Use '='


# Importing Data into R 

# Step 1 : Selecting the file manually
numImport <- read.csv(file.choose())
numImport

# Step 2 : Setting Working Directory and Reading Files
getwd()
setwd("/Users/sandeshkey/Desktop/IV - R")
getwd()

# rm(numImport) #Removes numImport from Environment 

numImport <- read.csv("DemographicData.csv")
numImport


#Exploring the Data
nrow(numImport) #To find number of rows
ncol(numImport) #To find number of columns

head(numImport) #Displays first few rows
tail(numImport) #Displays last few rows

str(numImport) #Displays structure of data
summary(numImport)

#Using the $ Sign

head(numImport)
numImport[6, 3] #Displaying Argentina's Birth Rate using Data Frame
numImport[6, "Country.Code"] #Displaying Argentina's country code using column name

# $ sign does not work for matrices. However, It works for data frames
# $ sign is mostly used to access columns

numImport$Country.Name #Displaying 'Country.Name' column using $ sign
numImport$Country.Name[25] #Accessing 25th row of Country.Name using $ sign













