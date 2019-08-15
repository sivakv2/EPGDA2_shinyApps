#EPGDA Session class material
library(shiny)
library(gapminder)
library(DT)

# Define UI for application that draws a histogram
ui <- fluidPage(
   
   # Application title
   titlePanel("Gapminder Data"),
                      dataTableOutput("table")
)

# Define server logic required to draw a histogram
server <- function(input, output) {
  
  #Create the table
  output$table <- renderDataTable(gapminder)
}

# Run the application 
shinyApp(ui = ui, server = server)
