?log
?rtweet
help(log)
??read.ta
?"<-"
vignette()
vignette("rtweet")


#data stru ctures#
cats<-data.frame(coat = c("calico", "black","tabby"), 
                 weight = c("2.1", "5.0", "3.2"), likes_string = c(1,0,1))
cats
write.csv(cats, "data/feline_data.csv")

cats<-read.csv("data/feline_data.csv")

cats$weight
cats$coat


cats$weight<-cats$weight*2.2
cats$weight

cats$weight+cats$coat
class (cats$weight)
class (cats$coat)

class(cats)
str(cats)

num_vector <-c(1,3,5)
chr_vector <-c("a","b","c")
chr_vector2<-c("d","e","f")
comb_vector<-c(chr_vector, chr_vector2)

num_vector2<-c(100,10,20)
num_vector + num_vector2
new_series<-1:10
seq(10)
seq (from =1, to=10, by = 0.1)
my_example<-5.8
names

names(my_example)<-c("a","b","c","d")
?LETTERS

prob_vector<-(1:26)
prob_vector*2


#now working with real data#

gapminder<-read.csv("data/gapminder_data.csv")

data("gapminder")

attach(gapminder)
library(gapminder)
data ("gapminder")
attach (gapminder)

str(gapminder)
nrow(gapminder)
ncol(gapminder)
dim(gapminder)
colnames(gapminder)

#subsetting data#

x<-c(5.4, 6.2, 7.1, 4.8, 7.5)
names(x)<-c("a","b","c","d","e")
x[1]
x[3]
x[c(1,3)]
x[1:4]
x[-2]
x[-(2:4)]


head (gapminder["pop"])
head (gapminder[,5])
gapminder [3, ]

gapminder [1:10,5]
gapminder [138, ]

gapminder [1:6, ]
gapminder [1:6, 3:6]

gapminder [1:6, c("pop", "lifeExp", "gdpPercap")]

gapminder[1:12, ]
gdp<-pop*gdpPercap
gdp [1:12]
gapminder[1:12,"gdp"]

gdp [1:12]

afghan<-gapminder[1:12, 1:6]
afghan
afghan$gdp<-afghan$pop*afghan$gdpPercap
afghan$gdp

write.csv(afghan, "data/afghan.csv")

afghan


ggplot (data=gapminder, aes(x=gdpPercap, y=lifeExp, by = country, color = continent))+geom_point(alpha=.02)+scale_x_log10()



ggplot (data=gapminder, aes(x=gdpPercap, y=lifeExp, 
color = continent))+geom_point(alpha=1)+
scale_x_log10()+geom_smooth(method="lm", size=1.5)

ggplot(data = gapminder, aes(x = gdpPercap, y = lifeExp)) +
geom_point(alpha=.05)+geom_smooth(method="lm")


ggplot(data = gapminder, aes(x = gdpPercap, y = lifeExp, color = continent))+
geom_point(size=2, aes (shape = continent))+scale_x_log10()+
geom_smooth(method="lm")+
scale_y_continuous(limits=c(0,100), breaks = seq(0,100, by=10))+
theme_bw()+ggtitle("effects of per capita GDP on life expectancy")+
xlab("GDP per capita")+ylab("life expectancy")

#boxplot

ggplot(data = gapminder, aes(x = continent, y = lifeExp))+
geom_boxplot()+geom_jitter(alpha=.05, color = "tomato")

plot
plot_geom_point(alpha=.05, color = "tomato")
plot+geom_jitter(alpha=.05, color = "tomato")
print(plot)


#R workshop - 

number<-37

if(number>100){
  print("greater than 100")
} else {"less than or equal to 100"
}
number<--3

if (number>0){
  print (1)
} else if (number<0){
  print (-1)
} else {
  print (0)
}

number1<--15
Number2<-40
                                                                                                                
if (number1>= 0 & Number2>=0){print("both numbers are positive")
} else {
  print("at least one number was negative")
}                                                                                                               


#loops

numbers<-1:10
numbers
for (number in numbers){
  print(number)
}

for (i in 1:10) {
  print(i)
}


letter <-"z"
print (letter)
for (letter in c("a","b","c")){
  print (letter)
}

print(letter)

newnumber<-0
print (newnumber)
numbers 
for (i in c(4,8,15,16,23,42)){
  newnumber=newnumber+i
  }
print(newnumber)

#then to check the work
sum (4,8,15,16,23,42)


#okay now functions

nrow
dim
read.table  


fahr_to_kelvin<-function(temp){
  kelvin<-((temp - 32)*(5/9)) +273.15
  return (kelvin)
}


kelvin_to_celsius<-function(temp){}





fahr_to_kelvin <- function(temp) {
  
  temp <- ((temp - 32) * (5 / 9)) + 273.15
  return(temp)
}
temp <- 73
kelvin_temp <- fahr_to_kelvin(temp)
print(temp)


# Function to convert fahrenheit to kelvin
fahr_to_kelvin <- function(temp) {
  
  temp <- ((temp - 32) * (5 / 9)) + 273.15
  return(temp)
}

# Store the current temperature in F
temp <- 73


# Get the temperature in kelvin
kelvin_temp <- fahr_to_kelvin(temp)


# Print the temperature
print(temp)


# Function to convert fahrenheit to kelvin
fahr_to_kelvin <- function(temp) {
  
  temp <- ((temp - 32) * (5 / 9)) + 273.15
  return(temp)
}

# Store the current temperature in F
temp <- 73


# Get the temperature in kelvin
kelvin_temp <- fahr_to_kelvin(temp)


# Print the temperature
print(temp)




cels_to_fahr<-function(temp){
  fahr<-((temp*9/5+32))
  return (fahr)
}

cels_to_fahr(45)

cels_to_fahr(100)

install.packages (c("tidyr","dplyr","knitr", "rmarkdown","formatR"))
install.packages ("dplyr")

install.packages ("dplyr")

library(dplyr)


