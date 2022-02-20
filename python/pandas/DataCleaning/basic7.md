# Handling Missing Data



### Filling null values
```python
s.fillna(0)
s.fillna(s.mean())
```
* na에 특정 값을 채워 넣음.

```python
s.fillna(method='ffill') #이전 인덱스 값으로 na를 채움
s.fillna(method='bfill') #이후 인덱스 값으로 na를 채움
```


***



### Cleaning not null values
```python
df = pd.DataFrame({
  'Sex': ['M', 'F', 'F', 'D', '?'],
  'Age': [29, 30, 24, 290, 25],
})
```
* 이 DF에서 수정하고 싶은 데이터는 NaN이 아님

```python
df['Sex'].unique()
df['Sex'].value_counts()
```
* ```unique()```을 이용하면 중복되지 않은 value를 구할 수 있음
* ```value_counts```을 이용하면 각 value의 빈도를 확인 가능

```python
df['Sex'].replace({'D': 'F', 'N': 'M'})
```
* D, N을 F, M으로 바꿔주기

```python
df[df['Age'] > 100] #나이가 100이상인 값 찾기
df.loc[df['Age'] > 100, 'Age'] = df.loc[df['Age' > 100], 'Age'] / 10 # 잘못된 값 10으로 나누어서 재할당
```


### Duplicates
```python
Series.duplicated()
```
* ```duplicated()```를 사용하면 Value의 반복 여부를 반환

```python
Series.duplicated(keep='last')
```
* 반복된 요소 중 마지막 값은 ```False```로 반환

```python
Series.drop_duplicated(keep='last')  #반복 요소 모두 삭제
Series.drop_duplicated(keep='False') #반복 요소 중 하나는 남음
```
* 반복된 요소의 row를 삭제


```python
Series.duplicated(subset=['Col'])
```
* Col을 기준으로 반복 여부를 판단.
