#Matrix 

#1. R program to create a blank matrix
mat1 <- matrix(, 1, 1)
mat1

mat2 <- matrix(, 0, 0)
mat2

#2. R program to create a matrix taking a given vector of numbers as input. Display the matrix.
mat3 <- 1:8
matrix(mat3, 2, 4)

#3. R program to create a matrix taking a given vector of numbers as input and define the column and row names. Display the matrix.
mat4 <- c(1:6)
names(mat4) <- c("a", "b", "c", "d", "e", "f")
names(mat4)
mat4

mat4 <- c(1, 2, 3)
mat5 <- rep(mat4, 3)
mat6 <- matrix(mat5, 3, 3)
rownames(mat6) <- c("Hello", "Good", "Morning")
colnames(mat6) <- c("Hy", "Good", "Evening")
mat6

mat7 <- c(1:9)
mat8 <- matrix(mat7, 3, 3)
rownames(mat8) <- c("as", "df", "gh")
colnames(mat8) <- c("qw", "er", "ty")
mat8

#4. R program to access the element at 3rd column and 2nd row, only the 3rd row and only the 4th column of a given matrix.
mat9 <- c(1:9)
mat10 <- matrix(mat9, 3, 3, TRUE)

#Accessing element of 3rd column and 2nd row : i.e, '6'
mat10[2, 3]

#Accessing only 3rd row :
mat10[3, ]

#Accessing 3rd column :
mat10[, 3]


#5. R program to create two 2x3 matrix and add, subtract, multiply and divide the matrixes
mat11 <- c(1:6)
mat12 <- matrix(mat11, 2, 3, TRUE)
mat12

mat13 <- c(21:26)
mat13 <- matrix(mat13, 2, 3)
mat13

mat14 <- mat13 + mat12
mat14

mat15 <- mat13 - mat12
mat15

mat16 <- mat13 * mat12
mat16

mat17 <- mat13 / mat12
mat17

#Finding maximum value in a matrix
mat16
max(mat16)
min(mat16)

#6. Finding row and column index of maximum and minimum value in a given matrix
#Syntax: which(m == max(m), arr.ind=TRUE)
mat17 <- which(mat16 == max(mat16), arr.ind = TRUE)
mat17

mat18 <- which(mat15 == max(mat15), arr.ind = TRUE)
mat18

mat19 <- which(mat15 == min(mat15), arr.ind = TRUE)
mat19

mat20 <- which(mat16 == min(mat16), arr.ind = TRUE)
mat20

#Finding maximum and minimum value from a specific row/column
mat28 <- print(max(mat16[,3])) #For Column
mat29 <- print(max(mat16[2,])) #For row
mat30 <- print(min(mat16[1,]))

#7. Concatenating two given matrices of SAME COLUMN but DIFFERENT ROWS 

mat21 <- c(1:9)
mat22 <- matrix(mat21, 3, 3)
mat22
mat23 <- c(1:12)
mat24 <- matrix(mat23, 4, 3)
mat24
mat25 <- rbind(mat22, mat24)
mat25
mat26 <- matrix(mat23, 3, 4)
mat26
mat27 <- cbind(mat26, mat22)
mat27


#Data Frame 

#1. Empty Data Frame
mat28 <- matrix(ncol = 0, nrow = 0)
data1 <- data.frame(mat28)  
data1  
dim(data1) 

#OR,
dData <- data.frame()
dData

#2. Program to create a data frame from four given vectors 
playerNum <- c(1:4)
playerName <- c("Valdes", "Dani", "Geri", "Puyi")
playerRole <- c("GK", "RB", "CB", "CB")
playerTrophy <- c(22, 33, 44, 55)
playerData <- data.frame(playerNum, playerName, playerRole, playerTrophy)
playerData

playerNum <- c(1:4)
playerName <- c("Valdes", "Dani", "Geri", "Puyi")
playerRole <- c("GK", "RB", "CB", "CB")
playerTrophy <- c(22, 33, 44, 55)
playerData <- data.frame("P. Num" = playerNum, "P. Name"= playerName,"P.Role" = playerRole , "P.Trophy" = playerTrophy )
playerData
playerData[, "Random"] <- c("Hey", "Iay", "Lay", "Kay")
playerData

studentName <- c("John", "Orton", "Kane", "Harry")
studentRoll <- c(1, 11, 111, 1111)
studentPlanet <- c("Jupiter", "Uranus", "Neptune", "Pluto")
studentData <- data.frame(studentName, studentRoll, studentPlanet)
studentData
#Adding a new column in above dataframe()
studentData[, "studentHouse"] <- c("Red", "Yellow", "HGreen", "Blue")
studentData

#to extract first two rows from a given data frame 
print(playerData[1:2,])
#To print specific column
print(playerData[,2:3])

#4. To extract first two rows from a given data frame
playerData[1:2, ]
#4. To extract first two columns from a given data frame
playerData[, 1:2]

#3. Extracting specific columns
playerDataCol <- data.frame(playerData$playerNum, playerData$playerName)
playerDataCol 
#Syntax - data.frame ( dataframe_name $ column_name )

#5. to add a new column in a given data frame 
playerData[, "Player Age"] <- c(33, 21, 32, 31)
playerData

studentData <- subset(studentData, select = -c(studentName, studentRoll))
studentData

#7. R program to drop column(s) by name from a given data frame 
plantName <- c("Mango", "Apple", "Cherry")
plantPrice <- c(100, 200, 300)
plantData <- data.frame(plantName,plantPrice)
plantData
plantData <- subset(plantData, select = -c(plantPrice))
plantData

#Arrays
#Syntax : array(data, dim = (nrow, ncol, nmat), dimnames = names)

#1. R program to create an array of two 3x3 matrices each with 3 rows and 3 columns from two given two vectors 

arr1 <- c(1:3)
arr2 <- c(4:9)
arr3 <- array(c(arr1, arr2), dim = c(3, 3))
arr3

arr4 <- c(11 : 15)
arr5 <- c(16 : 20)
arr6 <- array(c(arr4, arr5), dim = c(2, 5))
arr6

#Naming Arrays, rows and columns  
arrRName <- c("Tesla", "Brezza", "Lambo", "Nano", "Suzuki")
arrCName <- c("Bajaj", "Honda")
arrMName <- c("Mat Car", "Mat Bikke")
arr7 <- array(arr6, dim = c(5, 2, 2), dimnames = list(arrRName, arrCName, arrMName))
arr7

arr8 <- array(arr6, dim = c(5, 2), dimnames = list(arrRName, arrCName))
arr8

#NOTE : dimnames should always be in 'list'. And, length of dim should be equal to length of dimnames

#2. create an 3 dimensional array of 24 elements using the dim() function 
#Syntax : dim=c(totalNoOfArrays,noOfRowsInEachArrays,noOfColumnsInEachArrays)

arr9 <- c(1:24)
arr10 <- array(arr9, dim = c(4, 6))
arr10


