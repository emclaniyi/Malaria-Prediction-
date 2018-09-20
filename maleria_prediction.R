library(haven) #part of the tidyverse
library(readr) #part of the tidyverse
library(readxl)
library(tidyverse)
set.seed(1000)
age <-  round(runif(1000,min=0,max=1)) #0 is male, 1 is female
sex <- sample(c("Male","Female"),1000,replace=TRUE,prob=c(0.45,0.55))
fever<- sample(c("yes", "no"),1000,replace=TRUE, prob=c(0.75,0.25))
cold<-sample(c("yes", "no"),1000,replace=TRUE, prob=c(0.55,0.45))
rigor <-sample(c("yes", "no"),1000,replace=TRUE, prob=c(0.35,0.65))
fatigue<-sample(c("yes", "no"),1000,replace=TRUE, prob=c(0.50,0.50))
headace<-sample(c("yes", "no"),1000,replace=TRUE, prob=c(0.70,0.30))
bitter_tongue <-sample(c("yes", "no"),1000,replace=TRUE, prob=c(0.44,0.56))
vomitting <-sample(c("yes", "no"),1000,replace=TRUE, prob=c(0.10,0.90))
diarrhea<-sample(c("yes", "no"),1000,replace=TRUE, prob=c(0.5,0.95))
Convulsion<-sample(c("yes", "no"),1000,replace=TRUE, prob=c(0.5,0.95))
Anemia <-sample(c("yes", "no"),1000,replace=TRUE, prob=c(0.5,0.95))
jundice <-sample(c("yes", "no"),1000,replace=TRUE, prob=c(0.95,0.5))
cocacola_urine <-sample(c("yes", "no"),1000,replace=TRUE, prob=c(0.92,0.8))
hypoglycemia <-sample(c("yes", "no"),1000,replace=TRUE, prob=c(0.85,0.15))
prostraction <-sample(c("yes", "no"),1000,replace=TRUE, prob=c(0.25,0.75))
hyperpyrexia<-sample(c("yes", "no"),1000,replace=TRUE, prob=c(0.15,0.85))
severe_maleria <-sample(c("yes", "no"),1000,replace=TRUE, prob=c(0.5,0.95))

df <- data.frame(age,sex,fever,cold,rigor,fatigue,
                 headace,bitter_tongue,vomitting,diarrhea,
                 Convulsion,Anemia,jundice,cocacola_urine,hypoglycemia,prostraction,hyperpyrexia,severe_maleria)

