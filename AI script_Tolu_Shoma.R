# Load necessary libraries
library(readxl)

# Read the Excel file
data <- read_excel("https://baylor.app.box.com/file/1409383648074")

# View the structure of the data to understand its format
str(data)

# Create a frequency table for the "area" variable
freq_table <- table(data$area)

# Convert the frequency table to a data frame for better visualization
freq_df <- as.data.frame(freq_table)

# Rename the columns for clarity
colnames(freq_df) <- c("Area", "Frequency")

# View the frequency distribution table
print(freq_df)


# Load necessary libraries
library(readxl)

# Read the Excel file
data <- read_excel("C:/Users/janna/Documents/ROI-89-A1.xlsx")

# View the structure of the data to understand its format
str(data)

# Create a frequency table for the "area" variable
freq_table <- table(data$area)

# Convert the frequency table to a data frame for better visualization
freq_df <- as.data.frame(freq_table)

# Rename the columns for clarity
colnames(freq_df) <- c("Area", "Frequency")

# View the frequency distribution table
print(freq_df)



# Load the readxl package for reading Excel files
library(readxl)

# Read the Excel file
data <- read_excel("C:/Users/janna/Documents/ROI-89-A1.xlsx")

# Assuming the data is in a column named "Values"
# Create a histogram
hist(data$Area, main = "Histogram of Area", xlab = "Area", ylab = "Frequency")



# Load the readxl package for reading Excel files
library(readxl)

# Read the Excel file
data <- read_excel("C:/Users/janna/Documents/ROI-89-A1.xlsx")

# Extract areas above 100
areas_above_100 <- subset(data, area > 100)

# View the extracted data
View(areas_above_100)


# Load the readxl package for reading Excel files
library(readxl)

# Read the Excel file
data <- read_excel("C:/Users/janna/Documents/ROI-89-A1.xlsx", sheet = "Sheet4")

# Extract areas above 100
Area_above_100 <- subset(data, Area > 100)
# View the first few rows of the data frame
head(data)



# Load necessary libraries
library(readxl)
library(dplyr)
library(ggplot2)

# Read the Excel file
data <- read_excel("C:/Users/janna/Documents/ROI-89-A1.xlsx", sheet = "Sheet3")

# Subset the data where Area is above 100
subset_data <- filter(data, Area > 100)

# Extract columns ITGA1 and PLK1
subset_data <- subset_data %>% select(Mean_2[Deconvolved[Tsf[SHOMA ROI Imaging:GFP 469,525]]], PLK1)

# Compute the correlation between ITGA1 and PLK1
correlation <- cor(subset_data$Mean_2[Deconvolved[Tsf[SHOMA ROI Imaging:GFP 469,525]]], subset_data$PLK1)

# Plot the correlation graph
ggplot(correlation, aes(x = ITGA1, y = PLK1)) +
  geom_point() +
  geom_smooth(method = "lm", se = FALSE) +
  labs(title = "Correlation Graph",
       x = "ITGA1",
       y = "PLK1",
       caption = paste("Correlation:", round(correlation, 2)))
# Check column names
print(colnames(correlation))

library(readxl)
library(dplyr)

# Read the Excel file
data <- read_excel("C:/Users/janna/Documents/ROI-89-A1.xlsx")

# Rename columns
data <- data %>%
  rename(ITGA1 = `Mean_2[Deconvolved[Tsf[SHOMA ROI Imaging:GFP 469,525]]]`,
         PLK1 = `Mean_2[Deconvolved[Tsf[SHOMA ROI Imaging:RFP 531,593]]]`)

# Check column names
print(colnames(subset_data))

# Read the Excel file
file_path <- "C:/Users/janna/Documents/ROI_A1.xlsx"
correlation <- read_excel(file_path)
View(correlation)

