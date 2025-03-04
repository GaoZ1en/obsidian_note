a simple code
```python
print("hello")
```

## list, tuple and dictionary

### list

list is a collection of variables. it is mutable, which means you can change the list after you create it.

```python
listName = []
listName.append(variable) # add a variable
listName.index(variable) # return the index of a specific variable
```

slice of list, somehow return sublist

```python
listName[n:m]
listName[:m]
listName[n:]
```

copy of list. notice the difference between `listName2 = listName` and `listName2 = listName.copy()`. the former one will change the original list when you change the copied list, and the latter one will not.

### tuple

tuple is similar to list, but cannot be changed. how ever, list in tuple can be changed.

### dictionary

dictionary is a collection of key-value pairs. it is mutable.

```python
dictName = {}
dictName[key] = value
dictName.keys()
dictName.values()
dictName.items()
```

## if, for and while

```python

if exp1:
	code1
elif exp2:
	code2
...
else:
	codeN

```

```python
while exp1:
	code
```

```
for var in list:
  code
```

break and continue. break will jump out of the loop, and continue will jump to the next iteration.

assert is a function that will raise an error if the expression is false.

