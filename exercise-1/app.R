# Exercise 1: Building a user interface

# Load the `shiny` package (install it in the R terminal if you haven't already)
library(shiny)

# Define a new `ui` variable. This variable should be assigned a `fluidPage()` 
# layout, which should be passed the following:


  # A top level header: "First Shiny Website"

  # A Paragraph, describing your excitement: include some `strong` text
  

  # An image with this `src`
  # https://media2.giphy.com/media/l3q2Ip7FrmPE33EiI/giphy.gif
  
  
  # Another paragraph about a slider: include some `em` text
  
  
  # A slider with an appropriate label, min of 10, max of 100, value of 50  
  
ui <- fluidPage(
  h1("First Shiny Website"),
  p("I am", strong("VERY EXCITED"), "about this WEBSITE!!!"),
  img("", src = 'https://media2.giphy.com/media/l3q2Ip7FrmPE33EiI/giphy.gif'),
  p("Here is a slider", em("a cool slider")),
  sliderInput(
    "number slider",
    "10 - 100 slider",
    min = 10,
    max = 100,
    value = 50,
    10
  )
)  


# Define a `server` function that accepts an input and an output
# At this point, don't do anything in the function
# This function should perform the following:

server <- function(input, output) {
  
}

# Create a new `shinyApp()` using the above ui and server

shinyApp(ui = ui, server = server)