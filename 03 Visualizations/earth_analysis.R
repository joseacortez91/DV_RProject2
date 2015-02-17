# This plots the exoplanets which have a mass and radius to within 10% of Earth's.
earth.df  %>% ggplot(aes(x=RADIUS, y=ORB_PERIOD, size=MASS)) + geom_point()
