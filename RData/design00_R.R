#### Calculator
# Arithmetic
2 * 10
1 + 2
# Order of operations is preserved
1 + 5 * 10
(1 + 5) * 10
# Exponents use the ^ symbol
2^5
9^(1/2)
#### Vectors
# Create a vector with the c (short for combine) function
?c(1, 4, 6, 7)
c(1:5, 10)

# or use a function
# (seq is short for sequence)
seq(1, 10, by = 2)
seq(0, 50, length = 11)
seq(1, 50, length = 11)
1:10 # short for seq(1, 10, by = 1), or just
seq(1, 10)
5:1

# non-integer sequences
#   (Note: the [1] at the beginning of lines indicates
#          the index of the first value in that row)
seq(0, 100*pi, by = pi)
#### Assign variables
# Assign a vector to a variable with <-
a <- 1:5
a
b <- seq(15, 3, length = 5)
b
d <- a * b
d
#### Basic functions
# Lots of familiar functions work
a
sum(a)
prod(a)
mean(a)
sd(a)
var(a)
min(a)
median(a)
max(a)
range(a)

#### Extracting subsets
# Specify the indices you want in the square brackets []
a <- seq(0, 100, by = 10)
# blank = include all
a
a[]
# integer +=include, 0=include none, -=exclude
a[5]
a[c(2, 4, 6, 8)]
a[0]
a[-c(2, 4, 6, 8)]
a[c(1, 1, 1, 6, 6, 9)]   # subsets can be bigger than the original set
a[c(1,2)] <- c(333, 555) # update a subset
a
#### Boolean
a
(a > 50)         # TRUE/FALSE for each element

which(a > 50)    # which indicies are TRUE
a[(a > 50)]
!(a > 50)        # ! negates (flips) TRUE/FALSE values
a[!(a > 50)]
#### Comparison
# Here they are:  <  >  <=  >=  !=  ==  %in%
a
# equal to
a[(a == 50)]
a
# equal to
a[(a == 55)]
# not equal to

a[(a != 50)]

# greater than
a[(a > 50)]
# less than
a[(a < 50)]
# less than or equal to
a[(a <= 50)]

# which values on left are in the vector on right
(c(10, 14, 40, 60, 99) %in% a)
#### Boolean
# & and, | or, ! not
a
a[(a >= 50) & (a <= 90)]
a[(a < 50) | (a > 100)]
a[(a < 50) | !(a > 100)]
(a < 50) | !(a > 100)
a[(a >= 50) & !(a <= 90)]
#### Missing values
NA + 8
3 * NA
mean(c(1, 2, NA))

# Many functions have an na.rm argument  (NA remove)
mean(c(NA, 1, 2), na.rm = TRUE)
sum(c(NA, 1, 2))
sum(c(NA, 1, 2), na.rm = TRUE)

# Or you can remove them yourself
a <- c(NA, 1:5, NA)
a
is.na(a)      # which values are missing?
!is.na(a)     # which values are NOT missing?
a[!is.na(a)]  # return those which are NOT missing
a             # note, this did not change the variable a

# To save the results of removing the NAs,
#   assign to another variable or reassign to the original variable
# Warning: if you write over variable a then the original version is gone forever!
a <- a[!is.na(a)]
a
## #### Review
## <-
## + - * / ^
## c()
## seq() # by=, length=
## sum(), prod(), mean(), sd(), var(),
## min(), median(), max(), range()
## a[]
## (a > 1), ==, !=, >, <, >=, <=, %in%
## &, |, !
## NA, mean(a, na.rm = TRUE), !is.na()
## #### Installing
## # only needed once after installing or upgrading R
## install.packages("ggplot2")
#### Library
# each time you start R
# load package ggplot2 for its functions and datasets
library(ggplot2)
# ggplot2 includes a dataset "mpg"
# ? gives help on a function or dataset
?mpg
mpg
#### mpg dataset
# head() lists the first several rows of a data.frame
head(mpg)
# str() gives the structure of the object
str(mpg)
# summary() gives frequeny tables for categorical variables
#             and mean and five-number summaries for continuous variables
summary(mpg)
#### ggplot_mpg_displ_hwy
# specify the dataset and variables
p <- ggplot(mpg, aes(x = displ, y = hwy))
p <- p + geom_point() # add a plot layer with points
print(p)
#### ggplot_mpg_displ_hwy_colour_class
p <- ggplot(mpg, aes(x = displ, y = hwy))
p <- p + geom_point(aes(colour = class))
print(p)
#### ggplot_mpg_displ_hwy_colour_class_size_cyl_shape_drv
p <- ggplot(mpg, aes(x = displ, y = hwy))
p <- p + geom_point(aes(colour = class, size = cyl, shape = drv))
print(p)
#### ggplot_mpg_displ_hwy_colour_class_size_cyl_shape_drv_alpha
p <- ggplot(mpg, aes(x = displ, y = hwy))
p <- p + geom_point(aes(colour = class, size = cyl, shape = drv)
                  , alpha = 1/4) # alpha is the opacity
print(p)
#### ggplot_mpg_displ_hwy_facet
# start by creating a basic scatterplot
p <- ggplot(mpg, aes(x = displ, y = hwy))
p <- p + geom_point()

## two methods
# facet_grid(rows ~ cols) for 2D grid, "." for no split.
# facet_wrap(~ var)       for 1D ribbon wrapped into 2D.

# examples of subsetting the scatterplot in facets
p1 <- p + facet_grid(. ~ cyl)     # columns are cyl categories
p2 <- p + facet_grid(drv ~ .)     # rows are drv categories
p3 <- p + facet_grid(drv ~ cyl)   # both
p4 <- p + facet_wrap(~ class)     # wrap plots by class category

# plot all four in one arrangement
library(gridExtra)
grid.arrange(p1, p2, p3, p4, ncol = 2)
#### ggplot_mpg_cty_hwy
p <- ggplot(mpg, aes(x = cty, y = hwy))
p <- p + geom_point()
print(p)
#### ggplot_mpg_cty_hwy_jitter
p <- ggplot(mpg, aes(x = cty, y = hwy))
p <- p + geom_point(position = "jitter", alpha = 1/2)
print(p)
#### ggplot_mpg_class_hwy
p <- ggplot(mpg, aes(x = class, y = hwy))
p <- p + geom_point()
print(p)
#### ggplot_mpg_reorder_class_hwy
p <- ggplot(mpg, aes(x = reorder(class, hwy), y = hwy))
p <- p + geom_point()
print(p)
#### ggplot_mpg_reorder_class_hwy_jitter
p <- ggplot(mpg, aes(x = reorder(class, hwy), y = hwy))
p <- p + geom_point(position = "jitter")
print(p)
#### ggplot_mpg_reorder_class_hwy_jitter_less
p <- ggplot(mpg, aes(x = reorder(class, hwy), y = hwy))
p <- p + geom_jitter(position = position_jitter(width = 0.1))
print(p)
#### ggplot_mpg_reorder_class_hwy_boxplot
p <- ggplot(mpg, aes(x = reorder(class, hwy), y = hwy))
p <- p + geom_boxplot()
print(p)
#### ggplot_mpg_reorder_class_hwy_jitter_boxplot
p <- ggplot(mpg, aes(x = reorder(class, hwy), y = hwy))
p <- p + geom_jitter(position = position_jitter(width = 0.1))
p <- p + geom_boxplot(alpha = 0.5)
print(p)
#### ggplot_mpg_reorder_class_hwy_boxplot_jitter
p <- ggplot(mpg, aes(x = reorder(class, hwy), y = hwy))
p <- p + geom_boxplot(alpha = 0.5)
p <- p + geom_jitter(position = position_jitter(width = 0.1))
print(p)
#### ggplot_mpg_reorder_class_hwy_boxplot_jitter_median
p <- ggplot(mpg, aes(x = reorder(class, hwy, FUN = median), y = hwy))
p <- p + geom_boxplot(alpha = 0.5)
p <- p + geom_jitter(position = position_jitter(width = 0.1))
print(p)
## #### Review
## library(ggplot2)
## ?help
## head()
## str()
## summary()
## ggplot(df)
## geom_point()
##   aes()
##     colour, size, shape, alpha
##   position = "jitter"
##   geom_jitter(position = position_jitter(width = 0.1))
## geom_boxplot()
## facet_grid()
## facet_wrap()
## reorder()
##   median()
