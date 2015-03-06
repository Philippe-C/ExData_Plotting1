# Step 1: Check the presence of the file for loading data - Please refer to the load_data.R file in the repo for more details!
if (!"load_data.R" %in% list.files()) {
        setwd("~/ExData_Plotting1")
} 
## Step2: Access the data 
source("load_data.R")
### Step 3: Creation of the first plot: an histogram
png(filename = "plot1.png",width = 480, height = 480)
hist(Global_active_power,col = "red", main = "Global Active Power", 
     xlab = "Global Active Power (kilowatts)", breaks = 12, ylim = c(0, 1200))
#### Step 4: Do not forget to exit the graphic device
dev.off()
