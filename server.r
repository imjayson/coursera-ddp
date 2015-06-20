library(shiny)
library(HistData)
data(Galton)
childFit <- lm(child ~ parent, data=Galton)
predictChild <- function(parentHeight) {
  predict(childFit, data.frame(parent=parentHeight))[[1]]
}
shinyServer(
  function(input, output) {
    output$inputValue <- renderPrint({
      input$height
    })
    output$prediction <- renderPrint({
      predictChild(input$height)
    })
  }
)