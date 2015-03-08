# Step 1: Check the presence of the file for loading data
if (!"load_data.R" %in% list.files()) {
        setwd("~/ExData_Plotting1")
} 
## Step2: Access the data
source("load_data.R")
### Step 3: Creation of the third plot: this time it refres to Energy sub metering (1,2,3) as a function of DateTime
png(filename = "plot3.png",width = 480, height = 480)  
plot(DateTime, Sub_metering_1, type = "l", col = "black",
     xlab = "", ylab = "Energy sub metering")
lines(DateTime, Sub_metering_2, col = "red")
lines(DateTime, Sub_metering_3, col = "blue")
legend("topright",col = c("black", "red", "blue"),
       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),lwd = 1)
#### Step 4: Do not forget to exit the graphic device
dev.off()
