## Data 3 Notes, Class 3

# First, open the packages and data needed
library(tidyverse)
Data <- read_tsv("C:/Users/Liv/OneDrive - University of Exeter/Second Year/Term 2/POL2094 Data Analysis iii/Github/datan3/Data/6614tab_10EB1BA6123C0D95E60D28E156AEA8F7_V1/UKDA-6614-tab/tab/ukhls_wx/xwavedat.tab")
## we use tsv because our data file has tab separated values


#1. Select the variables for: sex (derived), date of birth (derived), ethnic group (racel_dv). 
 # Also keep the cross-wave identifier (pidp) and the sample origin variable (memorig).
select(Data, pidp, memorig, sex_dv, doby_dv, racel_dv)
 # we can also use a pipe
Data <- Data %>%
  select(pidp, memorig, sex_dv, doby_dv, racel_dv)
#this means that the data frame 'Data' now contains only these 5 variables that we are focussing on, easier to work with



#2. Filter the data to keep (in new data frames):
#a) men only. (using sex variable, 1 is male, 2 is female and -9 is NA)
Data <- filter(Data, sex == "1")
 # need to do in pipe instead which is as below
Data %>%
  filter(sex_dv == 1)

#b) people born before 1950 and after 1975.
Data <- filter(Data, doby_dv < 1950| doby_dv > 1975)
 # need to do in pipe instead which is as below
Data %>%
  filter(doby_dv > 0 & (doby_dv < 1950| doby_dv > 1975 ))

#c) men of Pakistani origin born in 1958 or 1982. 
Data <- filter(Data, racel_dv == 10 & (doby_dv == 1958 | doby_dv == 1982))
 # need to do in pipe instead which is as below
Data %>%
  filter(racel_dv == 10 & (doby_dv == 1958 | doby_dv == 1982))


#3. Recode birth year into cohorts (a new variable): the G.I. Generation (born before 1924), 
#Silent Generation (1925-42), Baby Boomers (1943-65), Generation X (1966-1980), Millenials (1981-99),
#Generation Z (2000-). (The years are approximate.)
 Data <- Data %>%
   mutate(generation = case_when(
     between(doby_dv, 0, 1924) ~ "GI Generation",
     between(doby_dv, 1925, 1942) ~ "Silent Generation",
     between(doby_dv, 1943, 1965) ~ "Baby Boomers",
     between(doby_dv, 1966, 1980) ~ "Generation X",
     between(doby_dv, 1981, 1999) ~ "Millenials",
     doby_dv >= 2000 ~ "Generation Z"
   ))
 #use mutate function to create new variable called 'generation'
 #then use case_when function which means 'in the case when a certain variable equals a certain value, return this..'
 # i.e. in the case when doby_dv variable equals a value between 0 and 1924, the new variable generation will return 'GI Generation'
 
  
 6. Summarise the proportion of white British by generation.
 Data %>%
   filter(racel_dv != -9) %>%
   mutate(whiteBritish = if_else(racel_dv == 1, 1, 0)) %>%
   group_by(generation) %>%
   summarise(
     propWhiteBritish = mean(whiteBritish, na.rm = TRUE) * 100
   )
 ## first filter out the mising values
 ## then create a new variable called whiteBritish
