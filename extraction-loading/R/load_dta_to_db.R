#' Loads .dta to database as both data (.parquet) and metadata (.csv)
#'    
#'    @dataset_id: this arguemnt is just the HCUP dataset id (e.g. "NY_SEDD_2017_CHGS")
#'    


source("R/get_elt_status.R")
source("R/make_target_endpoints.R")

load_dta_to_db = function(){
  
  ## generate endpoints for datasets missing parquet
  df_paths = get_elt_status() %>% 
    filter(is.na(parquet)) %>% 
    make_target_endpoints()
  
  if(nrow(df_paths)>0){
    ## convert .dta to .parquet
    df_paths %>% 
      group_by(row_number()) %>% 
      group_walk(~{
        readstata13::read.dta13(.x$path_dta) %>%
          write_parquet(sink = .x$path_parquet )
      })
    
    ## log actions
    print(get_elt_status())
    message(glue("Loaded .dta files to .parquet for {nrow(df_paths)} datasets"))
    df_paths$dataset_id %>% walk(~message(glue("- {.x}")))
  } else {
    print(get_elt_status())
    message(glue("No .parquet files missing"))
  }
  

}
  