# 모듈 읽어들이기
from flask import Flask
from urllib import request
from bs4 import BeautifulSoup

# 웹 서버 생성
app = Flask(__name__)
@app.route("/")

def hello():
        
        #urlopen() 함수로 기상청의 전국 날씨를 읽음
        target = request.urlopen("http://www.kma.go.kr/weather/forecast/mid-term-rss3.jsp?stnId=108")
        
        # BeautifulSoup 사용하여 웹 페이지 분석
        soup = BeautifulSoup(target, "html.parser")
        
        # location 태그 찾기
        output = ""
        for location in soup.select("location"):
            # 내부의 city, wf, tmn, tmx 태그 찾아 출력
            output += "<h3>{}</h3>".format(location.select_one("city").string)
            output += "날씨: {}<br/>".format(location.select_one("wf").string)
            output += "최저/최고 기온: {}/{}"\
                .format(\
                       lacation.select_one("tmn").string,\
                       location.select_one("tmx").string\
                       )
            output =+ "<hr/>"
        return output