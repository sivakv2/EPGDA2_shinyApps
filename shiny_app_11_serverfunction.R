library(shiny)
library(ggplot2)
library(gapminder)
library(DT)
library(dplyr)

all_years <- sort(unique(gapminder$year))

# Define UI for application that draws a histogram
ui <- fluidPage(
   
   # Application title
   titlePanel("Gapminder Data"),
   
   sidebarLayout(
     sidebarPanel(
              selectInput(inputId = "year",label = "Year",
                          choices = all_years, 
                          selected = "1957")
                    ),
   
   mainPanel (
            dataTableOutput("table")
            )
      )
   )

# Define server logic required to draw a histogram
server <- function(input, output) {
  
  #Create the table
  output$table <- renderDataTable({

    gapminder_ds <- gapminder %>%
      filter(year == input$year)
    
      gapminder_ds
      
    })
}

# Run the application 
shinyApp(ui = ui, server = server)

