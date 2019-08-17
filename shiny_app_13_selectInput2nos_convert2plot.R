library(shiny)
library(ggplot2)
library(gapminder)
library(DT)
library(dplyr)


all_years <- sort(unique(gapminder$year))
all_continent <- sort(unique(gapminder$continent))

# Define UI for application for plot
ui <- fluidPage(
   
   # Application title
   titlePanel("Gapminder Data"),
   
   sidebarLayout(
     sidebarPanel(
              selectInput(inputId = "year",label = "Year",
                          choices = all_years, 
                          selected = "1957"),
              
              selectInput(inputId = "continent",label = "Continent",
                          choices = all_continent, 
                          selected = "Asia")
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

    gapminder_ds <- gapminder %>%
      filter(year == input$year & continent == input$continent)
    
    gapminder_ds %>%  
    ggplot (aes(x = lifeExp, y = gdpPercap))+
      geom_point()
      
    })
}

# Run the application 
shinyApp(ui = ui, server = server)

