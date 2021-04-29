#데이터 불러오기
dongsan=read.csv("dongsan.csv",head=TRUE,sep=",",encoding = "ANSI")

#데이터 확인
View(dongsan)
#복사본 만들기
dongsan_df <- dongsan
View(dongsan_df)

head(dongsan_df)
# 라이브러리 불러오기
library(ggplot2)
library(dplyr)
library(gapminder)
names(dongsan_df)


dongsan_df %>% mutate(year = X2006 | X2007|X2008|X2009|X2010|X2011|X2012|X2013|X2014|X2015|X2016|X2017|X2018|X2019)
year

names(dongsan_df)=substr(names(dongsan_df), 2, nchar(names(dongsan_df)))
names(dongsan_df)[1]="지역"
names(dongsan_df)

ggplot(dongsan[1:5,],aes(x=지역,y=year, fill=지역)) + geom_col(stat="") + scale_fill_brewer(palette="Spectral") + geom_smooth()

ggplot(dongsan_df[1:5,],aes(지역,X2007)) + geom_col(stat="identity",aes(fill=지역)) + scale_fill_brewer(palette="Blues")
ggplot(dongsan_df[1:5,],aes(지역,X2008)) + geom_col(stat="identity",aes(fill=지역)) + scale_fill_brewer(palette="Blues")
ggplot(dongsan_df[1:5,],aes(지역,X2009)) + geom_col(stat="identity",aes(fill=지역)) + scale_fill_brewer(palette="Blues")
ggplot(dongsan_df[1:5,],aes(x = 지역, y = dongsan_df$"2006", fill=지역)) + geom_col(stat="") + scale_fill_brewer(palette="Blues")
library(stringr)
region_split <- str_split(dongsan_df$지역,"/")

View(dongsan_df$지역)
dongsan_df$지역

dongsan_df <- mutate(dongsan_df,region="",hometype="")

region_split

View(dongsan_df)


i = 1
for (i in 1:1490) {
  dongsan_df$hometype[i] <- region_split[[i]][2]
  i=i+1
}

j = 1
for (j in 1:1490) {
  dongsan_df$region[j] <- region_split[[j]][1]
  j=j+1
}

dongsan_df$hometype
dongsan_df$region
View(dongsan_df)


gapminder %>% ggplot(aes(dongsan_df$region, col=dongsan_df$hometype)) + geom_point(alpha=0.2) + geom_smooth()

plot(hometype, type="l", main="hometype")

head(hometype)
head(dongsan_df)
dongsan_df$region=="서울 "
a
x <-mutate(subset(dongsan_df, dongsan_df$region=="서울 "), x)
x
a= dongsan_df %>% filter(!is.na(X2019)) %>% select(dongsan_df$X2019[6:10])

a
pie(a$X2019, x)
matplot(dongsan_df$X2019[6:10], type="l")

hist(dongsan_df$region)
