
#' Function 2
#'
#' @return
#' @export
#' Calculates statistics over all of the DRG codes for average Medicare payments.
#' Make it an option  to calculate either the mean, median,
#' or standard deviation of the DRG codes.
#' @param
#' @importFrom
#' @examples
# Function 2: Write a function that calculates statistics over all of the DRG codes for average Medicare payments.
# Make it an option in your function to calculate either the mean, median, or standard deviation of the DRG codes.
library(tidyverse)
library(ggplot2)

DRG_data <- read_csv("DRG_data.csv")

function_2 <- function(x){
  if(x == "mean"){
    mean <- round(mean(DRG_data$`Average Medicare Payments`), 2)
    print(paste("The mean of average Medicare payments is", mean))
  } else if(x == "median"){
    median <- round(median(DRG_data$`Average Medicare Payments`), 2)
    print(paste("The median of average Medicare payments is", median))
  } else if(x == "standard deviation"){
    sd <- round(sd(DRG_data$`Average Medicare Payments`), 2)
    print(paste("The standard deviation of average Medicare payments is", sd))
  } else print("Invalid input, you must choose from mean, median and standard deviation ")
}
