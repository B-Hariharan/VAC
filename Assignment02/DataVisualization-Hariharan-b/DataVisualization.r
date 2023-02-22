# Importing Dataset
HR <- read.csv("HRDataset_v14.csv", stringsAsFactors = FALSE)

# Viewing Dataset
View(HR)

# Datatypes Check
str(HR)


# Datatype Conversion
HR$RecruitmentSource <- as.factor(HR$RecruitmentSource)
HR$MaritalDesc <- as.factor(HR$MaritalDesc)
HR$CitizenDesc <- as.factor(HR$CitizenDesc)
HR$EmploymentStatus <- as.factor(HR$EmploymentStatus)
HR$PerformanceScore <- as.factor(HR$PerformanceScore)

# Datatypes Recheck
str(HR)

# Express Table for people survived
prop.table(table(HR$EmploymentStatus))

# Importing Library
library(ggplot2)


# Employment Status Bar graph
ggplot(HR, aes(x = EmploymentStatus)) + theme_classic() + 
  geom_bar() + 
  labs(y = "People count", title = "EmploymentStatus")


# Employment satisfaction Plot
ggplot(HR, aes(x = EmpSatisfaction)) + theme_light() + 
  geom_bar() + 
  labs(y = "People count", 
       title = "Satisfaction Score")

# Density plot
ggplot(HR, aes(x =CitizenDesc , fill =Department  )) + theme_bw() + 
  facet_wrap(CitizenDesc~PerformanceScore ) + geom_density(alpha = 0.8) + 
  labs(y= "CitizenDesc" ,x = "Employment Satisfaction", 
       title = "Employment Satisfaction by citizenship, Status and Department")

# Plot for Gender and martial status
ggplot(HR, aes(x = Sex, fill = MaritalDesc)) + theme_light() + 
  geom_bar() + 
  labs(y = "Employee", 
       title = "Employee Count by class")


# Plot for gender based Employee from each Dept
ggplot(HR, aes(x = Sex)) + theme_light() + 
  facet_grid(~Department) + geom_bar() + 
  labs(y = "Employee", 
       title = "Employee Count by Dept and gender")


# Pie chart 
ggplot(HR, aes(x = "", fill = RecruitmentSource)) + 
  geom_bar(position = "fill") + 
  facet_grid(~Department) + coord_polar(theta = "y")

# Box Plot for survival rate by age
ggplot(HR, aes(x = CitizenDesc, y = EmploymentStatus)) + theme_bw() + 
  geom_boxplot() + 
  labs(y = "CitizenDesc", x = "EmploymentStatus", 
       title = "Citizenship and employment")

