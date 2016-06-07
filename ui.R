library(shiny)

fluidPage(titlePanel('Welcome to Kristin\'s App'),
          
          sidebarPanel(h1("This is a practice app to learn how to use Shiny"),
                       h2("This writing should become increasingly smaller"),
                       h3("This should be the smallest")),
          
          
          mainPanel(sliderInput(inputId = 'well', 
            label = 'On a scale of 1 to 30, how are you doing today?',
            value = 25, min = 1, max = 30),
          
          plotOutput('well'),
          
          selectInput(inputId = 'time', 
            label = 'What time did you wake up today?', 
            choices = c('Before 8', '0800', '0900', '1000', 'Afternoon')),
          
          sliderInput(inputId = 'cheese', 
            label = 'On a scale of 1 to 30, how much do you like cheese?',
            value = 25, min = 1, max = 30),
          
          plotOutput('cheese'),
          
          checkboxGroupInput(inputId = 'colors',
            label = 'What are your favorite colors?',
            choices = c('Blue', 'Yellow', 'Red', 'Orange', 'Green'))
          )
)

