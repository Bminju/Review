str(iris)

head(iris, 10)

plot(iris$Petal.Width, iris$Petal.Length, col=iris$Species)


### 벡터: 벡터 생성

c(1:5) # 1~5 요소로 구성된 벡터 생성. 1:5와 동일

c(1, 2, 3, c(4:6))  # 1~3 요소와 4~6 요소를 결합한 1~6 요소로 구성된 벡터 생성

x = c(1, 2, 3)    # 1~3 요소로 구성된 벡터를 x에 저장 
x   # x 출력

y = c()  # y를 빈 벡터로 생성
y = c(y, c(1:3))  # 기존 y 벡터에 c(1:3) 벡터를 추가해 생성 
y   # y 출력

### seq 함수 이용: 순열 벡터 생성
seq(from =1, to=10, by=2) # 1부터 10까지 2씩 증감하는 벡터 생성 

seq(10, 1, by= -2)

seq(0, 1, by=0.2) # 0부터 1까지 0.2씩 증가하는 벡터 생성 

seq(0, 1, length.out=11) # 0부터 1까지 요소가 11개인 벡터 생성 


### rep 함수 이용: 반복 벡터 생성 
rep(c(1:3), times = 2) # (1, 2, 3) 벡터를 2번 반복한 벡터 생성 
rep(c(1:3), each=2) # (1, 2, 3) 벡터의 개별 요소를 2번 반복한 벡터 생성 

### 벡터 연산
x = c(2, 4, 6, 8, 10)
length(x) # x 벡터의 길이(크기)를 구함

x[1] # x 벡터의 1번 요소 값을 구함 

x[1, 2, 3] # x 벡터의 1, 2, 3번 요소를 구할 때 이렇게 입력하면 오류 

x[c(1, 2, 3)] # x 벡터의 1, 2, 3번 요소를 구할 때는 벡터로 묶어야 함 

x[-c(1, 2, 3)]  # x 벡터에서 1, 2, 3번 요소를 제외한 값 출력력

x[c(1:3)] # x 벡터에서 1번부터 3번 요소 출력 

x = c(1, 2, 3, 4)
y = c(5, 6, 7, 8)
z = c(3, 4)
w = c(5, 6, 7)

x+2  # x 벡터의 개별 요소에 2를 각각 더함 

x+y  # x 벡터와 y 벡터의 크기가 동일하므로 각 요소별로 더함 

x+z  # x 벡터가 z 벡터 크기의 정수배인 경우엔 작은 쪽 벡터 요소를 순환하며 더함함

x+w  # x와 w의 크기가 정수배가 아니므로 연산 오류 

### 벡터 연산에 유용한 함수 
x=1:10
x>5  # x 벡터의 요소 값이 5보다 큰지 확인 

all(x>5)  # x 벡터의 요소 값이 모두 5보다 큰지 확인

any(x>5)  # x 벡터의 요소 값 중 일부가 5보다 큰지 확인인

x = 1: 10
head(x)

tail(x)

head(x, 3)

tail(x, 3)

x=c(1,2,3)
y=c(3,4,5)
z=c(3,1,2)

union(x,y)

intersect(x, y)

setdiff(x,y)

setdiff(y,x)

setequal(x,y)

setequal(x, z)  # 벡터 내의 요소가 모두 동일해야 True

### 배열 생성 함수 

# array 함수: N차원 배열 생성

x=array(1:5,c(2,4))  # 1~5 값을 2x4 행렬에 할당
x

x[1, ]  # 1행 요소 값 출력
x[, 2]  # 2열 요소 값 출력

# 2차원 배열 생성 
x = 1:12
x

matrix(x, nrow = 3)
matrix(x, nrow = 3, byrow = T)

# cbind, rbind 함수: 열 / 행 단위로 묶어 배열 생성
# 벡터를 묶어 배열 생성
v1 = c(1, 2, 3, 4)
v2 = c(5, 6, 7, 8)
v3 = c(9, 10, 11, 12)
cbind(v1, v2, v3)  # 열 단위로 묶어 배열 생성

rbind(v1, v2, v3)  # 행 단위로 묶어 배열 생성

## 배열 연산 
x = array(1:4, dim = c(2,2))
y = array(5:8, dim = c(2,2))
x

y

x+y

x-y 

x*y   # 각 열별 곱셈

x%%y   # 수학적인 행렬 곱셈

x%*%y  # 수학적인 행렬 곱셈 

t(x)   # x의 전치 행렬 

solve(x)  # x의 역행렬

det(x)   # x의 행렬식 

### apply 함수: 배열의 행 또는 열별로 함수 적용 
x = array(1:12, c(3, 4))
x

apply(x, 1, mean)  # 가운데 값이 1이면 함수를 행별로 적용 

apply(x, 2, mean)  # 가운데 값이 2이면 함수를 열별로 적용 


## dim 함수: 배열의 크기(차원의 수)
x = array(1:12, c(3, 4))
dim(x)

### sample 함수: 벡터나 배열에서 샘플 추출
x = array(1:12, c(3,4))
sample(x)   # 배열 요소를 임의로 섞어 추출

sample(x, 10)  # 배열 요소 중 10개를 골라 추출

sample(x, 10, prob = c(1:12)/24)  # 각 요소별 추출 확률을 달리할 수 있음 

sample(10)  # 단순히 숫자만 사용하여 샘플을 만들 수 있음 

#### 데이터 프레임 생성: data.frame 함수 이용
name = c("철수", "춘향", "길동")
age = c(22, 20, 25)
gender = factor(c("M", "F", "M"))
blood.type = factor(c("A", "O", "B"))

patients = data.frame(name, age, gender, blood.type)
patients

## 데이터 프레임 요소에 접근: $, [, ], 조건식 등을 이용하여 접근

patients$name  # name 속성 값 출력 

patients[1, ]  # 1행 값 출력

patients[, 2]  # 2열 값 출력 
patients[3, 1]  # 3행 1열 값 출력 

patients[patients$name=="철수", ]  # 환자 중 철수에 대한 정보 추출 

patients[patients$name=="철수", c("name", "age")] # 철수 이름과 나이 정보만 추출 

### 데이터 프레임: 유용한 함수 
# attach / detach 함수: 데이터 프레임의 속성명을 변수명으로 변경 

head(cars)  # cars 데이터 셋 확인, head 함수의 기본 기능은 앞 6개 데이터를 추출함 

speed  # speed 변수가 독립적으로 존재하지 않기 때문에 에러 발생함 

attach(cars)  # attach 함수를 통해 cars의 각 속성을 변수로 이용하게 함 

speed  # speed 라는 변수명을 직접 이용할 수 있음

detach(cars)  # detach 함수를 통해 cars의 각 속성을 변수로 사용하는 것을 해제함 

speed  # speed라는 변수에 접근해보지만, 해당 변수 없음. - detach 함수로 변수 사용 해제 후라 외부에서 사용 불가 

## subset 함수 : 데이터 프레임의 일부 데이터 추출
# 속도가 20 초과인 데이터만 추출 
subset(cars, speed > 20)

# 속도가 20 초과인 dist 데이터만 추출, 여러 열 선택은 c() 안을 ,로 구분 
subset(cars, speed>20, select = c(dist))

# 속도가 20 초과인 데이터 중 dist를 제외한 데이터만 추출 - 제외하다 
subset(cars, speed>20, select = -c(dist))


## na.omit 함수: 데이터 프레임의 결측값(NA) 제거

head(airquality)  # NA가 포함되어 출력됨

head(na.omit(airquality))  # NA 포함된 값을 제외하여 추출 

## merge함수 : 여러 데이터 프레임 병합 
name = c("철수","춘향","길동")
age = c(22, 20, 25)
gender = factor(c("M","F","M"))
blood.type = factor(c("A","O","B"))

patients1 = data.frame(name, age, gender)
patients1

patients2 = data.frame(name, blood.type)
patients2

patients = merge(patients1, patients2, by="name")
patients


## 리스트 생성: list함수 이용 
patients = data.frame(name=c("철수","춘향","길동"), age = c(22, 20, 25), gender = factor(c("M","F","M")), blood.type = factor(c("A", "O", "B")))
no.patients = data.frame(day = c(1:6), no = c(50, 60, 55, 52, 65, 58))

# 데이터를 단순 추가 
listPatients = list(patients, no.patients)
listPatients

# 각 데이터에 이름을 부여하면서 추가 
listPatients = list(patients=patients, no.patients = no.patients)
listPatients

# 리스트 요소에 접근: $, [[]] 이용

listPatients$patients   # 요소명 입력

listPatients[[1]]  # 인덱스 입력 
listPatients[[2]]
listPatients[["patients"]]   # 요소명을 ""에 입력 
listPatients[["no.patients"]]


#### ch04.-------------------------------
# read.table 함수: 일반 텍스트 파일을 읽을 때 사용
students=read.table("students1.txt", header=T)
students

# 읽은 파일의 구조 확인
str(students)

# 첫 행이 header이므로 header 옵션을 지정할 필요가 없음 
students=read.csv("students.csv")
students

## write.table함수: 일반 텍스트 파일로 저장할 때 사용 

students=read.table("students1.txt", header=T, as.is=T)

#문자열에 큰따옴표가 표시됨
write.table(students,"0225.txt")

# 문자열에 큰따옴표가 표시되지 않음
write.table(students, file="0225.txt", quote=F)

## write.csv 함수: CSV 파일로 저장할 때 사용 
write.csv(students, file="0225.csv", quote = F)


### 조건문--------------------------------------
## []에 행/열 조건 명시 
# 벡터의 경우
test = c(15, 20, 30, NA, 45) # 벡터인 경우 
test[test<40]  # 값이 40 미만인 요소 추출 

test[test%%3!=0] # 값이 3으로 나누어 떨어지지 않는 요소 추출 

test[is.na(test)]  # NA인 요소 추출 

test[!is.na(test)]  # NA가 아닌 요소 추출 

test[test%%2==0&!is.na(test)] # 2의 배수면서 NA가 아닌 요소 추출 


# 데이터 프레임의 경우 
characters=data.frame(name=c("길동","춘향","철수"), age=c(30,16,21), gender=factor(c("M","F","M")))  # 데이터 프레임인 경우 
characters

characters[characters$gender =="F",] # 성별이 여성인 행 추출출

characters[characters$age<30&characters$gender=="M",]  #30살 미만의 남성 행 추출

## if문 사용(if, else if, else)
# 두 가지 조건 분기가 필요한 경우 
x = 5
if(x %% 2==0) { 
    print('x는 짝수')
    } else {
    print('x는 홀수')
    }

# 세 가지 조건 분기가 필요한 경우 
x = -1 
if(x>0) {
  print('x is a positive value.') 
} else if (x<0) {
  print('x is a negative value.')
} else {
  print('x is zero.')
}

## ifelse문 사용 - ifelse(조건식, 조건식이 참인경우 반환값, 조건식이 거짓인 경우 반환값)

x = c(-5:5)
options(digits=3)  # 숫자 표현 시 유효자릿수를 3자리로 설정
sqrt(x)

sqrt(ifelse(x>=0, x, NA))  # NaN이 발생하지 않게 음수면 NA로 표시 

# repeat 문을 이용해 1부터 10까지 수 증가시키기 
i=1   # i의 시작값은 1 
repeat { 
  if(i>10) {
        break
  } else {
      print(i)
      i = i+1
  }
}

## while문 이용 
i = 1 
while(i<10) {
  print(i)
  i = i+1 
}

# 구구단 2단 만들기 
i=1
while(i<10) {
      print(paste(2,"X",i, "=" , 2*i))
      i=i+1
}

## for문 이용
# 1부터 10까지 수를 1씩 증가시키기 
for(i in 1:10) {
  print(i)
}

# 구구단 2~9단 만들기 
for(i in 2:9) {
  for(j in 1:9) {
    print(paste(i, "x", j, "=", i*j))
  }
}

# 1부터 10까지의 수 중 짝수만 출력하기 
for(i in 1:10) {
  if(i%%2==0) {
    print(i)
  }
}

# 1부터 10까지의 수 중 소수(1과 자기자신으로만 나누어지는 수) 출력하기 
for(i in 1:10) {
  check = 0
  for(j in 1:i) {
    if(i%%j==0) {
      check=check+1
    }
  }
  if(check==2) {
    print(i)
  }
}

# 점수가 0~100점 이외의 값이 입력된 경우 NA로 처리하는 프로그램 

students=read.csv("students2.csv")
students

for(i in 2:4) {
  students[,i]=ifelse(students[,i]>=0&students[,i]<=100, students[,i],NA)
}
students

### 사용자 정의 함수: 원하는 기능 묶기
## 계승을 구하는 함수 
fact = function(x) {   # 함수의 이름은 fact, 입력은 x
  fa=1   # 계승값을 저장할 변수 
  while(x>1) {   # x가 1보다 큰 동안 반복 
    fa=fa*x    # x 값을 fa에 곱한 후 fa에 다시 저장 
    x=x-1   # x 값을 1 감소
  }
  return(fa)   # 최종 계산된 fa 반환
}
fact(5)   # 5! 계산한 결과 출력 
fact(3)

### 데이터 정제 : 결측값 처리 
##is.na 함수 이용
#NA가 총 44개 있음 
table(is.na(airquality))

# Temp에는 NA가 없음을 확인 
table(is.na(airquality$Temp))

# Ozone에는 NA가 37개 발견됨 
table(is.na(airquality$Ozone))

# NA가 없는 Temp는 평균이 구해짐 
mean(airquality$Temp)

# NA가 있는 Ozone은 평균이 NA로 나옴 
mean(airquality$Ozone)

air_narm=airquality[!is.na(airquality$Ozone),]
air_narm

mean(air_narm$Ozone)

air_narm=airquality[!is.na(airquality),]
air_narm

View(airquality)

## na.omit 함수 이용
# na.omit 함수를 이용해 결측값 처리하기 
air_narm1=na.omit(airquality)
mean(air_narm1$Ozone)

# 함수 na.rm을 이용해 결측값 처리 
mean(airquality$Ozone, na.rm=T)

# 이상값이 포함된 환자 데이터 
patients=data.frame(name=c("환자1","환자2","환자3","환자4","환자5"), age=c(22,20,25,30,27), gender=factor(c("M","F","M","K","F")), blood.type=factor(c("A","O","B","AB","C")))
patients

# 성별에서 이상값 제거 
patients_outrm=patients[patients$gender=="M"|patients$gender=="F",]
patients_outrm

# 성별과 혈액형에서 이상값 제거 
patients_outrm1=patients[(patients$gender=="M"|patients$gender=="F")&(patients$blood.type=="A"|patients$blood.type=="B"|patients$blood.type=="O"|patients$blood.type=="AB"),]
patients_outrm1

# 이상값이 포함된 환자 데이터 
patients=data.frame(name=c("환자1","환자2","환자3","환자4","환자5"), age=c(22, 20, 25, 30, 27), gender = c(1, 2, 1, 3, 2), blood.type = c(1, 2, 3, 4, 5))
patients

# 성별에 있는 이상값을 결측값으로 변경 
patients$gender=ifelse((patients$gender<1|patients$gender>2), NA, patients$gender)
patients

# 혈액형에 있는 이상값도 결측값으로 변경 
patients$blood.type=ifelse((patients$blood.type<1|patients$blood.type>4),NA, patients$blood.type)
patients

# 결측값으로 표현된 이상값을 모두 제거 
patients[!is.na(patients$gender)&!is.na(patients$blood.type),]

### 이상값 처리 
## boxplot을 이용하여 이상값을 구분 

boxplot(airquality[, c(1:4)]) #Ozone, Solar.R, Wind, Temp에 대한 boxplot 
boxplot(airquality[, 1])$stats # Ozone의 boxplot 통계값 계산산

air=airquality  # 임시 저장 변수로 airquality 데이터 복사 
table(is.na(air$Ozone))  # Ozone의 현재 NA 개수 확인 

## 이상값을 NA로 처리한 후 NA 제거함 
# 이상값을 NA로 변경 
air$Ozone=ifelse(air$Ozone<1|air$Ozone>122, NA, air$Ozone)
table(is.na(air$Ozone))   # 이상값 처리 후 NA 개수 확인(2개 증가)

# NA 제거 
air_narm=air[!is.na(air$Ozone),]
mean(air_narm$Ozone)


### Ch05 ----------------------------------
## base R을 이용한 데이터 가공
# gapminder 라이브러리
install.packages("gapminder")
library(gapminder)
library(dplyr)
glimpse(gapminder)

gapminder[, c("country","lifeExp")]
gapminder[, c("country","lifeExp","year")]

gapminder[1:15,]
gapminder[gapminder$country =="Croatia",]

# 국가 이름이 "Croatia"인 샘플을 조건식을 사용해 추출 + 인구pop 속성만 추출 
gapminder[gapminder$country == "Croatia", "pop"]
# 국가 "Croatia"인 샘플을 조건식을 사용해 추출 + 인구 속성 + 기대 수명 
gapminder[gapminder$country=="Croatia", c("lifeExp","pop")]

# Croatia의 1990년도 이후의 기대 수명과 인구 추출 - 조건식 여러개를 논리 연산자로 결합
gapminder[gapminder$country=="Croatia"&gapminder$year>1990, c("lifeExp", "pop")]

## 행/열 단위의 연산 
# apply함수를 이용해 여러 항목을 한꺼번에 연산 처리 
apply(gapminder[gapminder$country=="Croatia", c("lifeExp","pop")], 2, mean)

## select 함수 이용 - 열을 지정할 때 "" 없이 열 이름을 그대로 사용할 수 있어 편리
select(gapminder, country, year, lifeExp)

## 특정 샘플(행)을 추출할 때는 filter함수 사용
filter(gapminder, country=="Croatia")

## 행/열 단위의 연산
# group_by 함수를 이용하면 데이터 프레임에 포함된 factor형 속성을 활용해 전체 데이터를 그룹으로 분류 가능 
# 보통 summarise 함수를 연이어 사용해 그룹별 통계 지표를 한번에 산출 

summarise(gapminder, pop_avg=mean(pop))

summarise(group_by(gapminder, continent), pop_avg=mean(pop))

summarise(group_by(gapminder, continent, country), pop_avg=mean(pop))
