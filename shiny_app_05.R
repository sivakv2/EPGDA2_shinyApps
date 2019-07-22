# Load the shiny package
library(shiny)

# Define UI for the application
ui <- fluidPage(
  
    p(code("Activity-5")),
    a(href="http://shinyapps.io", "http://shinyapps.io"),
    HTML("<p>Create an account in shinyapps.io</p>")
)


# Define the server logic
server <- function(input, output) {}

# Run the application
shinyApp(ui = ui, server = server)