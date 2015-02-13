# Mass to radius data frame. Filler for a more interesting data wrangling statement?
radial.df %>% select(NAME, MASS, RADIUS) %>% mutate(MASS_BIN = ntile(cume_dist(MASS),25)) %>% group_by(MASS_BIN) %>% summarise(AVG_MASS=mean(MASS), AVG_RADIUS=mean(RADIUS), NUM_PLANETS=n()) %>% tbl_df()


#df1 <- data.frame(c("a", "b", "b", "d", "a", "d", "c", "e"), c(1:8), c(2:9))
#names(df1) <- c("col1","col2","col3")
#df1
#df1 %>% group_by(col1) %>% summarise(mean(col2), mean(col3)) %>% tbl_df()
