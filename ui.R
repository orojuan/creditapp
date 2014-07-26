shinyUI(
  pageWithSidebar(
    headerPanel("Applicant's Profile for Loan"),
    sidebarPanel(
      checkboxGroupInput("igender","Gender",c("Male"="M","Female"="F"),selected="M"),
      numericInput("iage","Age [years]",18,min=18,max=75),
      checkboxGroupInput("imarital","Marital Status",c("Single"="Single","Other"="Other"),selected="Single"),
      numericInput("icreditamount","Credit Amount [DM]",3000,min=500,max=20000,step=100),
      numericInput("icreditlen","Credit Length [months]",12,min=6,max=60,step=6),
      checkboxGroupInput("ichkacc","Check Account [DM]",c("Negative Balance"="(-inf,0)","Between 0 & 200"="[0,200)","More than 200"="[200,inf)","No check account"="No acc"),selected="No acc"),
      checkboxGroupInput("isaveacc","Savings Account [DM]",c("Less than 100"="(-inf,100)","Between 100 & 500"="[100,500)","Between 500 & 1000"="[500,1000)","More than 1000"="[1000,inf)","No savings account"="No acc"),selected="No acc"),
      checkboxGroupInput("iotherinstallment","Other Installment",c("Bank"="Bank","Stores"="Stores","None"="None"),selected="None"),
      submitButton("Submit")
    ),
    mainPanel(
      h3("Submitted Profile:"),
      h4("Gender"),
      verbatimTextOutput("ogender"),
      h4("Age"),
      verbatimTextOutput("oage"),
      h4("Marital Status"),
      verbatimTextOutput("omarital"),
      h4("Credit Amount"),
      verbatimTextOutput("ocreditamount"),
      h4("Credit Length"),
      verbatimTextOutput("ocreditlen"),
      h4("Check Account"),
      verbatimTextOutput("ochkacc"),
      h4("Savings Account"),
      verbatimTextOutput("osaveacc"),
      h4("Other Installment"),
      verbatimTextOutput("ootherinstallment"),
      h3("Predicted Payment Behaviour:"),
      verbatimTextOutput("ofcst")
      
    )
  )
  
)