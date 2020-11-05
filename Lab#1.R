#1. Створити змінні базових (atomic) типів. Базові типи: character, numeric,integer, complex, logical.
ch<-123L
num<-22.5
i<-2
lG<- TRUE
cm<-1 + 1i
#2. Створити вектори, які: містить послідовність з 5 до 75; містить числа 3.14, 
#2.71, 0, 13; 100 значень TRUE.
f1<-c(5:75)
f2<-c(3.14, 2.71, 0, 13)
f3<-c(rep(TRUE, 100))
#3. Створити наступну матрицю за допомогою matrix, та за допомогою cbind або rbind
#0.5 1.3 3.5
#3.9 131 2.8
#0 2.2 4.6
#2 7 5.1


mm<-matrix(c(0.5,1.3,3.5,3.9,131,2.8,0,2.2,4.6,2,7,5.1),
           nrow=4, ncol=3, byrow=TRUE)
mm 

baby<-matrix(c(0.5,3.9,0,2), nrow=4, ncol=1, byrow=TRUE) 
child<-matrix(c(1.3,131,2.2,7),nrow=4,ncol=1, byrow=TRUE)
adult<-matrix(c(3.5,2.8,4.6,5.1),nrow=4,ncol=1, byrow=TRUE)

cbind(baby,child,adult)


mr1<-matrix(c(0.5,1.3,3.5), nrow=1, ncol=3)
mr2<-matrix(c(3.9,131,2.8), nrow=1, ncol=3)
mr3<-matrix(c(0,2.2,4.6), nrow=1, ncol=3)
mr4<-matrix(c(2,7,5.1), nrow=1, ncol=3)

rbind(mr1,mr2,mr3,mr4)

#4.Створити довільний список (list), в який включити всі базові типи.

l<-list(ch<-list(123L),cm<-list(1+1i),i<-list(2),lG<-list(TRUE),num<-list(22.5))
l1<-list(ch,cm,i,lG,num)
l[[c(2)]] ## - same l[[c(2,1)]] - cause we have only 1 argument in function "List"


#5. Створити фактор з трьома рівнями «baby», «child», «adult».

f<-factor(c(baby,child,adult)) # Start working, after when i creat var's early 


#6. Знайти індекс першого значення NA в векторі 1, 2, 3, 4, NA, 6, 7, NA, 9, NA, 11. Знайти кількість значень NA.


six<-c(1:4, NA, 6, 7, NA, 9, NA, 11)
six
sum(six)
is.na(six)# Is it NA in var "Six" ?
which(is.na(six)) # Show elements in vector which are =NA
length(six) #Size of our vector
sum(is.na(six)) # How many values of NA's we have ?

#good<-complete.cases(six) - same function but with more functionality i guess
# good
#six[good]


#7. Створити довільний data frame та вивести в консоль.
Name<- c("Global","Sup","LEM","LE","BS")
Victories<- c("750","650","550","450","350")
Hours<- c("2500","2000","1800","1600","1450")
dt<- data.frame(Name, Victories, Hours)
dt 

#8. Змінити імена стовпців цього data frame()

names(dt)[names(dt) == "Name"]<- "names"
names(dt)[names(dt) == "Victories"]<- "Matchmakings"
names(dt)[names(dt) == "Hours"]<- "hour"
dt    

