library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Log Sum Of Streams While On Charts From Daily Top 200 Charts on Spotify"),
  
  # Sidebar with a slider input for number of bins
  sidebarLayout(
    sidebarPanel(
      sliderInput("sliderCount",
                  "What was the log count of days on charts",
                  min = 0,
                  max = 7,
                  value = 3.5),
      checkboxInput("showModel1", "Show/Hide Model 1", value = TRUE)
    ),
    
    mainPanel(
      plotOutput("plot1"),
      h3("Predicted Log Sum of Streams While On Top Charts"),
      textOutput("pred1")
    )
  )
))

