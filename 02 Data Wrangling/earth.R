# Comparison between exoplanets and Earth 
earth.df <- earth.df %>% filter(RADIUS <= 0.096 & RADIUS >= 0.087 & MASS >= 0.00283 & MASS <= 0.00346) %>% select(NAME, MASS, RADIUS, ORB_PERIOD, ECCENTRICITY) %>% tbl_df()
tbl_df(earth.df)
