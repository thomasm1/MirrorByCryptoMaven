--
title: "ADA1: Personal Codebook"
author: Thomas Maestas
date: "8/25/2015/2015"
output: html_document
---

# Research Question, primary and secondary

__Dataset__: National Longitudinal Adolescent Health Survey, with codebook: AddHealthW1_CodeBook.pdf and AddHealthW4_CodeBook.pdf

__Initial thinking__:  I believe that high school student's later college outcomes are associated with their own expectations to go to college, which is in turn affected by their their parents' attitudes about college.  __

__Topic of interest__: I am interested in the association between Parental college concern, and how it may be affected by student ethnicity, age, gender, GPA-status, and other factors.

__How I did it__: I 
# Codebook
Dataset: ADDHEALTH
Primary association: College Expectation 

Key:
VarName
  Variable description
  Data type (Continuous, Discrete, Nominal, Ordinal)
  Frequency ItemValue Description
  
AID (Wave 1)
  UNIQUE ID NUMBER WITH NO ALPHABETICS
  Nominal
  43093 1-43093. Unique Identification number

H4ED2 (Wave 4)
  HIGHEST LEVEL OF EDUCATION (outcome variable)
  Nominal
  1-3 1. High School or less
  4-6 2. Associates or Some BA/BS College
  7   3. Completed Bachelors
 8-11 4. Graduate School and Beyond

BIO_SEX (Wave 1)
  GENDER MALE
  Nominal
  bio_sex <=2 Male
  
AGE (Wave 1)
  AGE
  Continuous
  12-19. Age in years
	 99 Missing 

```
  
---

# Rubric
**PDS Ch 3: Personal Codebook** (slightly modified)

1. (1 p) Is there a topic of interest?

2. (1 p) Are the variables relavant to the question (or related questions)?

3. (1 p) Is a unique identifier variable included?

4. (4 p) Are there at least two numeric and at least two categorical variables (at least 4 total variables)?

5. (3 p) For each variable is there a variable description, a data type, and coded value descriptions?

6. Compile this Rmd file to an html and upload to crowdgrader (do not include your name, keep it anonymous).