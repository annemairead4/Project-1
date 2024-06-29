# Load the necessary library
library(rvest)
# Specify the URL of the Wikipedia page with the CSV example
url <- "https://en.wikipedia.org/wiki/Comma-separated_values"
# Read the HTML content from the URL
page <- read_html(url)
# Extract tables from the HTML content
tables <- html_table(page)
# Assume the first table contains the CSV example and extract it
csv_data <- tables[[1]]
# Write the extracted table to a CSV file in the r_csv folder
write.csv(csv_data, "r_csv/cars_data.csv", row.names = FALSE)
