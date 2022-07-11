Group1<- c(2,3,7,2,6)
Group2<- c(10,8,7,5,10)
Group3<-c(10,13,14,13,15)

#Combining the data into a dataframe
combined_groups <- data.frame(cbind(Group1, Group2, Group3))
combined_groups #Show the dataframe
summary(combined_groups) #Summary of the data

#stacking the groups
stacked_groups <- stack(combined_groups)
stacked_groups

#performing the Anova
Anova_results <- aov(values~ind, data = stacked_groups) #values = values, ind=independent variables
summary(Anova_results)

#From the results, F(2, 12)= 22.59, p-value<0.05 thus the results are significant