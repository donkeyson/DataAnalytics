# Handling Missing Data



### Splitting Columns
```python
df = pd.DataFrame({
  'Data': [
    '1987_M_US_1',
    '1990?_M_UK_1',
    '1992_F_US_2',
    '1970_M_  IT_1',
    '1985_F_I T_2'
  ]
})
```
* 우선 데이터 프레임을 생성

```python
df['Data'].str.split('_')
```
* _를 기준으로 각 인덱스의 데이터 split

```python
df['Data'].str.split('_', expand=True)
df.columns = ['Year', 'Sex', 'Country', 'No Children']
```
* ```expand=True```를 활용하면 새로 할당한 col에 split된 데이터가 들어감

```python
df['Country'].str.contains('U')
```
* Country col row 데이터들 중 'U'를 포함한 인덱스 식별


```python
df['Year'].str.replace(r'(?P<year>\d{4})\?', lambda n: n.group('year'))
```
* regex를 이용해서 문자 포맷을 설정.
* 1990?를 1990으로 대체한 것.
