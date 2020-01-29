## Notes for chapters 1 and 2 of R for Data Science

## Model for tools used to handle data in R
  ## 1) Import the data
    ## load a data file into R as a data frame object
  ## 2) Tidy the data
    ## ensure the data is consistently structured: each col = variable
    ## each row = observation
  ## 3) Transform the data
    ## make it easier to work with, by focussing on certain variables,
    ## creating new ones, calculating means etc.
  ## 4) Visualise and Model the Data
    ## Visualise the data into graphs, tables etc
    ## can also use models
  ## 5) Communicate the data
    ## communicate the results of your data to others using the visualisation

## Focusess on rectangular data
  ## these are collections of valyes that are each associated with a variable and an observation

## This book focusses on hypothesis generation not hypothesis confirmation
    ## this involves looking deeply into the data, generating many possible hypotheses

## Need the tidyverse package to use the book
install.packages(c("nycflights13", "gapminder", "Lahman"))



## Chapter 11 - Data Import
  ## Exercises
    ### What function would you use to read a file where fields were separated with "|"?
read_delim()

    ### Apart from file, skip, and comment, what other arguments do read_csv() and read_tsv() have in common?
- col_names = 
- na =

    ### What are the most important arguments to read_fwf()?
'you can specify fields either by their widths with fwf_widths() or their position with fwf_positions()'

    ### Sometimes strings in a CSV file contain commas. To prevent them from causing problems they need to be surrounded by a quoting character,
    ### like " or '. By convention, read_csv() assumes that the quoting character will be ", and if you want to change it you'll need to use read_delim()
    ### instead. What arguments do you need to specify to read the following text into a data frame? "x,y\n1,'a,b'"


    ### Identify what is wrong with each of the following inline CSV files. What happens when you run the code?
      ### 1) read_csv("a,b\n1,2,3\n4,5,6")
issue with columns
      ### 2) read_csv("a,b,c\n1,2\n1,2,3,4")
issue with columns
      ### 3) read_csv("a,b\n\"1")

      ### 4) read_csv("a,b\n1,2\na,b")
      ### 5) read_csv("a;b\n1;3")