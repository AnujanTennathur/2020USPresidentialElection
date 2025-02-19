#' The following code is the code that we used to clean our data prior to 
#' putting our data sets into SQL. We will discuss this code and the reason 
#' for it in more depth during our presentation. 

library(tidyverse)

# Data Cleaning for Unemployment and FIPS Datasets
#'  The following is the data cleaning that was necessary for us 
#'  to standardize the Unemployment dataset before putting into SQL and 
#'  running/analyzing it.  

unemployment = read_csv("unemployment.csv")

unemp1 = unemployment[, grepl("2020|FIPS|Area_name", names(unemployment))]

unemp1$Civilian_labor_force_2020 <- as.numeric(gsub(",", "", unemp1$Civilian_labor_force_2020))
unemp1$Employed_2020 <- as.numeric(gsub(",", "", unemp1$Employed_2020))
unemp1$Unemployed_2020 <- as.numeric(gsub(",", "", unemp1$Unemployed_2020))

unemp1[is.na(unemp1)] <- 0 # include in description

unemp2 <- unemp1[!grepl("PR", unemp1$Area_name), ]

unemp2 <- unemp2[!unemp2$Area_name %in% c("United States", "Puerto Rico"), ]
# discuss in presentation

unemp2$FIPS_Code <- sub("^0", "", unemp2$FIPS_Code)

FIPS = read_csv("state_and_county_fips_master.csv")

FIPS_original = read_csv("state_and_county_fips_master.csv")

FIPS <- FIPS[!FIPS$name %in% c("UNITED STATES", "Puerto Rico"), ]

# removing certain FIPS codes, discuss in presentation
unemp2 <- unemp2[!unemp2$FIPS_Code %in% c(2201, 2232, 2280), ] # discuss in presentation

FIPS <- FIPS[!FIPS$fips %in% c(15005, 51515), ] # discuss in presentation

# renaming county names to match current information
FIPS$name[FIPS$fips == 46113] = "Oglala Lakota County"
FIPS$fips[FIPS$fips == 46113] = 46102

FIPS$name[FIPS$fips == 2270] = "Kusilvak Census Area"
FIPS$fips[FIPS$fips == 2270] = 2158

setdiff(FIPS$fips, unemp2$FIPS_Code) 
# check if there are any codes that are different, result should be numeric(0)

# exporting data in order to put into SQL
write.csv(unemp2, "unemployment_data - Sheet1.csv", row.names = FALSE)
write.csv(FIPS, "fips - Sheet1.csv", row.names = FALSE)

# 
# Data Cleaning for Election Data set 
#'  The following is the data cleaning that was necessary for us 
#'  to standardize the Election dataset before putting into SQL and 
#'  running/analyzing it.   

election = read_csv("election.csv")

elect1 <- election[, grepl("2020|X|county|state|Population.with.less.than.9th.grade.education|Population.with.9th.to.12th.grade.education..no.diploma|High.School.graduate.and.equivalent|Some.College.No.Degree|Associates.Degree|Bachelors.Degree|Graduate.or.professional.degree|Median.income..dollars.|Mean.income..dollars.", names(election))]

elect2 = data.frame(lapply(elect1, function(x) {
  if (is.character(x)) {
    gsub("%", "", x)  
  } else {
    x  
  }
}))

colnames(elect2) <- gsub("X", "", colnames(elect2)) 
colnames(elect2) <- gsub("\\.", "_", colnames(elect2)) 

elect2[is.na(elect2)] <- 0 # include in description



write.csv(elect2, "election_data - Sheet1.csv", row.names = FALSE)






