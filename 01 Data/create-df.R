df <- data.frame(eval(parse(text=substring(getURL(URLencode('http://129.152.144.84:5001/rest/native/?query="select * from exoplanets"'), httpheader=c(DB='jdbc:oracle:thin:@129.152.144.84:1521:ORCL', USER='C##cs329e_jac5699', PASS='orcl_jac5699', MODE='native_mode', MODEL='model', returnFor = 'R', returnDimensions = 'False'), verbose = TRUE), 1, 2^31-1))))

#Subsetting data to exclude nulls, converted strings to numerics.
df <- filter(df, RADIUS != 'null' & MASS != 'null' & ORB_PERIOD != 'null' & ECCENTRICITY != 'null') %>% transform(ECCENTRICITY = as.numeric(as.character(ECCENTRICITY))) %>% transform(MASS = as.numeric(as.character(MASS))) %>% transform(RADIUS = as.numeric(as.character(RADIUS))) %>% transform(ORB_PERIOD = as.numeric(as.character(ORB_PERIOD)))

#Pass df to variable for radial analysis
radial.df <- df

# Show data frame preview
tbl_df(radial.df)
