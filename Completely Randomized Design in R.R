replicate1<- c(23,42,47)
replicate2<-c(36,26,43)
replicate3<-c(31,47,43)
replicate4<-c(33,34,39)

#Combining the data into a dataframe
df<- data.frame(cbind(replicate1,replicate2,replicate3,replicate4))
summary(df)

#Stacking the replicates
stacked_df<- stack(df)
stacked_df


#convert the treatment variable as a factor
treatment <- as.factor(stacked_df$ind)
class(treatment)

#Carrying out the ANOVA
results <- aov(values~treatment, data = stacked_df)
summary(results)
