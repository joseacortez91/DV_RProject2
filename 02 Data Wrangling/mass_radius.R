# Mass to radius data frame. Filler for a more interesting data wrangling statement?
massAndRadius.df <- radial.df %>% select(NAME, MASS, RADIUS) %>% mutate(MASS_PERCENTILE = paste(10*ntile(cume_dist(MASS),10)-10,10*ntile(cume_dist(MASS),10),sep="-")) %>% group_by(MASS_PERCENTILE) %>% summarise(AVG_MASS=mean(MASS), AVG_RADIUS=mean(RADIUS), NUM_PLANETS=n()) %>% tbl_df()
