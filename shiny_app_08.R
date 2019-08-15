#EPGDA Session class material
library(shiny)
library(gapminder)
library(DT)

# Define UI for application that displays table
ui <- fluidPage(
   
   # Application title
   titlePanel("Gapminder Data"),
                      dataTableOutput("table")
)

# Define server logic required to fetch table
server <- function(input, output) {
  
  #Create the table
  output$table <- renderDataTable(gapminder)
}

# Run the application 
shinyApp(ui = ui, server = server)
