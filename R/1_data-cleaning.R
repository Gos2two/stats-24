# Clean environment
rm(list = ls())

# Libraries
library(readxl)

#Load DB
db_i <- read_excel("Desktop/stats-24/data/DB_Statistic_120I.xlsx")
summary(db_i)

db_e <- read_excel("Desktop/stats-24/data/DB_Statistic_120E.xlsx")
summary(db_e)

# Reemplazar 999 por NA
db_i[db_i== 999] <- NA
db_e[db_e == 999] <- NA

colSums(is.na(db_i))
colSums(is.na(db_e))

table(db_i$Test)
table(db_e$Test)

