# Load the shiny package
library(shiny)

# Define UI for the application
ui <- fluidPage(

    h1("EPGDA Class"),
    hr(),
    br(),
    p(strong("Session 2 - Bold")),
    p(em("Buildign web applications - italic")),
    p(code("Adding more code to R")),
    a(href="http://www.tiss.edu", "visit www.tiss.edu link"),
    HTML("<p>The text goes here....</p>")
)

# Define the server logic
server <- function(input, output) {}

# Run the application
shinyApp(ui = ui, server = server)