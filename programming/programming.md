Programming
========================================================
author: Hamed Seyed-allaei
date: 
autosize: true

![](https://upload.wikimedia.org/wikipedia/commons/0/0f/Ada_lovelace.jpg)


Algorithm
=========

![](https://imgs.xkcd.com/comics/flow_charts.png)


Control Flow
============

* if
* for
* while
* repeat
* break
* next

if
===

```r
x = 1

if(x>0){
  print("Positive")
} else{
  print("negative")
}
```

```
[1] "Positive"
```


```r
x = -1

if(x>0){
  print("Positive")
} else{
  print("negative")
}
```

```
[1] "negative"
```

loops
=====

```r
for(i in 1:2){
  print(i)
}
```

```
[1] 1
[1] 2
```


```r
i = 2
while(i>0){
  i=i-1
  print(i)
}
```

```
[1] 1
[1] 0
```

Loops
=====

```r
i = 2
repeat{
  i=i-1
  print(i)
  if(i<0){
    break
  }
  
}
```

```
[1] 1
[1] 0
[1] -1
```

Loops
=====

```r
for(i in 1:5){
  if(i==3){
    next
  }
  print(i)
}
```

```
[1] 1
[1] 2
[1] 4
[1] 5
```

Fibonacci
==========

![](https://upload.wikimedia.org/wikipedia/commons/d/db/34%2A21-FibonacciBlocks.png)

$$F_{n}=F_{n-1}+F_{n-2}$$

$$F_{1}=1,\;F_{2}=1$$

exercise 
========
**Produce 10th number in Fibonacci series, using for loop.**

Function
========

```r
same = function(x,y) {
  b = x==y
  return(b)
}

same(3,2)
```

```
[1] FALSE
```

```r
same(2,2)
```

```
[1] TRUE
```


Exercise 
========
**Produce 10th number in Fibonacci series, using for loop.**

```r
fib = function(n){
  f=0
  if(n<3){
    return(1)
  }
  # add one line of code here!
  return(f)  
}

fib(8)
```

```
[1] 0
```

