if (!"caret" %in% rownames(installed.packages())){
  install.packages("caret")
}
library(caret)
load("./randomforest.RData")


shinyServer(
  function(input,output){
    output$ogender <- renderPrint({input$igender})
    output$oage <- renderPrint({input$iage})
    output$omarital <- renderPrint({input$imarital})
    output$ocreditamount <- renderPrint({input$icreditamount})
    output$ocreditlen <- renderPrint({input$icreditlen})
    output$ochkacc <- renderPrint({input$ichkacc})
    output$osaveacc <- renderPrint({input$isaveacc})
    output$ootherinstallment <- renderPrint({input$iotherinstallment})
    output$ofcst <- renderPrint({predict(model,data.frame(chk.acc=input$ichkacc,
      credit.len=input$icreditlen,credit.amount=input$icreditamount,save.acc=input$isaveacc,
      gender=input$igender,marital.status=input$imarital,age=input$iage,other.installment=input$iotherinstallment))})
  }
  
)