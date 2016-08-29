---
title       : Developing Data Products
subtitle    : Final Project
author      : Lucas Lo Ami
job         : Innovation Analyst
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

## Introduction

This presentation is part of the Course Project for the Coursera Developing Data Products class. The peer assessed assignment has two parts. First, we need to create a Shiny application and deploy it on Rstudio's servers. Second, we should use Slidify or Rstudio Presenter to prepare a reproducible pitch presentation about the application. This presentation adresses the second part of the course project.

The app developed for the first part of the assignment is avalilable at: [shiny app](https://lucasloami.shinyapps.io/course_project/

Source code for ui.R and server.R files are available on the [GitHub](https://github.com/lucasloami/coursera-developing-data-products)

--- .class #id 

## Analyze Ozone emission in 1973

This project aims to analize the Ozone incidence distribution among the months and days of 1973. This project uses airquality dataset present in R by default.

It contains two main "pages". The first one shows the distribution of Ozone gas among the months. This page contains a dateInputRange filter that allow user to set different time frames to analyze the data. The second page still contains Ozone gas information, however we are in a deeper level right now. We are dealing with days in a month. By default, May is selected and all of its data is shown. There is also a dayRange component that allow us to select the interval of days in which we want to analyze Ozone data.

All the filters impact automatically in the charts.

--- .class #id

## Dataset

For this project, we are using `airquality`, a dataset that contains daily air quality measurements in New York, May to September 1973. This dataset contains 154 observations on 6 variables.

*	Ozone	numeric	Ozone (ppb)
*	Solar.R	numeric	Solar R (lang)
*	Wind	numeric	Wind (mph)
*	Temp	numeric	Temperature (degrees F)
*	Month	numeric	Month (1--12)
*	Day	numeric	Day of month (1--31)


--- .class #id

## Get to know deeper the dataset

We can look to some carachteristics of the data:


```r
head(airquality)
```

```
##   Ozone Solar.R Wind Temp Month Day
## 1    41     190  7.4   67     5   1
## 2    36     118  8.0   72     5   2
## 3    12     149 12.6   74     5   3
## 4    18     313 11.5   62     5   4
## 5    NA      NA 14.3   56     5   5
## 6    28      NA 14.9   66     5   6
```

--- .class #id

## Get to know deeper the dataset

The app developed for the first part of the assignment is avalilable at: [shiny app](https://lucasloami.shinyapps.io/course_project/

Source code for ui.R and server.R files are available on the [GitHub](https://github.com/lucasloami/coursera-developing-data-products)

