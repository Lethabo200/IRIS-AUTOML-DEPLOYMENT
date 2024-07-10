# R Script for Testing Deployed Iris Model

# Load required library
library(httr)

# Define the endpoint URL
# Replace this with your actual endpoint URL from the Azure ML deployment
url <- "YOUR_ENDPOINT_URL"

# Define the input data
# This example uses the following Iris flower measurements:
# Sepal length: 3.7
# Sepal width: 1.2
# Petal length: 6.2
# Petal width: 4.2
data <- list(
  data = list(
    list(
      sepal_length = 3.7,
      sepal_width = 1.2,
      petal_length = 6.2,
      petal_width = 4.2
    )
  )
)

# Make the API request
response <- POST(
  url,
  add_headers("Content-Type" = "application/json"),
  body = jsonlite::toJSON(data, auto_unbox = TRUE)
)

# Print the response
print(content(response))

# If you want to extract just the predicted class
predicted_class <- content(response)$Result[[1]]
print(paste("The predicted Iris species is:", predicted_class))

# Optional: You can add more test cases by creating additional data lists
# and making multiple API calls

# Example of an additional test case:
data2 <- list(
  data = list(
    list(
      sepal_length = 5.1,
      sepal_width = 3.5,
      petal_length = 1.4,
      petal_width = 0.2
    )
  )
)

response2 <- POST(
  url,
  add_headers("Content-Type" = "application/json"),
  body = jsonlite::toJSON(data2, auto_unbox = TRUE)
)

print(content(response2))
predicted_class2 <- content(response2)$Result[[1]]
print(paste("The predicted Iris species for the second test is:", predicted_class2))
