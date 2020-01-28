First Assignment (Test)
================
Olivia Hudson
27/01/2020

## Reading the Data

``` r
library(tidyverse)
Data <- read_tsv("C:/Users/Liv/OneDrive - University of Exeter/Second Year/Term 2/POL2094 Data Analysis iii/Github/datan3/Data/6614tab_10EB1BA6123C0D95E60D28E156AEA8F7_V1/UKDA-6614-tab/tab/ukhls_w9/i_youth.tab")
```

## Tabulate Variables

\#\# There is no variable for gender and so i have used sex instead

``` r
table(Data$i_dvage)
```

    ## 
    ##  10  11  12  13  14  15  16 
    ## 460 496 470 465 488 430  12

``` r
table(Data$i_sex)
```

    ## 
    ##    1    2 
    ## 1411 1410

``` r
table(Data$i_ypsocweb)
```

    ## 
    ##   -9    1    2 
    ##   14 2277  530

\#\# from this we can see that 2277 people answered yes to the question
‘Do you belong to any social networking web-sites?’, 530 answered no
and 14 observations contained missing data. We can also see that 1411
respondents are male and 1410 are female.

## Recode Variables

We want to create a new binary variable for having an account on social
media so that 1 means “yes”, 0 means “no”, and all missing values are
coded as NA. We also want to recode gender into a new variable with the
values “male” and “female” (this can be a character vector or a factor).

``` r
Data$i_ypsocweb[Data$i_ypsocweb == "2"] -> "0" 
Data$i_ypsocweb[Data$i_ypsocweb == "-9"] -> 'NA'
Data$i_sex[Data$i_sex == "1"] -> "male" 
Data$i_sex[Data$i_sex == "2"] -> "female" 
```

##
