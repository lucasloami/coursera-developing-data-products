# Final Course Project
## Developing Data Products

This project aims to analize the Ozone incidence distribution among the months and days of 1973. This project uses airquality dataset present in R by default. 

It contains two main "pages". The first one shows the distribution of Ozone gas among the months. This page contains a `dateInputRange` filter that allow user to set different time frames to analyze the data. The second page still contains Ozone gas information, however we are in a deeper level right now. We are dealing with days in a month. By default, May is selected and all of its data is shown. 

All the filters impact automatically in the charts. 

## Dataset

For this project, we are using `airquality`, a dataset that contains daily air quality measurements in New York, May to September 1973. This dataset contains 154 observations on 6 variables.

*   Ozone   numeric Ozone (ppb)
*   Solar.R numeric Solar R (lang)
*   Wind    numeric Wind (mph)
*   Temp    numeric Temperature (degrees F)
*   Month   numeric Month (1--12)
*   Day numeric Day of month (1--31)


## How to run the project
First, use git clone to copy the project to your computer:
````{r}
git clone [THIS_REPOSITORY_URL]
````

Then, open the project folder inside RStudio. Specially, open the files `server.r` and/or `ui.R`. Click in RStudio button `runApp`.

## Slides
You can find them in `/project/index.html`. You can run them using Knitr as well. Clone the project, `cd` into the project folder and type the following in your R console:

````{r}
library(knitr)
browseUrl("index.html")
````