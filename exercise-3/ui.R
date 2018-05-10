# UI for scatterplot
library(shiny)
library(ggplot2)
# Get a vector of column names (from `mpg`) to use as select inputs
select_values <- colnames(mpg)

# Create a shinyUI with a `fluidPage` layout

  # A page header

  
  # Add a select input for the x variable

  
  # Add a select input for the y variable


  # Add a sliderInput to set the size of each point


  # Add a selectInput that allows you to select a color from a list of choices


  # Plot the output with the name "scatter"

ui <- fluidPage(
  h1("MPG"),
  selectInput("x_var", "Variable X", choices = select_values),
  selectInput("y_var", "Variable Y", choices = select_values),
  selectInput("color", "Choose the Color", choices = list("blue", "green")),
  sliderInput("size", "Size of Points", min = 0, max = 10, value = 5),
  plotOutput("scatter")
)

shinyUI(ui)
