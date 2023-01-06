#' Gets all current datsets iin elt folder

get_elt_status = function(){

  elt_files = list.files(path = "raw-hcup/", recursive = T)
  
  elt_status = tibble(raw = elt_files) %>% 
    rowwise() %>% 
    mutate(raw_split = str_split(raw,"\\.") ) %>% 
    mutate(dataset_id = raw_split[[1]],
           file_extension = raw_split[[2]]) %>% 
    select(-contains('raw')) %>% 
    mutate(value = T) %>% 
    ## handle codebooks
    mutate(file_extension = ifelse(str_detect(dataset_id, '_codebook'),
                                   'codebook',
                                   file_extension),
           dataset_id = str_remove(dataset_id, "_codebook")) %>% 
    pivot_wider(names_from = 'file_extension', values_from = value) %>% 
    arrange(dataset_id)
  
  if (!"parquet"%in%names(elt_status)){
    
    elt_template = tibble(dataset_id = character(),
                          asc = logical(),
                          Do = logical(),
                          dta = logical(),
                          parquet = logical())
    
    elt_status = elt_status %>% 
      left_join(elt_template)
  }
  return(elt_status)
}
  