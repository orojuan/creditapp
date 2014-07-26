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
      tabsetPanel(
        tabPanel("Results", 
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
                 h4("Checking Account"),
                 verbatimTextOutput("ochkacc"),
                 h4("Savings Account"),
                 verbatimTextOutput("osaveacc"),
                 h4("Other Installment"),
                 verbatimTextOutput("ootherinstallment"),
                 h3("Predicted Payment Behaviour:"),
                 verbatimTextOutput("ofcst")
        ),
        tabPanel("Documentation",
                 p("First of all, be aware that the first result reported is
                   computed based on the default values. In order to see
                   your predicted payment behaviour, you must first enter
                   your personal and financial information as well as the
                   details of the loan desired. Please enter only 1 value
                   for each field."),  
                 h3("Submitting your Profile"),
                 strong("Gender:"),
                 em("Checkbox with levels Male and Female."),
                 br(),
                 strong("Age:"),
                 em("Numeric entry measured in years. Minimum value is 18
                    and maximum value is 75 with step of 1 year."),
                 br(),
                 strong("Marital Status:"),
                 em("Checkbox with levels Single and Other. The latter may
                    refer to Married, Divorced or Widow(er)."),
                 br(),
                 strong("Credit Amount:"),
                 em("Numeric entry measured in Deutsche Marks. Minimum value
                    is 500 and maximum value is 20,000 with step of 100."),
                 br(),
                 strong("Credit Length:"),
                 em("Numeric entry measured in months. Minimum value is 6
                    and maximum value is 60 with step of 6."),
                 br(),
                 strong("Checking Account:"),
                 em("Checkbox with levels Negative balance, Between 0 & 200,
                    More than 200 and No check account. It is a transactional
                    deposit account held at a financial institution that
                    allows for withdrawals and deposits (Money is very liquid)."),
                 br(),
                 strong("Savings Account:"),
                 em("Checkbox with levels Less than 100, Between 100 & 500,
                    Between 500 & 1000, More than 1000 and No savings account.
                    It is a bank account that earns interest."),
                br(),
                strong("Other Installment:"),
                em("Checkbox with levels Bank, Stores and None. It refers to
                   current debt obligations."),
                br(),
                 h3("Getting and Interpreting your Results"),
                 p("Once you have entered all the required information you
                   have to press the Submit button to get your predicted
                   payment behaviour, whose possible outcomes are Good and
                   Bad. Having a Good outcome means there is a good chance
                   for you to get the loan. If you get a Bad outcome, it
                   still may be possible for lenders to give you a loan but
                   be aware that you may pay higher interest rate and more
                   fees since you are more likely to default."),
                 h3("Legal Disclaimer"),
                 p("The results hereby provided are just for
                   informational purposes and hence must not be used to demand
                   a loan since they may differ from actual scores.")
        )
      )
    )
  )
  
)