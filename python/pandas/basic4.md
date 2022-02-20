# Reading External data & Plotting


### Import
```python
import numpy by np
import pandas by pd
import matplotlib.pyplot as plt
```
* numpy, pandas, matplot을 import 해오기.


***


### read_csv
```python
df = pd.read_csv('./csv_name.csv')
```
* read_csv 메서드를 통해 csv 파일을 df로 읽어올 수 있다.
* csv 파일의 첫 번째 줄 내용이 col 명이 된다.

```python
df = pd.read_csv('./csv_name.csv', header=None)
df.columns = ['Col1', 'Col2']
```
* ```header=None```를 사용하면 header가 디폴트 숫자 인덱스로 지정됨.
* 이후 ```df.columns```에 col명을 입력할 수 있다.

```python
df.head() #처음부터 5개 정도의 row를 불러옴
df.tail() #끝에 5개 정도의 row를 불러옴
```

```python
df.set_index('Col1', inplace=True)
```
* 특정 열로 인덱스를 변경할 수 있음.



***



### Putting everything together
```python
df = pd.read_csv(
  './csv_name.csv',
  header=None,
  names=['Col1', 'Col2'],
  index_col=0,     #0열을 인덱스로 불러옴
  parse_dates=True #datetime 형태로 저장
)
```
* 앞에서 개별적으로 수행한 내용을 종합한 형태.
