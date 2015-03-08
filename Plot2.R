Step 1: Check the presence of the file for loading data - Please refer to the load_data.R file in the repo for more details!
if (!"load_data.R" %in% list.files()) {
        setwd("~/ExData_Plotting1")
} 
## Step2: Access the data
source("load_data.R")
### Step 3: Creation of the second plot: Global Active Power as a function of DateTime
png(filename = "plot2.png",width = 480, height = 480,)
plot(DateTime, Global_active_power,type = "l", xlab = "",ylab = "Global Active Power (kilowatts)")
#### Step 4: Do not forget to exit the graphic device
dev.off()
