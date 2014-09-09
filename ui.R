library(shiny)

shinyUI(fluidPage(
  
  
titlePanel("Distribución Binomial"),
   
  sidebarLayout(
    sidebarPanel(
      sliderInput("n", "Tamaño de muestra:", 
                  min=1, max=20, value=10, step=1),
      
      sliderInput("p", "Probabilidad del exito:", 
                  min = 0, max = 1, value = 0.5, step= 0.05) 
    ),
    
    mainPanel(
    plotOutput("binomplot")
    )

    
))
)
