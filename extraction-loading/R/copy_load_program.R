#' Copy STATA load program into raw directory 
 
#'    
#'    @dataset_id: this arguemnt is just the HCUP dataset id (e.g. "NY_SEDD_2017_CHGS")
#'    dataset_id = "NY_SEDD_2018_CHGS" 
#'    

source("R/get_elt_status.R")

copy_load_file = function(dataset_id){
  
  stata_load_path = tibble( paths = list.files(path = 'documents/stata-load-program/',  recursive = T, full.names = T) ) %>% 
    filter(str_detect(paths,dataset_id)) %>% 
    pull(paths)
  
  new_path = file.path("raw-hcup",basename(stata_load_path))
  
  file.copy(from = stata_load_path, 
            to = new_path)
}

copy_load_program = function(){
  
  ## get any datasets missing .Do
  df_missing = get_elt_status() %>% filter(is.na(Do))
  
  if(nrow(df_missing)>0){
    df_missing$dataset_id %>% map(~copy_load_file(.x))
    print(get_elt_status())
    message(glue("Copied .Do files for {nrow(df_missing)} files"))
    df_missing$dataset_id %>% walk(~message(glue("- {.x}")))
  } else {
    print(get_elt_status())
    message(glue("No .Do files missing"))
  }
   

}
