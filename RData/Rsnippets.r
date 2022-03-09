<!--
Next, a subset of people 25 or younger who smoked in the last 12 months is
created using the `subset` function.
Note that `SmokingStatus == 1` is used to see if subject has smoked in the past 12
months.

Notice, the missing values have been removed (since `NA`s are not less than or
equal to numbers).

```{R}
# the subset command below will not include a row that evalutes to NA for the
# specified subset.  For example:
(NA == 1)
# age and smoking subset
nesarc.sub <- subset(nesarc.sub
                    , subset = (Age <= 25)     # people 25 or younger
                             & (SmokingStatus == 1) # smoked in the past 12 months
                    )
dim(nesarc.sub)
summary(nesarc.sub)
```
-->


### Coding missing values

Recall that many variables are coded in the codebook.

From the codebook, these are the variables and the codes for the missing or `unknown` values.

```
CHECK321 (SmokingStatus)
     22 9. Unknown
S3AQ3B1 (SmokingFreq)
    102 9. Unknown
S3AQ3C1 (DailyCigsSmoked)
    262 99. Unknown
```

Replace the coded missing values with `NA`,
  then remove the remaining records with missing values.
Not all of these variables need this operation, since the previous subset commands
  removed missing values by chance.
However, I'm going to run each as an extra precaution.
Afterall, later, if we were to make different previous data decisions,
  it's possible we could end up with missing values at this point that
  are incorrectly coded without this step!

```{R}
# Note for this first variable, there are still three factor levels
str(nesarc.sub$SmokingStatus)
#   even though only the first category has observations.
summary(nesarc.sub$SmokingStatus)

# First, replace any values that are "9" with NA
nesarc.sub$SmokingStatus[nesarc.sub$SmokingStatus == 9] <- NA
summary(nesarc.sub$SmokingStatus)
# Then drop unused factor categories.
nesarc.sub$SmokingStatus <- factor(nesarc.sub$SmokingStatus)[, drop = TRUE]
summary(nesarc.sub$SmokingStatus)

# Repeat this for the other two variables, using summary() to see effect:
summary(nesarc.sub$SmokingFreq)
nesarc.sub$SmokingFreq[nesarc.sub$SmokingFreq == 9] <- NA
summary(nesarc.sub$SmokingFreq)
nesarc.sub$SmokingFreq <- factor(nesarc.sub$SmokingFreq)[, drop = TRUE]
summary(nesarc.sub$SmokingFreq)

# numeric variable, no levels to drop
nesarc.sub$DailyCigsSmoked[nesarc.sub$DailyCigsSmoked == 99] <- NA

summary(nesarc.sub)
```

Finally, use `na.omit()` to remove any records with missing values.
```{R}
dim(nesarc.sub)
# remove rows with missing values
nesarc.sub <- na.omit(nesarc.sub)
dim(nesarc.sub)
summary(nesarc.sub)
```

Now we have a dataset with no missing values.

## Creating new variables

Additional variables that we created from the original variables are listed in
  this ammendment to the original codebook.

```
CREATED VARIABLES

DaySmoke
  estimated number of days per month a subject smokes
  Continuous (due to way estimated), assumes 30 days per month using SmokingFreq)
        1-30.

TotalCigsSmoked
  estimated number of cigarettes per month a subject smokes (DaysSmoke * DailyCigsSmoked)
  Continuous
        0-large.

CigsSmokedFac
  quartiles of TotalCigsSmoked
  Ordinal
        ranges for each of the four quarters
```

`DaysSmoke` estimates the days per month a subject smokes
  by converting `SmokingFreq` (a factor with 6 levels) to a numeric variable using `as.numeric()`
  and multiplying by the midpoint of the range of `SmokingFreq`.

```{R}
nesarc.sub$DaysSmoke <- as.numeric(nesarc.sub$SmokingFreq)
nesarc.sub$DaysSmoke[nesarc.sub$DaysSmoke == 1] <- 30    # 1. Every day
nesarc.sub$DaysSmoke[nesarc.sub$DaysSmoke == 2] <- 4*5.5 # 2. 5 to 6 Day(s) a week
nesarc.sub$DaysSmoke[nesarc.sub$DaysSmoke == 3] <- 4*3.5 # 3. 3 to 4 Day(s) a week
nesarc.sub$DaysSmoke[nesarc.sub$DaysSmoke == 4] <- 4*1.5 # 4. 1 to 2 Day(s) a week
nesarc.sub$DaysSmoke[nesarc.sub$DaysSmoke == 5] <- 2.5   # 5. 2 to 3 Day(s) a month
nesarc.sub$DaysSmoke[nesarc.sub$DaysSmoke == 6] <- 1     # 6. Once a month or less
summary(nesarc.sub$DaysSmoke)
```

The variable `TotalCigsSmoked` estimates the monthly number of cigarettes
  a subject smokes per month by multiplying `DaysSmoke` times `DailyCigsSmoked`
  (the usual quantity smoked per day).

```{R}
nesarc.sub$TotalCigsSmoked <- nesarc.sub$DaysSmoke * nesarc.sub$DailyCigsSmoked
```

The numeric variable `TotalCigsSmoked` is converted into a factor
  with four roughly equivalent numbers (quartiles) stored in each level of the
  factor `CigsSmokedFac` using the `cut` function.

```{R}
quantile(nesarc.sub$TotalCigsSmoked, na.rm = TRUE)
nesarc.sub$CigsSmokedFac <- cut(nesarc.sub$TotalCigsSmoked
                              , breaks = quantile(nesarc.sub$TotalCigsSmoked, na.rm = TRUE)
                              , include.lowest = TRUE)

summary(nesarc.sub$CigsSmokedFac)
```

Look at the first 10 observations in the dataset, with special attention to the
new variables.

```{R}
head(nesarc.sub, 10)
```


### Labeling Variables

```{R}
# Informative labels are given to the variables.
library(Hmisc) # for label()
label(nesarc.sub$TobaccoDependence) <- "Tobacco Dependence past 12 Months"
label(nesarc.sub$SmokingStatus)     <- "Smoked Cigarettes in the Past 12 Months"
label(nesarc.sub$SmokingFreq)       <- "Usual Smoking Frequency"
label(nesarc.sub$DailyCigsSmoked)   <- "Usual Smoking Quantity"
```

Look at summary of dataset to see the state of the labelling before we make changes.

```{R}
summary(nesarc.sub)
```

Informative labels are given to the factor levels.
The order of the levels is also rearranged for the variables
  `SmokingFreq`, `TobaccoDependence`, and `Sex`.

```{R}
nesarc.sub$Depression <- factor(nesarc.sub$Depression
                              , labels = c("No Depression"
                                         , "Yes Depression"
                                ))

# first label the existing levels
nesarc.sub$Sex <- factor(nesarc.sub$Sex
                       , labels = c("Male"
                                  , "Female"
                                   )
                        )
# check ordering with a frequency table
table(nesarc.sub$Sex)
# then reorder the levels
nesarc.sub$Sex <- factor(nesarc.sub$Sex
                       , levels = c("Female"
                                  , "Male"
                                   )
                        )
# check ordering with a frequency table
table(nesarc.sub$Sex)

nesarc.sub$SmokingFreq <- factor(nesarc.sub$SmokingFreq
                               , labels = c("Every Day"
                                          , "5 to 6 Days/week"
                                          , "3 to 4 Days/week"
                                          , "1 to 2 Days/week"
                                          , "2 to 3 Days/month"
                                          , "Once a month or less"
                                          )
                                )
nesarc.sub$SmokingFreq <- factor(nesarc.sub$SmokingFreq
                               , levels = c("Once a month or less"
                                          , "2 to 3 Days/month"
                                          , "1 to 2 Days/week"
                                          , "3 to 4 Days/week"
                                          , "5 to 6 Days/week"
                                          , "Every Day"
                                          )
                                )

nesarc.sub$TobaccoDependence <- factor(nesarc.sub$TobaccoDependence
                                     , labels = c("No Nicotine Dependence"
                                                , "Nicotine Dependence"
                                                )
                                      )
nesarc.sub$TobaccoDependence <- factor(nesarc.sub$TobaccoDependence
                                     , levels = c("Nicotine Dependence"
                                                , "No Nicotine Dependence"
                                                 )
                                      )

nesarc.sub$Ethnicity <- factor(nesarc.sub$Ethnicity
                             , labels = c("Caucasian"
                                        , "African American"
                                        , "Native American"
                                        , "Asian"
                                        , "Hispanic"
                                         )
                              )

summary(nesarc.sub)
```

## Thursday --------

## Tables for categorical variables

Basic tables can be created using the functions `table` or `xtabs`.
Frequency tables are created for the variables
  `TobaccoDependence`, `CigsSmokedFac`, and `SmokingFreq`.
When only looking at one variable, `table` is the same as `xtabs`, but
  `xtabs` will make looking at two-way, three-way, and higher tables possible.

```{R}
table(nesarc.sub$TobaccoDependence)
T1 <- xtabs( ~ TobaccoDependence, data = nesarc.sub)
T1
T2 <- xtabs( ~ CigsSmokedFac, data = nesarc.sub)
T2
T3 <- xtabs( ~ SmokingFreq, data = nesarc.sub)
T3
```

(Look at the .Rmd code to see that these numbers in the next paragraph are
  calculated directly from the numbers summarized in the table!)

In the data frame `nesarc.sub`, there are
  `r T1[1]` nicotine dependent subjects and
  `r T1[2]` subjects that are not nicotine dependent.
A small number of smokers
  (`r T2[4]`) smoke over 600 cigarettes per month.
Most of the subjects in `nesarc.sub` are daily smokers
  (`r T3[6]`) with the remainder distributed uniformly across the
  first five levels of `SmokingFreq`.

## Graphing frequency tables

The barplots are all created with the package `ggplot2`.  The barplots start with the defaults for the `geom_bar` and add more detail to the plot with each graph.

```{R}
library(ggplot2)
p1 <- ggplot(data = nesarc.sub, aes(x = TobaccoDependence))
p1 <- p1 + geom_bar()
p1

p2 <- ggplot(data = nesarc.sub, aes(x = CigsSmokedFac))
p2 <- p2 + geom_bar()
p2

p3 <- ggplot(data = na.omit(nesarc.sub), aes(SmokingFreq))
p3 <- p3 + geom_bar()
p3 <- p3 + labs(x = "", y = "Total Number", title = "Smoking Frequency for Young Adults")
p3 <- p3 + theme_bw()
p3 <- p3 + theme(axis.text.x  = element_text(angle = 90, vjust = 0))
p3
```

## Graphing numeric variables

One popular way to graph a continuous variable is to use a histogram.
`R` has the base function `hist` which can be used for this purpose.
We will also use the package `ggplot2` to create histograms.
We start with a basic histogram of the variable `TotalCigsSmoked`.

```{R}
hist(nesarc.sub$TotalCigsSmoked)
```

Experiment with the code in the previous code chunk to change the color, the
title, and if needed the labels on the $x$- and $y$-axes.

```{R}
p <- ggplot(data = nesarc.sub, aes(x = TotalCigsSmoked))
p <- p + geom_histogram(binwidth = 200)
p <- p + geom_rug()
p <- p + labs(x = "Estimated Cigarettes Smoked per Month")
p <- p + theme_bw()
p
```

### Creating Density Plots

```{R}
p <- ggplot(data = nesarc.sub, aes(x = TotalCigsSmoked))
p <- p + geom_histogram(aes(y=..density..), binwidth = 200)
p <- p + geom_rug()
p <- p + geom_density(alpha=0.1, fill="white", adjust = 1.5)
p <- p + labs(x = "Estimated Cigarettes Smoked per Month")
p <- p + theme_bw()
p
```

### Shape, center, and spread

```{R}
summary(nesarc.sub$TotalCigsSmoked)
fivenum(nesarc.sub$TotalCigsSmoked)
median(nesarc.sub$TotalCigsSmoked, na.rm = TRUE)
IQR(nesarc.sub$TotalCigsSmoked, na.rm = TRUE)
```

The `shape` of the distribution for the estimated cigarettes smoked per month
  is skewed to the right.
The `center` (median) of the distribution is
  `r median(nesarc.sub$TotalCigsSmoked, na.rm = TRUE)`
  and the `spread` (interquartile range) for the distribution is
  `r IQR(nesarc.sub$TotalCigsSmoked, na.rm = TRUE)`.






----------------------------------------

# HW04: Bivariate summaries and data cleaning

## Tuesday --------

## Bivariate graphs

### Scatter plot (for regression): x = numerical, y = numerical

Research question:
With my questions, I don't have a meaningful question to ask that will relate
  two numeric variable.

An exploratory question whether there is a relationship between a person's age (`Age`)
  and total number of cigaretts smoked (`TotalCigsSmoked`).
Because age is an integer varible, I jitter the points,
  and I reduce the opacity (increase the transparancy) with `alpha = 1/4`
  to see the density of points better (1/4 means that it takes 4 overlayed points to be fully opaque).

__Interpretation:__
I added a linear regression smoother to see whether there was any linear trend with age.
The horizontal line suggests that there isn't a (linear) relationship here.

```{R}
library(ggplot2)
p <- ggplot(nesarc.sub, aes(x = Age, y = TotalCigsSmoked))
p <- p + geom_jitter(position = position_jitter(width = 0.1), alpha = 1/4)
p <- p + stat_smooth(method = lm)
p <- p + labs(title = "Age does not predict Total Cigarettes Smoked")
print(p)
```

### Box plots (for ANOVA): x = categorical, y = numerical

Research question:
1. Is there a relationship between depression (`Depression`) and total number of cigarettes smoked (`TotalCigsSmoked`)?

The $x$ variable should be a factor variable, and $y$ should be numeric.

__Interpretation:__
The boxplots indicate that the five number summary is about the same for both depression groups.
Also, the means are about the same, though slightly higher for the people with depression.

```{R}
library(ggplot2)
p <- ggplot(nesarc.sub, aes(x = Depression, y = TotalCigsSmoked))
p <- p + geom_boxplot(width = 0.5, alpha = 0.5)
p <- p + geom_jitter(position = position_jitter(width = 0.1), alpha = 1/4)
# diamond at mean for each group
p <- p + stat_summary(fun.y = mean, geom = "point", shape = 18, size = 6,
                      colour = "red", alpha = 0.8)
p <- p + labs(title = "Depression does not predict Total Cigarettes Smoked")
print(p)
```

### Mosaic plot or bivariate bar plots (for contingency tables): x = categorical, y = categorical

Research question:
Is there a relationship between depression status (`Depression`) and nicotine dependence (`TobaccoDependence`)?

This strategy uses the base graphics by plotting the tables directly as bar plots.
The next set of plots using `ggplot()` may be preferred.
```{R}
T1 <- xtabs(~ TobaccoDependence + Depression, data = nesarc.sub)
T1
barplot(T1)
T2 <- prop.table(T1, 2)
T2
barplot(T2)
```

The last graph needs a legend as well as a title.  While it is possible to
construct a legend and title for the last graph, it is much better to use an
approach that will generate the legend automatically.

__Interpretation:__
If a person has depression they are more likely to have nicotine dependence
  than if they do not have depression.

```{R}
library(ggplot2)
p <- ggplot(data = nesarc.sub, aes(x = Depression, fill = TobaccoDependence))
p <- p + geom_bar(position = "fill")
p <- p + theme_bw()
p <- p + labs(title = "Fraction of young adult smokers with and without\n nicotine dependence by depression status")
# the legend title can be modified, if desired (try this line)
# p <- p + scale_fill_discrete(name="Tobacco Addiction\nStatus")
print(p)
```

Does the a relationship between depression status (`Depression`) and nicotine dependence (`TobaccoDependence`)
  vary by sex?

__Interpretation:__
It appears that nicotine dependence is slightly higher for women with depression than for men with depression.

```{R}
library(ggplot2)
p <- ggplot(data = nesarc.sub, aes(x = Depression, fill = TobaccoDependence))
p <- p + geom_bar(position = "fill")
p <- p + theme_bw()
p <- p + labs(title = "Fraction of young adult smokers with and without\n nicotine dependence by depression status")

# added a row facets by Sex
p <- p + facet_grid(Sex ~ .)
# tilted the x-axis labels
p <- p + theme(axis.text.x  = element_text(angle = 90, vjust = 0.5))

p <- p + labs(title = "Fraction of young adult smokers with and without\n nicotine dependence by smoking frequency")
# the legend title can be modified, if desired (try this line)
p <- p + scale_fill_discrete(name="Tobacco Addiction\nStatus")
print(p)
```

```{R}
# ggplot(data = na.omit(nesarc.sub), aes(x = CigsSmokedFac, fill = TobaccoDependence)) +
#   geom_bar(position = "fill") +
#   theme_bw() + facet_grid(Sex ~ Depression) +
#   theme(axis.text.x  = element_text(angle = 85, vjust = 0.5)) +
#   labs(x = "Estimated Number of Cigarettes Smoked per Month", y = "", title = "Fraction of young adult smokers with and without\n nicotine dependence by smoking quantity") +
#   scale_fill_discrete(name="Tobacco Addiction\nStatus")
```


Research question:
Is there a relationship between smoking frequency (`SmokingFreq`) and nicotine dependence (`TobaccoDependence`)?

Also compare by sex.

```{R}
library(ggplot2)
p <- ggplot(data = nesarc.sub, aes(x = SmokingFreq, fill = TobaccoDependence))
p <- p + geom_bar(position = "fill")
p <- p + theme_bw()
# tilt axis labels
p <- p + theme(axis.text.x = element_text(angle = 45, vjust = 0.5))
p <- p + labs(x = "Smoking Frequency", y = "Percent")
print(p)

# also compare by sex
p <- p + facet_grid(Sex ~ .)
print(p)
```

#### Using Mosaic Plots

__Interpretation:__
If a person has depression they are more likely to have nicotine dependence
  than if they do not have depression.

```{R}
library(vcd)
mosaic(~TobaccoDependence + Depression, data = nesarc.sub)
mosaic(~TobaccoDependence + Depression, data = nesarc.sub, shade = TRUE)
mosaic(~TobaccoDependence + Depression + Sex, data = nesarc.sub, shade = TRUE)
```

It's easy to look at such a fine resolution that it's difficult to see what's happening
```{R, fig.width = 8, fig.height = 8}
mosaic(~TobaccoDependence + Depression + Sex + CigsSmokedFac, data = nesarc.sub, shade = TRUE)
```

### Logistic scatter plot (for logistic regression): x = numerical, y = categorical (binary)

Research question:
1. Frequency and quantity of smoking (`TotalCigsSmoked`) are markedly imperfect indices for
determining an individual's probability of exhibiting nicotine dependence (`TobaccoDependence`) (this
is true for other drugs as well).

```{R}
library(ggplot2)
p <- ggplot(nesarc.sub, aes(x = TotalCigsSmoked, y = TobaccoDependence))
p <- p + geom_jitter(position = position_jitter(height = 0.1), alpha = 1/4)
print(p)
```

To overlay a curve, we need to convert our response variable $y$ to be
  binary 0 or 1, where we let 1 indicate a "success" in the direction of interest.

__Interpretation:__
These two groups are quite balanced on the probability of tobacco dependence
  given the total number of cigarettes smoked,
  though they increase together slightly.

```{R}
# if "Nicotine Dependence", then code it as a 1, otherwise code as a 0
nesarc.sub$TobaccoDependence01 <- ifelse(nesarc.sub$TobaccoDependence == "Nicotine Dependence", 1, 0)

library(ggplot2)
p <- ggplot(nesarc.sub, aes(x = TotalCigsSmoked, y = TobaccoDependence01))
p <- p + geom_jitter(position = position_jitter(height = 0.1), alpha = 1/4)
# overlay a sigmodal curve to indicate direction of relationship
p <- p + stat_smooth(method="glm", family="binomial", se=FALSE)
print(p)
```

#### Example of collapsing a variable to binary.

It is convenient to collapse a continuous variable into a categorical variable
  (as I did in HW03 with the `cut()` command)
  or further collapse a categorical variable into a binary variable.

One strategy to create a binary variable is to use the `ifelse()` function.

Let's create a binary `Age` variable; if 21 years and older, than legal to purchase alcohol,
  otherwise it is illegal

```{R}
nesarc.sub$Alcohol.binary <- ifelse(nesarc.sub$Age >= 21, "Legal", "Illegal")
str(nesarc.sub$Alcohol.binary)
head(nesarc.sub[,c("Age", "Alcohol.binary")], 15)
```





## Thursday --------


<!---
## Data Cleaning

To do.

# Some Statistics (We have not discussed this yet)

```{R results='asis', echo = TRUE}
# library(moonBook)
# out <- mytable(Depression
#              + TobaccoDependence
#              ~
#                Age
#              + SmokingFreq
#              + DailyCigsSmoked
#              + Ethnicity
#              + Sex
#              + DaysSmoke
#              + TotalCigsSmoked
#              + CigsSmokedFac
#              , data = nesarc.sub)
# myhtml(out)
```

--->

End.

# SNIPPETS

```{R}
# the subset command below will not include a row that evalutes to NA for the
# specified subset.  For example:
(NA == 1)
# age and smoking subset
addhealth.sub <- subset(addhealth.sub
                    , subset = (HoursWorked > 0 | HoursWorked <= 50)     # Working between 1 and 50 hours
                             & (Working == 1) # Worked outside home in the past 4 weeks
                    )
dim(nesarc.sub)
summary(nesarc.sub)
```

# References (from HW02)