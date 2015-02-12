# Mass to radius data frame. Filler for a more interesting data wrangling statement?
radial.df %>% select(NAME, MASS, RADIUS) %>% mutate(MASS_BIN = ntile(cume_dist(MASS),20)) %>% group_by(MASS_BIN) %>% arrange(MASS_BIN, MASS, NAME) %>% summarise(AVG_MASS=mean(MASS), AVG_RADIUS=mean(RADIUS)) %>% tbl_df() 
