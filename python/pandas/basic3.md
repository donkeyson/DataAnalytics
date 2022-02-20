# Data Frames



### Indexing, Selection and Slicing
```python
df.loc['Canada']
df.iloc[0]
```
* 개별 row를 선택 가능하다.
* **Canada**와 관련된 각 열의 값 반환.

```python
df.['Population']
```
* 열 데이터에 관한 일괄 정보를 불러올 수도 있다.

```python
df.loc['Canada':'Germany', 'Population']
df.iloc[0:2, [0, 3]]
```
* index에 대한 슬라이싱이 가능함.
* 각 국가의 Population에 대한 정보만 반환.


***


### Conditional Selection
```python
df.loc[df['Population'] > 70, 'Population']
```
* 조건에 해당하는 행만 출력.
* 마찬가지로 특정 열에 대한 정보남 출력 가능


***


### Dropping stuff
```python
df.drop('Canada')
df.drop(['Canada', 'Germany'])
```
* Canada 인덱스 데이터를 모두 삭제
* 복수 데이터 삭제 가능
* 변경사항을 적용하려면 별도의 변수에 저장해야

```python
df.drop(columns=['Population', 'HDI'])
```
* 특정 열 데이터 삭제 가능

```python
crisis = pd.Series([-1_000_000, -0.3], index=['GDP', 'HDI'])
df[['GDP', 'HDI']] + crisis
```
* ```pd.series```를 이용해서 연산을 수행할 수 있음
* 각 대응하는 열에 대해서만 연산이 수행됨


***


### Modifying DF

##### Adding a new Col
```python
langs = pd.Series(
  ['English, French, German'],
  index=['Canada', 'France', 'Germany'],
  name='Language'
)
df['Language'] = langs
```
* 새로운 열이 생성됨.
* 해당하는 값이 없는 경우 none값이 생성됨.

##### Renaming Col
```python
df.rename(
  columns={
    'HDI': 'Human Development Index'
  }, index={
    'Canada': 'CDA'
  })
```
* 딕셔너리 형태로 작성을 해주면 이름이 변경된다.

##### Creating cols from other cols
```python
df[['Population', 'GDP']]
df['GDP Per Capita'] = df['GDP'] / df['Population']
```
* 다른 열의 데이터를 이용해서 새로운 열을 만들 수 있다.
