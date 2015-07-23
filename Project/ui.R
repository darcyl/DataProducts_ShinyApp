library(shiny)
shinyUI(pageWithSidebar(
    headerPanel("BMI Calculator"),
    sidebarPanel(
        numericInput('Height','Height in inches, i.e 5 ft 0 inches = 60',0,min=1,max=100,step=1),
        numericInput('Weight','Weight in pounds',0,min=1,max=600,step=1),
        actionButton("calcbutton","Estimate BMI")
    ),
    mainPanel(
        h3('Results of BMI Calculation'),
        h4('You entered a height in inches'), 
        verbatimTextOutput("Height"),
        h4('You entered a weight in pounds'), 
        verbatimTextOutput("Weight"),
        h4('BMI Estimate'),
        verbatimTextOutput("estimate")
    )
))