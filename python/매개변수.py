# 함수를 선언
def sum_all(start=0, end=100, step=1):
    # 변수 선언
    output = 0
    # 반복문을 돌려서 숫자 덧셈
    for i in range(start, end + 1, step):
        output += i
    # 리턴
    return output

# 함수 호출
print("A", sum_all(0, 100, 10))
print("B", sum_all(end=100))
print("C", sum_all(end=100, step=2))