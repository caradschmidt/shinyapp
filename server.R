#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)


shinyServer(function(input, output, session) {
    all<- reactive({
        tipInput<- as.numeric(input$percent)
        billInput<- as.numeric(input$bill)
        perc<- tipInput*0.01
        perc*billInput+billInput
    })
    
    output$total <- renderText(all())
    
})
