library(stargazer)
library(tidyverse)
library(readxl)
library(readr)
library(ggplot2)
library(dplyr)
library(zoo)

bd <- read.csv('/Users/dcastanog/Library/Mobile Documents/com~apple~CloudDocs/MCV/Productidivad laboral/conjunto_de_datos/ipl.csv')
View(bd)

#Para hacer la variable de fecha
bd <- 
  bd %>%
  mutate(trim = ifelse(TRIMESTRE=="1T",1,
                       ifelse(TRIMESTRE=="2T",2,
                              ifelse(TRIMESTRE=="3T",3,4))))