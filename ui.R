library(shiny)
shinyUI(pageWithSidebar(
  # Application tilte
  headerPanel("Fahrenheitand Celsius Conversion"),
  
  sidebarPanel(
    helpText("This app will do conversion between the Fahrenheit temperature and Celsius temperature.
             First, choose the conversion type, then input a numeric value, and click the submit button"),
    radioButtons("conversion", "conversion type", 
                 choice =list("Fahrenheit to Celsius Conversion", "Celsius to Fahrenheit Conversion"),
                 selected = "Fahrenheit to Celsius Conversion"),
    numericInput("inputvalue", "inputvalue", 98.6, min = -100, max = 200, step = 0.1),
    submitButton('Submit')
    ),
  
  mainPanel(
    h4('You entered'),
    verbatimTextOutput("inputValue"),
    br(),
    br(),
    h4('Which resulted in a conversion of '),
    verbatimTextOutput("Conversion")
        
    )
  ))