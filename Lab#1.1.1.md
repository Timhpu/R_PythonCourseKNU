---
title: "Untitled"
author: "Yaro"
date: "05 11 2020"
output: html_document
---

## R Markdown
## 1. Створити змінні базових (atomic) типів. Базові типи: character, numeric,integer, complex, logical.
```ch<-123L 
num<-22.5
i<-2
lG<- TRUE
cm<-1 + 1i
## 2. Створити вектори, які: містить послідовність з 5 до 75; містить числа 3.14, 2.71, 0, 13; 100 значень TRUE.
```f1<-c(5:75)
f2<-c(3.14, 2.71, 0, 13)
f3<-c(rep(TRUE, 100))
 
 ## 3. Створити наступну матрицю за допомогою matrix, та за допомогою cbind або rbind
#0.5 1.3 3.5
#3.9 131 2.8
#0 2.2 4.6
#2 7 5.1

 [,1]  [,2] [,3]
[1,]  0.5   1.3  3.5
[2,]  3.9 131.0  2.8
[3,]  0.0   2.2  4.6
[4,]  2.0   7.0  5.1

mm<-matrix(c(0.5,1.3,3.5,3.9,131,2.8,0,2.2,4.6,2,7,5.1),
           nrow=4, ncol=3, byrow=TRUE)
mm 

baby<-matrix(c(0.5,3.9,0,2), nrow=4, ncol=1, byrow=TRUE) 
child<-matrix(c(1.3,131,2.2,7),nrow=4,ncol=1, byrow=TRUE)
adult<-matrix(c(3.5,2.8,4.6,5.1),nrow=4,ncol=1, byrow=TRUE)

cbind(baby,child,adult)
 [,1]  [,2] [,3]
[1,]  0.5   1.3  3.5
[2,]  3.9 131.0  2.8
[3,]  0.0   2.2  4.6
[4,]  2.0   7.0  5.1

mr1<-matrix(c(0.5,1.3,3.5), nrow=1, ncol=3)
mr2<-matrix(c(3.9,131,2.8), nrow=1, ncol=3)
mr3<-matrix(c(0,2.2,4.6), nrow=1, ncol=3)
mr4<-matrix(c(2,7,5.1), nrow=1, ncol=3)

rbind(mr1,mr2,mr3,mr4)
      [,1]  [,2] [,3]
[1,]  0.5   1.3  3.5
[2,]  3.9 131.0  2.8
[3,]  0.0   2.2  4.6
[4,]  2.0   7.0  5.1
## 4.Створити довільний список (list), в який включити всі базові типи.

l<-list(ch<-list(123L),cm<-list(1+1i),i<-list(2),lG<-list(TRUE),num<-list(22.5))
l1<-list(ch,cm,i,lG,num)
l[[c(2)]] ## - same l[[c(2,1)]] - cause we have only 1 argument in function "List"

[[1]]
[1] 1+1i

## 5. Створити фактор з трьома рівнями «baby», «child», «adult».

f<-factor(c(baby,child,adult)) # Start working, after when i creat var's early 


## 6. Знайти індекс першого значення NA в векторі 1, 2, 3, 4, NA, 6, 7, NA, 9, NA, 11. Знайти кількість значень NA.


six<-c(1:4, NA, 6, 7, NA, 9, NA, 11)
six

[1]  1  2  3  4 NA  6  7 NA  9 NA 11

sum(six)

[1] NA

is.na(six)# Is it NA in var "Six" ?

[1] FALSE FALSE FALSE FALSE  TRUE FALSE FALSE  TRUE FALSE  TRUE FALSE

which(is.na(six)) # Show elements in vector which are =NA

[1]  5  8 10

length(six) #Size of our vector

[1] 11

sum(is.na(six)) # How many values of NA's we have ?
[1] 3
#good<-complete.cases(six) - same function but with more functionality i guess
# good
#six[good]


## 7. Створити довільний data frame та вивести в консоль.
Name<- c("Global","Sup","LEM","LE","BS")
Victories<- c("750","650","550","450","350")
Hours<- c("2500","2000","1800","1600","1450")
dt<- data.frame(Name, Victories, Hours)
dt 

    Name Victories Hours
1 Global       750  2500
2    Sup       650  2000
3    LEM       550  1800
4     LE       450  1600
5     BS       350  1450

## 8. Змінити імена стовпців цього data frame()

names(dt)[names(dt) == "Name"]<- "names"
names(dt)[names(dt) == "Victories"]<- "Matchmakings"
names(dt)[names(dt) == "Hours"]<- "hour"
dt    

   names Matchmakings hour
1 Global          750 2500
2    Sup          650 2000
3    LEM          550 1800
4     LE          450 1600
5     BS          350 1450
```
This is an R Markdown document. Markdown is a simple formatting syntax for authoring HTML, PDF, and MS Word documents. For more details on using R Markdown see <http://rmarkdown.rstudio.com>.

When you click the **Knit** button a document will be generated that includes both content as well as the output of any embedded R code chunks within the document. You can embed an R code chunk like this:

```{r cars}
summary(cars)
```

## Including Plots

You can also embed plots, for example:

```{r pressure, echo=FALSE}
plot(pressure)
```

Note that the `echo = FALSE` parameter was added to the code chunk to prevent printing of the R code that generated the plot.
