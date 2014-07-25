forecast <- function(df){
  if(df$credit.amount>10000){
    if(df$age>25){
      if(df$marital.status=="Single"){
        return("Good")
      }
      else if (df$other.installment=="None"){
        return("Good")
      }
      else {
        return("Bad")
      }
    }
    else {
      return("Bad")
    }
  }
  else if(df$gender=="M"){
    if(df$save.acc=="No acc"){
      if(df$chk.acc=="No acc"){
        return("Bad")
      }
      else{
        return("Good")
      }
    }
    else {
      return("Good")
    }
  }
  else{
    return("Good")
  }
  
}



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
    output$ofcst <- renderPrint({forecast(data.frame(chk.acc=input$ichkacc,
      credit.len=input$icreditlen,credit.amount=input$icreditamount,save.acc=input$isaveacc,
      gender=input$igender,marital.status=input$imarital,age=input$iage,other.installment=input$iotherinstallment))})
  }
  
)