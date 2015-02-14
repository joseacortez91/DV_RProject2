df <- data.frame(eval(parse(text=substring(getURL(URLencode('http://129.152.144.84:5001/rest/native/?query="select * from exoplanets"'), httpheader=c(DB='jdbc:oracle:thin:@129.152.144.84:1521:ORCL', USER='C##cs329e_jac5699', PASS='orcl_jac5699', MODE='native_mode', MODEL='model', returnFor = 'R', returnDimensions = 'False'), verbose = TRUE), 1, 2^31-1))))

#Subsetting data to incluce only those exoplanets with a radius
radial.df <- filter(df, RADIUS != 'null' & MASS != 'null' & ORB_PERIOD != 'null') %>%
  arrange(desc(ECCENTRICITY))

# Convert numeric strings to numerics (floating point exists but is hidden until used)
radial.df[radial.df=="null"] <- NA 
radial.df <- radial.df %>%
  transform(MASS = as.numeric(MASS)) %>%
  transform(ORB_PERIOD = as.numeric(ORB_PERIOD)) %>%
  transform(RADIUS = as.numeric(RADIUS)) %>%
  transform(ECCENTRICITY = as.numeric(ECCENTRICITY))

# Show data frame preview
tbl_df(radial.df)
