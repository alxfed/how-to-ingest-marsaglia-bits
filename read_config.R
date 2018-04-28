# read config file

require(ConfigParser)

# Constant - the file name
CONFIG_FILE_NAME <- 'data_config.ini'    

# Creat a an instance of the object of ConfigParser class. 

config <- ConfigParser$new(init = NULL, optionxform = tolower)  

# Read the file, its content will populate the object
config$read(CONFIG_FILE_NAME, 
            encoding = getOption("encoding")
            )

# Now everything is accessible (as strings)
s1 <- config$get(option = "x", 
           fallback = NA, 
           section = "data_array",
           interpolate = FALSE
           )

print(as.integer(s1))
# config is a list of lists
