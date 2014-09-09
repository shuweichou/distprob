library(shiny)

shinyServer(function(input, output) {
  
    output$binomplot<-renderPlot({
      x<-seq(0,input$n,1)
      p<-dbinom(x, input$n, input$p)
      plot(x,p,type="h",xlim=c(-1,(input$n)+1),ylim=c(0,1),lwd=2,col="blue",ylab="p")  
      points(x,p,pch=16,cex=2,col="dark red") 
    })  
})
