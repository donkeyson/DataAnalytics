#NumPy Basic2


### Boolean arrays
```python
a = np.arrange(4)
a[[0, -1]] #array([0, 3]) Multi Selection
a[[True, False, False, True]] #arry([0, 3])
a >= 2 #array([False, False, True, True]) Boolean
a[a >= 2] #array([2, 3]) Boolean index
a[~(a > a.mean())] #array([0, 2]) ~ means 'not'
a[(a <= 2) & (a % 2 == 0)] #array([0, 2]) & means 'and'
```
* you can get each data by index
* Boolean effects all data.

```python
A = np.random.randint(100, size(3, 3)) #make matrix by random data. 3 x 3
A[np.array([
  [True, False, True],
  [False, True, False],
  [True, False, True]
])] # Boolean
A[A > 30] #Filter
```
* you can alse use Filter
* you can use random data using ```np.random```


***



### Size of objects in Memory
```pythons
# An integer in Python is > 24bytes
sys.getsizeof(1) #28
np.dtype(int).itemsize #8
np.dtype(np.int8).itemsize #Numpy size is much smaller
np.dtype(float).itemsize #8
```

##### performance
```Python
l = list(range(1000))
a = np.arrange(1000)
%time np.sum(a ** 2) #220 microsecond. much faster!
%time sum([x ** 2 for x in l]) #321 microsecond
```
* List is even larger!
* List is slower than numpy
