#' returns a data frame with target endpoints for .parquet and codebooks
#'
#'
#'

make_target_endpoints = function(df_status){
  df_status%>% 
    mutate(path_dta = glue("raw-hcup/{dataset_id}.dta"),
           path_parquet = glue("raw-hcup/{dataset_id}.parquet"),
           path_codebook = glue("raw-hcup/{dataset_id}_codebook.csv")) %>% 
    select(dataset_id, contains("path")) %>% 
    return()
}