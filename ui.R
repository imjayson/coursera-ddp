library(shiny)
shinyUI(
  pageWithSidebar(
    # Application title
    headerPanel("Child\'s Height prediction"),
    sidebarPanel(
      h5('Enter the parent\'s height and click on the Submit button to show the predictions on the right'),
      numericInput('height', 'Parent\'s Height (inches)', 67, min = 40, max = 1200, step = 1),
      submitButton('Submit')
    ),
    mainPanel(
      h4('You entered '),
      verbatimTextOutput("inputValue"),
      h4('Predicted child\'s height '),
      verbatimTextOutput("prediction")
    )
  )
)