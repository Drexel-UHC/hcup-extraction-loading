{# 0. Setup ----
  ## Load Dependencies
  rm(list= ls()); options(scipen = 999, readr.show_col_types = FALSE)
  library(rstudioapi) 
  library(glue)         
  library(stringr)
  library(yaml)
  library(readstata13)
  library(data.table)
  library(arrow)
  library(tidyverse)
  
  ## Set directory and load helpers 
  setwd(dirname(rstudioapi::getActiveDocumentContext()$path))
  list.files(path = 'R/', all.files = T,recursive = T, full.names = T, pattern = '.R') %>% 
    walk(~source(.x))
  
  message("Setup Success!")
}



{ # 1. Extraction (done on desktop with high RAM) ----
  
  ## Step 1: Evaluate ELT status
  get_elt_status()
  get_elt_status() %>% filter(is.na(load_program ))
  
  ## Step 2: Copy load programs
  copy_load_program()
  
  ## Step 3: Run STATA to generate dta
  get_elt_status() %>% select(-parquet, -codebook)
  
  ## Step 4: Load as parquet
  load_dta_to_db()
  
  ## Step 5: Generate codebooks
  generate_codebooks()
}




{ # 2. Loading  -----------------------------------------------------------
  
  ## load source.ymls into dbt
  get_file_ids() %>% walk(~generate_source_yml(.x))
  
  ## generate stg model .ymls into dbt
  get_stage_models() %>% walk(~generate_stg_model_yml(.x))
  
  
}
