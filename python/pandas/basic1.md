#Pandas Basic1


### Conditional Selection
```python
g7_pop > 70
```
* Boolean 수행.
* 각 인덱스 별로 조건 만족시 True/ else False.

```python
g7_pop[g7_pop > 70]
g7_pop[(g7_pop > 80) & (g7_pop < 200)]
```
* 조건을 만족하는 row만 출력

```python
np.log(g7_pop)
```
* pands에 numpy사용 가능
* 자연로그배열 반환


***


### Operation and Methods
```python
g7_pop * 1_000_000
```
* All data muliflied by 1M


***


### Modifying series
```python
g7_pop['Canada'] = 40.5 #Modify by Name
g7_pop.iloc[-1] = 500 #Modify by Index
g7_pop[g7_pop < 70] = 99.99 #Modify by Boolean
