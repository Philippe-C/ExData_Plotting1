# STEP 1: Loading the large dataset (household_power_consumption.txt).
# Caution: you have to refer to the directory you have used to saved the data on your own computer!
filename <- "/Users/Philio/household_power_consumption.txt"
data <- read.table(filename,
                   header = TRUE,
                   sep = ";",
                   colClasses = c("character", "character", rep("numeric",7)),
                   na = "?")
dim(data) 
# CHECK SIZE FOR MEMORY: ROWS AND COLS ARE RESPECTIVELY 2075259 AND 9 !!!
attach(data)
## STEP 2: The Dataset will be limited to 2 specific dates
subset <- Date == "1/2/2007" | Date == "2/2/2007"
newData <- data[subset, ]
attach(newData)
x <- paste(Date, Time)
newData$DateTime <- strptime(x, "%d/%m/%Y %H:%M:%S")
rownames(newData) <- 1:nrow(newData)
dim(newData) # 2880 BY 10: much smaller dataset !!!
attach(newData)
### These are the data that will be used to built the different plots.
