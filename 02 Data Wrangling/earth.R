# Comparison between exoplanets and Earth 
earth.df <- radial.df %>% filter(RADIUS <= 0.096 | RADIUS >= 1) %>% select(NAME, MASS, RADIUS, ECCENTRICITY) %>% tbl_df()
tbl_df(earth.df)
