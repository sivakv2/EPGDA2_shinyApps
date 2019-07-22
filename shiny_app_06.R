# Load the shiny package
library(shiny)

# Define UI for the application
ui <- fluidPage(
  
    p(code("Activity-6")),
    a(href="http://shinyapps.io", "https://www.shinyapps.io/admin"),
    HTML("<p>Publish your app in shinyapps.io</p>")
)


# Define the server logic
server <- function(input, output) {}

# Run the application
shinyApp(ui = ui, server = server)