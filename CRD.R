brandA <-c(12,15,14,11,15)
brandB<- c(14,12,15)
brandC<-c(11,12,10,14)
brandD<- c(15,18,16,17,14)
brandE<- c(10,17,14,12)

#combining the data into a dataframe
df <- data.frame(cbind(brandA, brandB, brandC, brandD, brandE))
df

#stacking the dataframe
stacked_df<- stack(df)
stacked_df

#converting treatment variable to a factor
treatment <-as.factor(stacked_df$ind)

#Performing anova
aov_results <- aov(values~treatment, data = stacked_df)
summary(aov_results)
