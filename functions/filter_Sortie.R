filter_Sortie <- function(df, qtr, yr){
  if(qtr != "All"){
    df <- df %>% filter(quarter == qtr)
  }
  #filter to selected year
  if(yr != "All"){
    yr <- as.numeric(yr)
    df <- df %>% filter(year == yr)
  }
  if(nrow(df) == 0){
    return(NULL)
  } else {
    return(df)
  }
}