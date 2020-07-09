 
library(shiny)
library(tm)
library(tidytext)
library(dplyr)
library(tidyr)
library(stringr)
library( shinythemes)
 
ui <-fluidPage(
  theme = shinythemes::shinytheme("cyborg"),
    # Application title
    titlePanel("Words predictor"),

    # Sidebar with a slider input for number of bins
    sidebarLayout(
        sidebarPanel(
            textInput("text", label = h3("Your text"), value = "Write your text..."),
        
        sliderInput("freq",
                    "Minimum Frequency:",
                     value = 15, min = 1,  max = 50),
        sliderInput("max",
                    "Maximum Number of Words:",
                   value = 100, min = 1,  max = 300)
    ),
  
        mainPanel(
          h3("Next word:"),
             h4(span(textOutput("ngram_output"),  style="color:red")),
          h3("Wordcloud of words from tweets, news and blogs"),
            plotOutput("plot"))
))
