library(shiny)

BMIEstimate <- function(Height, Weight) 703*(Weight/Height^2)

shinyServer(
    function(input,output) {
        output$Height<-renderPrint({input$Height})
        output$Weight<-renderPrint({input$Weight})
        output$estimate <- renderPrint({
            if (input$calcbutton > 0) BMIEstimate(input$Height,input$Weight)
            })
    }
)