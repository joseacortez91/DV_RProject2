df2 <- data.frame(eval(parse(text=substring(getURL(URLencode('http://129.152.144.84:5001/rest/native/?query="select * from exoplanets"'), httpheader=c(DB='jdbc:oracle:thin:@129.152.144.84:1521:ORCL', USER='C##cs329e_jac5699', PASS='orcl_jac5699', MODE='native_mode', MODEL='model', returnFor = 'R', returnDimensions = 'False'), verbose = TRUE), 1, 2^31-1))))

#Subsetting data to exclude nulls, converted strings to numerics.
df2 <- filter(df2, RADIUS != 'null' & MASS != 'null') %>% transform(ECCENTRICITY = as.numeric(as.character(ECCENTRICITY))) %>% transform(MASS = as.numeric(as.character(MASS))) %>% transform(RADIUS = as.numeric(as.character(RADIUS))) %>% transform(ORB_PERIOD = as.numeric(as.character(ORB_PERIOD)))

#Pass df to variable for radial analysis
radial2.df <- df2

# Show data frame preview
tbl_df(df2)
