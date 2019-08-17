library(shiny)
library(ggplot2)
library(gapminder)
library(DT)
library(dplyr)

# Define UI for application the plot
ui <- fluidPage(
   
   # Application title
   titlePanel("Gapminder Data"),
   
   sidebarLayout(
     sidebarPanel(
              selectInput(inputId = "y",label = "Y-Axis",
                          choices = c("gdpPercap", "lifeExp", "year"), 
                          selected = "gpdPercap"),
              
              selectInput(inputId = "x",label = "X-Axis",
                          choices = c("gdpPercap", "lifeExp", "year"), 
                          selected = "lifeExp")
                    ),
   
   mainPanel (
            plotOutput("plot")
            )
      )
   )

# Define server logic required to draw a plot
server <- function(input, output) {
  
  #Create the table
  output$plot <- renderPlot({
    gapminder %>%  
    ggplot (aes_string(x = input$x, y = input$y))+
      geom_point()
    })
}

# Run the application 
shinyApp(ui = ui, server = server)

