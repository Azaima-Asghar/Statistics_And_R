'mporting the installed jsonlite library'
library(jsonlite)

'Reading the csv file'
demo_table1 <- read.csv(file = "demo.csv", check.names = F, stringsAsFactors = F, header = T)

'Reading the json file'
demo_table2 <- fromJSON(txt = 'demo.json')

'filter our used car data demo_table2 so that we only have rows where the vehicle
price is greater than $10,000'

fitler_table <- demo_table2[demo_table2$price > 10000,]
'Use subset to filter'

filter_table2 <- subset(demo_table2, price > 10000 & drive == "4wd" & "clean" %in% title_status)
'mutate'

demo_table <- demo_table %>% mutate(Mileage_per_Year=Total_Miles/(2020-Year),IsActive=TRUE)
'group_by'

summarize_demo <- demo_table2 %>% group_by(condition) %>% summarize(Mean_Mileage = mean(odometer))
summarize_demo <- demo_table2 %>% group_by(condition) %>% summarize(Mean_Mileage = mean(odometer), Maximum_Price=max(price),Num_Vehicles=n())
'reshaping data'

demo_table3 <- read.csv('demo2.csv', check.names = F, stringsAsFactors = F)
'use gather to change data to from wide to long'

long_table <- gather(demo_table3, key="Metric", value="Score", buying_price:safety_rating)
'use spread to change data from long to wide'

wide_table <- long_table %>% spread(key='Metric', value="Score")
'check if both demo_table3 is equal to wide_table'
all.equal(demo_table3, wide_table)

'ggplot2'

'Heatmaps'
mpg_summary <- mpg %>% group_by(class, year) %>% summarize(Mean_Hwy=mean(hwy))
plt <- ggplot(mpg_summary, aes(x=class,y=factor(year), fill=Mean_Hwy)) + geom_tile()+labs(x="Vehicle Class",y="Vehicle 
Year",fill="Mean Highway (MPG)")




