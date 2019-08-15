library(shiny)
library(ggplot2)
library(gapminder)
library(DT)

all_years <- sort(unique(gapminder$year))

# Define UI for application that draws a histogram
ui <- fluidPage(
   
   # Application title
   titlePanel("Gapminder Data"),
   
   sidebarLayout(
     sidebarPanel(
              selectInput("year","Year",c("1957","1962","1967","1972","1978"))
                  ),
   
   mainPanel (
            dataTableOutput("table")
            )
      )
   )

# Define server logic required to draw a histogram
server <- function(input, output) {
  
  #Create the table
  output$table <- renderDataTable(gapminder)
}

# Run the application 
shinyApp(ui = ui, server = server)

