library(shiny)

function(input, output){
  
  #creates plot for 'how are you doing' question
  output$well = renderPlot({title = 'Here\'s a plot of random numbers based on the number you entered'
    plot(rnorm(input$well), main = title)})
  
  #creates histogram for 'how much do you like cheese' question
  output$cheese = renderPlot({title = 'Here\'s a histogram of random numbers based on how much you like cheese'
    hist(rnorm(input$cheese), main = title)})  
  
  #displays answer selected for 'favorite color' question
  output$colors = renderText(paste('Your favorite color is: ', input$colors))
}
  

  

