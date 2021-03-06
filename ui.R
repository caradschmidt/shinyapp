#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application 
shinyUI(fluidPage(

    # Application title
    titlePanel("Tip Calculator"),

    # Sidebar with a slider and text input
    sidebarLayout(
        sidebarPanel(
            h3("Check Amount and Tip Percentage"),
            sliderInput("percent",
                        "Tip Percent:",
                        min = 1,
                        max = 100,
                        value = 5),
            
            textInput("bill", "Check Amount", value = ""),
            submitButton("Submit"),
            h5("View code by going to https://github.com/caradschmidt/shinyapp")
        ),
    
        mainPanel(
            h3("Total Bill in USD"),
            textOutput("total")
        )
    )
))
