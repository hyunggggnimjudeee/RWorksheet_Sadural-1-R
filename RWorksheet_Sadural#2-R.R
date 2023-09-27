#1 create vectors using : operator
sequence_1 <- -5:5
sequence_1

#1b
x <- 1:7
x

#2 create a vector using seq() function
vector <- seq(1, 3, by = 0.2)
vector

#2 - From 1 we add, 0.2 until it reaches 3 so that it will come up into a answer of 3.0

#3 a factory has census of its workers. There are 50 workers in total.
ages <- c(34, 28, 22, 36, 27, 18, 52, 39, 42, 29, 35, 31, 27, 22, 37, 34, 19, 20, 57, 49, 50, 37, 46, 25, 17, 37, 43, 53, 41, 51, 35, 24, 33, 41, 53, 40, 18, 44, 38, 41, 48, 27, 39, 19, 30, 61, 54, 58, 26, 18)

#a. Access the 3rd Element
element_3 <- ages[3]
element_3

#b. Access the 2nd and 4th elements
element_2_and_4 <- ages[c(2,4)]
element_2_and_4

#c. Access all elements except the 4th and 12th
filtered_ages <- ages[-c(4,12)]
filtered_ages

#4 *Create a vector x <- c("first"=3, "second"=0, "third"=9). Then named the vectors, names(x).
x <- c("first" = 3, "second" = 0, "third" = 9)
vector_names <- names(x)
vector_names

#5 Create a sequence x from -3:2.
x <- -3:2
#5a.
x[2] <-0
x

#6 The following data shows the diesel fuel purchased by Mr. Cruz.
fuel_data <- data.frame
(Month = c("January", "February", "March", "April", "May", "June"),
  Price_per_Liter_PHP = c(45.5, 46.2, 47.0, 46.8, 48.0, 47.5),
  Purchase_Quantity_Liter = c(40, 38, 45, 42, 50, 48))
  