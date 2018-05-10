### Exercise 3 ###

library(shiny)
library(ggplot2)
# Create a shiny server that creates a scatterplot. 

# It should take as an input the x_var, y_var, color, and size
# Save the result of `renderPlot` to output$scatter

    # Store x and y values to plot


    # Store the title of the graph in a variable

    
    # Create ggplot scatter

server <- function(input, output) {
  output$scatter <- renderPlot({
    x_d <- mpg[[input$x_var]]
    y_d <- mpg[[input$y_var]]
    p <- ggplot(data = mpg) +
      geom_point(mapping = aes(x = x_d, y = y_d), color = input$color, size = input$size)
    p
  })
}

shinyServer(server)

