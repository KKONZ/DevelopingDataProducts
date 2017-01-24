library(shiny)

shinyServer(function(input, output) {
  training <- read.csv("Spotify.csv", header = TRUE)
  model1 <- lm(lSumChartStreams ~ lCountOnCharts, data = training)
  
  model1pred <- reactive({
    countInput <- input$sliderCount
    predict(model1, newdata = data.frame(lCountOnCharts = countInput))
  })
  
  
  
  output$plot1 <- renderPlot({
    countInput <- input$sliderCount
    plot(training$lCountOnCharts, training$lSumChartStreams, xlab = "log count of days on charts",
         ylab = "log sum of streams while on charts", bty = "n", pch = 16,
         xlim = c(0,6.5), ylim = c(11.5,21))
    
    if(input$showModel1){
      abline(model1, col = "red", lwd = 2)
    }
    
    legend(4.5, 14, c("Model Prediction"), pch = 16,
           col = "red", cex = 1.2)
    points(countInput, model1pred(), col = "red", pch = 16, cex = 2)
  }) 
  
  output$pred1 <- renderText({
    model1pred()
  })
})

