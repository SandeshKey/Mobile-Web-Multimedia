class1 <- c(2, 4, 6, 8)
min(class1)
max(class1)

class2 <- 100
sqrt(class2)

class3 <- c(2.77, 3.14)
round(class3)

class4 <- c(1, 1, 3, 5)
mean(class4)

class5 <- "Hello everyone!"
typeof(class5)
class5
remove(class5) #Removes object 'class5'
class5

#Dates in R
class6 <- as.Date("2021-11-12")
class6
#The 'as.Date()' function stores Date while..
#The 'as.POSIXct()' function stores both Date & Time
class7 <- as.POSIXct("2021-11-11")
class7

a <- c("Apple", "Mango", "Kiwi", "Grapes", "Berry")
a

m <- seq(-3,35)
m

a <-1
is.numeric(a)

a <- c(1, 2, 3, 4, 5)
b <- c(1, 2, 1, 3, 1, 2)
answer <- a - b
answer

v1 <- c(1, 2, 3, 4, 5)
v2 <- c("Ryan", "Roy", "Syed", "John", "Mark")
v <- c(v1, v2)
v
data.frame(v1, v2)
data.frame(id=v1, name=v2)

myDate <- as.Date("2020-08-02")
myDate

myDate2 <- as.POSIXct("2020-08-04")
myDate2

class8 <- seq(-3, 10)
class8
length(class8)

class9 <- c(1, 3, 6, 19)
class10 <- c(2, 4, 7, 21)
class9 + class10

class11 <- c(1, 2, 3, 4, 5)
class12 <- c(6, 7, 8, 9, 10, 11)
class11 + class12

class13 <- 1:4
class14 <- 5:8
class13+class14

class15 <- c(1, 2, 3, 4, 5)
class16 <- c(6, 7, 8, 9, 10, 11, 12)
class15+class16

class17 <- c(10, 11, 12, 13, 14)
class18 <- c(5, 6, 7, 8, 9)
class17-class18

class19 <- c(10, 11, 12, 13, 14)
class20 <- c(12, 13, 14, 15, 19)
class19 - class20

class21 <- c(10, 11, 12, 13, 14)
class22 <- c(12, 13, 14, 15, 22, 23, 24)
class21 - class22

class24 <- 8:13
class25 <- c("Iniesta", "Suarez", "Messi", "Neymar", "Raphina", "Cillesen")
class26 <- c("Mid", "Striker", "Winger", "Winger", "Mid", "Goalkeeper")
data.frame(class23, class24, class25, class26)
dataName <- data.frame(Kit = class24, Player= class25, Position = class26)
dataName
nrow(dataName) #To find total number of ROWS
ncol(dataName) #To find total number of COLUMNS
dim(dataName) #To find the DIMENSION of output table
names(dataName) #To find COLUMN NAMES 

class27 <- list(1, 2, 3)
class27

class28 <- list(1:10)
class28

class29 <- list(c(1, 2), 3:5)
class29

class30 <- list(class29, 6:9)
class30

length(class30)
names(class30)

class31 <- matrix(c(1, 3, 4, 6, 8, 7), nrow = 3)
print(class31)

class32 <- list(list("Apple", "Mango", "Pineapple"), list("Maths", "php", "Dart"))
class32[3] = "Namaste"
print(class32)

class32[3] = "hello"
print(class32)

class32[3] = "NewMew"
class32

print(class32[[1]] [[2]])
print(class32[[2]] [[2]])

class33 <- 1:5
class34 <- c("One", "Two", "Three", "Four", "Five")
class35 <- data.frame(class33, class34)
class35

class36 <- c("A", "B", "C")
class37 <- c("E", "F", "G")
class38 <- list(class36, class37)
class38

class39 <- matrix(c(1:8), 2, 4)
class39

class40 <- matrix(c(1:12), 3, 4)
class40
class41 <- matrix(c(7:9))
class41
cbind(class40, class41)

class42 <- matrix(, 1, 1)
class42

class43 <- 13
if(class43 == 11)
{
  print("EQUAL")
} else{
  print("Not EQUAL")
}


class44 <- 13
if(class44 == 11)
{
  print(paste(class44, "EQUAl"))
} else{
  print(paste(class44, "Not EQUAL"))
}

#Switch
class45 <- switch("cl1", "cl2" = "JAVA", "cl3" = "C", "cl1" = "PYTHON")
print(class45)

#Repeat Loop
class46 <- 1
repeat{
  if(class46 > 10){
    break
  }
  print(class46)
  class46 <- class46 + 1
}

class47 <- 3
repeat{
  if(class47 > 30){
    break
  }
  print(class47)
  class47 <- class47 + 3
}

class48 <- 10
while (class48 > 0) {
  print(class48)
  class48 <- class48 - 1
}

class49 <- 10
while (class49 < 101) {
  print(class49)
  class49 <- class49 + 10
}

class50 <- list("Apple", "Banana", "Cat", "Dog")
for (i in class50) {
  print(i)
}

print(class50[2])

class51 <- function(class51a, class51b){
  return(class51a + class51b)
}
print(class51(10, 1))

class52 <- function(class52a, class52b){
  return(class52a * class52b)
}
print(class52(10, 3))

class53 <- function(class53a){
  for (i in 1:10) {
    print(class53a * i)
  }
}
class53(5)

data(package = .packages(all.available = TRUE))
class54 = data(diamonds, package = "ggplot2")
print(diamonds)


class54 <- c(10, 20, 30, 40, 50, NA)
print(max(class54))
print(min(class54, na.rm = TRUE))
el_length <- length(class54)
total <- sum(class54)
average <- total/el_length
print(average)










