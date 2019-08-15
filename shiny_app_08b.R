library(shiny)
library(gapminder)
library(DT)

# Define UI for application that displays text - r output
ui <- fluidPage(
   
   # Application title
   titlePanel("Gapminder Data"),
   
   verbatimTextOutput("summary")
)

# Define server logic required to display - r output
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

