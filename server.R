# This is the server logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#
data(airquality)

dataset <- airquality

applyTransformations <- function(dataset) {
  dataset <- transform(dataset, MonthAbb = month.abb[Month])
#   dataset <- transform(dataset, Date = as.Date('1973/'+Month+'/'+Day))
  dataset$Date <- as.Date(paste( 1973 , dataset$Month , dataset$Day , sep = "-" ), format="%Y-%m-%d")
  dataset <- dataset[complete.cases(dataset),]
  return(dataset)
}

dataset <- applyTransformations(dataset)


library(shiny)
library(ggplot2)
library(dplyr)

shinyServer(function(input, output) {

  output$distPlotMonths <- renderPlot({
    chartData <- dataset[(dataset$Date >= input$dates1[1]) && (dataset$Date <= input$dates1[2]), ]
    chartData$MonthAbb <- factor(chartData$MonthAbb, levels=chartData$MonthAbb[order(chartData$Month)])
    ggplot(data=chartData, aes(x=MonthAbb, y=Ozone)) + geom_bar(stat="identity")
  })
  
  output$distPlotDaysOfMonth <- renderPlot({
#     print(input$month)
#     print(input$days[1])
#     print(input$days[2])
    chartData <- filter(dataset, Month == input$month, Day >= input$days[1], Day <= input$days[2])
    ggplot(data=chartData, aes(x=Day, y=Ozone)) + geom_bar(stat="identity")
  })

  
})
