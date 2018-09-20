library(haven) #part of the tidyverse
library(readr) #part of the tidyverse
library(readxl)
library(tidyverse)
set.seed(1000)
sex <-  round(runif(1000,min=0,max=1)) #0 is male, 1 is female
age <- sample(c("15-20","20-25","25+"),1000,replace=TRUE,prob=c(0.45,0.35,0.20))
Nationality <- sample(c("Nigerian", "Foreigner"),1000,replace= TRUE,prob=c("0.9","0.1"))
Address <- sample(c("urban", "rural"),1000,replace = TRUE, prob=c("0.9","0.1"))
Family_size <- sample(c("Less_than_3", "More_than_3"),1000,replace=TRUE, prob=c("0.5","0.5"))
parents_togeda <- sample(c("yes", "no"), 1000, replace = TRUE,prob=c("0.5","0.5"))
mloe <- sample(c("primary education", "secondary education", "higher education", "none"),1000,replace=TRUE,prob=c(0.15,0.25,0.3,0.3))
floe <- sample(c("primary education", "secondary education", "higher education", "none"),1000,replace=TRUE,prob=c(0.1,0.2,0.2,0.5))
wdymd<- sample(c("civil servant", "private company","unemployed", "self employed", "retired"),1000,replace=TRUE,prob=c(0.3,0.2,0.1,0.1,0.2))
wdyfd<- sample(c("civil servant", "private company","unemployed", "self employed", "retired"),1000,replace=TRUE,prob=c(0.2,0.3,0.2,0.1,0.2))
rfcos<- sample(c('close to home','schools reputition','course preference', 'parents influence', 'friends influence', 'others')
               ,1000, replace = TRUE, prob = c(0.2,0.3,0.1,0.05,0.15,0.2))
ses<- sample(c('mother', 'father','self sponsor', 'others'),1000, replace = TRUE, prob = c(0.15,0.25,0.3,0.3))
dfhts<-sample(c('15-30min','30-45min', '45-1hr', 'ihr+'),replace = TRUE, prob =c(0.2,0.3,0.4,0.1))
weekly_study <-sample(c('less than 2hrs','2-5hrs','5-10hrs','10hrs+'),replace = TRUE, prob =c(0.4,0.2,0.3,0.1))
educational_support<-sample(c('yes','no'), replace = TRUE, prob = c(0.4, 0.6))
family_support<-sample(c('yes','no'),  replace = TRUE, prob = c(0.4, 0.6))
tutorial <-sample(c('yes','no'),  replace = TRUE, prob = c('0.5','0.5'))
carry_overs <- sample(c('less than 3', 'more than 3'),replace = TRUE, prob = c(0.4, 0.6))
extra_curricular <-sample(c('yes','no'), replace = TRUE, prob = c(0.4, 0.6))
nusery_school<-sample(c('yes','no'), replace = TRUE, prob = c(0.3, 0.7))
futher_studies<-sample(c('yes','no'), replace = TRUE, prob = c(0.4, 0.6))
internet_access<-sample(c('yes','no'), replace = TRUE, prob = c(0.7, 0.3))
relationship_status<-sample(c('yes','no'), replace = TRUE, prob = c(0.8,0.2))
relationship_with_family<-sample(c('very low','low','moderate', 'high','very high'), replace = TRUE, prob = c(0.3,0.2,0.1,0.1,0.2))
free_time<-sample(c('very low','low','moderate', 'high','very high'), replace = TRUE, prob = c(0.1,0.2,0.1,0.2,0.4))
g_out_with_friends <-round(runif(1000,min=1,max=5))
alchol_weekly<-round(runif(1000,min=0,max=5))
health_status<-round(runif(1000,min=1,max=5))
miss_classes<-round(runif(1000,min=0,max=10))
l1_cgpa <-sample(c("3.50 - 4.00/ 4.50 - 5.00","3.00 - 3.49/ 3.50 - 4.49","2.50 - 2.99/ 2.50 - 3.49","2.00 - 2.49 or less"),1000,replace=TRUE,prob=c(0.2,0.2,0.2,0.4))
l2_cgpa<-sample(c("3.50 - 4.00/ 4.50 - 5.00","3.00 - 3.49/ 3.50 - 4.49","2.50 - 2.99/ 2.50 - 3.49","2.00 - 2.49 or less"),1000,replace=TRUE,prob=c(0.3,0.1,0.2,0.4))
l3_cgpa<-sample(c("3.50 - 4.00/ 4.50 - 5.00","3.00 - 3.49/ 3.50 - 4.49","2.50 - 2.99/ 2.50 - 3.49","2.00 - 2.49 or less"),1000,replace=TRUE,prob=c(0.1,0.2,0.3,0.4))
l4_cgpa<-sample(c("3.50 - 4.00/ 4.50 - 5.00","3.00 - 3.49/ 3.50 - 4.49","2.50 - 2.99/ 2.50 - 3.49","2.00 - 2.49 or less"),1000,replace=TRUE,prob=c(0.1,0.2,0.4,0.3))
l5_cgpa<-sample(c("3.50 - 4.00/ 4.50 - 5.00","3.00 - 3.49/ 3.50 - 4.49","2.50 - 2.99/ 2.50 - 3.49","2.00 - 2.49 or less"),1000,replace=TRUE,prob=c(0.3,0.2,0.4,0.1))
FINAL_GRADUATING_CLASS<-sample(c('FIRST CLASS/ DISTINCTION','SECOND CLASS UPPER/ UPPER CREDIT',
                                 'SECOND CLASS LOWER/ LOWER CREDIT',
                                 'THIRD CLASS/ PASS'),replace = TRUE, prob = c(0.3,0.2,0.3,0.2))
df <- data.frame(sex,age,Nationality,Address,Family_size, parents_togeda,mloe,floe,
                 wdymd,wdyfd,rfcos,ses,dfhts,weekly_study,educational_support,family_support,tutorial,
                 carry_overs,extra_curricular,nusery_school,futher_studies,internet_access,
                 relationship_status,relationship_with_family,free_time,
                 g_out_with_friends,alchol_weekly,health_status,miss_classes,
                 l1_cgpa,l2_cgpa,l3_cgpa,l4_cgpa,l5_cgpa,FINAL_GRADUATING_CLASS)
glimpse(df)

a<- write.csv(df, "student_performance.csv")
a









