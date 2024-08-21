#install.packages("readxl", "tidyverse", "janitor")
library(readxl)
library(tidyverse)
library(janitor)

#start with a clean environment 
rm(list=ls())

pathname <- "./data/" #name the file pathway (i.e., where in the directory the files are stored)
file_names <- list.files(path = pathname, 
                         full.names = F,
                         pattern='*.xlsx') #get a list of the names of the files (only .xlsx)

#take the names of the files stored in file_names, and paste them iteratively over each file as it is read in (via read_xlsx). Note: file.temp is a temporary object that "floats" for each iterative process 
for (temp_name in file_names){
  file.temp <- read_xlsx(paste0(pathname, temp_name))
  assign(gsub(".xlsx", "", temp_name, fixed = T), file.temp)
}