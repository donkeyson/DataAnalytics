# Data Frames


### Import
```python
import numpy by np
import pandas by pd
```
* numpy와 pandas를 우선 import 해오기.

***


### 데이터 프레임 생성
```python
df = pd.DataFrame({
  'Population': [35, 63, 80],
  'GDP': [
    1700000,
    2800000,
    3800000
  ],
  'Surface Area': [
    9900000,
    640000,
    350000
  ],
  'HDI': [
    0.913,
    0.868,
    0.916
  ],
  'Continent': [
    'America',
    'Europe',
    'Europe'
  ]
})

df # you can check df
```
* Object 형태로 df 생성
* 각 col과 row 데이터를 할당하기

```python
df.index = [
  'Canada',
  'France',
  'Germany'
]
```
* df에 index를 할당

```python
df.columns #컬럼들 확인
df.index   #인덱스들 확인
df.info()  #df의 structure. Null content, Dype 정보 제공.
df.size    #df의 size를 확인. row 데이터 기준.
df.shape   #row와 col의 개수를 튜플로 반환
df.describe() #각 index col의 데이터를 제공. std, min 등.
df.dtypes  #각 col별 dtype을 반환.
```
```python
df.dtypes.value_counts() #dtype 별 개수를 반환
```
