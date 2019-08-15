library(shiny)
library(ggplot2)
library(gapminder)
library(DT)

# Define UI for application that draws a histogram
ui <- fluidPage(
   
   # Application title
   titlePanel("Gapminder Data"),
   
   verbatimTextOutput("summary")
)

# Define server logic required to draw a histogram
server <- function(input, output) {
  
  #Create the table
  output$summary <- renderPrint (
    {
      summ <- summary(lm(gdpPercap ~ lifeExp, data = gapminder))
      print(summ)

    }
    
  )
  
  
}

# Run the application 
shinyApp(ui = ui, server = server)

