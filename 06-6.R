# 06-6 집단별로 요약하기

mpg %>% group_by(class) %>% summarise(mean_cty = mean(cty))

mpg %>%
  group_by(class) %>%
  summarise(mean_cty = mean(cty)) %>%
  arrange(desc(mean_cty))



# id 기준으로 합치기 
test1 <- data.frame(id = c(1, 2, 3, 4,5),
                    midterm = c(60, 80, 70, 90, 85))
test2 <- data.frame(id = c(1,2,3,4,5),
                    final = c(70, 83, 65, 95, 80))
test1
test2
total <- left_join(test1, test2, by = "id")
total


name <- data.frame(class = c(1,2,3,4,5),
                   teacher = c("kim","lee","park","choi","jung"))
name

exam_new <- left_join(exam, name, by = "class")
exam_new

#세로로 합치기
group_a <- data.frame(id = c(1, 2, 3, 4, 5),
                      test = c(60, 80, 70, 90, 85))
group_b <- data.frame(id = c(6, 7, 8, 9, 10),
                      test = c(70, 83, 65, 95, 80))
group_all <- bind_rows(group_a, group_b)
group_all

# 혼자서 해보기 
fuel1 <- data.frame(fl = c("c","d","e","p","r"),
                    price_fl = c(2.35, 2.38, 2.11, 2.76, 2.22),
                    stringsAsFactors = F)
mpg <- left_join(mpg, fuel1, by="fl")

mpg %>%
  select(model, fl, price_fl) %>%
  head(5)

# p.160

# Q1
midwest <- as.data.frame(ggplot2::midwest)  # 데이터 불러오기 
midwest <- 
  midwest %>%
  mutate(ratio = (poptotal-popadults) / poptotal * 100)  
midwest

# Q2
midwest %>% 
  select(county, ratio) %>%
  arrange(desc(ratio)) %>%
  head(5)

# Q3
midwest <- 
  midwest %>% mutate(grade = ifelse(ratio >= 40, "large", ifelse(ratio >= 30, "middle", "small")))
table(midwest$grade)

# Q4

midwest %>% 
  mutate(ratio_asian = (popasian / poptotal * 100)) %>%
  select(state, county, ratio_asian) %>%
  arrange(ratio_asian) %>%
  head(10)

midwest
