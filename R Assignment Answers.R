#Q1.
A<-seq(1:50)
x<-seq(1,50,3)
y<-seq(1,50,5)
z<-seq(1,50,10)
#---------------------------------------------------
#Q2.Different Data Objects with Syntax
#Numeric type
a<-10
class(a)
b<-2.587
class(b)

#Integer type
a<-1L
a
class(a)

#Character type
z<-'a'
class(z)
w<-LETTERS[1:10]
class (w)
q<-letters[1:5]
class(q)

#complex type
b<-2+3i
class(b)
Re(b)
Im(b)

#logical type
c<- TRUE
d<- FALSE

class(c)
class(d)

# Vectors
v<-c(674,4455,5482,6318,6782)
class(v)
is.vector(v)

#Matrix
m<-matrix(c(5,6,7,8), nrow=2, byrow=T)
m
mm<-matrix(c(5,6,7,8), ncol = 3, byrow = T)
mm

#array
arr<-array(c(25,5,10,30), dim = c(2,2,2))
arr
ari<-array(c(15:25),dim = c(3,4,1))
ari

#List
List<-list(cid=c(101,102,103,104,105), custname = c('aayushman','ananya','karthik','rajkumar','janhvi'),status=c('platinum','platinum','gold','gold','platinum'))
List
List$status

#Data Frames
df<-data.frame(cid=c(101,102,103,104,105), custname = c('aayushman','ananya','karthik','rajkumar','janhvi'),status=c('platinum','platinum','gold','gold','platinum'))
df

#Factor
factor<-c('red','blue','green','voilet','red','blue')
class(factor)
factor.fact<-as.factor(factor)
typeof(factor.fact)
attributes(factor.fact)
#-----------------------------------------------
#Q3.
students<-data.frame(sid=c(1001,1002,1003,1004,1005), studentname = c('sai','lokesh','mokshit','harideep','komal'), marks=c(100,73,90,85,65))
students   #fetch
age<-c(18,29,35,29,32)
cbind(students,age)   #add column
p<-c(1006,'ishaan',70,19)
rbind(students,p)  #add row
select(students,-c(marks)) #delete column
select(students, -3)   #delete column
students2=students[-c(3),]   #delete row
students2
#-----------------------------------------------

#Q4.

Number<- -30
if (Number == 0) {
  print("Zero")
} else if (Number > 0) {
  print("Positive number")
} else print("Negative Number")
#-----------------------------------------------

#Q5.

input<- 'C'
if (input>='0'&& input<='9') {
  print("Numeric")
} else if (input>='A'&& input<='Z'||input>='a'&& input<='z') {
  print("character")
} else print("special character")

#-----------------------------------------------

#Q6.

#A break statement is used inside a loop (repeat, for, while) to stop the 
#iterations and flow the control outside of the loop.

Z<- 1:10
for (val in Z) {
  if (val ==5){
    break
  }
  print(val)
}

#A next statement is useful when we want to skip the current iteration of a 
#loop without terminating it. 
Input<- 1:50
for (val in Input) {
  if (val == 10){
    next
  }
  print(val)
}
#-----------------------------------------------
#Q7.

A= c(1,5.6,3,10,3.5,5)
print(A)
reverse=rev(A)
print(reverse)
#-----------------------------------------------
#Q8.

Mode = function(x){ 
  ta = table(x)
  tam = max(ta)
  if (all(ta == tam))
    mod = NA
  else
    if(is.numeric(x))
      mod = as.numeric(names(ta)[ta == tam])
  else
    mod = names(ta)[ta == tam]
  return(mod)
}
Mode(c("a",'b','c','t','a','c','r','a','c','t','z','r','v','t','u','e','t'))

ta = table(c("a",'b','c','t','a','c','r','a','c','t','z','r','v','t','u','e','t'))
tam = max(ta)
#-----------------------------------------------
#Q9.

filter(iris, Species == 'setosa')
#-----------------------------------------------

#Q10.

data(iris)
View(iris)
head(iris)
Means_of_obs = rowMeans(iris[ ,c(1:4)])
cbind(iris,Means_of_obs)
#-----------------------------------------------

#Q11

i<-filter(select(iris,Sepal.Length,Sepal.Width,Species),Species == 'versicolor')
i
#-----------------------------------------------

#Q12.
# Creating a scatter plot for mtcars
#displaying mileage(mpg) and displacement(disp) 
#and variations in colors denote the varying horsepower(hp).
Scatterplot<-ggplot(data =mtcars, aes( x = mpg, y =disp,
                                       colour = hp)) + geom_point(size=1.0)


#creating Box plot
mtcars$cyl = factor(mtcars$cyl)
ggplot(mtcars, aes(x=cyl, y=mpg,fill=cyl))+ geom_boxplot(alpha=1,width=1)

#creating Histogram
ggplot(data  =mtcars, aes( x = mpg)) + geom_histogram( color="orange",bins=30)

#creating Line graph
#linear line chart
plot(x =mtcars$mpg, y =mtcars$cyl, type = "l")
#line chart with qplot
qplot(cyl, mpg, data = mtcars, geom = "line",size=mpg,color="red")

#creating Bar graph
#Vertical Bar graph
ggplot(mtcars, aes(x=mpg, y=hp,fill=mpg,color="orange")) + 
  geom_bar(stat = "identity",width=1.5)
#horizontal Bar graph
ggplot(mtcars, aes(x=hp, y=cyl,fill=cyl)) + 
  geom_bar(stat = "identity",width=1)+
  coord_flip()
