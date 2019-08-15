library(shiny)
library(ggplot2)
library(gapminder)
library(DT)

# Define UI for application that draws a histogram
ui <- fluidPage(
   
   # Application title
   titlePanel("Gapminder Data"),
   
   textOutput("summary")
)

# Define server logic required to draw a histogram
server <- function(input, output) {
  
  #Create the table
  output$summary <- renderText (
    {
      x <- mean(gapminder$lifeExp)
      paste("The average life Exp is", round(x,2))
    }
    
  )
  
  
}

# Run the application 
shinyApp(ui = ui, server = server)

