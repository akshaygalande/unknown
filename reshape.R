install.packages("MASS")
library(MASS)
install.packages("reshape")
library(reshape)
attach(ships)
View(ships)
v1=head(ships,n=10)
v1
v2=melt(ships,id=c("type","year"))
v2
v3=cast(v2,type+year ~ variable,sum)
print(v3)
install.packages("reshape2")
library(reshape2)
attach(airquality)
View(airquality)
v4=melt(airquality,id.vars =c("Month","Day"))
v4
v5=dcast(v4,Month+Day ~ variable)
v5
attach(mtcars)
View(mtcars)
c1=melt(mtcars,id=c("cyl","gear"))
c1
c2=cast(c1,cyl+gear ~ variable,mean)
c2
c3=acast(mtcars,cyl+gear ~ variable)


c4=recast(airquality,Month+Day ~v4)

install.packages("party")
library("party")
library(party)
c6=ctree(nativeSpeker~age+shoeSize+score,data=readingskills)
plot(c2)
