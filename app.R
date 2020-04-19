library(shiny)


#############
# UI
#############


# Define UI for app that draws a histogram ----
ui <- fluidPage(
  titlePanel(strong("3BIGS Shiny App")),
  sidebarLayout(position = "left",
                sidebarPanel(
                  h2("Installation"),
                  p("3BIGS Shiny is available on CRAN, so you can install it in the usual way from your R console : "),
                  code('install.packages("3bigs_shiny")'),
                  br(),
                  br(),
                  br(),
                  img(src = "logo.png", height = 80, width = 220),
                  br(),
                  br(),
                  br(),
                  p("3BIGS Shiny is a product of",
                    span("3BIGS", style = "color:blue"))
                ),
    mainPanel(
              h1("Introducing 3BIGS Shiny"),
              p("3BIGS Shiny is brand-new shiny package from 3BIGS and makes it",em("incredibly easy"),
              "to build interactive web application with R."),
              p("For an introduction and live examples, visit the",
              tags$a(href = "http://3bigs.com/", "3BIGS")),
              br(),
              br(),
              h2("Features"),
              h5("- Build useful web applications with only a few lines of code - no Javascript required."),
              p("- 3BIGS Shiny application are automatically 'live' in the same way that", strong("spreadsheets"), "are live.
                 Outputs change instantly as users modify inputs, without requiring a reload of the browser.")
              )
    )
  )

#############
# SERVER
#############

# Define server logic required to draw a histogram ----
server <- function(input, output){
  
  }


#######################
# Create Shiny R object
#######################

shinyApp(ui = ui, server = server)
