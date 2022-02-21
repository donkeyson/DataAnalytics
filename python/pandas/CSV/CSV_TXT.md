#Reading CSV and TXT files



### import
```python
import pandas as pd
```


### Reading data with Python
```python
with open('csv_file.csv', 'r') as fp:
  print(fp)
```
* with open을 활용하면 쉽게 데이터 파일을 읽을 수 있다

```python
with open('csv_file.csv', 'r') as fp:
  for index, line in enumerate(fp.readlines()):
    if (index < 10):
      print(index, line)
```
* index가 10 이하인 데이터만 읽어오는 법


***


### Reading csv file
```python
import csv
```
* 일단 csv 모듈 임폴트

```python
with open('csv_file.csv', 'r') as fp:
  reader = csv.reader(fp, delimiter='>') # 각 필드의 구분자 선정
  next(reader) # skipping header, 반복가능한 문자에서 스킵
  for index, values in enumerate(reader):
    if not values:
      continue # skip empty lines
    fname, lname, age, math, french = values
```


***


### Reading data with Pandas
```python
csv_url = "https://url.csv" #not real
pd.read_csv(csv_url).head()
```
* Local Url을 읽어 올 수 있다.

```python
csv_url = "https://url.csv" #not real
pd.read_csv(csv_url,
  header=None,
  na_values=['', '?', '-'] # 해당 데이터를 NaN처리
```

```python
df = pd.read_csv(csv_url,
  header=None,
  na_values=['', '?', '-'],
  names = ['Timestamp', 'Price'] # cols name
  dtype = {'Price': 'float'},
  parse_dates=[0] # 'dates'
```
