# Load the shiny package
library(shiny)

# Define UI for the application
ui <- fluidPage(

    h1("Header 1"),
    hr(),
    br(),
    p(strong("bold")),
    p(em("italic")),
    p(code("code")),
    a(href="http://www.tiss.edu", "link"),
    HTML("<p>Raw html</p>")
)

# Define the server logic
server <- function(input, output) {}

# Run the application
shinyApp(ui = ui, server = server)