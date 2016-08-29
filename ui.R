
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)

shinyUI(pageWithSidebar(
  headerPanel("Airquality Data Analysis"),

  # Sidebar with a slider input for number of bins
  sidebarPanel(
    h3('Ozone information')
    , selectInput("levelOfData", label = h4("Select the level of data"), 
                  choices = list("Months" = 1, "Days of Month" = 2), 
                  selected = 1)
    
    , conditionalPanel(
        condition = "input.levelOfData == 1"
        , dateRangeInput("dates1", 
                         label = h4("Date interval"),
                         start = as.Date('1973-05-01'),
                         end = as.Date('1973-09-30'),
                         min = as.Date('1973-05-01'),
                         max = as.Date('1973-09-30'),
                         format = "dd/mm/yyyy"
        )
      )
    
    , conditionalPanel(
      condition = "input.levelOfData == 2"
      , selectInput("month", label = h4("Select the Month"), 
                    choices = list("May" = 5, "June" = 6, "July" = 7, "August" = 8, "September" = 9), 
                    selected = 5)
      , sliderInput("days", label = h3("Select the Day"), min = 1, 
                    max = 31, value = c(1, 31))
      
    )
    
  ),

  # Show a plot of the generated distribution
  mainPanel(
    conditionalPanel(
      condition = "input.levelOfData == 1"
      , plotOutput("distPlotMonths")
    )
    , conditionalPanel(
      condition = "input.levelOfData == 2" 
      , plotOutput("distPlotDaysOfMonth")
    )
    
  )
))
