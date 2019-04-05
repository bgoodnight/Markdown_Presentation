## Reference
# https://github.com/majerus/r_code_tips/blob/master/iterative_reporting/r_script.R

## Packages

library(knitr)
library(rmarkdown)
library(usmap)
library(ggplot2)

## Data

states <- data.frame(state.name, state.abb, state.region, state.x77)

## Loop

for (i in 1:3){
    rmarkdown::render(input = "state_reports.Rmd", 
                      output_format = "word_document",
                      output_file = paste(states$state.name[i], ".docx", sep=''),
                      output_dir = "reports/")
}