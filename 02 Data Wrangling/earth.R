# Comparison between exoplanets and Earth 
earth.df <- radial2.df %>% filter(RADIUS <= 0.096 & RADIUS >= 0.087) %>% select(NAME, MASS, RADIUS, ORB_PERIOD, ECCENTRICITY) %>% tbl_df()
tbl_df(earth.df)
