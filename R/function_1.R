# Function1
#' Boxplot_Pay_DRG
#' This function produces a boxplot of specific payments by DRG code
#' Make it an option for your function to do this for either the average Medicare payments,
#' the average total payment, or the average covered charges
#'
#' @param data a data frame
#' @param payment_type a string name for variable y in the dataframe data
#'
#' @return A boxplot of specific \code{payment_type} by DRG code from the \code{data}
#'
#' @importFrom ggplot2 ggplot
#' @importFrom ggplot2 geom_boxplot
#' @export
#'
#' @examples
#'

#' Boxplot_Pay_DRG(DRG_data, 'Average Total Payments')
#' Boxplot_Pay_DRG(DRG_data, 'Average Medicare Payments')
#' Boxplot_Pay_DRG(DRG_data, 'Average Covered Charges')
#'
#'

library(ggplot2)
# Function to create a boxplot of the specific payments by DRG code
Boxplot_Pay_DRG <- function(data, payment_type) {
  # Check the payment type
  if (payment_type == "Average Medicare Payments") {
    title <- "Boxplot of Average Medicare Payments by DRG Code"
    y_variable <- "Average.Medicare.Payments"
  } else if (payment_type == "Average Total Payments") {
    title <- "Boxplot of Average Total Payments by DRG Code"
    y_variable <- "Average.Total.Payments"
  } else if (payment_type == "Average Covered Charges") {
    title <- "Boxplot of Average Covered Charges by DRG Code"
    y_variable <- "Average.Covered.Charges"
  } else {
    stop("Invalid payment type. Please choose one of: 'Average Medicare Payments', 'Average Total Payments', or 'Average Covered Charges'")
  }
  # Creating a DRG.Code column
  data$DRG.Code <- substr(data$DRG.Definition, 1, 3)
  # Create the boxplot
  ggplot(data, aes(x = .data[["DRG.Code"]], y = .data[[y_variable]])) +
    geom_boxplot(fill="lightblue") +
    labs(
      x="DRG Code",
      y=payment_type,
      title=title
    ) +
    theme_minimal() +
    theme(
      axis.text.x = element_text(angle = 45, hjust = 1, size = 4),
      # Adjust the global text size
      text = element_text(size = 10),
      # Adjust the text size of the titles of axes
      axis.title = element_text(size = 12),
      # Adjust the size and position of title
      plot.title = element_text(size = 14, hjust = 0.5),
    )
}

