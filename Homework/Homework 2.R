##Data Homework 1

##Open packages and data needed
library(nycflights13)
library(tidyverse)

##Exercises
   ##5.2.4.1 Find all flights that...
# Had an arrival delay of two or more hours
filter(flights, dep_delay >= 2)
# Flew to Houston (IAH or HOU)
filter(flights, dest == "HOU"| dest == "IAH")
# Were operated by United, American, or Delta
filter(flights, carrier == "UA" |carrier == "AA"| carrier == "DL")
# Departed in summer (July, August, and September)
filter(flights, month == "July" |month == "August"| month == "September")
# Arrived more than two hours late, but didn’t leave late
filter(flights, arr_delay >= 2, dep_delay <= 0)
# Were delayed by at least an hour, but made up over 30 minutes in flight
filter(flights, arr_delay >= 1, air_time == ) ##???
# Departed between midnight and 6am (inclusive)
filter(flights, dep_time >=0600 & dep_time <= 0000) ##???


   ##5.2.4.2 Another useful dplyr filtering helper is between(). 
# What does it do? 
you can use it to filter all entries between two values
# Can you use it to simplify the code needed to answer the previous challenges?
yes, i could make the last question filter(flights, between(dep_time, 0600, 0000)) ###??


  ##5.2.4.3 
# How many flights have a missing dep_time? 
sum(is.na(flights$dep_time))
8255
# What other variables are missing? 
sum(is.na(flights$year)) #NO NAS
sum(is.na(flights$month)) #NO NAS
sum(is.na(flights$day)) #NO NAS
sum(is.na(flights$arr_time)) #8713 NAS
sum(is.na(flights$sched_dep_time)) #NO NAS
sum(is.na(flights$sched_arr_time)) #NO NAS
sum(is.na(flights$dep_delay)) #8255 NAs
sum(is.na(flights$arr_delay)) #9430 NAs
sum(is.na(flights$carrier)) #NO NAS
sum(is.na(flights$flight)) #NO NAS
sum(is.na(flights$tailnum)) #2512 NAS
sum(is.na(flights$origin)) #NO NAS
sum(is.na(flights$dest)) #NO NAS
sum(is.na(flights$air_time)) #9430 NAS
sum(is.na(flights$distance)) #NO NAS
sum(is.na(flights$hour)) #NO NAS
sum(is.na(flights$minute)) #NO NAS
sum(is.na(flights$time_hour)) #NO NAS
# What might these rows represent?
 #data that wasn't recorded or was difficult to record, 
 #all the ones with no NAs are non-changing things such as the date which is easy to record


  ##5.2.4.4 (unsure what this question means)
#Why is NA ^ 0 not missing? 
#Why is NA | TRUE not missing? 
#Why is FALSE & NA not missing? 
#Can you figure out the general rule? (NA * 0 is a tricky counterexample!)


 ##5.3.1 
# How could you use arrange() to sort all missing values to the start? (Hint: use is.na()).
arrange(is.na(flights))
# Sort flights to find the most delayed flights. Find the flights that left earliest.
 arrange(flights, desc(dep_delay))
 # flights 51, 3535, and 3695 were the three most delayed flights
 arrange(flights, dep_delay)
 #flights 97, 1715 and 5713 were the three flights that left earliest
# Sort flights to find the fastest (highest speed) flights.
 arrange(flights, air_time)
 # the fastest flights were 4368, 4631 and 4276
# Which flights travelled the farthest? Which travelled the shortest?
 arrange(flights, distance)
 # flights 1632, 3833 and 4193 travelled the shortest distance
 arrange(flights, desc(distance))
 # flight 51 travelled the furthest distance
 
 
 ##5.6.7
# 1) Brainstorm at least 5 different ways to assess the typical delay characteristics of a group of flights.
# Consider the following scenarios:
 # A flight is 15 minutes early 50% of the time, and 15 minutes late 50% of the time.
 # A flight is always 10 minutes late.
 # A flight is 30 minutes early 50% of the time, and 30 minutes late 50% of the time.
 # 99% of the time a flight is on time. 1% of the time it’s 2 hours late.
# Which is more important: arrival delay or departure delay?
 
# 2) Come up with another approach that will give you the same output as not_cancelled %>% count(dest) 
 #and not_cancelled %>% count(tailnum, wt = distance) (without using count()).
#
 
# 3 )Our definition of cancelled flights (is.na(dep_delay) | is.na(arr_delay) ) is slightly suboptimal0.
 # Why?
 # Which is the most important column?
 
# 4) Look at the number of cancelled flights per day.
 # Is there a pattern? 
 # Is the proportion of cancelled flights related to the average delay?

# 5) Which carrier has the worst delays? 
 # Challenge: can you disentangle the effects of bad airports vs. bad carriers? 
 # Why/why not? (Hint: think about flights %>% group_by(carrier, dest) %>% summarise(n()))
 
# 6) What does the sort argument to count() do. When might you use it?