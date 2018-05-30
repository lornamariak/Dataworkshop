# Airbnb data from kenya put through tidy verse
#import data set from url: "http://tomslee.net/airbnb-data-collection-get-the-data"
#choose kenya, download the zipped file and import the july csv using readr
#view data
View(KenyaAirbnb)
library(tidyverse)

#start by summarizing the dataset using summary ()

summary(KenyaAirbnb)

#drop na
KenyaAirbnb %>% 
            drop_na() %>% 
                      summary()
  
#wrangle data

#filter verb only returns where observations match filter parameter
KenyaAirbnb %>% 
              filter(neighborhood == 'Nairobi')

#arrange verb orders data by parameter passed

KenyaAirbnb %>% 
            arrange(room_type)
#if arrange parameter is numeric  you can use functions like desc()
KenyaAirbnb %>% 
            arrange(desc(reviews))

# mutate used to create a new column from two existing columns
KenyaAirbnb %>% 
            mutate(overall_satisfaction = if (overall_satisfaction >= 4 ) 
              { 'Excellent'}
            else if (overall_satisfaction >= 3)
              {'good'}
            else if(overall_satisfaction >= 2)
              {'nice'}
            else if (overall_satisfaction >= 1)
              {'fair'}
            else if (overall_satisfaction < 1)
              {'poor'}
            )

