library(shiny)

# Define UI ----
ui <- fluidPage(
  titlePanel(strong("censusVis")),
  
  sidebarLayout(
    sidebarPanel(
      
      helpText("Create demographic maps with", 
               "information from 2010 US census"),
      selectInput("var", h4("Choose a variable to display"), 
                  choices = list("Percent White", "Percent Black",
                                 "Percent Asian", "Percent Hispanic"), selected = "Percent Asian"),
      sliderInput("range", h4("Range of interest:"),
                  min = 0, max = 100, value = c(0, 100))
                ),
    mainPanel(
      textOutput("selected_var")
    )
  )
)

# Define server logic ----
server <- function(input, output) {
  output$selected_var <- renderText({ 
    paste("You have selected", input$var)
  })
}

# Run the app ----
shinyApp(ui = ui, server = server)