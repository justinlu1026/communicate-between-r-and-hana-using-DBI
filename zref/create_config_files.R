driver_class <- "com.sap.db.jdbc.Driver"
class_path <- "C:/Program Files/sap/hdbclient/ngdbc.jar"
driver <- JDBC(driverClass = driver_class, classPath = class_path)

## connect to server
server_name <- "BHP" 
conn <- dbConnect(driver, server_list[[server_name]], schema_list[[server_name]], password_list[[server_name]])

library(RJDBC)
library(jsonlite)
library(tidyverse)


db_config_constants <- list(
  DRIVER_CLASS = "com.sap.db.jdbc.Driver",
  CLASS_PATH = list(
    "Windows" =  "C:/Program Files/sap/hdbclient/ngdbc.jar",
    "macOS" = "randomwords"
  ),
  SERVER_URL = list(
    "BHP" =  "jdbc:sap://syd1sap71:30015/?autocommit=false",
    "HEP" = "jdbc:sap://syd1sap78:30041/?autocommit=false"
  )
)

write_json(db_config_constants, "./db_config_constants.json")


db_config_user <- list(
  "BHP" = list(
    user_id = "A00068488",
    login_password = "8L28gbBy"
  ),
  "HEP" = list(
    user_id = "A00068488",
    login_password = "Winc12345"
  )
)

write_json(db_config_user, "./db_config_user.json")
