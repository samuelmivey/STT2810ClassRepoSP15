load("~/Downloads/NESARC_pds.RData")

# Subsets people who are drinkers who have felt depression in the last 2 weeks
nesarc.subset <- NESARC[!is.na(NESARC$CONSUMER) & !is.na(NESARC$S4AQ4A12)
                        NESARC$CONSUMER == 1 & NESARC$S4AQ4A12 == 1
                        

library(Hmisc)
label(nesarc.subset$CONSUMER) <- "Drinking Status"
label(nesarc.subset$S4AQ4A12) <- "Felt Worthless Most of the Time for 2+ weeks"
label(nesarc.subset$S4AQ20A) <- "Ever Drank Alcohol to Improve Low Mood/Make Self Feel Better"
label(nesarc.subset$S2AQ8E) <- "How Often Drank 5+ Drinks of any Alcohol in Last 12 Months"



library(descr)
freq(nesarc.subset$CONSUMER)
freq(nesarc.subset$S4AQ4A12)
freq(nesarc.subset$S4AQ20A)
freq(as.ordered(nesarc.subset$S4AQ20A))
freq(as.ordered(nesarc.subset$S2AQ8E))


###############
#graphing
freq(nesarc.subset$CONSUMER, main= "Drinking Status", 
     names=c("Current Drinker", "Ex-drinker", "Lifetime Abstainer"),
     ylab= "Frequency")

hist(NESARC$S2AQ8E, main= "How Often Drank 5+ Drinks of 
  Alcohol in Last 12 Months", xlab= "Number of Instances")  
     
     