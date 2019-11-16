auto <- read.csv(file="/Users/pakhoncheung/Documents/(US) School/(US)Iowa State University/2019 Fall Semester/STAT 579/term project/AutoInsurance.csv", header=TRUE, sep=",")
sample <- read.csv(file="/Users/pakhoncheung/Documents/(US) School/(US)Iowa State University/2019 Fall Semester/STAT 579/term project/Auto_Insurance_Claims_Sample.csv", header=TRUE, sep=",")
library(tidyverse)

list1<- auto %>% group_by(State) %>% summarise(
  n=n()
)%>% arrange(desc(n))

list2<-sample %>% group_by(State) %>% summarise(
  n=n()
)%>% arrange(desc(n))

export (1)

export<- read.csv(file="/Users/pakhoncheung/Documents/(US) School/(US)Iowa State University/2019 Fall Semester/STAT 579/term project/export (1).csv", header=TRUE, sep=",")
list3<-export %>% group_by(incident_state) %>% summarise(
  n=n()
)%>% arrange(desc(n))
