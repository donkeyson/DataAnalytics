# regex2


### re module
```python
import re
p = re.compile('ab*') # 패턴 객체
```
* import를 통해 re 모듈 불러오기
* 패턴 객체 생성


##### Match
```python
import re
p = re.compile('[a-z]+') #조건식
m = p.match('3 python') #검사하고자 하는 문자열
print(m) #match가 되지 않음. None 출력.
```

##### Search
```python
m = p.search('3 python')
print(m) # search는 일치하는 객체를 리턴 'python'
```

##### findall
```python
m = p.findall('life is too short')
print(m) # findall은 일치하는 내용을 리스트로 리턴
# >>> ['life', 'is', 'to', 'short']
```
```python
m = p.finditer('life is too short')
print(m) #finditer는 iterator object를 리턴

#연속하는 객체를 출력
for i in m:
  print(i)
```


***


### Match 객체


##### 패턴
```python
print(m.group()) #매치된 문자열 출력
print(m.start()) #맨 처음 인덱스 출력
print(m.end())   #맨 끝 인덱스 출력
print(m.span())  #시작과 끝을 튜플 형태로 출력
```


##### 컴파일 옵션
```python
p = re.compile('a.b', re.DOTALL) #줄바꿈 문자도 포함
```
```python
p = re.compile('a.b', re.I) #대소문자 포함
```
```python
p = re.compile('^python\s\w+', re.M) #다른 줄도 인식
```
* ```^```는 맨처음을 의미
* ```\s```는 공백을 의미
* ```\w```는 word를 의미
```python
charref = re.compile(r"""
&[#]
(
  0[0-7]+
  | [0-9]+
  | x[0-9a-fA-F]+
);
""", re.VERBOSE) #VERSBOSE를 사용하면 여러 줄 사용
```


***


### 더 보기


##### 메타문자

1. ```|``` 둘 중 하나가 있어야 한다.
2. ```^``` 맨 처음에 나와야 한다.
3. ```$``` 맨 끝에 나와야 한다.
4. ```\b``` 공백을 의미한다.


##### 그루핑


```python
p = re.compile('(ABC)+') #ABC 한 덩어리를 기준으로
```
* ```m.group(n)```를 사용하면 특정 그룹 불러오기
```python
p = re.compile(r'(\b\w+)\s+\1') #내부 그룹 다시 쓰기
print(p.search('Paris in the the spring').group()) #the the 출력
```
* ```?P<name>```을 사용하면 그룹에 이름 붙이기 가능
* ```(?P=name)```을 사용하면 이름 붙인 그룹 불러오기 가능


### 전방 탐색


##### 긍정형 (?=)
```python
p = re.compile('.+(?=:)')
m = p.search('http://google.com')
print(m.group()) #'http' 출력
```
* ```:```가 **검색 조건**에는 포함되지만, **결과**에는 포함되지 않음


##### 부정형 (?!)
```python
#bat으로 끝나는 건 포함x
p = re.compile(".*[.](?!bat$).*$", re.M)
l = p.findall("""
autoexec.exe
autoexec.bat
autoexec.jpg
""")
print(l)
```

##### 문자열 바꾸기 sub
```python
p = re.compile('(blue|white|red)')
p.sub('colour', 'blue socks and red shoes')
```
* 일치하는 대상을 **colour**로 바꿈

##### Greedy vs Non-Greedy
```python
s = '<html><head><title>Title</title>'
print(re.match('<.*>', s).group()) #Greedy
print(re.match('<.*?>', s).group()) #Non-Greedy
```
* **Greedy**는 전체 문자를 출력
* **Non-Greedy**는 ```<html>```을 출력
