# p.289 인터랙티브 그래프--------------------------------------
install.packages("plotly")
library(plotly)

library(ggplot2)
p <- ggplot(data = mpg, aes(x = displ, y = hwy, col = drv)) + geom_point()
ggplotly(p)

p <- ggplot(data = diamonds, aes(x = cut, fill = clarity)) +
  geom_bar(position = "dodge")
ggplotly(p)


install.packages("dygraphs")
library(dygraphs)

# 데이터 호출
economics <- ggplot2::economics
head(economics)

library(xts)  # xts는 시간 순서 속성을 지님 
eco <- xts(economics$unemploy, order.by = economics$date)  # 날짜 기준 그래프 
head(eco)

dygraph(eco)   # 그래프 생성

# 날짜 범위 선택 가능
dygraph(eco) %>% dyRangeSelector()

# 여러 값 포현하기 

eco_a <- xts(economics$psavert, order.by = economics$date)
eco_b <- xts(economics$unemploy/1000, order.by = economics$date)

eco2 <- cbind(eco_a, eco_b)
colnames(eco2) <- c("psavert","unemploy")
head(eco2)

dygraph(eco2) %>% dyRangeSelector()

mpg <- as.data.frame(ggplot2::mpg)

library(dplyr)
mpg_diff <- mpg %>%
  select(class, cty) %>%
  filter(class %in% c("compact", "suv"))

head(mpg_diff)

table(mpg_diff$class)

t.test(data = mpg_diff, cty ~ class, var.equal = T)

mpg_diff2 <- mpg %>%
  select(fl, cty) %>%
  filter(fl %in% c("r", "p"))  # r:regular, p:premium

table(mpg_diff2$fl)

t.test(data = mpg_diff2, cty ~ fl, var.equal = T)


## 상관분석 - 두 변수의 관계성 분석
economics <- as.data.frame(ggplot2::economics)
cor.test(economics$unemploy, economics$pce)

head(mtcars)

car_cor <- cor(mtcars)
round(car_cor, 2)

install.packages("corrplot")
library(corrplot)

corrplot(car_cor)

corrplot(car_cor, method = "number")

col <- colorRampPalette(c("#BB4444","#EE9988","#FFFFFF","#77AADD",
                          "#4477AA"))
corrplot(car_cor,
         method = "color",
         col = col(200),
         type = "lower",
         order = "hclust",
         addCoef.col = "black",
         tl.col = "black",
         tl.srt = 45,
         diag = F)