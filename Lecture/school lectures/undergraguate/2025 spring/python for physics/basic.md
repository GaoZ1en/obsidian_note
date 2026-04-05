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

## input

```
a = input("what is your name")
print(type(a))
```

## 

转义字符\

## ',", and """

```python
print("I'm a student")
print('I\'m a student')
print("""I'm a student""")
```

## fstring

use fstring to print string

```python
name = "Koishi"
age = "14"

print("name:", name, "age:", age)
print(f"name:{name},age:{age}") // recommended
```

## io

```python
file = open("file.txt", "r")
file.readline()
l = file.readlines()
file.write("hello")
file.writelines(["hello", "world"])
file.close()
```

```
with open("file.txt", "r") as file:
  file.readline()
  l = file.readlines()
  file.write("hello")
  file.writelines(["hello", "world"]
```

## format

```python
print("hello, {}".format("world"))
print("hello, {0}".format("world"))
print("hello, {name}".format(name="world"))
```

numbers
```python
print("{:d}".format(42))
print("{:f}".format(42.0))
print("{:e}".format(42.0))
print("{:x}".format(42))
```

float numbers
```python
print("{:.2f}".format(42.0))
print("{:10.2f}".format(42.0))
```

## string

```python
str1 = "hello"
str2 = "world"
str3 = "\n a b c d e \n"

print(str1 + str2)
print(str1 * 3)

l = str1.split() # split by whitespace
str4 = str3.strip() # remove whitespace
```

## error handling

```python
try:
  code
except:
  code
```

for example

```python
try:
  a = 1/0
except Wrong_Denominator[ZeroDivisionError]:
  print("denominator cannot be zero")
```

