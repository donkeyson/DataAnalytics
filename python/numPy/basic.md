# NumPy Basic


### Basic Numpy Arrays
```python
a = np.array([1, 2, 3, 4])
b = np.array([0, .5, 1, 1.5])
```

* you can select multi elements
```python
b[[0, 1, 2]] #0, 0.5, 1
```


***


### Arrays Types
```python
a.dtype //int64
b.dtype //float64
```
It could be different. you can change data types anytime

```python
np.array([1, 2, 3, 4], dtype=np.flaot)
#array([1., 2., 3., 4.])

c = np.array(['a', 'b', 'c'])
c.dtype
#array(['<U1']) It means UNICODE
```


***


###Dimentions and shapes
```python
a = np.array([
  [1, 2, 3],
  [4, 5, 6]
])
```
you can make *matrix* in NumPy

```python
a.shape
#(2, 3) 2rows and 3 columns
a.ndim
#2 it has 2 dimentions
a.size
#6 total number of elements are 6
```

you can use *functions*

```python
b = np.array([
  [
    [12, 11, 10],
    [9, 8, 7]
  ],
  [
    [6, 5, 4],
    [3, 2, 1]
  ]
])
```
you can make *3 dimentions*

```python
b.shape
#(2, 2, 3)
b.ndim
#3
b.size
#12
b.type
#Object
```

you can also use functions. and ```b``` data type is *Object*


***


### Indexing and Slicing of Matrics
```python
#Square Matrix
A = np.array([
  [1, 2, 3], #Index number 0
  [4, 5, 6], #1
  [7, 8, 9]  #2
  ])
```

[1, 2, 3] is index 0. 1 is ```A[0][0]```

```python
A[2] = 99
#A[2] == [99, 99, 99]
```

If you change the value of specific row. all the columns change


***


### Summary Statistics
```python
a = np.array([1, 2, 3, 4])
a.sum() #10
a.mean() #2.5
a.std() #1.118033... (표준편차)
```

you can use many method for calculating

```python
A = np.array([
  [1, 2, 3],
  [4, 5, 6],
  [7, 8, 9]
])

A.sum(axis=0) #array([12, 15, 18])
A.sum(axis=1) #array([6, 15, 24])
```

axis means dimention.
* axis = 0 -> A[x] 즉 세로로 더함
* axis = 1 -> A[x][y] 즉 가로로 더


***


### Broadcasting and Vectorized operatinos
```python
a = np.arange(4) #array([0, 1, 2, 3])
b = np.arange(4) #same
```

you can make array by ```arange()```

```python
a + 10 #array([10, 11, 12, 13])
a * 10 #array([0 , 10, 20, 30])
a + b #array([0, 2, 4, 6]). You can sum two arrays
```

These are ex of Vectorized operation.
