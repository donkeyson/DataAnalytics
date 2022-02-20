# Handling Missing Data



### Import
```python
import numpy by np
import pandas by pd
```
* numpy와 pandas를 우선 import 해오기.


***


### Pandas utility functions

##### 점검
```python
pd.isnull(pd.Series([1, np.nan, 7]))  # False, True, False
pd.notnull(pd.Series([1, np.nan, 7])) # True, False, True
```
* Series 목록에서 텅 빈 종목을 색출
* 데이터 프레임에도 사용 가능하다.

```python
s = pd.Series([1, 2, 3, np.nan, np.nan, 4])
pd.isnull(s).sum() #2
```
* ```sum()```을 이용해서 전체 null 데이터의 개수를 파악 가능

```python
s[pd.notnull(s)]
s.dropna()
```
* 필터링도 가능. null이 아닌 값만 출력.
* ```dropna()```와 위의 식은 동일하다.


##### DF에 적용
```python
df = pd.DataFrame({
  'Col A': [1, np.nan, 30, np.nan],
  'Col B': [2, 8, 31, np.nan],
  'Col C': [np.nan, 9, 32, 100],
  'Col D': [5, 8, 34, 110]
})
df.isnull().sum()  #각 col 별 null 개수
df.info()          #non-null count data 포함
df.dropna()        #na 포함한 row 모두 drop
df.dropna(how='all') #이렇게 하면 모든 데이터 볼 수 있음
df.dropna(thresh=3)  #null이 아닌 데이터가 3개 이상이면 살림
