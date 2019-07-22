# Load the shiny package
library(shiny)

# Define UI for the application
ui <- fluidPage(
  # Add the text 
  "Coding in Shiny begins"
)

# Define the server logic
server <- function(input, output) {}

# Run the application
shinyApp(ui = ui, server = server)