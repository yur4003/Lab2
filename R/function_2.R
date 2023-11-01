
#' Function_2
#' This function calculates statistics over all of the DRG codes for average Medicare payments.
#' Make it an option  to calculate either the mean, median, or standard deviation of the DRG codes.
#'
#' @param data a data frame
#' @param x a string from c("mean","median","standard deviation")
#' @importFrom tidyverse
#' @export
#' @examples
#'
#' mean(data$`Average Medicare Payments`)
#' median(data$`Average Medicare Payments`)
#' sd(data$`Average Medicare Payments`)


function_2 <- function(x, data){
  if(x == "mean"){
    mean <- round(mean(data$`Average Medicare Payments`), 2)
    print(paste("The mean of average Medicare payments is", mean))
  } else if(x == "median"){
    median <- round(median(data$`Average Medicare Payments`), 2)
    print(paste("The median of average Medicare payments is", median))
  } else if(x == "standard deviation"){
    sd <- round(sd(data$`Average Medicare Payments`), 2)
    print(paste("The standard deviation of average Medicare payments is", sd))
  } else print("Invalid input, you must choose from mean, median and standard deviation ")
}






