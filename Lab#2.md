## 1. Створить вектор v із 100 елементів командою v <- rnorm(100). Для цього
#вектору виведіть: 10-й елемент; елементи з 10-го по 20-й включно; 10
#елементів починаючи з 20-го; елементи більше 0.
#v<-c(1:100)
```v<- rnorm(100)
v[10]
v[10:20]# - How to make show in console full size of our element after 9 symblos(округляет до 8)
v[20:30]# another method...?? v[20:30-1]
v[(v>0)]
```
## 2. Створити фрейм (data frame) y командою y <- data.frame(a = rnorm(100), b= 1:100, cc = sample(letters, 100, replace = TRUE)). Для цього data frame виведіть: останні 10 строк; ## строки з 10 по 20 включно; 10-й елемент стовпця b; повністю стовпець cc, при цьому використайте ім’я стовпця.
 
       ```  y <- data.frame(a = rnorm(100), 
                b= 1:100, cc = sample(letters, 100, replace = TRUE))
       y[91:100,]
       y[10:20,]
       y[10,]  #y[10,"a/b/cc"]
       y["cc"]
       str(y["cc"])
       ```
## 3. Створити вектор z з елементами 1, 2, 3, NA, 4, NA, 5, NA. Для цього вектору: виведіть всі елементи, які не NA; підрахуйте середнє значення всіх елементів цього вектору без # NA значень та з NA значеннями.
       
      ``` thr<- c(1:3,NA,4,NA,5,NA)
       mean(thr,na.rm=TRUE)
       good<- is.na(thr)
       thr[!good]# ! - logical No
       sum(thr)# Sum with NA
       sum(thr[!good])# sum without NA  
       ```
