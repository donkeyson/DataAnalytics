# Read data from relational databases



### Import
```python
import pandas as pd
```
* pandas import 하고 시작


***


### Read data from SQL database
```python
import sqlite3 # sql3 모듈
```

```python
conn = sqlite3.connect('database.db')
cur = conn.cursor()
cur.execute('SELECT = FROM employees LIMIT 5;') # 쿼리 실행 조건 지정
results = cur.fetchall() # 레코드를 배열 형식으로 저장
results
```
* sql database에 연결해서 동작 수행, 데이터 불러오기를 하는 일련의 과정

```python
df = pd.DataFrame(results)
df.head()
```
* 배열 형식으로 저장된 데이터를 df으로 만들기

```python
cur.close()
conn.close()
```
* 연결 끊어주기


***


### Read_sql
```python
conn = sqllite3.connect('database.db')
df = pd.read_sql('SELECT * FORM employees', conn)
```
* 훨씬 간단하게 db를 불러올 수 있다.

```python
df = pd.read_sql('SELECT * FORM employees', conn,
  index_col='EmployeeId', # index로 지정할 열 변경
  parse_dates=['BirthDate', 'HireDate'])
