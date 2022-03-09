anscombe.sum <- function(df){
results <- as.list(new.env()); # create a list to return with data
results$n <- length(df$x) # sample size
results$x.mean <- mean(df$x) # mean of x
results$y.mean <- mean(df$y) # mean of y
lm.xy <- lm(y ~ x, data=df) # fit slr
results$eq.reg <- lm.xy$coefficients # regression coefficients
results$b1.se <- summary(lm.xy)$coefficients[2,2] # SE of slope
results$b1.t <- summary(lm.xy)$coefficients[2,3] # t-stat of slope
results$x.SS <- sum((df$x-results$x.mean)^2) # x sum of squares
results$ResSS <- sum(lm.xy$residuals^2) # residual SS of y
results$RegSS <- sum((df$y-results$y.mean)^2)-results$ResSS # reg SS
results$xy.cor <- cor(df$x, df$y) # correlation
results$xy.r2 <- summary(lm.xy)$r.squared # R^2 for regression
return(results)
}
# calculate and store summaries by data group g
results.temp <- by(anscombe.long, anscombe.long$g, anscombe.sum)
# make a table
x.table <- cbind( t(t(unlist(results.temp[[1]])))
, t(t(unlist(results.temp[[2]])))
, t(t(unlist(results.temp[[3]])))
, t(t(unlist(results.temp[[4]])))
, t(t(unlist(results.temp[[5]])))
, t(t(unlist(results.temp[[6]])))
, t(t(unlist(results.temp[[7]])))
, t(t(unlist(results.temp[[8]])))
, t(t(unlist(results.temp[[9]])))
, t(t(unlist(results.temp[[10]])))
, t(t(unlist(results.temp[[11]])))
, t(t(unlist(results.temp[[12]])))
, t(t(unlist(results.temp[[13]])))
, t(t(unlist(results.temp[[14]])))
, t(t(unlist(results.temp[[15]])))
, t(t(unlist(results.temp[[16]])))
, t(t(unlist(results.temp[[17]])))
, t(t(unlist(results.temp[[18]])))
, t(t(unlist(results.temp[[19]])))
, t(t(unlist(results.temp[[20]])))
, t(t(unlist(results.temp[[21]])))
, t(t(unlist(results.temp[[22]])))
, t(t(unlist(results.temp[[23]])))
, t(t(unlist(results.temp[[24]])))
, t(t(unlist(results.temp[[25]])))
)
colnames(x.table) <- 1:4 # label the table columns