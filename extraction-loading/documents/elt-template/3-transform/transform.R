{# 0. Setup ----
  ## Load Dependencies
  rm(list= ls()); options(scipen = 999)
  packages =  c('rstudioapi','tidyverse',
                'haven', 'readstata13',
                'data.table','arrow','glue') 
  lapply(packages, require, character.only = TRUE)
  
  ## Set directory and load helpers + processed data 
  setwd(dirname(rstudioapi::getActiveDocumentContext()$path))
  
  ## Get local identifier
  df_id = tibble(path = list.files(path = "../1-extract", full.names = F),
                 path_full = list.files(path = "../1-extract", full.names = T)) %>% 
    filter(str_detect(path,".dta"))%>% 
    mutate(dataset_id = str_remove(path,'.dta'))
  cat(paste("Dataset:",df_id$dataset_id))
}
