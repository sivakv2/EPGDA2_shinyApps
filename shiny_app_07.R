library(shiny)
library(ggplot2)
library(gapminder)

# Define UI for application that draws a histogram
ui <- fluidPage(
   
   # Application title
   titlePanel("Gapminder Data"),
      tableOutput("table")
)

# Define server logic required to draw a histogram
server <- function(input, output) {
  
  #Create the table
  output$table <- renderTable(gapminder)
}

# Run the application 
shinyApp(ui = ui, server = server)

