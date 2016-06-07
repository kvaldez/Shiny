library(shiny)

function(input, output){
  output$well = renderPlot({title = 'Here\'s a plot of random numbers based on the number you entered'
    plot(rnorm(input$well), main = title)})
  
  output$cheese = renderPlot({title = 'Here\'s a histogram of random numbers based on how much you like cheese'
    hist(rnorm(input$cheese), main = title)})               
  }
  

  

