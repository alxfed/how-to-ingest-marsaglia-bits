# read config file

require(ini)

CONFIG_FILE_NAME <- 'data_config.ini'

config <- read.ini(CONFIG_FILE_NAME)

# config is a list of lists
