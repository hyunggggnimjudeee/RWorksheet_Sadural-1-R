ageVector <-  c(34,28,22,36,27,18,52,39,42,29,35,31,27,22,37,34,19,20,57,49,50,37,46,25,17,37,42,53,41,51,35,24,33,41)

length (ageVector)

#2
reciprocalAge <- 1/ageVector
reciprocalAge

#3 Assign also new_age <- c(age,0,age).
#3 What happen to the new age?

new_age <-c(ageVector,0,ageVector)
new_age

#4 Sort the values of age

SortedageVector <- c(ageVector)
SortedageVector

#5 Find the minimum and maximum value for age

min(ageVector)
max(ageVector)

#6. 

decimalVector <- c(2.4,2.8,2.1,2.5,2.4,2.2,2.5,2.3,2.5,2.3,2.4,2.7)

length (decimalVector)
#7.
decimalVector *2

#8.1 Integers from 1 to 100
seq_Vec <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100.)

length (seq_Vec)

#8.2 Numbers 20 to 60

seq_Vec <- c(20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60)

#8.3 Means of 20 and 60
mean(20+21+22+23+24+25+26+27+28+29+30+31+32+33+34+35+36+37+38+39+40+41+42+43+44+45+46+47+48+49+50+51+52+53+54+55+56+57+58+59+60)

mean(20:60)

#8.4 Sum of numbers from 51 to 91

sum(51:91)

#8.5 Integers from 1 to 1000

num_Vec <- seq(1,1000)

#9 *Print a vector with the integers between 1 and 100 that are not divisible by 3, 5 and 7 using filter option

filter(function(i) { all(i %% c(3,5,7) != 0) }, seq(100))

filter(num_Vec (1:100)  {all(i %% c(3,5,7) !=0) }, seq(100))

#10 Generate a sequence backwards of the integers from 1 to 100.

seq_Vec <- c(1:100)

rev(seq_Vec)

#11 List all the natural numbers below 25 that are multiples of 3 or 5.

natural_Num <- seq(24,1)
natural_Num2 <- Filter(function(i) { all(i %% (i %% 3 == 0 || i %% 5 == 0) != 0) } ,seq(24,1))
natural_Num2 <- c(natural_Num2)
natural_Sum <- sum(natural_Num2)
natural_Sum

#11a data points from 10 to 11
