# Handling Missing Data



### Import
```python
import numpy by np
import pandas by pd
import matplotlib.pyplot as plt

%matplotlib inline
```
* numpy, pandas, matplot을 우선 import 해오기.
* ```%matplotlib inline```을 활용하면 이미지를 바로 볼 수 있음.


***


### Global API
```python
x = np.arrange(-10, 11)
```
```python
plt.figure(figsize=(12, 6))
plt.title('My Nice Plot')

plt.plot(x, x ** 2)
plt.plot(x, -1 * (x ** 2))
```
* ```figure()```은 그래프와 관련된 매개 변수의 값을 지정합니다.
* 이 경우에 figsize는 그래프의 가로 세로 크기를 의미합니다.
* plot은 x데이터와 y데이터를 의미합니다.


##### 2차 함수 그래프
```python
plt.figure(figsize=(12, 6))
plt.title('My Nice Plot')

plt.subplot(1, 2, 1) #rows, cols, panel
plt.plot(x, x ** 2)
plt.plot([0, 0, 0], [-10, 0, 100])
plt.legend(['X^2', 'Vertical line']) #범례
plt.xlabel('X')
plt.ylabel('X Squared')

plt.subplot(1, 2, 2)
plt.plot(x, -1 * (x ** 2))
plt.plot([-10, 0, 10], [-50, -50, -50])
plt.legend(['X^2', 'Horizontal line'])

plt.xlabel('X')
plt.ylabel('X Squared')
```
