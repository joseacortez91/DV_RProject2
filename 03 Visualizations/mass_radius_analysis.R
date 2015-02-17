massAndRadius.df  %>% ggplot(aes(x=MASS_PERCENTILE, y=AVG_MASS, color=AVG_RADIUS))+geom_point(na.rm=TRUE) + scale_y_continuous(name="Average Mass (Jupiters)")
