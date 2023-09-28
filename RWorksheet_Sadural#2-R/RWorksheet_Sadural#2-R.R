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
month <- c("January", "February", "March", "April", "May")
price_per_liter <- c(45.5, 46.2, 47.0, 46.8, 47.5)
purchase_quantity <- c(100, 120, 110, 105, 115)

fuel_purchases <- data.frame(
  Month = month,
  Price_Per_Liter_PHP = price_per_liter,
  Purchase_Quantity_Liters = purchase_quantity)

fuel_purchases

#6b.
months <- c("January", "February", "March", "April", "May", "June")
price_per_liter <- c(45.5, 46.2, 47.0, 46.8, 47.5, 48.0)
purchase_quantity <- c(100, 120, 110, 105, 115, 125)

average_expenditure <- weighted.mean(price_per_liter, purchase_quantity)

cat("The average fuel expenditure from January to June is:", average_expenditure, "PHP\n")

#7 R has actually lots of built-in datasets. For example, the rivers data “gives the lengths(in miles) of 141 “major” rivers in North America, as compiled by the US Geological Survey”.)

data(rivers)

#7a. 
data <- c(
  length(rivers), 
  sum(rivers), 
  mean(rivers),
  median(rivers),
  var(rivers),
  sd(rivers),
  min(rivers),
  max(rivers)
)

data

#8 The table below gives the 25 most powerful celebrities and their annual pay as ranked by the editions of Forbes magazine and as listed on the Forbes.com website.

#8a
celebrities <- c(
  "Taylor Swift", "Kylie Jenner", "Kanye West", "Lionel Messi", "Ed Sheeran",
  "Cristiano Ronaldo", "Neymar", "Howard Stern", "LeBron James", "Dwayne Johnson",
  "Rush Limbaugh", "Ellen DeGeneres", "Elton John", "Ariana Grande", "Ryan Reynolds",
  "Jonas Brothers", "Jennifer Lopez", "Shawn Mendes", "Billie Eilish", "Tennis Players",
  "JK Rowling", "BTS", "Dr. Phil McGraw", "Travis Scott", "Shawn Mendes"
)

pay <- c(
  185, 170, 150, 127, 110,
  109, 105, 93, 89, 89,
  87, 80, 84, 72, 71,
  68, 58, 58, 53, 53,
  92, 170, 95, 58, 38
)

celebrities
pay

#8b
celebrities[21] <- "J.K. Rowling"
pay[21] <- 90

celebrities
pay

#8c
celeb_data <- data.frame(Celebrity = celebrities, Pay = pay)
library(openxlsx)
library(writexl)

library(readxl)
celeb_data <- read_excel("PowerRanking.xlsx", sheet = "Celebrities")
write.csv(celeb_data, file = "PowerRanking.csv", row.names = FALSE)

#8d.
subset_data <- celeb_data[10:20, ]
save(subset_data, file = "Ranks.RData")

#8e.
#To describe the output of each step, I'll provide a brief summary:

#In step (a), we created two vectors, one for celebrities and another for their annual pay.
#In step (b), we modified the power ranking and pay of J.K. Rowling in the vectors.
#In step (c), we created an Excel file "PowerRanking.xlsx" from the data and then converted it to a CSV file "PowerRanking.csv."
#In step (d), we extracted rows 10 to 20 from the data and saved it as "Ranks.RData," which is an RData file containing this subset of data.

#9.Download the Hotels-Vienna https://tinyurl.com/Hotels-Vienna

#9a.
##install.package("readxl")
library(readxl)
Data_1 <- read_excel("hotels-vienna.xlsx")
Data_1
View(Data_1)

#9b.
Dimension_File <- dim(Data_1)
Dimension_File

#9c.
colnames(Data_1)
Colums_1 <- Data_1[,c("country", "neighbourhood", "price", "stars", "accommodation_type", "rating")]
View(Colums_1)

#9d.
save(Colums_1, file="new.RData")
View(Colums_1)

#9e.
load("new.RData")
Colums_1

Head_six <- head(Colums_1)
Tail_six <- tail(Colums_1)
View(Head_six)
View(Tail_six)

#10.
vegetables_1 <- c("Carrot", "Broccoli", "Spinach", "Tomato", "Cucumber", "Lettuce", "Pepper", "Onion", "Zucchini", "Potato")
vegetables_1

#10b.
vegetables_1 <- c(vegetables_1, "Mushroom", "Eggplant")
vegetables_1

#10c
vegetables <- append(vegetables_1, c("Cauliflower", "Asparagus", "Kale", "Artichoke"), after = 5)
length(vegetables_1)

#10d.
vegetables_1 <- vegetables_1[-c(5, 10, 15)]
vegetables

