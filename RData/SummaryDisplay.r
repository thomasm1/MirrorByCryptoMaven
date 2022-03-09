---
title: "ADA1: 14"
author: Thomas Maestas
date: "`r format(Sys.time(), '%B %d, %Y')`"
output:
  html_document:
    toc: true
bibliography: Nouvelle_ADA1.bib
nocite: |
  @Bohon2006,|
  @Davis-Kean2005,|
  @Furstenberg2000, |
  @Brookmeyer2006, |
  @Morgan1996, |
  @udry2003waves
---

<!---
## IGNORE THIS
# Erik's compile commands in R:
  fn.this <- "ADA1_HW_14PosterFinal3.Rmd"
  setwd("C:/Users/thoma/Dropbox/__CCCreative__/__ADA1/ADA1_Content/NouvelleAllHW14")
  library(knitr)
  purl(fn.this)
  rmarkdown::render(fn.this)
## IGNORE THIS
-->
----------------------------------------

# HW01: Personal Codebook
## Dataset; Primary association
```
__Dataset__: National Longitudinal Adolescent Health Survey (AddHealth). Wave1, survey date is 1994/1995, tracking grades 7-12--ages approximately 12-19. The study also follows up at later times like 1996 (ages 14-21), 2001-2002(ages 19-26), and wave four in 2007-2008(ages 22-32).  
 
__Primary association__: Student Expectation to Attend College associated with Hours Worked, Conditioned by Parental College Concern

__Codebook:__

VarName
  Variable description
  Data type (Continuous, Discrete, Nominal, Ordinal)
  Frequency ItemValue Description
AID (Wave 1)
  UNIQUE ID NUMBER WITH NO ALPHABETICS
  Nominal
  Unique Identification number
BIO_SEX 
  GENDER MALE
  2 = female
  1 = male
  6 = NA
  Nominal
AGE (Age)
  AGE
  Age:   age = (mdy(imonth,iday,1995)-mdy(h1gi1m,15,(h1gi1y+1900)))/365.25
  Continuous
H1EE2
  EXPECTATION TO GO TO COLLEGE
  ExpectCollege: 1-5; 6=refused, 8=don't know, 9=NotApplic 
  Discrete
  1-5. 1= low; 5=high
H1EE3
  WHETHER WORKED IN PAST FOUR WEEKS
  Working: 0=no, 1=yes, 6=refused, 8=don't know
H1EE4
  HOURS WORKED OUTSIDE HOME IN TYPICAL NON-SUMMER WEEK 
H1WP11 
  STUDENT-PERCEIVED MOTHER PARENTAL CONCERN ABOUT COLLEGE
  Interval
  ParentConcernM:  1-5;  
  6=refused,
  7=noDad 
  8=don't know, 
  9=NotApplic
  1-5. 1 = low concern; 5=high concern
H1WP16 
  STUDENT-PERCEIVED FATHER PARENTAL CONCERN ABOUT COLLEGE
  Interval
  ParentConcernF: 1-5;  
  6=refused,
  7=noDad 
  8=don't know, 
  9=NotApplic
  1-5. 1 = low concern; 5=high concern
  H4ED1 (gradHS)
What is your high school graduation status?
  1=Finished high school with diploma
  2=Earned a high school equivalency degree (GED)
  3=Earned a Certificate of attendance or a certificate of completion
  4=Did not receive hs diploma, GED or other certificate
  6=Refused
  8=don't know
H4ED2 (gradBA)
  What is the highest level of education that you have acheived to date? 
   1=8th grade or less
   2=Some high school
   3=high school graduate
   4=Some vocationalized training (after high school)
   5=Completed vocationalized training (after high school)   
   6 =Some College
  7=Completed a Bachelor's
  8=Some Graduate School
  9=Completed a master's degree
  10=Some graduate training beyond a master's degree
  11=Completed a doctoral degree
  12=Some post baccalaureate professionallaw/med/nurse 
  13=Completed post-baccalaureate professional law/med/nurse
Constructed variables
* H4ED2 gradBA >= 7
* H4ED2 education 1-13
* H4ED2 gradHS Graduate HS = 1==1; Non Graduate HS = 0 == vs. 0; 
```
----------------------------------------

# HW02: Literature Review
### Initial thinking
### Hypotheses
### Topic of interest 
### Main Research Question
### Literature Review Recap
```
__Initial thinking__:  I'm interested in the psychological elements of parental influence on respondent expectation to go to college. Specifically, I would like to know if working hours (categorical explanatory) during high school is associated with college expectations (categorical response). 

Secondly, I'm interested to see if levels of parental college support/concern (categorical explanatory) during high school is associated with college expectations (categorical response). 

A specific example I'm testing involves whether it is true that very traditional Latino parents, if low-income bracket, encourage males to help the family by working a couple years after graduting high school.  In contrast, females are discouraged from being a "breadwinner."--rather, daughters are encouraged to go directly to college. Therefore, I hypothesize that working Latino Males have lower expectations than others.   

__L__: The college-expectation score (1-5) is based on question, "how likely do you expect to go to college?".   
The parental college concern/support score (1-5) is based on question, "How disappointed do you think your mother/father would be if you did graduate college?"  

__H1__: Working hours (categorical explanatory) during high school is associated with college expectations (categorical response - ExpectCollege).

__H1a__: (categorical explanatory - HoursWorked) negatively associate with college expectation, yet high parental college concern mitigates this effect.

__H2__: High college concern of parent is positively associated with respondant's expectation. 

__H2a__: Parenting college concern mediates the working-in-high-school and expectation-to-go-to-college relationship, especially when conditioned by the intersection of Latino race and Male gender.

__H3__: I hypothesize that the late Wave 4 college graduation outcome variable is negatively associated with working hours in high school.

__MAIN RESEARCH QUESTION__:
Does Parental College Concern moderate the assocation between working hours and college expectation among high school students?

__RQ_1__: What is the relationship between respondent working hours VS respondent expectation to go to college?  

__RQ_2__: What is the relationship between parental college concern VS respondent expectation to go to college?

__RQ-3__: Does low parental concern accentuate the hypothesized association between adolescent-working hours vs college expectation? 
  
__How I did it__: Using Codebook of AddHealth Wave1 literature review via Mendeley, Extensive use of AddHealthW1_CodeBook.pdf

__Literature Review Recap__: Starting with Frank Furstenbur (2000), whose authoritative coverage of adolescence research works with Education-core authors and particular works, including, Stanton-Salazar (1997), Pascarelli (1998), Buchmann (1989), Brooks-Gunn & Graber (1994), Steinberg, Lamborn, Darling & Dornbusch (1994), Entwisle & Alexander (1993).

__Final Lit Note__: Based on the literature, I situate the parental association with students' college expectations within the psychology, education, and sociology peer-reviewed articles around 'family influence'.  More specifically, the publications that frame parental influence in theoretical terms of "Social Control via Family Bonding", i.e., Family Attachment. My research looks at the "dark side" of parental influence rather than the usual "protective factors." I did not find any articles so far on Latino parental conditioning of the working and college expectation relationship. 

Bohon, S. A., Johnson, M. K., & Gorman, B. K. (2006). College Aspirations and Expectations among Latino Adolescents in the United States. Social Problems, 53(2), 207-225. http://doi.org/10.1525/sp.2006.53.2.207   
	Explains that Status Socializaiton Theory (Sewell, haler, and Ohlendorf, 1970) means the notion that future educational success among adolescents is contingent on curent beliefs that such success is desiraable and liked.  This research is guided by The Status Attainment Model (SAM) is the generative model on reproduction of class position across generations, through social-psychoogical process (Morgan, 2005).  "Researchers have suggested that varous factors related to mirnority status are reproudced throughout the social structure and create barriers to high educational attainmnet (Bourdieu and Passeraon, 1973"
	Latino Heteregeity is big issue: that Mexicans different from Cubans. 	
Brookmeyer, K. A., Fanti, K. A., & Henrich, C. C. (2006). Schools, Parents, and Youth Violence: A Multilevel, Ecological Analysis. Journal of Clinical Child & Adolescent Psychology, 35(4), 504-514. http://doi.org/10.1207/s15374424jccp3504_2
	Brookemey explains how to disect the levels of social analysis between the students' family/parental connectedness and school connectedness. In short, the social ecologies of parental-family ecologies and school ecologies. 
Davis-Kean, P. E. (2005). The Influence of Parent Education and Family Income on Child Achievement: The Indirect Role of Parental Expectations and the Home Environment. Journal of Family Psychology, 19(2), 294-304. http://doi.org/10.1037/0893-3200.19.2.294
	Less work has been done on how factors like parental beliefs such as achievement expectation sor efficacy might function as links between socioeconomic status and achievement outcomes... Davis explains how parental SES translates to college-bound beliefs that directly associates with students. 
Furstenberg, F. F. (2000). The Sociology of Adolescence and Youth in the 1990s: A Critical Commentary. Journal of Marriage and Family, 62(4), 896-910. http://doi.org/10.1111/j.1741-3737.2000.00896.x
	Furstenburg's comprehensive study of adolescent studies since the 1904 Adolescence research popularized by Hall, 1904.  Furstenburg covers changing demography of longer-lasting adolescence. Parenting issues p. 901; peer infulence parental effecs on 902. "parents manage children's behaviors outside the home hrough indirect techniques not involving face-to-face supervision." Social Capita (903)
Morgan, S. L. (1996). Trends in Black-White Differences in Educational Expectations: 1980-92. Sociology of Education, 69(4), 308-319. http://doi.org/10.2307/2112717
	Status-Attainment Theory (Swelell, et al 1970; Sewell, Haller, and Portes, 1969) [Here as a idealistic value orientation toward education-an educaional aspiration -is an imporant intervening process.  This is further elaborated, contrasted with Resource-constraint theory that educational attainment varies with perceptions of opporutnity structures, evaluated according toe relative direct costs. I look at the motivation part of expectation, so this applies to my research. 
Udry, J. R., of Adolescent Health, N. L. S., & others. (2003). Waves I & II, 1994--1996; Wave III, 2001--2002 [machine-readable data file and documentation]. Chapel Hill, NC: Carolina Population Center, University of North Carolina at Chapel Hill.
	Citation for Add Health Literature Waves I-III
```


# HW 03: Data Subset, Univariate Summaries And Plots
## Raw Variables; Composite Vars; Renaming Vars; New Vars; Missing Vars; Labeling Vars
#### National Longitudinal Adolescent Health Survey: AddHealthW1_CodeBook.pdf
```
__Direct Variables__
* `AID`     =  "AID"
* `BIO_SEX`  = "Gender"
* `H1GI1M`       = "BirthMonth"
* `IMONTH`     = "SurveyMonth"
* `H1GI1Y`      = "BirthYear"
* `IYEAR`      = "SurveyYear"
* `IDAY`       = "SurveyDay"
* `H1GI3`      = "BirthDay"
* `age`        =  "AddAge"
* `H1EE2`     = "ExpectCollege"
* `H1EE3`      = "Working"
* `H1EE4`      = "HoursWorked"
* `H1WP11`     = "ParentConcernM"
* `H1WP16`       = "ParentConcernF"
* `H1GI8`     = "Race"
* `H1GI6A`  = "White1"
* `H1GI6B`  = "Black2"
* `H1GI6C`  = "Native3"
* `H1GI6D`  = "AsianOth4"
* `H1GI4`  = "Latino5"
* `S6A`  = "White"
* `S6B`  = "Black"
* `S6C`  = "Asian"
* `S6D` = "Native"
* `S4`  = "Latino"
__Composite Variables__
* `Age` = "Age in years"
* `RaceEth` "Race and Ethnicity"
* `ExpectCollege      <- "Expectation to go to college"
* `Working        <- "Whether worked in past four weeks"
* `HoursWorkedCat    <- "Hours Worked Category"
* `ParenConcernMean)   <- "Mean Parental Concern"
* `ParenConcernNum)   <- "Mean Parental Concern, Numeric"
* `HighParenCollConcern)   <- "High Parental College Concern"
* `Studen)   <- "Student quad, High-Low Parental Concern \n Work-Not Workl"
* `gradBA)   <- "Graduated BA"
* `gradHS)   <- "Graduated HS Diploma"
* `education)   <- "Education"
```

```{R}
# I set some GLOBAL R chunk options here.
#   (to hide this message add "echo=FALSE" to the code chunk options)
# In particular, see the fig.height and fig.width (in inches)
#   and notes about the cache option.
knitr::opts_chunk$set(comment = NA, message = FALSE, warning = FALSE, width = 100)
knitr::opts_chunk$set(fig.align = "center", fig.height = 4, fig.width = 6)
# Note: The "cache=TRUE" option will save the computations of code chunks
#   so R it doesn't recompute everything every time you recompile.
#   This can save tons of time if you're working on a small section of code
#   at the bottom of the document.
#   Code chunks will be recompiled if they are edited.
#   The autodep=TRUE will also update dependent code chunks.
#   A folder is created with the cache in it -- if you delete the folder, then
#   all the code chunks will recompute again.  I delete this folder when I want
#   to make sure everything works as expected.
knitr::opts_chunk$set(cache = TRUE) #, autodep=TRUE)  #$
```


```{R, cache = TRUE}

# Data subset
library(PDS)
# download the addhealth_public4.RData data file
#   and load it as described on UNM Learn / Resources / PDS Data:
#     load("/PATH_TO_FILE/addhealth_public4.RData")
dim(AddHealth) # n=6504 vars = 2829
dim(addhealth_public4)
#
addhealth.sub <- as.data.frame(AddHealth)
#addPeers <- as.data.frame()
getwd()
#
dim(addhealth_public4)
var.list4 <- c("h4ed1" # what is hs graduaation status 
               , "h4ed2" #what highest ed 1<9,2hs,3hsgrad,45some,7BA
              )
var.list <- c("AID"
            , "H1GI1M"
            , "IMONTH"     
            , "H1GI1Y"    
            , "H1GI3"
            , "IYEAR"
            , "IDAY"
            , "age"
            , "BIO_SEX"
            , "H1EE2"
            , "H1EE3"
            , "H1EE4"
            , "H1WP11"
            , "H1WP16"
            , "H1GI8"    
            , "H1GI6A" 
            , "H1GI6B" 
            , "H1GI6C" 
            , "H1GI6D" 
            , "H1GI4" 
            , "S6A" 
            , "S6B" 
            , "S6C" 
            , "S6D"
            , "S4"
                     )
var.list
var.list4
str(var.list)
str(var.list4)
table(var.list4)
# subset of data
addhealth.sub <- subset(AddHealth, select = var.list)
addhealth.sub.full <- subset(AddHealth, select = var.list)
addhealth.sub4 <- subset(addhealth_public4, select = var.list4)
addhealth.sub.full$gradHS <- addhealth_public4$h4ed1 
addhealth.sub.full$gradBA <- addhealth_public4$h4ed2 
addhealth.sub.full$education <- addhealth_public4$h4ed2
dim(addhealth.sub)
dim(addhealth.sub4)
dim(addhealth.sub.full)

#matrix(addhealth.sub)
#str(addhealth.sub)
sort(colnames(addhealth.sub))
addhealth.sub <- addhealth.sub[order(addhealth.sub$AID, decreasing=FALSE),]
#summary(addhealth.sub)                                                    
#dim(addhealth.sub)
sort(colnames(addhealth.sub.full))
addhealth.sub <- addhealth.sub.full[order(addhealth.sub$AID, decreasing=FALSE),]
```

### Renaming Variables
```{R, cache=TRUE}
#head(AddHealth)
# Rename
# note, if the new "dplyr" package is installed, this may not work correctly
library(plyr) # for rename(dat, c("from" = "to"))
addhealth.sub <- rename(addhealth.sub, c(
                        "AID"        =  "AID"
                      , "BIO_SEX"        = "Sex"
                      , "H1GI1M"       = "BirthMonth"
                      , "IMONTH"     = "SurveyMonth"
                      , "H1GI1Y"      = "BirthYear"
                      , "IYEAR"      = "SurveyYear"
                      , "IDAY"       = "SurveyDay"
                      , "H1GI3"        = "BirthDay"
                      , "age"          = "Age"
                      , "H1EE2"     = "ExpectCollege"
                      , "H1EE3"     = "Working"
                      , "H1EE4"     = "HoursWorked"
                      , "H1WP11"    = "ParentConcernM"
                      , "H1WP16"      = "ParentConcernF"
                      , "H1GI8"    = "Race"
                      , "H1GI6A" = "White1"
                      , "H1GI6B" = "Black2"
                      , "H1GI6C" = "Native3"
                      , "H1GI6D" = "AsianOth4"
                      , "H1GI4" = "Latino5"
                      , "S6A" = "White"
                      , "S6B" = "Black"
                      , "S6C" = "Asian"
                      , "S6D" = "Native"
                      , "S4" = "Latino"
                                          ))
str(addhealth.sub)

addhealth.sub.full <- rename(addhealth.sub.full, c(
                        "AID"        =  "AID"
                      , "BIO_SEX"        = "Sex"
                      , "H1GI1M"       = "BirthMonth"
                      , "IMONTH"     = "SurveyMonth"
                      , "H1GI1Y"      = "BirthYear"
                      , "IYEAR"      = "SurveyYear"
                      , "IDAY"       = "SurveyDay"
                      , "H1GI3"        = "BirthDay"
                      , "age"          = "Age"
                      , "H1EE2"     = "ExpectCollege"
                      , "H1EE3"     = "Working"
                      , "H1EE4"     = "HoursWorked"
                      , "H1WP11"    = "ParentConcernM"
                      , "H1WP16"      = "ParentConcernF"
                      , "H1GI8"    = "Race"
                      , "H1GI6A" = "White1"
                      , "H1GI6B" = "Black2"
                      , "H1GI6C" = "Native3"
                      , "H1GI6D" = "AsianOth4"
                      , "H1GI4" = "Latino5"
                      , "S6A" = "White"
                      , "S6B" = "Black"
                      , "S6C" = "Asian"
                      , "S6D" = "Native"
                      , "S4" = "Latino"
                      , "gradHS" = "gradHS"
                      , "gradBA" = "gradBA"
                      , "education" ="education"
                                          ))
str(addhealth.sub)
str(addhealth.sub.full)
```


### Variable Creation
```{R, cache = TRUE}
# Variable Creation: RaceEth, Age, [AllParenConcern]
#install.packages("lubridate")
#library(lubridate)

#Age  Method #0
DOBYear <- (addhealth.sub$BirthYear  + 1900)
SurvYear <- (addhealth.sub$SurveyYear + 1900)
AgeYear <- (SurvYear - DOBYear)
head(AgeYear)
AgeYearMos <- AgeYear*12
head(AgeYearMos)
AgeMonth <- (addhealth.sub$SurveyMonth - addhealth.sub$BirthMonth)
head(AgeMonth)
head(addhealth.sub$BirthMonth)
AgeYearsMonths <- AgeYearMos + AgeMonth
head(AgeYearsMonths)
Age <- AgeYearsMonths/12
addhealth.sub$Age <- Age
is.numeric(Age)
#summary(Age)

# AgeCat 7 Levels 14 - 20
AgeCat <- as.factor(addhealth.sub$Age)
AgeCat <- c(NA, 6504)
AgeCat[addhealth.sub$Age >= 12 & addhealth.sub$Age <= 13] <- 13
AgeCat[addhealth.sub$Age >= 13 & addhealth.sub$Age <= 14] <- 14
AgeCat[addhealth.sub$Age >= 14 & addhealth.sub$Age <= 15] <- 15
AgeCat[addhealth.sub$Age >= 15 & addhealth.sub$Age <= 16] <- 16
AgeCat[addhealth.sub$Age >= 16 & addhealth.sub$Age <= 17] <- 17
AgeCat[addhealth.sub$Age >= 17 & addhealth.sub$Age <= 18] <- 18
AgeCat[addhealth.sub$Age >= 18 & addhealth.sub$Age <= 19] <- 19
AgeCat[addhealth.sub$Age >= 19 & addhealth.sub$Age <= 21] <- 21
AgeCat[addhealth.sub$Age >= 22 & addhealth.sub$Age <= 22] <- 22
AgeCat <- as.factor(AgeCat)
class(AgeCat)
class(Age)
levels(AgeCat)
summary(AgeCat)
addhealth.sub$AgeCat <- AgeCat
```

```{R, cache = TRUE}
#RacEth
#summary(addhealth.sub$White1)
#summary(addhealth.sub$Black2)
summary(addhealth.sub$Native3)
#summary(addhealth.sub$AsianOth4)
#summary(addhealth.sub$Latino5)
RaceEth <-rep(NA, 6504)
RaceEth[addhealth.sub$White1==1 | addhealth.sub$White==1] <- 1
RaceEth[addhealth.sub$Black2==1 | addhealth.sub$Black==1] <- 2
RaceEth[addhealth.sub$Native3==1 | addhealth.sub$Native==1] <- 3
RaceEth[addhealth.sub$AsianOth4==1 | addhealth.sub$Asian==1] <- 4
RaceEth[addhealth.sub$Latino5==1 | addhealth.sub$Latino==1] <- 5
summary(RaceEth)
addhealth.sub$RaceEth <- as.factor(RaceEth)
levels(addhealth.sub$RaceEth)

#MeanParenConcern OLD METHOD
ParenConcernM <-rep(0, 6504)
ParenConcernM <- as.numeric(ParenConcernM)
ParenConcernM[addhealth.sub$ParentConcernM==1]<-1
ParenConcernM[addhealth.sub$ParentConcernM==2]<-2
ParenConcernM[addhealth.sub$ParentConcernM==3]<-3
ParenConcernM[addhealth.sub$ParentConcernM==4]<-4
ParenConcernM[addhealth.sub$ParentConcernM==5]<-5
#summary(ParenConcernM)
ParenConcernF <-rep(0, 6504)
ParenConcernF <- as.numeric(ParenConcernF)
ParenConcernF[addhealth.sub$ParentConcernF==1]<-1
ParenConcernF[addhealth.sub$ParentConcernF==2]<-2
ParenConcernF[addhealth.sub$ParentConcernF==3]<-3
ParenConcernF[addhealth.sub$ParentConcernF==4]<-4
ParenConcernF[addhealth.sub$ParentConcernF==5]<-5
#summary(ParenConcernF)
ParenConcernMeanOld <- ((ParenConcernF + ParenConcernM)/2)
table(ParenConcernMeanOld)
#

#MeanParenConcern 
ParenConcernM <-rep(NA, 6504)
ParenConcernM <- as.numeric(ParenConcernM)
ParenConcernM[addhealth.sub$ParentConcernM==1]<-1
ParenConcernM[addhealth.sub$ParentConcernM==2]<-2
ParenConcernM[addhealth.sub$ParentConcernM==3]<-3
ParenConcernM[addhealth.sub$ParentConcernM==4]<-4
ParenConcernM[addhealth.sub$ParentConcernM==5]<-5
#summary(ParenConcernM)
ParenConcernF <-rep(NA, 6504)
ParenConcernF <- as.numeric(ParenConcernF)
ParenConcernF[addhealth.sub$ParentConcernF==1]<-1
ParenConcernF[addhealth.sub$ParentConcernF==2]<-2
ParenConcernF[addhealth.sub$ParentConcernF==3]<-3
ParenConcernF[addhealth.sub$ParentConcernF==4]<-4
ParenConcernF[addhealth.sub$ParentConcernF==5]<-5
#summary(ParenConcernF)
ParenConcernMax <- pmax(ParenConcernF, ParenConcernM, na.rm = TRUE)
ParenConcernMin <- pmin(ParenConcernF, ParenConcernM, na.rm = TRUE)
ParenConcernMean <- as.integer((ParenConcernMax + ParenConcernMin)/2)
table(ParenConcernMax)
table(ParenConcernMin)
table(ParenConcernMean)
table(ParenConcernMeanOld)
#
ParenConcernMax.freq <- table(ParenConcernMax) 
ParenConcernMin.freq <- table(ParenConcernMin) 
ParenConcernMean.freq <- table(ParenConcernMean)  
ParenConcernMeanOld.freq <- table(ParenConcernMeanOld) 
# help.search("max",package="base")
# fbba = "Facebook blue/ascending" for horizontal bars
# And now breaking code across lines for clarity
facebookBlue <- c(rep("beige", 1),
                  rgb(59, 89, 152, maxColorValue = 255))
barplot(ParenConcernMax.freq,
        horiz = FALSE,         # Horizontal
        col = "orange",        # Use colors "fbba"
        main = "ParenConcernMax.freq",
        ylab = "Student Count", 
        xlab = "ParenConcernMax.freq")
barplot(ParenConcernMin.freq,
        horiz = FALSE,         # Horizontal
        col = "orange",        # Use colors "fbba"
        main = "ParenConcernMin.freq",
        ylab = "Student Count", 
        xlab = "ParenConcernMin.freq")
barplot(ParenConcernMean.freq,
        horiz = FALSE,         # Horizontal
        col = "orange",        # Use colors "fbba"
        main = "ParenConcernMean.freq",
        ylab = "Student Count", 
        xlab = "ParenConcernMean.freq")
barplot(ParenConcernMeanOld.freq,
        horiz = FALSE,         # Horizontal
        col = "orange",        # Use colors "fbba"
        main = "ParenConcernMeanOld",
        ylab = "Student Count", 
        xlab = "ParenConcernMeanOld")
str(ParenConcernMean)
head(ParenConcernMean)
summary(ParenConcernMean)   
table(ParenConcernMean)
ParenConcernMean <- as.factor(ParenConcernMean)
addhealth.sub$ParenConcernMean <- as.factor(ParenConcernMean)
dim(addhealth.sub)
class(addhealth.sub$ParenConcernMean)
addhealth.sub$ParenConcernNum <- as.numeric(addhealth.sub$ParenConcernMean)
class(addhealth.sub$ParenConcernNum)
dim(addhealth.sub)
#
#Binary Parental College Concern  High Parental Concern
length(addhealth.sub$ParenConcernMean)
levels(addhealth.sub$ParenConcernMean)
summary(addhealth.sub$ParenConcernMean)
head(addhealth.sub$ParenConcernMean)
dim(addhealth.sub)
table(addhealth.sub$ParenConcernNum)
HighParenCollConcern <- rep(NA, 6504)

HighParenCollConcern[addhealth.sub$ParenConcernNum <= 4.5] <- 0
HighParenCollConcern[addhealth.sub$ParenConcernNum == 5] <- 1
addhealth.sub$HighParenCollConcern <- HighParenCollConcern
addhealth.sub$HighParenCollConcern <- as.factor(addhealth.sub$HighParenCollConcern)
str(addhealth.sub$HighParenCollConcern)
summary(addhealth.sub$HighParenCollConcern)
class(addhealth.sub$HighParenCollConcern)
head(addhealth.sub$HighParenCollConcern)

# 
LatinaFemale  <- rep(0, 6504)
LatinaFemale[(addhealth.sub$Sex == 2) & (addhealth.sub$RaceEth == 5)] <- 1
str(LatinaFemale)
summary(LatinaFemale)
addhealth.sub$LatinaFemale <- LatinaFemale

LatinoMale <- rep(0, 6504)
LatinoMale[(addhealth.sub$Sex == 1) & (addhealth.sub$RaceEth == 5)] <- 1
str(LatinoMale)
summary(LatinoMale)
addhealth.sub$LatinoMale <- LatinoMale

Latino <- rep(0, 6504)
Latino[(addhealth.sub$RaceEth == 5)] <- 1
str(Latino)
summary(Latino)
addhealth.sub$Latino <- Latino
```
```{R, cache = TRUE}
#### addhealth.sub$Studen_
 
# create a factor variable based on number of cigarettes smoked
#workHighparen
table(addhealth.sub$Working)
str(addhealth.sub$Working)
Studen <- NULL
Studen <- rep(0, 6504)
head(addhealth.sub$Working)
levels(addhealth.sub$Working)
levels(addhealth.sub$HighParenCollConcern)
head(addhealth.sub$HighParenCollConcern)
Studen[(addhealth.sub$Working == 0) & (addhealth.sub$HighParenCollConcern == 1)] <- 1 # "Non-working, high parent"
Studen[(addhealth.sub$Working == 0) & (addhealth.sub$HighParenCollConcern == 0)] <- 2 # "Non-working, low parent"
Studen[(addhealth.sub$Working == 1) & (addhealth.sub$HighParenCollConcern == 1)] <- 3 # "working, high parent"
Studen[(addhealth.sub$Working == 1) & (addhealth.sub$HighParenCollConcern == 0)] <- 4 # "working, low parent"
addhealth.sub$Studen <- Studen
addhealth.sub$Studen <- factor(addhealth.sub$Studen)
str(addhealth.sub$Studen)
#
Studen8 <- NULL
head(addhealth.sub$LatinoMale)
levels(addhealth.sub$LatinoMale)
str(addhealth.sub$LatinoMale)
head(addhealth.sub$LatinoMale)
Studen8 <- rep(0, 6504)
Studen8[(addhealth.sub$Working == 0) & (addhealth.sub$HighParenCollConcern == 1)] <- 1 # "Non-working, high parent"
Studen8[(addhealth.sub$Working == 0) & (addhealth.sub$HighParenCollConcern == 1) & (addhealth.sub$LatinoMale == 1)] <- 2 # "Non-working, high parent, Latino-male"
Studen8[(addhealth.sub$Working == 0) & (addhealth.sub$HighParenCollConcern == 0)] <- 3# "Non-working, low parent"
Studen8[(addhealth.sub$Working == 0) & (addhealth.sub$HighParenCollConcern == 0) & (addhealth.sub$LatinoMale == 1)] <- 4 # "Non-working, high parent, Latino-male"
Studen8[(addhealth.sub$Working == 1) & (addhealth.sub$HighParenCollConcern == 1)] <- 5# "working, high parent"
Studen8[(addhealth.sub$Working == 1) & (addhealth.sub$HighParenCollConcern == 1) & (addhealth.sub$LatinoMale == 1)] <- 6 # "Non-working, high parent, Latino-male
Studen8[(addhealth.sub$Working == 1) & (addhealth.sub$HighParenCollConcern == 0)] <- 7 # "working, low parent"
Studen8[(addhealth.sub$Working == 1) & (addhealth.sub$HighParenCollConcern == 0) & (addhealth.sub$LatinoMale == 1)] <- 8 # "Non-working, high parent, Latino-male
addhealth.sub$Studen8 <- Studen8
addhealth.sub$Studen8 <- factor(addhealth.sub$Studen8)
str(addhealth.sub$Studen8)
summary(addhealth.sub$Studen8)
levels(addhealth.sub$Studen8)
# only keep the variables we'll analyze
StudenLat <- NULL
head(addhealth.sub$StudenLat)
levels(addhealth.sub$StudenLat)
str(addhealth.sub$StudenLat)
head(addhealth.sub$StudenLat)
StudenLat <- rep(0, 6504)
StudenLat[(addhealth.sub$Working == 0) & (addhealth.sub$HighParenCollConcern == 1)] <- 1 # "Non-working, high parent"
StudenLat[(addhealth.sub$Working == 0) & (addhealth.sub$HighParenCollConcern == 1) & (addhealth.sub$Latino == 1)] <- 2 # "Non-working, high parent, Latino-male"
StudenLat[(addhealth.sub$Working == 0) & (addhealth.sub$HighParenCollConcern == 0)] <- 3# "Non-working, low parent"
StudenLat[(addhealth.sub$Working == 0) & (addhealth.sub$HighParenCollConcern == 0) & (addhealth.sub$Latino == 1)] <- 4 # "Non-working, high parent, Latino-male"
StudenLat[(addhealth.sub$Working == 1) & (addhealth.sub$HighParenCollConcern == 1)] <- 5# "working, high parent"
StudenLat[(addhealth.sub$Working == 1) & (addhealth.sub$HighParenCollConcern == 1) & (addhealth.sub$Latino == 1)] <- 6 # "Non-working, high parent, Latino-male
StudenLat[(addhealth.sub$Working == 1) & (addhealth.sub$HighParenCollConcern == 0)] <- 7 # "working, low parent"
StudenLat[(addhealth.sub$Working == 1) & (addhealth.sub$HighParenCollConcern == 0) & (addhealth.sub$Latino == 1)] <- 8 # "Non-working, high parent, Latino-male
addhealth.sub$StudenLat <- StudenLat
addhealth.sub$StudenLat <- factor(addhealth.sub$StudenLat)
str(addhealth.sub$StudenLat)
summary(addhealth.sub$StudenLat)
levels(addhealth.sub$StudenLat)
#
# HoursWorkedCat
str(addhealth.sub$HoursWorked)
addhealth.sub$HoursWorkedCat[addhealth.sub$HoursWorked >= 0 & addhealth.sub$HoursWorked <= 0] <- 0
addhealth.sub$HoursWorkedCat[addhealth.sub$HoursWorked >= 1 & addhealth.sub$HoursWorked <= 5] <- 5
addhealth.sub$HoursWorkedCat[addhealth.sub$HoursWorked >= 6 & addhealth.sub$HoursWorked <= 10] <- 10
addhealth.sub$HoursWorkedCat[addhealth.sub$HoursWorked >= 11 & addhealth.sub$HoursWorked <= 15] <- 15
addhealth.sub$HoursWorkedCat[addhealth.sub$HoursWorked >= 16 & addhealth.sub$HoursWorked <= 20] <- 20
addhealth.sub$HoursWorkedCat[addhealth.sub$HoursWorked >= 21 & addhealth.sub$HoursWorked <= 25] <- 25
addhealth.sub$HoursWorkedCat[addhealth.sub$HoursWorked >= 26 & addhealth.sub$HoursWorked <= 30] <- 30
addhealth.sub$HoursWorkedCat[addhealth.sub$HoursWorked >= 31 & addhealth.sub$HoursWorked <= 35] <- 35
addhealth.sub$HoursWorkedCat[addhealth.sub$HoursWorked >= 36 & addhealth.sub$HoursWorked <= 40] <- 40
addhealth.sub$HoursWorkedCat[addhealth.sub$HoursWorked >= 41 & addhealth.sub$HoursWorked <= 45] <- 45
summary(addhealth.sub$HoursWorkedCat)
summary(addhealth.sub$HoursWorked)

# HoursWorkedLog   
is.numeric(addhealth.sub$HoursWorked)
addhealth.sub$HoursWorkedLog <- (addhealth.sub$HoursWorked + 1)
addhealth.sub$HoursWorkedLog <- log(addhealth.sub$HoursWorkedLog)
summary(addhealth.sub$HoursWorkedLog)
```

## Coding missing values
```{R, cache = TRUE}
# addhealth.sub$Sex[addhealth.sub$Sex == NA] <- 0
# Next, replace any values that are "6" with NA
addhealth.sub$Sex[addhealth.sub$Sex == 6] <- NA
summary(addhealth.sub$Sex)
# Then drop unused factor categories.
addhealth.sub$Sex <- factor(addhealth.sub$Sex)[, drop = TRUE]
summary(addhealth.sub$Sex)

#ExpectCollege
str(addhealth.sub$ExpectCollege)
summary(addhealth.sub$ExpectCollege)
#addhealth.sub$ExpectCollege[addhealth.sub$ExpectCollege == NA] <- 0
addhealth.sub$ExpectCollege[addhealth.sub$ExpectCollege == 6] <- NA
addhealth.sub$ExpectCollege[addhealth.sub$ExpectCollege == 8] <- NA
#summary(addhealth.sub$ExpectCollege)
addhealth.sub$ExpectCollege <- factor(addhealth.sub$ExpectCollege)[, drop = TRUE]
#ExpectCollege Made numeric
addhealth.sub$ExpectCollegeNum <- as.numeric(addhealth.sub$ExpectCollege)
str(addhealth.sub$ExpectCollegeNum)
is.numeric(addhealth.sub$ExpectCollegeNum)
#High versus Low Expecation: <=4 versus ==5
str(addhealth.sub$ExpectCollegeNum)
addhealth.sub$ExpectCollegeHigh <- as.numeric(addhealth.sub$ExpectCollegeNum)
addhealth.sub$ExpectCollegeHigh[addhealth.sub$ExpectCollegeNum == 5] <- 1
addhealth.sub$ExpectCollegeHigh[addhealth.sub$ExpectCollegeNum <= 4] <- 0
addhealth.sub$ExpectCollegeHigh <- as.factor(addhealth.sub$ExpectCollegeHigh)
#stats
summary(addhealth.sub$ExpectCollege)
summary(addhealth.sub$ExpectCollegeNum)
summary(addhealth.sub$ExpectCollegeHigh)
 
#addhealth.sub$ParentConcernM[addhealth.sub$ParentConcernM == NA] <- 0
addhealth.sub$ParentConcernM[addhealth.sub$ParentConcernM == 6] <- NA
addhealth.sub$ParentConcernM[addhealth.sub$ParentConcernM == 7] <- NA
addhealth.sub$ParentConcernM[addhealth.sub$ParentConcernM == 8] <- NA
addhealth.sub$ParentConcernM[addhealth.sub$ParentConcernM == 9] <- NA
#summary(addhealth.sub$ParentConcernM)
addhealth.sub$ParentConcernM <- NULL  ##  !!Disclude Unused Vars to decrease NA drops
addhealth.sub$ParentConcernF <- NULL  ##  !!Disclude Unused Vars to decrease NA drops
#addhealth.sub$ParentConcernM <- factor(addhealth.sub$ParentConcernM)[, drop = TRUE]

#Working
#str(addhealth.sub$Working)
#summary(addhealth.sub$Working)
table(addhealth.sub$Working)
addhealth.sub$Working[addhealth.sub$Working == 6] <- NA
addhealth.sub$Working[addhealth.sub$Working == 8] <- NA
addhealth.sub$Working <- factor(addhealth.sub$Working)[, drop = TRUE]
#summary(addhealth.sub$Working)

#HoursWorked
#str(addhealth.sub$HoursWorked)
#summary(addhealth.sub$HoursWorked)
#addhealth.sub$HoursWorked[addhealth.sub$HoursWorked == NA] <- 0
addhealth.sub$HoursWorked[addhealth.sub$HoursWorked >= 50] <- NA
addhealth.sub$HoursWorked[addhealth.sub$HoursWorked == 996] <- NA
addhealth.sub$HoursWorked[addhealth.sub$HoursWorked == 998] <- NA
addhealth.sub$HoursWorked[addhealth.sub$HoursWorked == 999] <- NA
#summary(addhealth.sub$HoursWorked)

#RaceEth
addhealth.sub$RaceEth[addhealth.sub$RaceEth == 0] <- NA
addhealth.sub$RaceEth <- factor(addhealth.sub$RaceEth)[, drop = TRUE]
#summary(addhealth.sub$RaceEth)

#Age
str(addhealth.sub$Age)
summary(addhealth.sub$Age)
addhealth.sub$Age[addhealth.sub$Age >= 22] <- NA
addhealth.sub$Age[addhealth.sub$Age <= 12] <- NA
addhealth.sub$Age <- (addhealth.sub$Age)[, drop = TRUE]
str(addhealth.sub$Age)
summary(addhealth.sub$Age)

```
 
```{R, cache = TRUE}
addhealth.sub.f <- addhealth.sub
# Drop NA's
is.factor(addhealth.sub.full$gradHS)
summary(addhealth.sub.full$gradHS)
gradHS <- addhealth.sub.full$gradHS
gradHS[addhealth.sub.full$gradHS == 6  | addhealth.sub.full$gradHS == 8] <- NA
gradHS[addhealth.sub.full$gradHS == 1  | addhealth.sub.full$gradBA >= 3] <- 1
gradHS[addhealth.sub.full$gradHS >= 2  | addhealth.sub.full$gradBA <= 2] <- 0
gradHS <- as.factor(gradHS)
class(gradHS)
levels(gradHS)
summary(gradHS)
addhealth.sub.f$gradHS <- gradHS

is.factor(addhealth.sub.full$gradBA)
summary(addhealth.sub.full$gradBA)
fivenum(addhealth.sub.full$gradBA)
gradBA <- addhealth.sub.full$gradBA
gradBA[addhealth.sub.full$gradBA == 98] <- NA
gradBA[addhealth.sub.full$gradBA >= 7] <- 1
gradBA[addhealth.sub.full$gradBA <= 6] <- 0

gradBA <- as.factor(gradBA)
class(gradBA)
levels(gradBA)
summary(gradBA)
addhealth.sub.f$gradBA <- gradBA

is.numeric(addhealth.sub.full$education)
summary(addhealth.sub.full$education)
education <- addhealth.sub.full$education
education[addhealth.sub.full$education == 98] <- NA
education <- as.factor(education)
class(education)
levels(education)
summary(education)
addhealth.sub.f$education <- education
####################
addhealth.sub.f <- na.omit(addhealth.sub.f)
addhealth.sub <- na.omit(addhealth.sub)
dim(addhealth.sub)
dim(addhealth.sub.f)
str(addhealth.sub)
str(addhealth.sub.f)
summary(addhealth.sub.f$gradBA)
```
#### Final subset of Dataset is free of missing variables, Final dim(2905,35);original=6,504;

## Labeling Variables
```{R, cache = TRUE}
# Labeling Variables
#install.packages("Hmisc")
library(Hmisc) # for label()
label(addhealth.sub$AID) <- "Unique ID no alphabetics"
#label(addhealth.sub$Sex) <- "Gender"
label(addhealth.sub$BirthMonth)     <- "Birth month, two digits"
label(addhealth.sub$BirthYear)       <- "Birth year, two digits"
label(addhealth.sub$ExpectCollege)     <- "Expectation to go to college"
label(addhealth.sub$ExpectCollegeNum)     <- "Expectation to go to college-Numeral"
label(addhealth.sub$Working)       <- "Whether worked in past \nfour weeks (conservative)"
label(addhealth.sub$HoursWorked)   <- "Non-summer hours worked per week"
#label(addhealth.sub$ParentConcernM)       <- "Mother's Concern about College Attend."
#label(addhealth.sub$ParentConcernF)   <- "Father's Concern about College Attend."
label(addhealth.sub$RaceEth)   <- "Race-Ethnicity"
label(addhealth.sub$HoursWorkedCat)   <- "Hours Worked Category"
label(addhealth.sub$AgeCat)        <- "Age Category"
label(addhealth.sub$HoursWorkedLog)   <- "Hours Worked Log"
label(addhealth.sub$ParenConcernMean)   <- "Mean Parental Concern"
label(addhealth.sub$ParenConcernNum)   <- "Mean Parental Concern, Numeric"
label(addhealth.sub$HighParenCollConcern)   <- "High Parental College Concern"
label(addhealth.sub$Studen)   <- "Student quad, High-Low Parental Concern \n Work-Not Workl"
label(addhealth.sub$Studen8)   <- "Student quad x LatinoMale, High-Low Parental Concern \n Work-Not Workl"
label(addhealth.sub.f$gradBA)   <- "Graduated BA"
#label(addhealth.sub.f$gradHS)   <- "Graduated HS Diploma"
label(addhealth.sub.f$education)   <- ""
summary(addhealth.sub$ExpectCollegeNum)
levels(addhealth.sub$Studen)
str(addhealth.sub$Studen)
levels(addhealth.sub$Studen8)
str(addhealth.sub$Studen8)
```

```{R, cache = TRUE}
# Informative Labels
str(addhealth.sub$Sex)
addhealth.sub$Sex <- factor(addhealth.sub$Sex
                       , labels = c("M"
                                  , "F"
                                   )
                        )

# Outcome [addhealth.sub.f]
addhealth.sub.f$gradBA <- factor(addhealth.sub.f$gradBA
                       , labels = c("No BA"
                                  , "BA Grad"
                                   )
                        )
is.factor(addhealth.sub.f$gradHS)
str(addhealth.sub.f$gradHS)
addhealth.sub.f$gradHS <- factor(addhealth.sub.f$gradHS
                       , labels = c("Less than HS"
                                  , "HS graduate"
                                   )
                        )
str(addhealth.sub.f$education)
#addhealth.sub.f$education <- factor(addhealth.sub.f$education
#                       , labels = c("Attended College"
#                                  , "Did not Atttend Coll"
#                                   )
#                        )
str(addhealth.sub.f$gradHS)
str(addhealth.sub.f$gradBA)
summary(addhealth.sub.f$gradBA)
table(addhealth.sub.f$gradBA)
str(addhealth.sub.f$education)
summary(addhealth.sub.f$gradHS)

# High Parental College Conern
str(addhealth.sub$HighParenCollConcern)
addhealth.sub$HighParenCollConcern <- factor(addhealth.sub$HighParenCollConcern
                       , labels = c("Low Concern"
                                  , "High Concern"
                                   )
                        ) 
str(addhealth.sub$HighParenCollConcern)

## Student Quadrants
str(addhealth.sub$Studen)
addhealth.sub$Studen <- factor(addhealth.sub$Studen
                       , labels = c("HC,NW"
                                  , "LC,NW" 
                                  , "HC,W"
                                  , "LC,W"
                                   )
                        )
str(addhealth.sub$Studen)
#

addhealth.sub$Studen8 <- factor(addhealth.sub$Studen8
                       , labels = c("HC,NW"
                                  , "HC,NW\nMal-Lat"
                                  , "LC,NW" 
                                  , "LC,NW\nMal-Lat"
                                  , "HC,W"
                                  , "HC,W\nMal-Lat"
                                  , "LC,W"
                                  , "LC,W\nMal-Lat" 
                                   )
                        )
#
addhealth.sub$StudenLat <- factor(addhealth.sub$Studen8
                       , labels = c("HC\nNW\nnon-Lat"
                                  , "HC\nNW\nLat"
                                  , "LC\nNW\nnon-Lat" 
                                  , "LC\nNW\nLat"
                                  , "HC\nW\nnon-Lat"
                                  , "HC\nW\nLat"
                                  , "LC\nW\nnon-Lat"
                                  , "LC\nW\nLat" 
                                   )
                        )
#
#addhealth.sub$RaceEth <- is.character(addhealth.sub$RaceEth)
addhealth.sub$RaceEth <- factor(addhealth.sub$RaceEth, labels = c("White", "Black", "Native", "Asian", "Latino" ))
str(addhealth.sub$RaceEth)
table(addhealth.sub$RaceEth)
#Working
table(addhealth.sub$Working)
addhealth.sub$Working <- factor(addhealth.sub$Working, labels = c("Not Working", "Working") )
table(addhealth.sub$Working)
```

## Mixed Rules
```{R, cache = TRUE}
# Mixed Rules
#install.packages("editrules")

fn.edit.rules <- "C:/Users/thoma/Dropbox/__CCCreative__/__ADA1/ADA1_Content/NouvelleAllHW14/ADA1_AddhealthTM_EditRules.txt"
readLines(fn.edit.rules)
# Encode these rules using the editrules package
library(editrules)
EditRules.AH.sub <- editfile(fn.edit.rules)
ve.AH.sub <- violatedEdits(EditRules.AH.sub, addhealth.sub)
summary(ve.AH.sub)
```

```{R, cache = TRUE}
op <- par(no.readonly = TRUE)         # save plot settings
par(mfrow=c(1,1), mar = c(0,0,0,0))
plot(EditRules.AH.sub)
par(op)                               # restore plot settings
dim(addhealth.sub)
#summary(addhealth.sub)
```

```{R}
#855
library(ggplot2)
p5 <- ggplot(addhealth.sub, aes(x = HoursWorked, y = ExpectCollegeNum))
p5 <- p5 + geom_point(position = position_jitter(width=0.3), colour = "pink")
p5 <- p5 + stat_smooth(method = lm, se = FALSE) +  theme_bw()
p5 <- p5 + facet_wrap(Sex ~ RaceEth)
p5 <- p5 + labs(x = "Hours Worked", y = "Expectation to Attend College", title = "Hours Worked and Expectation to attend College,\n by Genders and Race")
print(p5)
```
# HW 04: Planning and Plotting: The Relationships at Play
```{R, cache = TRUE, fig.width = 8, fig.height = 8}
library(ggplot2)
a <- ggplot(data = addhealth.sub, aes(x = Sex))
a <- a + geom_bar(binwidth = 1, alpha = .15, color = "purple")
a <- a + labs(title = "Gender", x = "Sex")

b <- ggplot(data = addhealth.sub, aes(x = RaceEth))
b <- b + geom_bar(binwidth = 1, alpha = .15, color = "purple")
b <- b + labs(title = "Race-Ethnicity Count", x = "")

c <- ggplot(data = addhealth.sub, aes(x = Working))
c <- c + geom_bar(binwidth = 1, alpha = .15, color = "purple")
c <- c + labs(title = "Working Status", x = "")

d <- ggplot(data = addhealth.sub, aes(x = Age))
d <- d + geom_bar(binwidth = .5, alpha = .15, color = "purple")
d <- d + labs(title = "Age", x = "")

e <- ggplot(data = addhealth.sub, aes(x = HoursWorkedCat))
e <- e + geom_bar(binwidth = 5, alpha = .15, color = "purple")
e <- e + labs(title = "Hours Worked", x = "", y = "purple")

f <- ggplot(data = addhealth.sub, aes(x = ParenConcernMean))
f <- f + geom_bar(binwidth = 1, alpha = .15, color = "purple")
f <- f + labs(title = "Parental Coll Concern", x= "", y = "count")

g <- ggplot(data = addhealth.sub.f, aes(x = HighParenCollConcern))
g <- g + geom_bar(binwidth = 1, alpha = .15, color = "purple")
g <- g + labs(title = "High Parental \n College Concern, mean >= 4.5/5", x = "", y = "count")

h <- ggplot(data = addhealth.sub, aes(x = ExpectCollegeNum))
h <- h + geom_bar(binwidth = 1, alpha = .15, color = "purple")
h <- h + labs(title = "Expectation \n to Attend College", x = "", y = "count")

hi <- ggplot(data = addhealth.sub, aes(x = ExpectCollegeHigh))
hi <- hi + geom_bar(binwidth = 1, alpha = .15, color = "purple")
hi <- hi + labs(title = "High College Expectations, == 5/5",
                 x = "", y = "count")

i <- ggplot(data = addhealth.sub, aes(x = Studen))
i <- i + geom_bar(binwidth = 1, alpha = .15, color = "purple")
i <- i + labs(title = "Student Type \n high/low concern /nWorking, not Working
              ", x = "", y = "count")

j <- ggplot(data = addhealth.sub.f, aes(x = education))
j <- j + geom_bar(binwidth = 1, alpha = .25, color = "brown")
j <- j + labs(title = "Education Level 1-13,\n 1=<HS,7=BA attain,13=PdD", x = "", y = "count")

k <- ggplot(data = addhealth.sub.f, aes(x = gradBA))
k <- k + geom_bar(binwidth = 1, alpha = .25, color = "brown")
k <- k + labs(title = "Graduated BA College", x = "", y = "count")

l <- ggplot(data = addhealth.sub.f, aes(x = gradHS))
l <- l + geom_bar(binwidth = 1, alpha = .25, color = "brown")
l <- l + labs(title = "Graduated high school", x = "Graduated high school", y = "count")
library(gridExtra)
grid.arrange(  b,   d, e, f,    h,  i, j, k, nrow=3)
```

### Bivariate Faceting
```{R, fig.width = 8, fig.height = 5}
library(ggplot2)
p1 <- ggplot(addhealth.sub, aes(x = HoursWorked, y = ExpectCollegeNum))
p1 <- p1 + geom_point(position = position_jitter(width=0.3), colour = "orange")
p1 <- p1 + stat_smooth(method = lm, se = FALSE) +  theme_bw()
p1 <- p1 + facet_wrap(Sex ~ RaceEth)
p1 <- p1 + labs(title = "Working Hours and  College Expectation,\n by Gender and Race", x= "Working", y= "College Expectation")
print(p1)

library(ggplot2)
p2 <- ggplot(addhealth.sub, aes(x = Age, y = ExpectCollegeNum))
p2 <- p2 + geom_point(position = position_jitter(width=0.3), colour = "orange")
p2 <- p2 + stat_smooth(method = lm, se = FALSE) +  theme_bw()
p2 <- p2 + facet_wrap(Working ~ RaceEth)
p2 <- p2 + labs(title = "Age and College Expectation,\n by Working Status and Race", x= "Age", y = "College Expectation")
print(p2)

library(ggplot2)
p3 <- ggplot(addhealth.sub, aes(x = ParenConcernNum, y = ExpectCollegeNum))
p3 <- p3 + geom_point(position = position_jitter(width=0.3), colour = "grey")
p3 <- p3 + stat_smooth(method = lm, se = FALSE) +  theme_bw()
p3 <- p3 + facet_wrap(Working ~ RaceEth)
p3 <- p3 + labs(title = "Parental Concern and College Expectation,\n by Working Status and Race", x= "Parental Concern", y = "College Expectation")
print(p3)

library(ggplot2)
p <- ggplot(addhealth.sub, aes(x = ParenConcernNum, y = ExpectCollegeNum))
p <- p + geom_point(position = position_jitter(width=0.1), colour = "orange")
p <- p + stat_smooth(method = lm, se = FALSE) 
p <- p + facet_wrap(Sex ~ RaceEth)
p <- p + labs(title = "Parental Concern and Expectation to attend College,\n by Gender and Race", x= "Parental Concern", y = "College Expectation")
print(p)
#grid.arrange(p1, p2, p3, p4, p5, p, nrow=3)
```

#### The faceted plots reveal the high degree of sensitivity White males and females exhibit. Latinos appear comparatively less influenced by parental concern.
#### The results fundamentally contradict the initial hypotheses that  not only proved wrong, but the exact opposite is convincingly demonstrated: Hispanic Males' college expectations remain high despite low parental concern, and their expectations increase with more hours worked (contrary to all other groups). Therefore, the null hypothesis is rejected--not for the expected reason--and further, a new alternative hypothesis presents itself: White Males are highly sensitive to parental college concerns, and their expectations actually decrease with more hours worked (contary to Latinos). 
#### Also, at a closer look, the norm among all groups is to decrease expectations for increasing hours working. Yet, Latino males and females increase expectation. 

### Bivariate graphs (both categorical)
#### In the following scenario, Females (2) are compared to Males (1) in their expectations to attend college

```{R, cache = TRUE}
g1 <- ggplot(data = addhealth.sub, aes(x = Sex, fill = ExpectCollege)) +
  geom_bar(position = "fill") +
  theme_bw()
g1 <- g1 + facet_wrap(~RaceEth)
g1 <- g1 + labs(x = "Gender", y = "Proportion", title = "College Expectation comparing Males and Females, by Race") +
  scale_fill_discrete(name="College \nExpectation") 
g1
g1 <- ggplot(data = addhealth.sub, aes(x = Sex, fill = ExpectCollege)) +
  geom_bar(position = "fill") +
  theme_bw()
g1 <- g1 + facet_wrap(~Studen)
g1 <- g1 + labs(x = "Gender", y = "Proportion", title = "College Expectation comparing Males and Females, by Race") +
  scale_fill_discrete(name="College \nExpectation") 
g1
g1 <- ggplot(data = addhealth.sub, aes(x = Sex, fill = ExpectCollege)) +
  geom_bar(position = "fill") +
  theme_bw()
g1 <- g1 + facet_wrap(~StudenLat)
g1 <- g1 + labs(x = "Gender", y = "Proportion", title = "College Expectation comparing Males and Females, by Race") +
  scale_fill_discrete(name="College \nExpectation") 
g1
```


```{R, cache = TRUE}
##EBE
#T2 <- xtabs(~ExpectCollege + HoursWorkedCat, data = addhealth.sub)
#T2
#PT2 <- prop.table(T2, 2)
#PT2
#barplot(PT2)

g2 <- ggplot(data = na.omit(addhealth.sub), aes(x = HoursWorkedCat, fill = ExpectCollege)) +
  geom_bar(position = "fill", binwidth = 5) +
  theme_bw() +
  theme(axis.text.x  = element_text(angle = 45, vjust = 0.5)) +
  labs(x = "Hours Worked", y = "Expectation of College") +
  scale_fill_discrete(name="Expectation\n to go to \nCollege")
g2

#This is meaningful if working males are more coerced by money needs (thus expect college less) and females are less coerced (eg, work for social reasons and still expect college)
 #EBE (a version of the plot above)
#library(ggplot2)
#ggplot(data = na.omit(addhealth.sub), aes(x = HoursWorked, fill = ExpectCollege)) +
#  geom_bar(position = "fill") +
#  theme_bw() +
#  theme(axis.text.x  = element_text(angle = 45, vjust = 0.5)) +
#  labs(x = "Hours Worked", y = "Expectation of College") +
#  facet_grid(Sex ~ .)

```
##### My personal interpretation of this graph is that the more hours worked, less expectation to attend college. This association is accentuated by male gender. The results appear modest and await statistical testing ahead.

##### My personal intepretation of this tells me that Males (1) are less likely to expect college than females (2), generally speaking. Those working more hours expect to go to college to a lesser degree, and moreso males than females in this respect.  Finally, Looking at parental concern, it has a large effect on expectation to go to college.


# HW05: Log Transformation and Simple Linear Regression
```{R, cache = TRUE}
#Scatterplot
library(ggplot2)
p1 <- ggplot(addhealth.sub, aes(x=HoursWorkedLog, y=ExpectCollegeNum))
p1 <- p1 + geom_point(position = position_jitter(width=0.3), color="orange")
p1 <- p1 + geom_smooth(method = lm, se = FALSE)
p1 <- p1 + labs(x = "Hours worked - logged", y = "Expectation to attend College", title="Hours Worked-Logged versus \n expectation to attend college")


#Just out of curiosity, work hours var is logged. 
library(ggplot2)
p1a <- ggplot(addhealth.sub, aes(x=HoursWorkedLog, y=ExpectCollegeNum))
p1a <- p1a + geom_point(position = position_jitter(width=0.3), color="orange")
p1a <- p1a + geom_smooth(method = lm, se = FALSE)
p1a <- p1a + labs(x = "Hours worked - logged", y = "Expectation to attend College", title="Hours Worked-Logged versus \n expectation to attend college")

# Both variables are transform-logged
ParenConcernNum <- as.numeric(addhealth.sub$ParenConcernMean)
ParenConcernMeanLog <- log10(addhealth.sub$ParenConcernNum)
ExpectCollegeNumLog <- log10(addhealth.sub$ExpectCollegeNum)
p2 <- ggplot(addhealth.sub, aes(x=ParenConcernMeanLog, y=ExpectCollegeNumLog))
p2 <- p2 + geom_point(position = position_jitter(width=.6), color="orange")
p2 <- p2 + geom_smooth(method = lm, se = FALSE, width = 1.5, color = "blue")
p2 <- p2 + labs(x = "Parental Concern - logged", y = "Expectation to attend College log", title="Parental Concern -Logged versus \n expectation to attend college")


# Y variables are transform-logged
p3 <- ggplot(addhealth.sub, aes(x=Age, y=ExpectCollegeNumLog))
p3 <- p3 + geom_point(position = position_jitter(width=0.1), color="orange")
p3 <- p3 + geom_smooth(method = lm, se = FALSE)
p3 <- p3 + labs(x = "Age", y = "Expectation to attend College log", title="Parental Concern versus \n expectation to attend college - log")


# Y variables are transform-logged
p4 <- ggplot(addhealth.sub, aes(x=ParenConcernNum, y=ExpectCollegeNum))
p4 <- p4 + geom_point(position = position_jitter(width=0.4), color="orange")
p4 <- p4 + geom_smooth(method = lm, se = FALSE)
p4 <- p4 + labs(x = "Parental College Concern", y = "Expectation to attend College ", title="Expectation to attend College  versus \n Parental College Concern")

p5 <- ggplot(addhealth.sub, aes(x = HoursWorkedCat, y = ExpectCollegeNum))
p5 <- p5 + geom_jitter(position = position_jitter(height = 0.1), alpha = 1/4, color = "brown")
p5 <- p5 + geom_smooth(method = lm, se = FALSE)
p5 <- p5 + labs(x = "Hours worked", y = "Expectation to attend College", title="Hours Worked \n expectation to attend college")
library(gridExtra)
grid.arrange(p1, p1a, p2, p3, p4, p5, nrow = 3)
```

```{R, cache = TRUE}
# fit the simple linear regression model, Expectation regressed on hours worked
lm.ExpectCollegeNum.ParenConcernMean.HoursWorked <- lm(ExpectCollegeNum ~ ParenConcernNum, data = addhealth.sub)
# use summary() to parameters estimates (slope, intercept) and other summaries
summary(lm.ExpectCollegeNum.ParenConcernMean.HoursWorked)

# fit the simple linear regression model Expectation regressed on hours worked
lm.ExpectCollegeNum.HoursWorked <- lm(ExpectCollegeNum ~ HoursWorked, data = addhealth.sub)
# use summary() to parameters estimates (slope, intercept) and other summaries
summary(lm.ExpectCollegeNum.HoursWorked)

# fit the multiple linear regression model, Expectation regressed on interaction of hours worked and parental concern
lm.ExpectCollegeNum.ParenConcernMean.HoursWorked <- lm(ExpectCollegeNum ~  ParenConcernNum + HoursWorked, data = addhealth.sub)
# use summary() to parameters estimates (slope, intercept) and other summaries
summary(lm.ExpectCollegeNum.ParenConcernMean.HoursWorked)

```


# HW 06: Correlation and Categorical Contingencies
## bivariate scatter plot, calculate the correlation
```{R, cache = TRUE}
#install.packages("gsheet")
library(gsheet)
library(ggplot2)
#install.package(GGally)
library(GGally)
#p11 <- ggpairs(addhealth.sub[,c("RaceEth", "ExpectCollege", "ParenConcernMean")]
#            , colour = "RaceEth"
#            , lower = list(continuous = "smooth")
#            , diag  = list(continuous = "density")
#            , upper = list(params = list(corSize = 6))
#            )
#print(p11)
#p12a <- ggpairs(addhealth.sub[,c("RaceEth", "HoursWorkedCat", "ExpectCollege")]
#            , colour = "RaceEth"
#            , binwidth = 4
#            , lower = list(continuous = "smooth")
#            , diag  = list(continuous = "density")
#            , upper = list(params = list(corSize = 6))
#            )
#print(p12a)
#
#p11 <- ggpairs(addhealth.sub[,c("Sex", "ExpectCollege", "ParentConcernM")]
#           , colour = "Sex"
#            , lower = list(continuous = "smooth")
#            , diag  = list(continuous = "density")
#            , upper = list(params = list(corSize = 6))
#            )
#print(p11)
#p11d <- ggpairs(addhealth.sub[,c("Working", #"ExpectCollege", "ParenConcernMean")]
#            , colour = "Working"
#            , lower = list(continuous = "smooth")
#            , diag  = list(continuous = "density")
#            , upper = list(params = list(corSize = 6))
#            )
#print(p11d)
#p12 <- ggpairs(addhealth.sub[,c("Sex", "Working", #"ExpectCollege")]
#            , colour = "Sex"
#            , lower = list(continuous = "smooth")
#            , diag  = list(continuous = "density")
#            , upper = list(params = list(corSize = 6))
#            )
#print(p12)
#p12a <- ggpairs(addhealth.sub[,c("Working", "ParentConcernM", "ExpectCollege")]
#            , colour = "Working"
#            , lower = list(continuous = "smooth")
#            , diag  = list(continuous = "density")
#            , upper = list(params = list(corSize = 6))
#            )
#print(p12a)
```

### Combined correlation between parental college concern and student's expectation to attend college is .321;This implies that there is a positive relationship, albeit weak correlation. The correlation is stronger for males at .357 than females at .29. This is expected according to the theory that Parental influence is associated with College expectation. 
### Next, the same relationship (corr = .321) is compared by working status. The correlation is stronger for those working (.339) than those not working (.301)
### Next, expectation to attend college 

#### Why is there a difference in the strength of the correlation for everyone compared to either gender separately?  
#####Although the scale is smaller by gender, the correlative association is almost identical at ~.55 or ~.56, Doubling N, leads to combined much stronger .765.  

2. With your previous (or new) two- or three-variable categorical plot, calculate conditional proportions and interpret.
    * (1 p) frequency table of variables is given,
          * It appears that interestingly it is 
    * (2 p) conditional proportion tables are calculated of the outcome variable conditional on one or two other variables,
    * (1 p) a well-labelled plot of the proportion table is given,
    * (2 p) the conditional proportions are interpretted and compared between conditions.
         The tables are less helpful but begin to provide some interesting results in that Expectation to attend college is only a little stronger among those not working.  Similarly it is extremely important to find that there are plenty of self-defining "non-working" students that actually log up to 10 hours working...so now I may have to consider making a subset of specifically working or non-working students. By race, it becomes evident that Natives are much more sensitive to their parents' concern about college at lower levels while White students much less so. 

```{R, cache = TRUE}
#  Strong, linear and positive correlation
# Parental Concern
library(ggplot2)
p <- ggplot(addhealth.sub, aes(x = ParenConcernNum, y = ExpectCollegeNum))
p <- p + geom_jitter(position = position_jitter(width = 0.3), alpha = 1/4, color = "red")
p <- p + stat_smooth(method = lm)
p <- p + labs(x = "Parental College Concern", y = "Expectation to Attend College", title = "Confidence Interval of Parental College Concern\n and Expectation to Attend College")
print(p)
# Hours Worked versus College Expectation
library(ggplot2)
p <- ggplot(addhealth.sub, aes(x = HoursWorked, y = ExpectCollegeNum))
p <- p + geom_jitter(position = position_jitter(width = 0.3), alpha = 1/4, color = "red")
p <- p + stat_smooth(method = lm)
p <- p + labs(x = "Hours Worked", y = "Expectation to Attend College", title = "Confidence Interval of Hours Worked\n and Expectation to Attend College")
print(p)
```



# HW 07: Parameter Estimation - One-Sample $t$-test: `College Expectation` 

* The Add Health design employs a clustered sampling design in which the wider network of in-school surveys comprise the "core" sample, while the "saturated" samples collect in-home information from the entire HS student population. This strategy facilitates the oversampled minority and rare groups, in addition to peer network data enabling social network analysis (SNA). 
* The source of the information is the official website of the National Longitudinal Study of Adolescent to Adult Health: Social, Behavioral, and Biological Linkages Across the Life Course. http://www.cpc.unc.edu/projects/addhealth/faqs/aboutdata
    *  The Wave I stategy employed a stratified, over-sampled design so as to capture sufficient sampling of minority and rare groups. For example, 1038 African American students from well-educated families--with a parent with a college degree. 334 Chinese, 450 Cuban, 437 Puerto Rican.
    *  Potential issues (estimation bias, etc) may be a result of this collection strategy: 
The strategy used to protect against potential sampling issues has a couple of potential bias issues that arise. First, students and parents were alerted beforehand of the date of survey and some parents could have potentially pulled their students thereby self-selection (out) of the sample. 
    * Second, the "saturated" schools--that interviewed every student and parents at the home--were mostly (14 of 16) small-sized (n < 300 students). This type of data doesn't portray most of the stuffy, packed, busy high schools that overrun public schools. The 1994 data also mostly misses the rise and diversity of charter schooling. Besides these petty pedagogical points, the data is nationally representative. 
    * Finally, the Wave four data--when the original 1994-1995 cohort becomes 32-39 years old--collects a smaller sample than the 6504 cases available for the current subset of the study. RQ3 has 3000 cases.
    

2. Using either a numerical variable or a two-level categorical variable, calculate and interpret a confidence interval for the population mean or proportion.
    * The variable of college expectation is the outcome variable of interest. It is a discrete-interval numerical variable along the scale from nominal, ordinal, discrete-interval, and continuous-ratio. In the case of this variable.
    
    * `t.test()` or `binom.test()` used to calculate the mean and confidence interval.   
    * ANSWER: Running a simple t-test, the mean of x is 4.312 and the 95% Confidence Interval lies between 4.274 and 4.35. This is given a t of 223, df of 3002 and p-value < 2.23-16. 
    
    * Confidence interval.  ANSWER: The CI indicates that it is fairly clear that there is a narrow CI. I am confident that such a narrow measurement may be useful to compare with the confidence interval of only those students' expectations with working status (to be investigated below)
    * Plot of the data, estimate, and confidence interval in a single well-labelled plot.

```{R}
t.result <- t.test(addhealth.sub$ExpectCollegeNum, conf.level = 0.95)  #$
t.result
```
The sample mean of the $($College Expectation$)$ is `r signif(t.result$estimate, 3)`.
We are 95% confident that the population mean is between
`r signif(t.result$conf.int[1], 3)` and
`r signif(t.result$conf.int[2], 3)`.


```{R, cache = TRUE}

library(ggplot2)
p <- ggplot(addhealth.sub, aes(x = ExpectCollegeNum))
p <- p + geom_histogram(binwidth = .5, alpha = .25)
p <- p + geom_rug(alpha = 1/5)
# est
p <- p + geom_vline(aes(xintercept = as.numeric(t.result$estimate)), colour = "red", alpha = .75, size = 2)
p <- p + geom_rect(aes(xmin = t.result$conf.int[1], xmax = t.result$conf.int[2], ymin = 0, ymax = 0)
                  , fill = "red", alpha = .5)
p <- p + labs(x = "Expectation to Attend College", title = "College Expectation \n red = est +- 95% CI")
print(p)
```


# HW08 Two-sample $t$-test: `ExpectCollegeNum` by `HighParenCollConcern`
```   
   * Is the population mean college expectation different for those with High Parental College Concern (HPC) or not (i.e., non-HPC)?
    *  `t.test()` to calculate the mean, test statistic, and p-value: 
    *   Significance Level. Sample mean of low parental concern (defined as < 4):   `Mu_{non-HPC}` = 3.528.  The `Mu_{HPC}` High Parental Concern group's mean score is 4.46 (expectation to attend college, scale of 1-5). ,the test statistic is t = -14.128.  P-value < 2.2e-16. So we're sure that those that do not have high parental support are between -1 and -.8 difference of mean expectation, at least according to the Welch Two Sample t-test.
    * This is a clear indication justifying the rejecting of the null hypothesis, stating that expecation does not differ between those with high parental college support and those with low parental college support 
    * (1 p) Given your conclusion, could you have committed at Type-I or Type-II error?  ANSWER: Had I done nothing and failed to reject the null--either through complacency or complicity--I would commit a type-II error, that is, to erroneously fail to report a rejected null hypothesis. 
```

```{R}
## If we create a summary data.frame with a similar structure as our data, then we
##   can annotate our plot with those summaries.
library(plyr)
est.mean.Ex <- ddply(addhealth.sub
                      , "HighParenCollConcern"
                      , summarise
                      , ExpectCollegeNum = mean(ExpectCollegeNum, na.rm = TRUE)
                      )
est.mean.Ex
```

```{R}
#factor(addhealth.sub$ExpectCollegeNum)
library(ggplot2)
p <- ggplot(addhealth.sub, aes(x = HighParenCollConcern, y = ExpectCollegeNum))
p <- p + geom_boxplot(width = 0.5, alpha = 0.5)
p <- p + geom_jitter(position = position_jitter(width = 0.1), alpha = 1/2, colour = "orange")
# diamond at mean for each group
p <- p + stat_summary(fun.y = mean, geom = "point", shape = 18, size = 6, colour = "purple", alpha = 0.8)
p <- p + labs(x = "Parental College Concern", y = "Expectation to attend College", title = "College Expectation \n by Parental College Concern")
print(p)
```

```{R}
# histogram using ggplot
addhealth.sub$HighParenCollConcern <- factor(addhealth.sub$HighParenCollConcern)
p <- ggplot(addhealth.sub, aes(x = ExpectCollegeNum))
p <- p + geom_histogram(binwidth = .5, colour = "red", alpha = .4)
p <- p + geom_rug()
p <- p + geom_hline(data = est.mean.Ex, aes(xintercept = ExpectCollegeNum, colour = "red"))
p <- p + facet_grid(HighParenCollConcern ~ .)
p <- p + labs(y = "Count of Students", x = "Expectation to Attend College", title = "College Expectation \n by High Parental College Concern")
print(p)
```

*potential one
```{R}
t.result <- t.test(addhealth.sub$ExpectCollegeNum, conf.level = 0.95)  #$
t.result
t.summary.Ex <- t.test(ExpectCollegeNum ~ HighParenCollConcern, addhealth.sub)
t.summary.Ex
```

1. ``Is the population mean college expectation different for those with High Parental Concern (HPC) or not (LPC)?''
    * $H_0: \mu_{Hi-ParConcern} = \mu_{LPC}$ versus $H_A: \mu_{HPC} \ne \mu_{Lo-ParConcern}$

2. Let $\alpha=0.05$, the significance level of the test and the Type-I error probability if the null hypothesis is true.

3. $t_{s} = `r signif(t.summary.Ex$statistic, 4)`$.

4. $p=`r signif(t.summary.Ex$p.value, 3)`$, this is the observed significance of the test.

5. Because $p=`r signif(t.summary.Ex$p.value, 3)` < 0.05$,
    we have sufficient evidence to reject $H_0$, concluding that the
   college expectations do indeed differ by parental college concern.

Final Conclusion: Because I rejected $H_0$ on overwhelming evidence to reject the null, I would have committed a Type-II error (that there is a difference and I failed to announce it to the research community). I also know that there is 3.62×10-e likelihood that I'm committing a type I error--given an alpha coefficient of 05.  (that there is no difference in the mean and my announcement is a spurious finding (which only confuses the research community)).


# HW 09 - ANOVA - Numerical DV, Categorical IV

Numerical response variable and a categorical variable with three to five levels 
  ANOVA hypothesis associated with your research questions.
    * 0. ANOVA hypotheses:
    * Let $\mu_i$ = pop mean Expectation to Attend College for children in group $i$, $(i=1,2,3,4)$.
We wish to test $H_0: \mu_1=\mu_2=\mu_3$ against $H_A: \textrm{not } H_0$.
`Expectation` factor variable and plot the data by the four groups, by combinations of the binarys working status and high parental college expectation. ANOVA STEPS
    * 1. plot the data for hypothesis test: (comparing means, assess equal variance assumption); N
    * 2.   `aov()` to calculate the hypothesis test statistic and p-value,
    * 3.   the significance level, test statistic, and p-value,
    * 4.    the conclusion in the context of the problem,
    * 5.   the normality assumption of the residuals using the bootstrap, QQ-plot, and Anderson-Darling test, and; 
    * 6.  the assumption of equal variance between groups using an appropriate test (also mention standard deviations of each group).
    * 7. If   rejected the ANOVA null hypothesis, perform follow-up pairwise comparisons using Tukey's HSD to indicate which groups have statistically different means and summarize the results.

Let $\mu_i$ = pop mean Expectation to Attend College for children in group $i$, $(i=1,2,3,4)$.
We wish to test $H_0: \mu_1=\mu_2=\mu_3$ against $H_A: \textrm{not } H_0$.

Plot the data in a way that compares the means.
Error bars are 95% confidence intervals of the mean.
# plot a reference line for the global mean (assuming no groups)
```{R}
aov.summary <-aov(ExpectCollegeNum ~ Studen, data = addhealth.sub)
aov.summary
#bc.summary <- boxcox(aov.summary, lambda = seq(-2,2,0.1), plotit = TRUE)
#install.packages("boxCox")
#help(boxCox) BoxCox Package not available for R 3.2.2
```

```{R, cache = TRUE}
p <- ggplot(addhealth.sub, aes(x = Studen, y = ExpectCollegeNum))
p <- p + geom_hline(yintercept = mean(addhealth.sub$ExpectCollegeNum),
                    colour = "black", linetype = "dashed", size = 0.3, alpha = 0.5)
# boxplot, size=.75 to stand out behind CI
p <- p + geom_violin(width = 0.5, alpha = 0.25)
p <- p + geom_boxplot(width = 0.25, alpha = 0.25)
# points for observed data
p <- p + geom_point(position = position_jitter(w = 0.05, h = 0), alpha = 0.2)
# diamond at mean for each group
p <- p + stat_summary(fun.y = mean, geom = "point", shape = 18, size = 4,
                      colour = "red", alpha = 0.8)
# confidence limits based on normal distribution
p <- p + stat_summary(fun.data = "mean_cl_normal", geom = "errorbar",
                      width = .2, colour = "red", alpha = 0.8)
p <- p + labs(title = "College Expectation vs Student Type") +
          ylab("College Expectation") + xlab("Student Type")
print(p)
```
__Hypothesis test__
1. Set up the __null and alternative hypotheses__ in words and notation.
    * In words: ``The population mean College Expectation is different between the four Student-Situation Groups.''
   Let $\mu_i$ = pop mean Expectation to Attend College in group $i$, $(i=1,2,3,4)$.
We wish to test $H_0: \mu_1=\mu_2=\mu_3$ against $H_A: \textrm{not } H_0$.
    * In notation: $H_0: \mu_1=\mu_2=\mu_3$ versus $H_A: \textrm{not } H_0$ (at least one pair of means differ).
2. Let the significance level of the test be $\alpha=0.05$.

3. Compute the __test statistic__.
```{R}
fit.c <- aov(ExpectCollegeNum ~ Studen, data = addhealth.sub)
summary(fit.c)
```

__Hypothesis test__
The $F$-statistic for the ANOVA is $F = `r signif(unlist(summary(fit.c))["ExpectCollegeNum"], 3)`$.
4. Compute the __$p$-value__ from the test statistic.
The p-value for testing the null hypothesis is 
  $p = `r signif(unlist(summary(fit.c))["Pr(>F)1"], 3)`$.
5. (2 p) State the __conclusion__ in terms of the problem.
6. __Check assumptions__ of the test.
  a. Residuals are normal?
  b. Populations have equal variances?
* Check whether residuals are normal....
- Plot the residuals and assess whether they appear normal.

```{R, cache = TRUE}
# Plot the data using ggplot
df.residual <- data.frame(res = aov.summary$residuals)
library(ggplot2)
p <- ggplot(df.residual, aes(x = res))
p <- p + geom_histogram(aes(y = ..density..), binwidth = 0.2, colour = "white")
p <- p + geom_density(colour = "blue")
p <- p + geom_rug()
p <- p + stat_function(fun = dnorm, colour = "red", arg = list(mean = mean(addhealth.sub$ExpectCollegeNum), sd = sd(addhealth.sub$ExpectCollegeNum)))
p <- p + labs(title = "ANOVA Residuals", x = "Residuals", y = "Density")
print(p)
```
-->
(1 p) Describe the plot of residuals as it relates to model assumptions. ANSWER: ANOVA Model assumptions require that the population have equal spreads evidenced by heavy tails and skews and that the population curve be normal. Since the residuals reveal a relatively normal curve of the sample. In fact, this distribution would almost resemble a sample from a known "normal" population. Comparing the ideal with our own sample distrbution, this is sufficiently normal to proceed.


- Plot the residuals versus the normal quantiles.
  If the residuals are normal, then the will fall on the center line and
  very few will be outside the error bands.

```{R}
# QQ plot
#library(ggplot2)
#install.packages("car")
#library(car)
#par(mfrow=c(1,1))
#qqPlot(aov.summary$residuals, las = 1, id.n = 0, id.cex = 1, lwd = 1, main="QQ Plot")
#Previous line will not knit due to $ operator will not with atomic vector...
```

(1 p) Describe the plot of residuals as it relates to model assumptions.
ANSWER: So, here the distribution looks not very normal with substantial outliers at the both tails. 

- A formal test of normality on the residuals tests the hypothesis
  $H_0:$ The distribution is Normal vs
  $H_1:$ The distribution is not Normal.
We can test the distribution of the residuals.

Three tests for normality are reported below.
I tend to like the Anderson-Darling test.  Different tests have different properties, and
  tests that are sensitive to differences from normality in the tails of the
  distribution are typically more important for us (since deviations in the tails
  are more influential than deviations in the center).

```{R, cache = TRUE}
shapiro.test(fit.c$residuals)
#install.packages("nortest")
library(nortest)
ad.test(fit.c$residuals)
cvm.test(fit.c$residuals)
```

(1 p) Interpret the conclusion of the Anderson-Darling test: Firstly, we can use the test because there is a heavy left and heavy right tail, or any other problem.  The AD test reveals the P-value is <2.2e-16. This is problematic because the residuals are not normal, so no need for other tests. In this case, we want to accept the null hypothesis, as we desired > .05 for p-value.

* Check whether populations have equal variances. Look at the numerical summaries below.

```{R, cache = TRUE}
# calculate summaries 
library(plyr)
addhealth.sub.summary <- ddply(addhealth.sub, "RaceEth",
     function(X) { data.frame( m = mean(X$ExpectCollegeNum),
                              s = sd(X$ExpectCollegeNum),
                               n = length(X$ExpectCollegeNum) ) } )
addhealth.sub.summary
```
The standard deviation is higher among Latinos, while they are also the lowest mean along with Natives. The SD of Whites, Natives are then slightly less, and that of Blacks is lower. Asians have lowest standard deviation and Asians lowest SD and highest mean college expectation. 

Formal tests for equal variances.
We can test whether the variances are equal between our three groups.
This is similar to the ANOVA hypothesis, but instead of testing means we're tesing variances.
$H_0: \sigma^2_1=\sigma^2_2=\sigma^2_3$
versus $H_A: \textrm{not } H_0$ (at least one pair of variances differ).
```{R, cache = TRUE}
## Test equal variance
# assumes populations are normal
bartlett.test(ExpectCollegeNum ~ ParenConcernMean, data = addhealth.sub)

# does not assume normality, requires car package
library(car)
leveneTest(ExpectCollegeNum ~ ParenConcernMean, data = addhealth.sub)

# nonparametric test
fligner.test(ExpectCollegeNum ~ ParenConcernMean, data = addhealth.sub)
```
If normality was reasonable then use Bartlett, otherwise use Levene. Therefore, using the Bartlett (in spite of non-normal distribution) the test indicates p-value of .<2.2e-16. (P-value is derived from 'area under the chi-squared curve to the right of B obs.) In this case again we do regrettably need to to reject the null hypothesis (which means non-normality). 
Next, then the Leven test (which does not assume normality), is then applied indicating a Pr(>F) at <2.2e-16, with n of 3018.[[Not sure of the deeper meaning yet]]. Finally, the Fligner-Killeen Test of homogeneity of variances yields same p-value of <2.2e-16, with degrees of freedom df = 8, chi-squared of 388.23. 

7. Since the ANOVA null hypothesis was rejected, I perform the follow-up Post Hoc pairwise comparison tests to determine which pairs of means are different.

There are several multiple comparison methods described in the notes.
Let us use Tukey's Honest Significant Difference (HSD) here to test which pairs of populations differ.
```{R, cache = TRUE}
## Add Health
# Tukey 95% Individual p-values
TukeyHSD(fit.c)
```
  Tukey multiple comparisons of means
    95% family-wise confidence level
Fit: aov(formula = ExpectCollegeNum ~ Studen, data = addhealth.sub)
$Studen
                                                  diff        lwr         upr
##Low Concern,Not Work-High Concern,Not Work -0.87133231 -1.0590336 -0.68363101
##High Concern,Work-High Concern,Not Work    -0.00836706 -0.1131826  0.09644849
##Low Concern,Work-High Concern,Not Work     -0.99973404 -1.1774257 -0.82204241
##High Concern,Work-Low Concern,Not Work      0.86296525  0.6807614  1.04516911
##Low Concern,Work-Low Concern,Not Work      -0.12840173 -0.3603204  0.10351692
##Low Concern,Work-High Concern,Work         -0.99136698 -1.1632413 -0.81949266
                                               p adj
##Low Concern,Not Work-High Concern,Not Work 0.0000000
##High Concern,Work-High Concern,Not Work    0.9969448
##Low Concern,Work-High Concern,Not Work     0.0000000
##High Concern,Work-Low Concern,Not Work     0.0000000
##Low Concern,Work-Low Concern,Not Work      0.4848930
##Low Concern,Work-High Concern,Work         0.0000000
The differing pairs can be compared: According to Tukey's Honest Signicant Difference test, We see the three comparisons of the three groups, and clearly the pairs with a 'High Concern,Work-High Concern,Not Work' are not hardly different at -0.0083 difference (Not working has slightly higher expectation).  Yet we see large differences between the high concern versus low concern. Thus pairs involving high and low concerns are most notably different (.99 high over low, both working).

Ordering the means and grouping pairs that do not differ (see notes for examples).

  Example:  [low concern and working] AND [high concern and working] groups differ, but group pairings with equal "concerns" do not differ.
    (These groups are ordered by mean, so Low Concern-Working has the lowest mean and High Concern-Not Working has the highest mean college expectation.)
These groups are ordered by mean, so that Low Concern,Work is lowest, and NotWork-high Concern is highest:
  Work-High Concern,NotWork-high Concern | Low Concern,Work versus High Concern,Not Work
                    
------------------|----------------------|-------------------|------------
    Low Concern-Work, | Low Concern-Non Work,| High Concern-Work,| High Concern,Not Work
------------------|----------------------|-------------------|----------------



# HW 10 Multinomial Tests and Goodness of Fit
## Setting up Expected and Observed Frequencies
1. Using a categorical variable with three to five levels (or a categorical variable you can reduce to three to five levels),
  specify an multinomial goodness-of-fit hypothesis associated with your research questions.
    * Specify the goodness-of-fit hypotheses in words and notation, I expect that the distribution of expectation to attend college would be proportionate to population. 
    * Plot the data in a way that is consistent with hypothesis test (comparing observed and expected proportions),
    * Use `chisq.test()` to calculate the hypothesis test statistic and p-value,
    * State the significance level, test statistic, and p-value,
    * State the conclusion in the context of the problem, and
    * Assess the assumptions of the test.
    * Plot the contribution to Chi-sq statistic and comment on which groups deviate the most from expected.
    * If you rejected the goodness-of-fit null hypothesis, perform follow-up pairwise comparisons using one-sample proportions tests to indicate which groups have statistically different proportions (using Bonferroni to control the Familywise Error Rate) and summarize the results.  Otherwise, simply indicate that you did not reject the null hypothesis. 
    Under an assumption of probability distribution of being one of four student types (at least at the time of survey), by race-ethnicity. 

```{R}
### Observed, group = 4
# observed proportions
## High Concern,Not Work  Low Concern,Not Work     High Concern,Work      Low Concern,Work 
#          0.34005954            0.07707575            0.49454185            0.08832286
obs.Studen <- table(addhealth.sub$Studen)
obs.Studen
obs.tableStuden <- prop.table(obs.Studen)

# probability of any particular social-cultural situation, by race
prop.RaceEth <- table(addhealth.sub$RaceEth)
prop.RaceEth
prop.tableExpect <- prop.table(prop.RaceEth)
prop.tableExpect
#     White      Black     Native      Asian       Latino 
# 0.59957627  0.16991525  0.04957627  0.05338983  0.12754237  
p  <- 0.5996 ## Looking at Majority students
p1 <- 0.1275 ## Looking at Latino Students
# Expected proportion for each student group
exp.prop <- rep(NA, 4)
exp.prop[1] <- pnbinom(0, 4, p) + pnbinom(0, 4, 1 - p)
exp.prop[2] <- (pnbinom(1, 4, p) - pnbinom(0, 4, p)) + (pnbinom(1, 4, 1 - p) - pnbinom(0, 4, 1 - p))
exp.prop[3] <- (pnbinom(2, 4, p) - pnbinom(1, 4, p)) + (pnbinom(2, 4, 1 - p) - pnbinom(1, 4, 1 - p))
exp.prop[4] <- 1 - pnbinom(2, 4, p) - pnbinom(2, 4, 1 - p)
signif(exp.prop, 3)
# checking that the proportions sum to 1
sum(exp.prop)
# Expected number of student groups
exp.Studen <- sum(obs.Studen) * exp.prop

round(exp.Studen, 1)

# p1... ^^ p versus p1 >> >>
exp.prop1 <- rep(NA, 4)
exp.prop1[1] <- pnbinom(0, 4, p1) + pnbinom(0, 4, 1 - p1)
exp.prop1[2] <- (pnbinom(1, 4, p1) - pnbinom(0, 4, p1)) + (pnbinom(1, 4, 1 - p1) - pnbinom(0, 4, 1 - p1))
exp.prop1[3] <- (pnbinom(2, 4, p1) - pnbinom(1, 4, p1)) + (pnbinom(2, 4, 1 - p1) - pnbinom(1, 4, 1 - p1))
exp.prop1[4] <- 1 - pnbinom(2, 4, p1) - pnbinom(2, 4, 1 - p1)
signif(exp.prop1, 3)
# checking that the proportions sum to 1
sum(exp.prop1)
# Expected number of student groups
exp.Studen1 <- sum(obs.Studen) * exp.prop1
round(exp.Studen1, 1)

summary(exp.Studen)
summary(exp.Studen1) # exp.prop1, exp.Studen1
```

## Goodness-of-fit test

```{R}
frame.Studen <- data.frame(n.Studen = factor(names(obs.Studen))
                  , obs = as.numeric(obs.Studen)
                  , exp = exp.Studen
                  , exp.prop = exp.prop
                    )
str(frame.Studen)
frame.Studen
# p1... ^^ p versus p1 >> >>
frame.Studen1 <- data.frame(n.Studen1 = factor(names(obs.Studen))
                  , obs = as.numeric(obs.Studen)
                  , exp = exp.Studen1
                  , exp.prop = exp.prop1
                    )
str(frame.Studen1)
frame.Studen1
```

### Perform $\chi^2$ test.
1.  Set up the __null and alternative hypotheses__ in words and notation.
    * ANSWER: "Null hypothesis states there is no statistically significant difference in student type by race-ethnicity from general population"
    * In notation: $H_0: Type1=Type2=Type3$ versus $H_A: Type differs by race$

2. __significance level__ of the test, such as $\alpha=0.05$.

```{R}
# calculate chi-square goodness-of-fit test
x.summary <- chisq.test(frame.Studen$obs, correct = FALSE, p = frame.Studen$exp.prop)
# print result of test
x.summary
# use names(x.summary) to find the statistic and p.value objects to print in text below
#                      replace 000 below with the object correct
# p1... ^^p versus p1 >> >>
x.summary1 <- chisq.test(frame.Studen1$obs, correct = FALSE, p = frame.Studen1$exp.prop)
# print result of test
x.summary1
```
3. (1 p) Compute the __test statistic__.
The test statistic is $X^2 = `r signif(1496, 3)`$.
4. (1 p) The __$p$-value__.
The p-value $= `r signif(2.2e-16, 3)`$.
5. (1 p) State the __conclusion__ in terms of the problem.
    * I therefore reject $H_0$ in favor of $H_A$ if $p\textrm{-value} < \alpha$.
    * Opposite: Fail to reject $H_0$ if $p\textrm{-value} \ge \alpha$.
6. (1 p) __Check assumptions__ of the test (see notes).

## Chi-sq statistic helps us understand the deviations
```{R}
# use output in x.summary and create table
x.table <- data.frame(n.Studen = frame.Studen$n.Studen
                    , obs = x.summary$observed
                    , exp = x.summary$expected
                    , res = x.summary$residuals
                    , chisq = x.summary$residuals^2
                    , stdres = x.summary$stdres)
x.table
# p1... ^^ p versus p1 >>
x.table1 <- data.frame(n.Studen1 = frame.Studen1$n.Studen1
                    , obs = x.summary1$observed
                    , exp = x.summary1$expected
                    , res = x.summary1$residuals
                    , chisq = x.summary1$residuals^2
                    , stdres = x.summary1$stdres)
x.table1
```

Plot observed vs expected values to help identify `n.Studen` groups that deviate the most.
Plot contribution to chi-square values to help identify `n.Studen` groups that deviate the most.
The term ``Contribution to Chi-Square'' (`chisq`) refers to the values of
  $\frac{(O-E)^2}{E}$ for each category.
$\chi^2_{\textrm{s}}$ is the sum of those contributions.

```{R, fig.width = 8, fig.height = 8}
library(reshape2)
x.table.obsexp <- melt(x.table,
              # id.vars: ID variables
              #   all variables to keep but not split apart on
              id.vars = c("n.Studen"),
              # measure.vars: The source columns
              #   (if unspecified then all other variables are measure.vars)
              measure.vars = c("obs", "exp"),
              # variable.name: Name of the destination column identifying each
              #   original column that the measurement came from
              variable.name = "stat",
              # value.name: column name for values in table
              value.name = "value"
            )
x.table.obsexp
# p1... ^^ p versus p1 >> >>
x.table.obsexp1 <- melt(x.table1,
              # id.vars: ID variables
              #   all variables to keep but not split apart on
              id.vars = c("n.Studen1"),
              # measure.vars: The source columns
              #   (if unspecified then all other variables are measure.vars)
              measure.vars = c("obs", "exp"),
              # variable.name: Name of the destination column identifying each
              #   original column that the measurement came from
              variable.name = "stat",
              # value.name: column name for values in table
              value.name = "value"
              )
x.table.obsexp1
# Observed vs Expected counts
library(ggplot2)
p <- ggplot(x.table.obsexp, aes(x = n.Studen, fill = stat, weight=value))
p <- p + geom_bar(position="dodge")
p <- p + labs(title = "Observed and Expected Frequencies", x = "High Pa Concern-Not Working,LC-NW,HC-W,LC-W\n Four Student Categories", y = "frequencies - Majority")
print(p)
# p1... ^^ p versus p1 >> >>
p1 <- ggplot(x.table.obsexp1, aes(x = n.Studen1, fill = stat, weight=value))
p1 <- p1 + geom_bar(position="dodge")
p1 <- p1 + labs(title = "Observed and Expected Frequencies", x = "HC-NW,LC-NW,HC-W,LC-W\n Four Student Categories", y = "frequencies - Latino")
print(p1)

library(gridExtra)
grid.arrange(p, p1, nrow=1)
 # Contribution to chi-sq
# pull out only the n.Studen and chisq columns
x.table.chisq <- x.table[, c("n.Studen", "chisq")]
# reorder the n.Studen categories to be descending relative to the chisq statistic
x.table.chisq$n.Studen <- with(x.table, reorder(n.Studen, -chisq))
# p1... ^^ p versus p1 >> >>
x.table.chisq1 <- x.table1[, c("n.Studen1", "chisq")]
# reorder the n.Studen categories to be descending relative to the chisq statistic
x.table.chisq1$n.Studen1 <- with(x.table1, reorder(n.Studen1, -chisq))


p3 <- ggplot(x.table.chisq, aes(x = n.Studen, weight = chisq))
p3 <- p3 + geom_bar(alpha = .15)
p3 <- p3 + labs(title = "Contribution to Chi-sq statistic")
p3 <- p3 + xlab("Sorted n.Studen")
p3 <- p3 + ylab("Chi-sq - Majority")
print(p3)
# p1... ^^ p versus p1 >> >>
p4 <- ggplot(x.table.chisq1, aes(x = n.Studen1, weight = chisq))
p4 <- p4 + geom_bar(alpha = .15)
p4 <- p4 + labs(title = "Contribution to Chi-sq statistic")
p4 <- p4 + xlab("Sorted n.Studen1")
p4 <- p4 + ylab("Chi-sq - Latino")
print(p4)
library(gridExtra)
grid.arrange(p, p1,p3,p4, nrow=2)
```

## Multiple Comparisons
The goodness-of-fit test suggests that at least one of the `n.Studen` category type
proportions for the observed number of student types differs from the expected number of student type proportions.  A reasonable next step in the analysis would be to __separately__ test
the four hypotheses:
$H_0: p_{4} = `r signif(exp.prop[1], 3)`$,
$H_0: p_{5} = `r signif(exp.prop[2], 3)`$,
$H_0: p_{6} = `r signif(exp.prop[3], 3)`$, and
$H_0: p_{7} = `r signif(exp.prop[4], 3)`$ to see which `n.Studen` types led to this conclusion.

A Bonferroni comparison with a Family Error Rate $\alpha=0.05$
  sets each test's significance level to $\alpha = 0.05 / 4 = `r signif(0.05/4, 3)`$,
  which corresponds to `r signif(100 * (1 - 0.05/4), 4)`% two-sided CIs
  for the individual proportions.

Below I perform exact binomial tests of proportion for each of the four `n.Student` category types
  at the Bonferroni-adjusted significance level.I save the p-values and confidence intervals in a table along with the  observed and census proportions in order to display the table below.
```{R}
b.sum1 <- binom.test(frame.Studen$obs[1], sum(frame.Studen$obs), p = frame.Studen$exp.prop[1], alternative = "two.sided", conf.level = 1-0.05/4)
b.sum2 <- binom.test(frame.Studen$obs[2], sum(frame.Studen$obs), p = frame.Studen$exp.prop[2], alternative = "two.sided", conf.level = 1-0.05/4)
b.sum3 <- binom.test(frame.Studen$obs[3], sum(frame.Studen$obs), p = frame.Studen$exp.prop[3], alternative = "two.sided", conf.level = 1-0.05/4)
b.sum4 <- binom.test(frame.Studen$obs[4], sum(frame.Studen$obs), p = frame.Studen$exp.prop[4], alternative = "two.sided", conf.level = 1-0.05/4)
# put the p-value and CI into a data.frame
b.sum  <- data.frame(
            rbind( c(b.sum1$p.value, b.sum1$conf.int)
                 , c(b.sum2$p.value, b.sum2$conf.int)
                 , c(b.sum3$p.value, b.sum3$conf.int)
                 , c(b.sum4$p.value, b.sum4$conf.int)
            )
          )
names(b.sum) <- c("p.value", "CI.lower", "CI.upper")
b.sum$n.Studen <- frame.Studen$n.Studen
b.sum$Observed <- x.table$obs/sum(x.table$obs)
b.sum$exp.prop <- frame.Studen$exp.prop
b.sum
```

(2 p) Conclusions of the four hypothesis tests above.
(Note that the p-value is your guide here, not the CI.)

```{R}
# Observed vs Expected proportions
library(ggplot2)
p <- ggplot(b.sum, aes(x = n.Studen, y = Observed))
# observed
p <- p + geom_point(size = 4)
p <- p + geom_line(aes(group = 1))
p <- p + geom_errorbar(aes(ymin = CI.lower, ymax = CI.upper), width = 0.1)
# expected
p <- p + geom_point(aes(y = exp.prop), colour = "red", shape = "x", size = 6)
p <- p + geom_line(aes(y = exp.prop, group = 1), colour = "red")
p <- p + labs(title = "Observed (w/98.75% CI) and Expected (red x) proportions")
p <- p + xlab("Student Type")
p <- p + expand_limits(y = 0)
print(p)
```

The distribution of Latino students indicates higher than usual proportions of working, and parents with higher than usual college concerns.

HW 10 Conclusion: Multinomial Tests and Goodness of Fit
1. Using a categorical variable with three to five levels (or a categorical variable you can reduce to three to five levels),
  specify an multinomial goodness-of-fit hypothesis associated with your research questions.
    * (1 p) Specify the goodness-of-fit hypotheses in words and notation,
    * (2 p) plot the data in a way that is consistent with hypothesis test (comparing observed and expected proportions),
    * (1 p) use `chisq.test()` to calculate the hypothesis test statistic and p-value,
    * (1 p) state the significance level, test statistic, and p-value,
    * (1 p) state the conclusion in the context of the problem, and
    * (1 p) assess the assumptions of the test.
    * (1 p) Plot the contribution to Chi-sq statistic and comment on which groups deviate the most from expected.
    * (2 p) If you rejected the goodness-of-fit null hypothesis, perform follow-up pairwise comparisons using one-sample proportions tests to indicate which groups have statistically different proportions (using Bonferroni to control the Familywise Error Rate) and summarize the results.  Otherwise, simply indicate that you did not reject the null hypothesis.
    



# HW 11 Two-way categorical analysis Homogeneity of Proportions and Simple Linear Regression
1. Two-way categorical analysis. Using two categorical variables with two to five levels each,
  specify a hypothesis test for homogeneity of proportions associated with your research questions.
    * (1 p) Specify the hypotheses in words and notation.
    * (1 p) State the conclusion of the test in the context of the problem.
    * (1 p) Plot a mosaic plot of the data and Pearson residuals.
    * (1 p) Interpret the mosaic plot with reference to the Pearson residuals.

2. Simple linear regression.
Select two numerical variables.
    * (1 p) Plot the data and, if required, transform the variables so a roughly linear relationship is observed.  All interpretations will be done on this scale of the variables.
    * (0 p) Fit the simple linear regression model.
    * (1 p) Assess the residuals for lack of fit (interpret plots of residuals vs fitted and $x$-value).
    * (1 p) Assess the residuals for normality (interpret QQ-plot and histogram).
    * (1 p) Assess the relative influence of points.
    * (1 p) Test whether the slope is different from zero, $H_A: \beta_1 \ne 0$.
    * (1 p) Interpret the $R^2$ value.

## Hypothesis test for Homogeneity of Proportions (categorical association)
 * (1 p) Specify the hypotheses in words and notation.
__null and alternative hypotheses__ in words and notation.
    * In words: ``There is an association between [Working Status] and [ExpectCollege].''
    * In notation: $H_0: p(i-College Expectation \textrm{ and } j-Working Status) = p(i)p(j)$ versus $H_A: p(i-College Expectation \textrm{ and } j-Working Status) \ne p(i)p(j)$, for all row categories $i$ and column categories $j$.
      The probability of row category, College Expectation, $i$ are conditional on column category, Working Status $j$,
        $p(i|j) = p(i)$, does not depend on which column category $j$ we consider.
        
__significance level__ of the test is $\alpha=0.05$.
* (1 p) State the conclusion of the test in the context of the problem.
  
__test statistic__of homogogeneity of proportions is $\chi^2$. 
  * $X>^2$ = 4.934 meaning that p-value is .2941.  
  * So we fail to reject the null hypothesis (H0=no diff) This means that they have the same expectations, no matter if they work or not... (unlike the condition ofparental concern)

__$p$-value__ .2941 from the test statistic
  with degrees of freedom,  $df = (5-1)(2-1) = 4$,
  where $5$ and $2$ are the number of rows and columns.
__conclusion__ in terms of the problem.
    * The test fails to reject $H_0$ in favor of $H_A$ if $p\textrm{-value} < \alpha$.
    * The test fails to reject $H_0$ because $p\textrm{.2941} \ge \alpha$.
   
__Check assumptions__ of the test: The expected count for each cell is at least 5

## sum of the frequencies and column proportions.
The column proportions are interpreted as the proportion of students' College Expectations conditional on Working Status.
If these column proportions are roughly the same for each Grade,
  then that's an indication of no association.
```{R}
# Tabulate by two categorical variables:
tab.ExpectCollegeWorking <- xtabs(~ ExpectCollege + Working, data = addhealth.sub)
tab.ExpectCollegeWorking

# column proportions
prop.table(tab.ExpectCollegeWorking, margin = 2)
```

```{R}
chisq.gg <- chisq.test(tab.ExpectCollegeWorking, correct=FALSE)
chisq.gg
  # names(chisq.gg) for the objects to report
```
__test statistic__, such as $X^2$. The test statistic is $X^2 = `r signif(chisq.gg$statistic, 3)`$. The p-value $= `r signif(chisq.gg$p.value, 3)`$.  $X>^2$ = 4.934 meaning that p-value is .2941.  So we fail to reject the null hypothesis (H0=no diff) This means that they have the same expectations, no matter if they work or not...
__conclusion__ in terms of the problem.  ANSWER: $X>^2$ = 4.934 meaning that p-value is 0.2941  So we fail to reject the null hypothesis (H0=no diff) This means that they have the same goals, no matter the grade level, with 95% confidence. 
__Check assumptions__ of the test
  Expected count for each cell is at least 5, or at least 1 provided the expected counts are not too variable. 
  
```{R}
# table of expected frequencies:
chisq.gg$expected
# smallest expected frequency:
min(chisq.gg$expected)
```
Model assumptions met? ANSWER: No problem, the smallest group (Not working with an Expectation of 2) has 44. Yes, the assumptions are met.
## Deviations details
Since I rejected the null hypothesis above, the Pearson residuals are a way to 
  indicate which cells of the table were different from expected.
Residuals more extreme than roughly $\pm 2$ are considered ``large''.
```{R}
# The Pearson residuals
chisq.gg$residuals
# The sum of the squared residuals is the chi-squared statistic:
chisq.gg$residuals^2
sum(chisq.gg$residuals^2)
```
__the Pearson residuals__. The sum of the squared residuals ($X^2$ is 4.93. This is much more than $\pm 2$, so the residuals are too large. Further, when looking by group, I see that the largest individual residual contribution is .98 among those that have a "3" expectation to attend college and do not work $\pm .4$ )

The mosaic plot is a visual representation of the observed frequencies (areas of each box) and the Pearson residual (color bar).
If rectangles are the same size along rows and columns (and gray),
  then they're close to expected.
Differences between observed and expected frequencies are indicated by
  different sized rectangles across rows or down columns and
  colors indicate substantial contributions to the $X^2$ statistic.

```{R}
# mosaic plot
#install.packages("vcd")
library(vcd)
mosaic(tab.ExpectCollegeWorking, shade=TRUE, legend=TRUE)
# this layout gives us the interpretation we want:
mosaic(~ ExpectCollege + Working, data = addhealth.sub, shade=TRUE, legend=TRUE, direction = "v")
```
  * (1 p) Plot a mosaic plot of the data and Pearson residuals.
    * (1 p) Interpret the mosaic plot with reference to the Pearson residuals.
__mosaic plot__ The plot clearly indicates there is something about the those that are not working and marked a "3" or "2", but apparently not enough to be substantively significant to reject the Pearson Chi-Square test of homogeneity of proportions.


## Second Homogeneity Test:
## College Expectation vs Student Type (working/parental concern)
_Repeat the analysis above, but compare student type instead of Working Status._

```{R}
# Tabulate by two categorical variables:
tab.ExpectCollegeStuden <- xtabs(~ ExpectCollege + Studen, data = addhealth.sub)
tab.ExpectCollegeStuden

# column proportions
prop.table(tab.ExpectCollegeStuden, margin = 2)
```

1. __null and alternative hypotheses__ in words and notation.
    * In words: ``There is an association between [College Expectation] and [Studen Type].''
    * In notation: $H_0: p(i \textrm{ and } j) = p(i)p(j)$ versus $H_A: p(i \textrm{ and } j) \ne p(i)p(j)$, for all row categories $i$ and column categories $j$.

2. Choose the __significance level__ of the test, such as $\alpha=0.05$.

```{R}
chisq.es <- chisq.test(tab.ExpectCollegeStuden, correct=FALSE)
chisq.es
  # names(chisq.ga) for the objects to report
```
The test statistic is $X^2 = `r signif(chisq.es$statistic, 3)` = 343$. The p-value $= `r signif(chisq.es$p.value, 3)`$ < 2.2e-16

__conclusion__ in terms of the problem. ANSWER: Thus, given that the p-value is <.05, and even <.001, and thus reason to believe there is association between the college expectations and student type [parental college concern/working status] in statistically significant terms.
provided the expected counts are not too variable).

```{R}
# table of expected frequencies:
chisq.es$expected
# smallest expected frequency:
min(chisq.es$expected)
```
__model assumptions__ Luckily, the model assumptions are met because the lowest expected cell count is >5, at 8 (cutting it close, there). 


## Deviations details
Since I rejected the null hypothesis above, the Pearson residuals are a way to
  indicate which cells of the table were different from expected.
Residuals more extreme than roughly $\pm 2$ are considered ``large''.
```{R}
# The Pearson residuals
chisq.es$residuals
# The sum of the squared residuals is the chi-squared statistic:
chisq.es$residuals^2
sum(chisq.es$residuals^2)
```
__Pearson residuals__ Having rejected the null hypothesis, certifying there is at least one significant difference, we look and find several combinations where college expectation and student type are greater than $\PM  2$, at up to 8.59 (low concern-working that have a '1' expectation).  


The mosaic plot is a visual representation of the observed frequencies (areas of each box)
  and the Pearson residual (color bar).
If rectangles are the same size along rows and columns (and gray),
  then they're close to expected.
Differences between observed and expected frequencies are indicated by
  different sized rectangles across rows or down columns and
  colors indicate substantial contributions to the $X^2$ statistic.
```{R}
# mosaic plot
#install.packages("vcd")
library(vcd)
mosaic(tab.ExpectCollegeStuden, shade=TRUE, legend=TRUE)
# this layout gives us the interpretation we want:
mosaic(~ ExpectCollege + Studen, data = addhealth.sub, shade=TRUE, legend=TRUE, direction = "v")
```
__mosaic plot__ The plot indicates there is an above average number of low-concern/working or non-working students that have a 5/5 college expectation






## Linear Regression
```{R, cache = TRUE}
library(ggplot2)
p <- ggplot(addhealth.sub, aes(x = ParenConcernNum, y = ExpectCollegeNum))
# linear regression fit and confidence bands
p <- p + geom_smooth(method = lm, se = TRUE)
# jitter a little to uncover duplicate points
p <- p + geom_jitter(position = position_jitter(.1), alpha = 0.5, colour = "orange")
# separate for Race-Ethnicity
p <- p + facet_wrap(~ RaceEth, nrow = 1)
p <- p + labs(title="Regression of parental college concern \n and college expectation", y = "College Expectation", x = "Parental Concern")
p
```
#
```{R, cache = TRUE, fig.width = 10, fig.height = 12}
p1 <- ggplot(addhealth.sub, aes(x = Age, y = ParenConcernNum))
# linear regression fit and confidence bands
p1 <- p1 + geom_smooth(method = lm, se = TRUE)
# jitter a little to uncover duplicate points
p1 <- p1 + geom_jitter(position = position_jitter(.1), alpha = 0.05, colour = "orange")
# separate for Race-Ethnicity
p1 <- p1 + facet_wrap(~ RaceEth, nrow = 1)
p1 <- p1 + labs(title="Regression of IV age \n and DV parental college concern", y = "Parental Concern", x = "Age")
#


p4 <- ggplot(addhealth.sub, aes(x = HoursWorked, y = ExpectCollegeNum))
# linear regression fit and confidence bands
p4 <- p4 + geom_smooth(method = lm, se = TRUE)
# jitter a little to uncover duplicate points
p4 <- p4 + geom_jitter(position = position_jitter(.1), alpha = 0.5, colour = "orange")
# separate for Females and Males
p4 <- p4 + facet_wrap(~ RaceEth, nrow = 1)
p4 <- p4 + labs(title="Regression of IV Hours Worked \n and DV college expectation", y = "College Expectation", x = "Hours Worked")
#


p2 <- ggplot(addhealth.sub, aes(x = ParenConcernNum, y = ExpectCollegeNum))
# linear regression fit and confidence bands
p2 <- p2 + geom_smooth(method = lm, se = TRUE)
# jitter a little to uncover duplicate points
p2 <- p2 + geom_jitter(position = position_jitter(.1), alpha = 0.5, colour = "orange")
# separate for Females and  Males
p2 <- p2 + facet_wrap(~ Sex, nrow = 1)
p2 <- p2 + labs(title="Regression of parental college concern \n and college expectation", y = "College Expectation", x = "Parental Concern")
#

p3 <- ggplot(addhealth.sub, aes(x = Age, y = ExpectCollegeNum))
# linear regression fit and confidence bands
p3 <- p3 + geom_smooth(method = lm, se = TRUE)
# jitter a little to uncover duplicate points
p3 <- p3 + geom_jitter(position = position_jitter(.1), alpha = 0.05, colour = "orange")
# separate for Females and Males
p3 <- p3 + facet_wrap(~ Sex, nrow = 1)
p3 <- p3 + facet_wrap(~ RaceEth, nrow = 1)
p3 <- p3 + labs(title="Regression of IV age \n and DV parental college concern", y = "College Expectation", x = "Age")
#

p4 <- ggplot(addhealth.sub, aes(x = HoursWorked, y = ExpectCollegeNum))
# linear regression fit and confidence bands
p4 <- p4 + geom_smooth(method = lm, se = TRUE)
# jitter a little to uncover duplicate points
p4 <- p4 + geom_jitter(position = position_jitter(.1), alpha = 0.5, colour = "orange")
# separate for Females and Males
p4 <- p4 + facet_wrap(~ RaceEth, nrow = 1)
p4 <- p4 + labs(title="Regression of IV Hours Worked \n and DV college expectation", y = "College Expectation", x = "Hours Worked")
#

p5 <- ggplot(addhealth.sub, aes(x = Age, y = HoursWorked))
# linear regression fit and confidence bands
p5 <- p5 + geom_smooth(method = lm, se = TRUE)
# jitter a little to uncover duplicate points
p5 <- p5 + geom_jitter(position = position_jitter(.1), alpha = 0.05, colour = "orange")
# separate for Females and Males
p5 <- p5 + facet_wrap(~ Sex, nrow = 1)
p5 <- p5 + labs(title="Regression of IV age \n and DV Hours Worked", y = "Hours Worked", x = "Age")
#
p6 <- ggplot(addhealth.sub, aes(x = Age, y = ExpectCollegeNum))
# linear regression fit and confidence bands
p6 <- p6 + geom_smooth(method = lm, se = TRUE)
# jitter a little to uncover duplicate points
p6 <- p6 + geom_jitter(position = position_jitter(.1), alpha = 0.05, colour = "orange")
# separate for Race-Ethnicity
p6 <- p6 + facet_wrap(~ RaceEth,  nrow = 1)
p6 <- p6 + labs(title="Regression of IV age \n and DV parental college concern", y = "Parental Concern", x = "Age")
#
p7 <- ggplot(addhealth.sub, aes(x = Age, y = ExpectCollegeNum))
# linear regression fit and confidence bands
p7 <- p7 + geom_smooth(method = lm, se = TRUE)
# jitter a little to uncover duplicate points
p7 <- p7 + geom_jitter(position = position_jitter(.1), alpha = 0.05, colour = "orange")
# separate for Race-Ethnicity
p7 <- p7 + facet_wrap(~ Sex,  nrow = 1)
p7 <- p7 + labs(title="Regression of IV age \n and DV parental college concern", y = "Parental Concern", x = "Age")

#
library(gridExtra)
grid.arrange( p1, p2, p3, p4, p5, p6, p7, nrow=4)
```

Plot data for `Age` vs `ParenConcernNum` by race-ethnicity--I see that as the students age, their parental concerns seem lower... Next, I look at data for `ParenConcernNum` vs `ExpectCollegeNumLog` also by race-ethnicity.  I find from this data that some groups have more sensitivity in college expectations to parental concern than others. 
 (1 p) Plot the data and, if required, transform the variables so a roughly linear relationship is observed.  All interpretations will be done on this scale of the variables.
__Choose either Females or Males for the remaining analysis.__

```{R}
# choose one:
#addhealth.sub.use <- subset(addhealth.sub, (Working == "Not Working"))
# addhealth.sub.use <- subset(addhealth.sub, (Working == "0"))
#summary(addhealth.sub.use)
```

__Plan:__
Center the explanatory variable `HoursWorked`,
  fit a simple linear regression model,
  check model assumptions,
  interpret the parameter estimate table, and
  interpret a confidence and prediction interval.

## Center the explanatory variable `ParenConcernMean`

Recentering the $x$-variable doesn't change the model,
  but it does provide an interpretation for the intercept of the model.
For example, if you interpret the intercept for the regression lines above,
  it's the "expected height for a person with a hand span of zero",
  but that's not meaningful.

Choose a value to center your data on.
A good choice is a nice round number near the mean (or center) of your data.
This becomes the value for the interpretation of your intercept.

```{R}
#summary(addhealth.sub.use$Age)
#addhealth.sub.use$Age_c <- addhealth.sub.use$Age - 1
```

## Fit a simple linear regression model
```{R}
is.numeric(addhealth.sub$ParenConcernNum)
addhealth.sub$addhealth.sub$ParenConcernNum <- as.numeric(addhealth.sub$ParenConcernNum)
is.numeric(addhealth.sub$ExpectCollegeNum)
addhealth.sub$ExpectCollegeNum <- as.numeric(addhealth.sub$ExpectCollegeNum)
# fit model
lm.fit <- lm(ExpectCollegeNum ~ ParenConcernNum, data = addhealth.sub)
summary(lm.fit)
```

Linear regression line and confidence and prediction intervals.
```{R}
library(ggplot2)
str(addhealth.sub$ParenConcernNum)
p <- ggplot(addhealth.sub, aes(x = ParenConcernNum, y = ExpectCollegeNum))
p <- p + geom_vline(xintercept = 0, alpha = 0.25)
# prediction bands
p <- p + geom_ribbon(aes(ymin = predict(lm.fit, data.frame(ExpectCollegeNum)
                                        , interval = "prediction", level = 0.95)[, 2],
                         ymax = predict(lm.fit, data.frame(ExpectCollegeNum)
                                        , interval = "prediction", level = 0.95)[, 3],) 
                  , alpha=0.1, fill="darkgreen")
# linear regression fit and confidence bands
p <- p + geom_smooth(method = lm, se = TRUE)
# jitter a little to uncover duplicate points
p <- p + geom_jitter(position = position_jitter(.1), alpha = 0.75)
p <- p + labs(title = "Regression with confidence and prediction bands", x = "Parental Concern", y = "College Expectation")
print(p)

```
* (0 p) Fit the simple linear regression model.
## Check model assumptions
*Present and interpret the residual plots with respect to model assumptions.


```{R, fig.width = 8, fig.height = 6}
# plot diagnistics
par(mfrow=c(2,3))
plot(lm.fit, which = c(1,4,6))

# residuals vs College Expectation
plot(addhealth.sub$ExpectCollegeNum, lm.fit$residuals, main="Residuals vs College Expectation")
  # horizontal line at zero
  abline(h = 0, col = "gray75")

# Normality of Residuals
library(car)
qqPlot(lm.fit$residuals, las = 1, id.n = 3, main="QQ Plot")

# # residuals vs order of data
# plot(lm.fit$residuals, main="Residuals vs Order of data")
#   # horizontal line at zero
#   abline(h = 0, col = "gray75")
hist(lm.fit$residuals, breaks=10, main="Residuals")
```
```
__normality assumption__
If the normality assumption seems to be violated, perform a normality test on the standardized residuals.   The data does not look very normal based on the skewed distribution of residuals.
* (1 p) Assess the residuals for lack of fit (interpret plots of residuals vs fitted and $x$-value). The residuals do not follow a patter
* (1 p) Assess the residuals for normality (interpret QQ-plot and histogram). Big lower tail on the QQ plot, while the historgram reveals a clear skew illustrated by the tail.

* (1 p) Test whether the slope is different from zero, $H_A: \beta_1 \ne 0$.
* (1 p) Interpret the $R^2$ value.
__residuals versus the fitted values__
Do the residuals versus the fitted values and `College Expectation` values appear random?
Or is there a pattern?  There is a faint skew to the left, otherwise, it's satisfactoriarily normal and randomly distributed 


## Investigate the relative influence of points

_Leverages and Cook's Distance__: There are recommendations for what's considered large,
  for example, a $3p/n$ cutoff for large leverages,
  and a cutoff of 1 for large Cook's D values.
I find it more practical to consider the relative
  leverage or Cook's D between all the points and
  worry when there are only a few that are much more influential than others.

Here's a plot that duplicates a plot above.
Here, the observation number is used as both the plotting point and a label.
```
```{R}
# plot diagnistics
par(mfrow=c(1,2))

plot(influence(lm.fit)$hat, main="Leverages", type = "n")
text(1:nrow(addhealth.sub), influence(lm.fit)$hat, label=paste(1:nrow(addhealth.sub)))
  # horizontal line at zero
  abline(h = 3*2/82, col = "gray75")

plot(cooks.distance(lm.fit), main="Cook's Distances", type = "n")
text(1:nrow(addhealth.sub), cooks.distance(lm.fit), label=paste(1:nrow(addhealth.sub)))
  # horizontal line at zero
  abline(h = 1, col = "gray75")
```
* (1 p) Assess the relative influence of points. The points are clearly skewed raising new questions about transforming it by square or log...
__leverages and Cook's D__
Interpret the leverages and Cook's D values with respect to whether
  any observations are having undue influence on model fit.  Looking at Cook's D and the Leverage test, I'd say there's nothing extradornary (especially given the very liberal use of treating a combined score, fa & pa, of ten points along a continuous scale) It is apparent that one particular case, #5 exerts somewhat high leverage and about a half dozen supass the .07 point. Regarding the Cook's D, it is apparent that #5 is an outlier. These indicate undue influence and should be removed from the dataset to see if they improve the R of the model. If not, there is not apparent gain from deleting them. 


## Interpret the parameter estimate table
Here's the parameter estimate table.

We're estimating the $\beta$ parameter coefficients in the regression model
  $y_i = \beta_0 + \beta_1 x_i + e_i$.

```{R}
summary(lm.fit)
```

Assuming the model fits well, complete this equation
  (fill in the $\beta$ values with values from the table)
  with the appropriate numbers from the table above
  (3 numbers: each beta and the HandSpan centering value).

The regression line is
  $\hat{\textrm{College Expectation}} = \hat{\beta}_0 + \hat{\beta}_1 \textrm{(Hours Worked)}$.
The model fits great and the F-statistic is 13.42--plenty. 

State the hypothesis test related to the slope of the line,
  indicate the p-value for the test,
  and state the conclusion.

Words and notation:

* Words: I hypothisze in the positivie association. Therfore, null hypothesis that no relation between the height and handspan, while the alternate allows for this difference.
* Notation: $H_0:\beta_Handspan = 0$ vs $H_A:\beta_Handspan \ne 0$

Interpretion of the slope coefficient in the context of the model.
The slope of beta is .917, which indicates positive association at p-value < .05
State and interpret the $R^2$ value.
The R^2 is the explained portion of the model: It is .316 (.29 adjusted for df) means that 30% of the relationship is explained by this model. 

## Interpret a confidence and prediction interval

Below is a 95% confidence interval for the mean (the regression line)
  and a prediction interval for a new observation
  at $\textrm{Parental College Concern} = -1$.
See how these match up with the plot above.

```{R}
predict(lm.fit, data.frame(ParenConcernNum = -1)
      , interval = "confidence", level = 0.95)
predict(lm.fit, data.frame(ParenConcernNum = -1)
      , interval = "prediction", level = 0.95)
```

__Interpretion the CI__:The CI is between 2.190124 2.600762 which means that we have that confidecne at alpha = .05. 

__Interpretion the PI__: THe PI, or predictive interval is necessarily wider as this is between 0.4068382 4.384048  This is the 95% confidence in predicting a future observation between these bounds: THis is a forecast in the greatest sense of the meteorological meaning: Prediction between .4 and 4 basically covers a large portion of students.









# HW 12 Logistic Regression
## AddHealth Wave 1 (& inclusion of Wave 4 Ed Outcome DV: College Graduation)

__Research question:__
Is there a relationship between attaining a BA and Hours Worked During a Typical Non-Summer Week during High School?
__Intuition:__
I expect that number of working hours during high school will have a harmful effect on academic efforts. Results indicated that increased working hours increase likelihood of graduating college--most notably, college graduation probability increases for those working 30 hours over those working 20; further, BA probability improves for those who worked 20 hours over those working less than five. 


## Data

Code book variables used to address this question.
Everything is documented (_especially for your future self_
  who doesn't have as good a memory as you think).

```
ADDHEALTH: WAVE4 IN-HOME INTERVIEW CODE BOOK
Wave IV Section 15: Suicide, Sexual Experiences, & Sexually Transmitted Diseases

  H4ED1 (gradHS)
  1. What is your high school graduation status?
    1 Finished high school with diploma
    2 Earned a high school equivalency degree (GED)
    3  Earned a Certificate of attendance or a certificate of completion
    4 Did not receive hs diploma, GED or other certificate
    6 Refused
    8 don't know
    
* 1st New Binary Var: * gradHS Graduate HS = 1==1; Non Graduate HS = 0 == vs. 0; 

  H$ED2 (gradBA)
  9. What is the highest level of education that you have acheived to date? 
    1 8th grade or less
    2 Some high school
    3 high school graduate
    4 Some vocationalized training (after high school)
    5 Completed vocationalized training (after high school)
    6 Some College
    7 Completed a Bachelor's
    8 Some Graduate School
    9 Completed a master's degree
    10 Some graduate training beyond a master's degree
    11 Completed a doctoral degree

Constructed variables
* gradBA >= 7
* education >=6

```

We create a data frame with nicely named variables,
  code and remove missing values,
  and code a binary variable for "Graduate College (BA)" (`gradBA`).

```{R}
str(addhealth.sub.f)
summary(addhealth.sub.f$gradBA)
levels(addhealth.sub.f$gradBA)
gradBA <- ifelse(addhealth.sub.f$gradBA=="BA Grad", 1, 0)
addhealth.sub.f$gradBA <- gradBA
#addhealth.sub.f$gradBA <- as.numeric(addhealth.sub.f$gradBA)

summary(addhealth.sub.f$ExpectCollegeNum)
is.numeric(addhealth.sub.f$ExpectCollegeNum)
summary(addhealth.sub.f$ParenConcernMean)
is.numeric(addhealth.sub.f$ParenConcernMean)
addhealth.sub.f$ParenConcernMean <- as.numeric(addhealth.sub.f$ParenConcernMean)
is.numeric(addhealth.sub.f$ParenConcernMean)
is.numeric(addhealth.sub.f$gradBA)
is.numeric(addhealth.sub.f$HoursWorked)
table(addhealth.sub.f$HoursWorked)
addhealth.sub.f$HoursWorked[addhealth.sub.f$HoursWorked == 0] <- NA
dim(addhealth.sub.f)
addhealth.sub.f <-na.omit(addhealth.sub.f)
dim(addhealth.sub.f)

# assign to a data frame
#summary(addhealth.sub.f$ExpectCollegeNum)
#df.ExpectCollegeNum.gradBA <- data.frame(ExpectCollegeNum = addhealth.sub.f$ExpectCollegeNum
#                        , gradBA = addhealth.sub.f$gradBA)
# assign to a data frame
summary(addhealth.sub.f$HoursWorked)
df.HoursWorked.gradBA <- data.frame(HoursWorked = addhealth.sub.f$HoursWorked
                        , gradBA = addhealth.sub.f$gradBA)
str(df.HoursWorked.gradBA)
# plot histograms for each condition and fit a logistic curve
# install.packages("popbio")
library(popbio)
#summary(df.ExpectCollegeNum.gradBA$gradBA)
summary(df.HoursWorked.gradBA$HoursWorked)

#logi.hist.plot(df.ExpectCollegeNum.gradBA$ExpectCollegeNum, df.ExpectCollegeNum.gradBA$gradBA
#              , logi.mod = 1 # logistic fit
#              , type = "hist", rug = FALSE, boxp = FALSE
#      
#              , col = "gray"
#              , mainlabel = "Probability Graduating College \n given varying College Expectation"
#              , ylabel = "Probability Graduate College (red)"
#              #, ylabel2 = "Frequency"
#              , xlabel = "College Expectation")
logi.hist.plot(df.HoursWorked.gradBA$HoursWorked, df.HoursWorked.gradBA$gradBA
              , logi.mod = 1 # logistic fit
              , type = "hist", rug = FALSE, boxp = FALSE
      
              , col = "gray"
              , mainlabel = "Probability Graduating College \n given varying HoursWorked Growing Up"
              , ylabel = "Probability Graduate College (red)"
              #, ylabel2 = "Frequency"
              , xlabel = "HoursWorked")
  # Note (11/1/2015):
  # there's a bug in the plotting function
  #   (I've emailed the package maintainer and it's been fixed in the next update)
  # if the boxplots are on (boxp=TRUE), then both ylabels are ylabel2.
#?logi.hist.plot
```

Summarize observed probability of pregnancy
  for each age at first vaginal intercourse.
```{R}
library(plyr)
#df.ExpectCollegeNum.gradBA.sum <- ddply(df.ExpectCollegeNum.gradBA, "ExpectCollegeNum", summarise
#                        , Total = length(gradBA)
#                        , Success = sum(gradBA)
#                        )
df.HoursWorked.gradBA.sum <- ddply(df.HoursWorked.gradBA, "HoursWorked", summarise
                        , Total = length(gradBA)
                        , Success = sum(gradBA)
                        )
# create estimated proportion of preg for each age group
#df.ExpectCollegeNum.gradBA.sum$p.hat <- df.ExpectCollegeNum.gradBA.sum$Success / df.ExpectCollegeNum.gradBA.sum$Total
df.HoursWorked.gradBA.sum$p.hat <- df.HoursWorked.gradBA.sum$Success / df.HoursWorked.gradBA.sum$Total

#df.ExpectCollegeNum.gradBA.sum
df.HoursWorked.gradBA.sum
```
```

1. Logistic regression.
Select a binary reponse and continue explanatory/predictor variable.

* (1 p) Summarize the $\hat{p}$ values for each value of the $x$-variable.  Also, calculate the empirical logits.

```
Plots on the probability scale should follow a sigmoidal curve
  (a little difficult to see here).
Note that the overlayed reference
  curve (red) is a weighted smoothed curve (loess),
  not the model fit.
  
NOTE: Interesting that the predicted probability trends form .81 to .38 from age 12 AVG and 22 AVG.So, the intuitive findings are validated here.
```{R}
#library(ggplot2)
#p <- ggplot(df.ExpectCollegeNum.gradBA.sum, aes(x = ExpectCollegeNum, y = p.hat))
#p <- p + geom_point(aes(size = Total))
#p <- p + geom_smooth(se = FALSE, colour = "red", aes(weight = Total))  # just for reference
#p <- p + expand_limits(y = 0) + expand_limits(y = 1)
#p <- p + labs(title = "Observed probability of college graduation")
#print(p)
library(ggplot2)
p <- ggplot(df.HoursWorked.gradBA.sum, aes(x = HoursWorked, y = p.hat))
p <- p + geom_point(aes(size = Total), color = "brown")
p <- p + geom_point(position = position_jitter(width=0.3), colour = "orange")
p <- p + geom_smooth(se = FALSE, colour = "red", aes(weight = Total))  # just for reference
p <- p + expand_limits(y = 0) + expand_limits(y = 1)
p <- p + labs(title = "Observed probability of college graduation")
print(p)
```

On the logit scale, if points follow a straight line,
  then we can fit a simple linear logistic regression model.
Note that the overlayed reference
  straight line (blue) is from weighted least squares (not the official fitted line),
  and the curve (red) is a weighted smoothed curve (loess).
Both lines are weighted by the total number of observations that each point represents,
  so that points representing few observations don't contribute as much as
  points representing many observations
```
 * (1 p) Plot the $\hat{p}$ values vs the $x$-variable and plot the empirical logits vs the $x$-variable.
    * (1 p) Describe the logit-vs-$x$ plot.  Is it linear?  If not, consider a transformation of $x$ to improve linearity; describe the transformation you chose if you needed one. ANSWER: the points are not very linear. and if anything I would log the findings. I already removed the "zeros" moreso for theory reasons rather than methodological: I'm interested in working hours, not working per se.  
The points do not indicate a very straight line. 
```

```{R}
#summary()
# emperical logits
#df.ExpectCollegeNum.gradBA.sum$emp.logit <- log((    df.ExpectCollegeNum.gradBA.sum$p.hat + 0.5/df.ExpectCollegeNum.gradBA.sum$Total) /
#                                 (1 - df.ParenConcernMean.gradBA.sum$p.hat + 0.5/df.ParenConcernMean.gradBA.sum$Total))
#
df.HoursWorked.gradBA.sum$emp.logit <- log((    df.HoursWorked.gradBA.sum$p.hat + 0.5/df.HoursWorked.gradBA.sum$Total) /
                                 (1 - df.HoursWorked.gradBA.sum$p.hat + 0.5/df.HoursWorked.gradBA.sum$Total))
#p <- ggplot(df.ExpectCollegeNum.gradBA.sum, aes(x = ExpectCollegeNum, y = emp.logit))
#p <- p + geom_point(aes(size = Total))
#p <- p + stat_smooth(method = "lm", se = FALSE, aes(weight = Total))  # just for reference
#p <- p + geom_smooth(se = FALSE, colour = "red", aes(weight = Total))  # just for reference
#p <- p + labs(title = "Empirical logits")
#print(p)
library(ggplot2)
p <- ggplot(df.HoursWorked.gradBA.sum, aes(x = HoursWorked, y = emp.logit))
p <- p + geom_point(aes(size = Total), color = "red")
p <- p + geom_point(position = position_jitter(width=0.3), colour = "orange")
p <- p + stat_smooth(method = "lm", se = FALSE, aes(weight = Total))  # just for reference
p <- p + geom_smooth(se = FALSE, colour = "red", aes(weight = Total))  # just for reference
p <- p + labs(title = "Empirical logits")
print(p)
```
```
__logit-vs-$x$ plot__
* (1 p) Describe the logit-vs-$x$ plot.  Is it linear?  If not, consider a transformation of $x$ to improve linearity; describe the transformation you chose if you needed one.
ANSWER: In my opinion, a straight line would sufficiently well (not optimal).  There are details that are missed by a linear model, such as the apparent double-se,  inverse "S" curve.
```

## Simple logistic regression model

The simple logistic regression model expresses the population proportion $p$ of
individuals with a given attribute (called the probability of success) as a
function of a single predictor variable $X$. The model assumes that $p$ is
related to $X$ through
$$
\log \left( \frac{p}{1-p} \right) = \beta_0 + \beta_1 X
$$
or, equivalently, as
$$
p = \frac{ \exp( \beta_0 + \beta_1 X ) }{ 1 +  \exp( \beta_0 + \beta_1 X ) }.
$$
The logistic regression model is a __binary response model__, where the
response for each case falls into one of two exclusive and exhaustive
categories, success (cases with the attribute of interest) and failure (cases
without the attribute of interest).

Fit the model.

```{R}
# For our summarized data (with frequencies and totals for each age)
# The left-hand side of our formula binds two columns together with cbind():
#   the columns are the number of "successes" and "failures".
# For logistic regression with logit link we specify family = binomial,
#   where logit is the default link function for the binomial family.

# first-order linear model
#glm.p.a <- glm(cbind(Success, Total - Success) ~ ExpectCollegeNum, family = binomial, df.ExpectCollegeNum.gradBA.sum)
glm.p.a <- glm(cbind(Success, Total - Success) ~ HoursWorked, family = binomial, df.HoursWorked.gradBA.sum)
```

```{R, echo=FALSE}
# # Note that this method where every observation is distinct
# #   gives the same parameter estimates,
# #   but the deviance statistic for assessing lack-of-fit is not correct
# #   because it treats every observation as a "category" rather than each age category.
# # Above, using the summarized data gives the appropriate lack-of-fit test.
#glm.p.a <- glm(EverPreg ~ AgeAtVag, family = binomial, df.piv.preg)
#summary(glm.p.a)
#
# ## INCORRECT FOR UNSUMMARIZED DATA
# # Test residual deviance for lack-of-fit (if > 0.10, little-to-no lack-of-fit)
# glm.p.a$deviance
# glm.p.a$df.residual
# dev.p.val <- 1 - pchisq(glm.p.a$deviance, glm.p.a$df.residual)
# dev.p.val
```

## Deviance statistic for lack-of-fit

Unfortunately, there aren't many model diagnostics for logistic regression.
One simple test is for lack-of-fit using the deviance.
Under the null hypothesis (that you'll state below),
  the residual deviance follows a $\chi^2$ distribution with
  the associated degrees of freedom.
Below we calculate the deviance p-value and perform the test for lack-of-fit.

```{R}
# Test residual deviance for lack-of-fit (if > 0.10, little-to-no lack-of-fit)
glm.p.a$deviance
glm.p.a$df.residual
dev.p.val <- 1 - pchisq(glm.p.a$deviance, glm.p.a$df.residual)
dev.p.val
#
```

__(1 p)__
State the null hypothesis for lack-of-fit.
ANSWER: Null Hypothesis:  the residual deviance follows a $\chi^2$ distribution with  the associated degrees of freedom. Null means the model does not fit: lack of fit. $H0:$ The residual deviance < .1, thus lack of fit. $HA:$>.1 little-to-no lack-of fit.  

__(1 p)__
For your preferred model, the deviance statistic is $D=10.07$ with $9$ df.The p-value =.344. This means the model fits the data well. 

__(1 p)__
What is your conclusion for the model fit? Given the p-value, .344, is greater than .10 which indicates there is not an issue with lack of fit. (So, we reject null and we have sufficient information to believe we can model the data with a logistic regression.

## Visualize and interpret the model
```
The `glm()` statement creates an object which we can use to create
  the fitted probabilities
  and 95\% CIs for the population proportion at diffiner College Expectation.
The fitted probabilities and the limits are stored in columns labeled
  `fitted.values`, `fit.lower`, and `fit.upper`, respectively.
 * (1 p) Fit the `glm()` model and assess the deviance lack-of-fit test.
```

```{R}
# put the fitted values in the data.frame
#df.ExpectCollegeNum.gradBA.sum$fitted.values <- glm.p.a$fitted.values
#pred <- predict(glm.p.a, data.frame(ExpectCollegeNum = df.ExpectCollegeNum.gradBA.sum$ExpectCollegeNum), type = "link", se.fit = TRUE) #$
#df.ExpectCollegeNum.gradBA.sum$fitted.values <- glm.p.a$fitted.values
#pred <- predict(glm.p.a, data.frame(ExpectCollegeNum = df.ExpectCollegeNum.gradBA.sum$ExpectCollegeNum), type = "link", se.fit = TRUE) #$
df.HoursWorked.gradBA.sum$fitted.values <- glm.p.a$fitted.values
pred <- predict(glm.p.a, data.frame(HoursWorked = df.HoursWorked.gradBA.sum$HoursWorked), type = "link", se.fit = TRUE) #$

#df.ExpectCollegeNum.gradBA.sum$fit     <- pred$fit
#df.ExpectCollegeNum.gradBA.sum$se.fit  <- pred$se.fit
df.HoursWorked.gradBA.sum$fit     <- pred$fit
df.HoursWorked.gradBA.sum$se.fit  <- pred$se.fit
# CI for fitted values
#df.ExpectCollegeNum.gradBA.sum <- within(df.ExpectCollegeNum.gradBA.sum, {
#  fit.lower = exp(fit - 1.96 * se.fit) / (1 + exp(fit - 1.96 * se.fit))
#  fit.upper = exp(fit + 1.96 * se.fit) / (1 + exp(fit + 1.96 * se.fit))
#  })
df.HoursWorked.gradBA.sum <- within(df.HoursWorked.gradBA.sum, {
  fit.lower = exp(fit - 1.96 * se.fit) / (1 + exp(fit - 1.96 * se.fit))
  fit.upper = exp(fit + 1.96 * se.fit) / (1 + exp(fit + 1.96 * se.fit))
  })
```
```
* (1 p) Calculate the confidence bands around the model fit/predictions. Plot on both the logit and $\hat{p}$ scales.
    * (1 p) Interpret the sign ($+$ or $-$) of the slope parameter and test whether the slope is different from zero, $H_A: \beta_1 \ne 0$.
```

```{R}
# plot on probability scale
#library(ggplot2)
#p <- ggplot(df.ExpectCollegeNum.gradBA.sum, aes(x = ExpectCollegeNum, y = p.hat))
# predicted curve and point-wise 95% CI
#p <- p + geom_ribbon(aes(x = ExpectCollegeNum, ymin = fit.lower, ymax = fit.upper), colour = "blue", linetype = 0, alpha = 0.2)
#p <- p + geom_line(aes(x = ExpectCollegeNum, y = fitted.values), colour = "blue", size = 1)
# fitted values
#p <- p + geom_point(aes(y = fitted.values), colour = "blue", size=2)
# observed values
#p <- p + geom_point(aes(size = Total), color = "black")
#p <- p + expand_limits(y = 0) + expand_limits(y = 1)
#p <- p + labs(title = "Observed and predicted College Graduation, probability scale")
#print(p)
#
p <- ggplot(df.HoursWorked.gradBA.sum, aes(x = HoursWorked, y = p.hat))
# predicted curve and point-wise 95% CI
p <- p + geom_ribbon(aes(x = HoursWorked, ymin = fit.lower, ymax = fit.upper), colour = "blue", linetype = 0, alpha = 0.2)
p <- p + geom_line(aes(x = HoursWorked, y = fitted.values), colour = "blue", size = 1)
# fitted values
p <- p + geom_point(aes(y = fitted.values), colour = "blue", size=2)
# observed values
p <- p + geom_point(aes(size = Total), color = "brown")
p <- p + geom_point(position = position_jitter(width=0.3), colour = "orange")
p <- p + expand_limits(y = 0) + expand_limits(y = 1)
p <- p + labs(title = "Observed and predicted College Graduation, probability scale")
print(p)
```

__(1 p)__
For the plot above,
Describe the general pattern of the probability of graduating college given number of hours worked--among those reporting work.
ANSWER: The plot reveals a pattern by which greatest likelihood of College Expectation in a non-sigmoidal relation with graduation outcomes. I must choose a better outcome variable or I could log-transform the predictor. 
```{R}
# plot on logit scale
#library(ggplot2)
#p <- ggplot(df.ExpectCollegeNum.gradBA.sum, aes(x = ExpectCollegeNum, y = emp.logit))
# predicted curve and point-wise 95% CI
#p <- p + geom_ribbon(aes(x = ExpectCollegeNum, ymin = fit - 1.96 * se.fit, ymax = fit + 1.96 * se.fit), linetype = 0, alpha = 0.2)
#p <- p + geom_line(aes(x = ExpectCollegeNum, y = fit), colour = "blue", size = 1)
# fitted values
#p <- p + geom_point(aes(y = fit), colour = "blue", size=2)
# observed values
#p <- p + geom_point(aes(size = Total), color = "black")
#p <- p + labs(title = "Observed and predicted Graduation, logit scale")
#print(p)
#
p <- ggplot(df.HoursWorked.gradBA.sum, aes(x = HoursWorked, y = emp.logit))
# predicted curve and point-wise 95% CI
p <- p + geom_ribbon(aes(x = HoursWorked, ymin = fit - 1.96 * se.fit, ymax = fit + 1.96 * se.fit), linetype = 0, alpha = 0.2)
p <- p + geom_line(aes(x = HoursWorked, y = fit), colour = "blue", size = 1)
# fitted values
p <- p + geom_point(aes(y = fit), colour = "blue", size=2)
# observed values
p <- p + geom_point(aes(size = Total), color = "brown")
p <- p + geom_point(position = position_jitter(width=0.3), colour = "orange")
p <- p + labs(title = "Observed and predicted Graduation, logit scale")
print(p)
```

__model fit__ I feel comfortable about the model fit. The logit scale reveals that data can be fit onto a straight line (within a logarithmic view). 
Let's consider those people who work 30 or more hours. 
```{R}
#subset(df.ExpectCollegeNum.gradBA.sum, ExpectCollegeNum == 2)
subset(df.HoursWorked.gradBA.sum, HoursWorked == 30)
```

__estimated population proportion__
"Using the model,
  the estimated population proportion of graduating when hours worked equal 30 hours worked
  `r signif(subset(df.HoursWorked.gradBA.sum, HoursWorked == 20, fitted.values), 3)`.
We are 95\% confident that the population proportion is between
.702  and .734."

The summary table gives MLEs and standard errors for the regression parameters.
The z-value column is the parameter estimate divided by its standard error.
The p-values are used to test whether the corresponding parameters of the
logistic model are zero.


```{R, cache = TRUE}
#summary(glm.p.a)
summary(glm.p.a)
  # see names(summary(glm.p.a)) to find the object that has the coefficients.
  # can also use coef(glm.p.a)
```






# 13 Final Poster  

1. __(1 p)__ Introduction

    * (HW02 Lit Review) 2-4 bullets describing the study, previous research.

    
*  I would like to know if working hours (categorical explanatory) during high school is associated with college expectations (categorical response). And, does parental college concern moderate this hypothesized association?

*  Secondly, I'm interested to see if levels of parental college support/concern (categorical explanatory) during high school is associated with college expectations (categorical response). 

*  A specific example I'm testing involves whether it is true that very traditional Latino parents, if low-income bracket, encourage sons to help the family by working a couple years after graduating high school.  In contrast, daughters are discouraged from being a "breadwinner." Rather, daughters are encouraged to go directly to college. Therefore, I hypothesize that working hours during adolescence is negatively associated with level of college expectation, yet this relation is conditioned by parental college concern.  

*  Based on the literature, I situate the parental association with students' college expectations within the psychology, education, and sociology peer-reviewed articles around 'family influence'.  More specifically, the publications that frame parental influence in theoretical terms of "Social Control via Family Bonding", i.e., Family Attachment. My research looks at the "dark side" of parental influence rather than the usual "protective factors." I did not find any articles so far on Latino parental conditioning of the working and college expectation relationship. 
```
 The Relationships at Play
```{R, cache = TRUE, fig.width = 8, fig.height = 8}
library(ggplot2)
a <- ggplot(data = addhealth.sub, aes(x = Sex))
a <- a + geom_bar(binwidth = 1, alpha = .15, color = "purple")
a <- a + labs(title = "Gender", x = "Sex")

b <- ggplot(data = addhealth.sub, aes(x = RaceEth))
b <- b + geom_bar(binwidth = 1, alpha = .15, color = "purple")
b <- b + labs(title = "Race-Ethnicity Count", x = "Race-Ethnicity")

c <- ggplot(data = addhealth.sub, aes(x = Working))
c <- c + geom_bar(binwidth = 1, alpha = .15, color = "purple")
c <- c + labs(title = "Working Status", x = "Working Status")

d <- ggplot(data = addhealth.sub, aes(x = Age))
d <- d + geom_bar(binwidth = .5, alpha = .15, color = "purple")
d <- d + labs(title = "Age", x = "Age")

e <- ggplot(data = addhealth.sub, aes(x = HoursWorkedCat))
e <- e + geom_bar(binwidth = 5, alpha = .15, color = "purple")
e <- e + labs(title = "Hours Worked", x = "Hours Worked", y = "purple")

f <- ggplot(data = addhealth.sub, aes(x = ParenConcernMean))
f <- f + geom_bar(binwidth = 1, alpha = .15, color = "purple")
f <- f + labs(title = "Parental \nCollege Concern", x = "Parental \n College Concern", y = "count")

g <- ggplot(data = addhealth.sub.f, aes(x = HighParenCollConcern))
g <- g + geom_bar(binwidth = 1, alpha = .15, color = "purple")
g <- g + labs(title = "High Parental \n College Concern", x = "High Parental \n College Concern gt 3.5", y = "count")

h <- ggplot(data = addhealth.sub, aes(x = ExpectCollegeNum))
h <- h + geom_bar(binwidth = 1, alpha = .15, color = "purple")
h <- h + labs(title = "Expectation \n to Attend College", x = "Expectation \n to Attend College", y = "count")

i <- ggplot(data = addhealth.sub, aes(x = Studen))
i <- i + geom_bar(binwidth = 1, alpha = .15, color = "purple")
i <- i + labs(title = "Student Type \n high/low concern /nWorking, not Working
              ", x = "Student type", y = "count")

j <- ggplot(data = addhealth.sub.f, aes(x = education))
j <- j + geom_bar(binwidth = 1, alpha = .15, color = "purple")
j <- j + labs(title = "Education Level, \n Interval 1-13", x = "Education Level, 1=<HS, 13=PdD", y = "count")

k <- ggplot(data = addhealth.sub.f, aes(x = gradBA))
k <- k + geom_bar(binwidth = 1, alpha = .15, color = "purple")
k <- k + labs(title = "Graduated BA College", x = "Graduated BA College", y = "count")

l <- ggplot(data = addhealth.sub.f, aes(x = gradHS))
l <- l + geom_bar(binwidth = 1, alpha = .15, color = "purple")
l <- l + labs(title = "Graduated high school", x = "Graduated high school", y = "count")
library(gridExtra)
grid.arrange(a, b, c, d, e, f, g, h, i, j, k, l, nrow=4)
```  

2. __(1 p)__ Research Questions

    * (HW02 Research Questions) 2 bullest, one for each research question, stated as the alternative hypothesis.

__MAIN RESEARCH QUESTION__:
Does Parental College Concern moderate (i.e. strength or direction of association) the negative assocation between working hours and college expectation among high school students? And 20 years later?

__RQ1__: What is the relationship between respondent working hours VS respondent expectation to go to college?  

__RQ2__: Does low parental concern accentuate the hypothesized association between adolescent-working hours vs college expectation? 

__RQ3__: What is the longitudinal outcome, i.e., later Wave 4 college graduation?
  
  *Research Question I. 
__H1__: I hypothesize that the Wave 4 college graduation outcome variable (probability of success) is negatively associated with working hours in high school.

__H1_alt__: I hypothesize that the Wave 4 college graduation outcome variable (probability of success) is negatively associated with working hours in high school.


  * Research Question II
__H2__: Parenting college concern moderates the working-in-high-school and expectation-to-go-to-college relationship. 

__H2alt__: There is no interaction effect between Parenting college concern and working-in-high-school in the association with expectation-to-go-to-college.  
Especially when conditioned by the intersection of Latino race and Male gender.


  * Research Question III
__H3__: H1 and H2 have statistically significant longitudinal associations.  Especially when conditioned by the intersection of Latino race and Male gender.

__H3alt__: H1 and H2 have statistically significant longitudinal associations. Especially when conditioned by the intersection of Latino race and Male gender.

3. __(1 p)__ Methods
    * (Various) Statistical methods used to answer the research questions.
    * Using Codebook of AddHealth Wave1 literature review via Mendeley, Extensive use of AddHealthW1_CodeBook.pdf
    * Wave I-VarName
  Variable description
  Data type (Continuous, Discrete, Nominal, Ordinal)
  Frequency ItemValue Description
AID (Wave 1)
  UNIQUE ID NUMBER WITH NO ALPHABETICS
  Nominal
  Unique Identification number
BIO_SEX 
  GENDER MALE
  2 = female
  1 = male
  6 = NA
  Nominal
H1EE2
  EXPECTATION TO GO TO COLLEGE
  ExpectCollege: 1-5; 6=refused, 8=don't know, 9=NotApplic 
  Discrete
  1-5. 1= low; 5=high
H1EE3
  WHETHER WORKED IN PAST FOUR WEEKS
  Working: 0=no, 1=yes, 6=refused, 8=don't know
H1EE4
  HOURS WORKED OUTSIDE HOME IN TYPICAL NON-SUMMER WEEK 
H1WP11 
  STUDENT-PERCEIVED MOTHER PARENTAL CONCERN ABOUT COLLEGE
  Interval
  ParentConcernM:  1-5;  
  6=refused,
  7=noDad 
  8=don't know, 
  9=NotApplic
  1-5. 1 = low concern; 5=high concern
H1WP16 
  STUDENT-PERCEIVED FATHER PARENTAL CONCERN ABOUT COLLEGE
  Interval
  ParentConcernF: 1-5;  
  6=refused,
  7=noDad 
  8=don't know, 
  9=NotApplic
  1-5. 1 = low concern; 5=high concern
  H4ED1 (gradHS)
What is your high school graduation status?
  1=Finished high school with diploma
  2=Earned a high school equivalency degree (GED)
  3=Earned a Certificate of attendance or a certificate of completion
  4=Did not receive hs diploma, GED or other certificate
  6=Refused
  8=don't know
    * Wave IV-VarName
H$ED2 (gradBA)
  What is the highest level of education that you have acheived to date? 
   1=8th grade or less
   2=Some high school
   3=high school graduate
   4=Some vocationalized training (after high school)
   5=Completed vocationalized training (after high school)   
   6 =Some College
  7=Completed a Bachelor's
  8=Some Graduate School
  9=Completed a master's degree
  10=Some graduate training beyond a master's degree
  11=Completed a doctoral degree
  12=Medical degree 
  13=Medical degree
Constructed variables
AGE (Age)
* AGE:   age = (mdy(imonth,iday,1995)-mdy(h1gi1m,15,(h1gi1y+1900)))/365.25
  Continuous
* gradBA >= 7
* education 
* gradHS Graduate HS = 1==1; Non Graduate HS = 0 == vs. 0; 
* (Various) Statistical methods used to answer the research questions.
```
4. __(1 p)__ Discussion: 
* The results support the initial hypotheses in which I expected work hours (especially if conditioned by low parental concern) to be negativately associated with work.  This finding was however contradicted by the findings for Latino Males, that behaved the opposite as others. Latino males and females, though lower parental college concern, increased in college expectations with more hours worked. 

Hispanic Males' college expectations remain high despite low parental concern, and their expectations increase with more hours worked (contrary to most other groups). 

__H_null__: found false: (categorical explanatory - HoursWorked) do not associate with college expectation, yet high parental college concern mitigates this effect.

__H1__: found correct:  Working hours (categorical explanatory - HoursWorked) during high school have negative association with college expectations (categorical response - ExpectCollege). * Latinos and Native Americans exact opposite--they increase in college expectation when hours increase. 

__H1alternative__: found false: (categorical explanatory - HoursWorked) positively associate with college expectation.

__H2__: found correct: Parenting college concern moderates the working-in-high-school and expectation-to-go-to-college relationship. 

__H2alt__: found false: There is no interaction effect between Parenting college concern and working-in-high-school in the association with expectation-to-go-to-college.  
(tested by whether conditioning from the intersection of Latino race and Male gender.)

__H3_wavefour__: found true: I hypothesize that the Wave 4 college graduation outcome variable (probability of success) is negatively associated with working hours in high school.

__H3_wavefour_alternative__: found false: I hypothesize that the Wave 4 college graduation outcome variable (probability of success) is not negatively associated with working hours in high school. Rejected--not for the expected reason--

5. __(1 p)__ RESULTS: Further directions or Future work or Next steps or something else that indicates there more to do and you've thought about it. 
    * A new alternative hypothesis presents itself: White Males are highly sensitive to parental college concerns, and their expectations actually decrease with more hours worked (contary to Latino males).  Also, at a closer look, the norm among all groups is to decrease expectations for increasing hours working. Yet, Latino males and females increase expectation. 
    * I'm interested to find out what the later education results are, which I investigate in the last section. [spoiler:] odds of graduating college improve up to five working hours, then decrease back to baseline zero hours when working ten hours. After ten hours working in high school, odds of graduating increase at 20, and increase further at 30, then 
    
6. __(1 p)__ References
   
7. __(2 p)__first research question.
    * 
Do Working hours (categorical explanatory) during high school have an association with college expectations (categorical response - ExpectCollege)? moderately significant at p=.068   This means there is a slightly negative association between working hours and college expectations. 

```{R, cache = TRUE}
# fit the simple linear regression model Expectation regressed on hours worked
lm.ExpectCollegeNum.HoursWorked <- lm(ExpectCollegeNum ~ HoursWorked, data = addhealth.sub)
# use summary() to parameters estimates (slope, intercept) and other summaries
#summary(lm.ExpectCollegeNum.HoursWorked)
#addhealth.sub.latinomale <- addhealth.sub
#addhealth.sub.latinomale[LatinoMale ==]
library(ggplot2)
p5 <- ggplot(addhealth.sub, aes(x = HoursWorked, y = ExpectCollegeNum))
p5 <- p5 + geom_point(position = position_jitter(width=0.5), colour = "pink")
p5 <- p5 + stat_smooth(method = lm, se = FALSE) +  theme_bw()
p5 <- p5 + facet_wrap(Sex ~ RaceEth)
p5 <- p5 + labs(x = "Hours Worked", y = "Expectation to Attend College", title = "Hours Worked and Expectation to attend College,\n by Gender and Age")
print(p5)
```

__(2 p)__Results for Research Question 2: Does low parental concern accentuate the hypothesized association between adolescent-working hours vs college expectation? And using the case study of Latino males? 

```{R}
t.summary.Ex <- t.test(ExpectCollegeNum ~ HighParenCollConcern, addhealth.sub)
t.summary.Ex
```

``Is the population mean college expectation different for those with High Parental Concern (HPC) or not (LPC)?''
    * $H_0: \mu_{Hi-ParConcern} = \mu_{LPC}$ versus $H_A: \mu_{HPC} \ne \mu_{Lo-ParConcern}$
Let $\alpha=0.05$, the significance level of the test and the Type-I error probability if the null hypothesis is true.
$t_{s} = `r signif(t.summary.Ex$statistic, 4)`$.
$p=`r signif(t.summary.Ex$p.value, 3)`$, this is the observed significance of the test.
Because $p=`r signif(t.summary.Ex$p.value, 3)` < 0.05$,
    we have sufficient evidence to reject $H_0$, concluding that the
   college expectations do indeed differ by parental college concern.
```{R, cache = TRUE}
library(ggplot2)
g1 <- ggplot(data = addhealth.sub, aes(x = Sex, fill = ExpectCollege)) +
  geom_bar(position = "fill") +
  theme_bw()
g1 <- g1 + facet_wrap(~RaceEth)
g1 <- g1 + labs(x = "Gender", y = "Proportion", title = "College Expectation comparing Males and Females, by Race") +
  scale_fill_discrete(name="College \nExpectation") 
g1
g1 <- ggplot(data = addhealth.sub, aes(x = Sex, fill = ExpectCollege)) +
  geom_bar(position = "fill") +
  theme_bw()
g1 <- g1 + facet_wrap(~Studen)
library(ggplot2)
p <- ggplot(addhealth.sub, aes(x = HighParenCollConcern, y = ExpectCollegeNum))
p <- p + geom_boxplot(width = 0.5, alpha = 0.5)
p <- p + geom_jitter(position = position_jitter(width = 0.1), alpha = 1/2, colour = "orange")
# diamond at mean for each group
p <- p + stat_summary(fun.y = mean, geom = "point", shape = 18, size = 6, colour = "purple", alpha = 0.8)
p <- p + labs(x = "Parental College Concern", y = "Expectation to attend College", title = "College Expectation \n by Parental College Concern")
print(p)

library(ggplot2)
p2 <- ggplot(addhealth.sub, aes(x = Age, y = ExpectCollegeNum))
p2 <- p2 + geom_point(position = position_jitter(width=0.3), colour = "orange")
p2 <- p2 + stat_smooth(method = lm, se = FALSE) +  theme_bw()
p2 <- p2 + facet_wrap(Working ~ RaceEth)
p2 <- p2 + labs(title = "Age and College Expectation,\n by Working Status and Race", x= "Age", y = "College Expectation")
print(p2)

library(ggplot2)
p <- ggplot(addhealth.sub, aes(x = HoursWorked, y = ExpectCollegeNum))
p <- p + geom_jitter(position = position_jitter(width = 0.3), alpha = 1/4, color = "red")
p <- p + stat_smooth(method = lm)
p <- p + labs(x = "Hours Worked", y = "Expectation to Attend College", title = "Confidence Interval of Hours Worked\n and Expectation to Attend College")
#print(p)
library(ggplot2)
px <- ggplot(addhealth.sub, aes(x = Studen, y = ExpectCollegeNum))
px <- px + geom_boxplot(width = 0.5, alpha = 0.5)
px <- px + geom_jitter(position = position_jitter(width = 0.1), alpha = .5, colour = "red")
# diamond at mean for each group
px <- px + stat_summary(fun.y = mean, geom = "point", shape = 18, size = 6, colour = "blue", alpha = 0.8)
px <- px + labs(x = "Parental College Concern", y = "Expectation to attend College", title = "College Expectation \n by Parental College Concern")
#print(px)
library(ggplot2)
pxx <- ggplot(addhealth.sub, aes(x = StudenLat, y = ExpectCollegeNum))
pxx <- pxx + geom_boxplot(width = 0.5, alpha = 0.8)
pxx <- pxx + geom_jitter(position = position_jitter(width = 0.1), alpha = .8, colour = "red")
# diamond at mean for each group
pxx <- pxx + stat_summary(fun.y = mean, geom = "point", shape = 18, size = 6, colour = "blue", alpha = 0.8)
pxx <- pxx + labs(x = "Parental College Concern", y = "Expectation to attend College", title = "College Expectation  by 1)High/Low Parental College Concern, HC/LC\n2)Working/Not Working, W/NW, 3)Majority/Latino-Male 'LM'")
#print(px)
library(gridExtra)
grid.arrange(pxx, nrow=1)
#
library(ggplot2)
p <- ggplot(x.table.obsexp, aes(x = n.Studen, fill = stat, weight=value))
p <- p + geom_bar(position="dodge")
p <- p + labs(title = "Observed and Expected Frequencies", x = "High Pa Concern-Not Working,LC-NW,HC-W,LC-W\n Four Student Categories", y = "frequencies - Majority")
print(p)
# p1... ^^ p versus p1 >> >>
p1 <- ggplot(x.table.obsexp1, aes(x = n.Studen1, fill = stat, weight=value))
p1 <- p1 + geom_bar(position="dodge")
p1 <- p1 + labs(title = "Observed and Expected Frequencies", x = "HC-NW,LC-NW,HC-W,LC-W\n Four Student Categories", y = "frequencies - Latino")
print(p1)

library(gridExtra)
grid.arrange(p, p1, nrow=1)
```


# References
