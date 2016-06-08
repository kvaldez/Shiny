library(shiny)

fluidPage(titlePanel('Welcome to Kristin\'s App'),
          
          sidebarPanel(h1('This is a practice app to learn how to use Shiny'),
                       h2('This writing should become increasingly smaller'),
                       h3('This should be the smallest')),
          
          #adds a slider, and creates a plot of random numbers.
          #the amount of random numbers is determined by the number entered.
          mainPanel(sliderInput(inputId = 'well', 
            label = 'On a scale of 1 to 30, how are you doing today?',
            value = 25, min = 1, max = 30),
          
          plotOutput('well'),
          
          #allows user to select from a drop down menu
          selectInput(inputId = 'time', 
            label = 'What time did you wake up today?', 
            choices = c('Before 8', '0800', '0900', '1000', 'Afternoon')),
          
          #creates slider, resulting plot is a histogram of random numbers
          #the amount of random numbers is determined by the number entered
          sliderInput(inputId = 'cheese', 
            label = 'On a scale of 1 to 30, how much do you like cheese?',
            value = 25, min = 1, max = 30),
          
          plotOutput('cheese'),
          
          #creates radio buttons, then displays answer below
          radioButtons(inputId = 'colors',
            label = 'What is your favorite color?',
            choices = c('Blue', 'Yellow', 'Red', 'Orange', 'Green')),
          
          textOutput('colors')
          
          )
)

