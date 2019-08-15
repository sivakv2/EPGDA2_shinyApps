library(shiny)
library(gapminder)

# Define UI for application for table
ui <- fluidPage(
   
   # Application title
   titlePanel("Gapminder Data"),
      tableOutput("table")
)

# Define server logic required to fetch table data
server <- function(input, output) {
  
  #Create the table
  output$table <- renderTable(gapminder)
}

# Run the application 
shinyApp(ui = ui, server = server)

