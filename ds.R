mtcars
git config --global user.email "anisha.p17003@iimtrichy.ac.in"
git config --global user.name "AnishaEkka"
women
plot(women)
?women
?mean
x= 1:100
?women
x= 1:100
y=seq(1, 100, by=2)
x
data()
data(x)
# Data structures
library(car)


#vectors----
v1=1:100 #create vector from 1 to 100
v2= c(1,4,5,10)
class(v1)
class(v2)
v3= c('a','Anisha','Anup')
v3 #print the vector
class(v3)
v4= c(TRUE, FALSE, T, F, T)
class(v4)
#summary on vectors
mean(v1)
median(v1)
sd(v1)
var(v1)
hist(v1)
hist(women$height)
v2[v2>=5]
x= rnorm(60, mean = 60, sd=10)
x
plot(x)
hist(x)
plot(density(x))
abline(v=60)
#rectagles and density togehter
hist(x, freq = F)
lines(density(x))
hist(x, breaks = 10, col=1:10)
lines(density(x))
length(x)
sd(x)

?sample
?sample
ch= LETTERS[5:20]
x1= LETTERS(5:20)

x1
set.seed(1234)
y1= sample(x1)
y1
x1= LETTERS(5:20)
(y2= sample(x1, size=5))
(gender=sample(c('M','F'), size=60, replace =TRUE, prob=c(.6,.4) ))
(t1=table(gender))
prop.table(t1)
pie(t1)
barplot(t1, col=1:2, horiz =T )
#matrix
m1 = matrix(1:24, nrow=4)
m1
m2 = matrix(1:24, nrow=4, byrow = T)
m2
m3 = matrix(1:24, ncol=4, byrow = T)
m3
?runif
(x=trunc(runif(60, 60, 100)))

#round, trunc, ceiling, floor
(m4= matrix(x, ncol=6))
colSums(m4)
rowSums(m4)
rowMeans(m4)
plot(density(x))
m4[m4>67 & m4<86]
m4[8:10,]
m4[8:10, 1:3]
m4[8:10, c(1,3,5)]
rowSums(m4[8:10, c(1,3,5)])
m4[,c(1,3,6)]
#array----

#data.frame
#rollno, name, gender, course, marks1, marks2
(rollno= 1:60)
(name= paste('student1', 1:60, sep = '-'))
name[1:10]
name[15:20]
name[c(15,20,37)]
name[-1]
name[-c(1:10)]
rev(name)
(gender=sample(c('Male','Female'), size = 60, replace = T, prob=c(.3,.7)))
course= c('BBA','FPM','MBA')
(course=sample(c('BBA', 'FPM','MBA'), size=60, replace=T, prob=c(.3,.7,.1)))
(marks1= ceiling(rnorm(60, mean=65, sd=7)))
(marks2= ceiling(rnorm(60, mean=60, sd=11)))
(grades =sample(c('A','B','C'), size=60, replace=T))
students=data.frame(rollno, name,gender, course, marks1, marks2, grades, stringsAsFactors = F)
class(students)
summary(students)
students[,c('name')]
students[students $gender=='Male',]
students[students $gender=='Male',c('rollno','gender', 'marks1')]
students[students $gender=='Male'& students $grades=='C',c('rollno','gender', 'marks1')]
students[students$marks1>55 | students$marks1<75, c('name','marks1')]
students$gender
t1=table(students$gender)
t1
barplot(table(students$course), ylim=c(0,50), col=1:3)

text(1:3,25,table(students$course)+5, table(students$course))
str(students)
nrow(students)
names(students)
dim(students)
head(students)
tail(students)
head(students, n=7)
#avg marks scored by each gender in marks1
#gender, marks1
aggregate(students$marks1, by=list(students$gender), FUN=mean)
aggregate(students$marks2, by=list(students$course), FUN=max)
aggregate(students$marks1, by=list(students$course, students$gender), FUN=mean)
#dplyr
library(dplyr)
students %>% group_by(gender) %>% summarise(mean(marks1))
students %>% group_by(course, gender) %>% summarise(mean(marks1))
students %>% group_by(course, gender) %>% summarise(mean(marks1), min(marks2), max(marks2))
students %>% group_by(course, gender) %>% summarise(meanmarks1=mean(marks1), min(marks2), max(marks2)) %>% arrange(desc(meanmarks1))
students %>% arrange(desc(marks1)) %>% filter(gender=='Male') %>% head(n=3)
sample_frac(students, .1, replace = F)
students %>% sample_n(2)
students %>% sample_frac(.1) %>% arrange(course)
students %>% sample_frac(.1) %>% arrange(course)%>%select(name, gender)
students %>% group_by(course, gender) %>% arrange(marks1)%>% top_n(n=1)
#factor
names(students)
students$gender=factor(students$gender)
summary(students$gender)
summary(students$course)
students$course = factor(students$course, ordered = T)
summary(students$course)
students$course = factor(students$course, ordered = T, levels=c('FPM','MBA','BBA'))
students$course = factor(students$course, ordered = T)
summary(students$course)
# C, A, B
students$grades= factor(students$grades, ordered = T, levels=c('C','A','B'))
students$grades
table(students$grades)
barplot(table(students$grades))
students
write.csv(students, './DATA/iimtrichy.csv')
students2 =read.csv('./DATA/iimtrichy.csv')
head(students2)
students3 =read.csv(file.choose())
head(students3)










