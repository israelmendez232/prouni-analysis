library("tidyverse")

# Reading the main files:
tibble_prouni <-
  list.files(
    path = './data/', 
    pattern = '*.csv',
    full.names = T
  ) %>%
    map_df(~read_delim(
        ., 
        delim = ";", 
        col_types = NULL
      ))

head(tibble_prouni)
  
