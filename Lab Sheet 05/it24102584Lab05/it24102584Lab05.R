setwd("C:\\Users\\Asus\\Desktop\\it24102584Lab05")
branch_data <- read.table("Exercise.txt", header=TRUE, sep=",")
str(branch_data)
summary(branch_data)
boxplot(branch_data$Sales_X1, main = "Boxplot for Sales", ylab = "Sales")
fivenum(branch_data$Advertising_X2)
IQR(branch_data$Advertising_X2)
find_outliers <- function(x) {
  Q1 <- quantile(x, 0.25)
  Q3 <- quantile(x, 0.75)
  IQR_value <- Q3 - Q1
  lower_bound <- Q1 - 1.5 * IQR_value
  upper_bound <- Q3 + 1.5 * IQR_value
  outliers <- x[x < lower_bound | x > upper_bound]
  return(outliers)
}

outliers_years <- find_outliers(branch_data$Years_X3)
outliers_years
