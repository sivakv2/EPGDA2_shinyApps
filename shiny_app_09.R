library(shiny)
library(ggplot2)
library(gapminder)
library(DT)

# Define UI for application that fetches tables and show side panel
ui <- fluidPage(
   
   # Application title
   titlePanel("Gapminder Data"),
   
   sidebarLayout(
     sidebarPanel("Text"),
   
   mainPanel (
            dataTableOutput("table")
            )
      )
   )

# Define server logic required to display table output
server <- function(input, output) {
  
  #Create the table
  output$table <- renderDataTable(gapminder)
}

# Run the application 
shinyApp(ui = ui, server = server)

