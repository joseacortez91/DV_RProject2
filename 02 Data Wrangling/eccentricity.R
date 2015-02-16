eccen.df <- filter(df, RADIUS != 'null' & MASS != 'null' & ORB_PERIOD != 'null' & ECCENTRICITY != 'null') %>% mutate(STAR = sub(".$","",NAME, perl = TRUE)) %>% select(STAR, ECCENTRICITY, ORB_PERIOD, MASS) %>% group_by(STAR) %>% summarise(Mean_Eccentricty = mean(ECCENTRICITY), Mean_Orb_Period = mean(ORB_PERIOD), Mean_mass = mean(MASS), Planets = n()) %>% filter(Planets >1) %>% mutate(Mass_Cume_Dist = cume_dist(Mean_mass)) %>% mutate(Mass=ntile(Mass_Cume_Dist,4))

eccen2.df <- filter(df, RADIUS != 'null' & MASS != 'null' & ORB_PERIOD != 'null' & ECCENTRICITY != 'null') %>% mutate(STAR = sub(".$","",NAME, perl = TRUE)) %>% select(STAR, ECCENTRICITY, ORB_PERIOD, MASS) %>% group_by(STAR) %>% summarise(Mean_Eccentricty = mean(ECCENTRICITY), Mean_Orb_Period = mean(ORB_PERIOD), Mean_mass = mean(MASS), Planets = n()) %>% mutate(Mass_Cume_Dist = cume_dist(Mean_mass)) %>% mutate(Mass=ntile(Mass_Cume_Dist,4))

tbl_df(eccen2.df)
