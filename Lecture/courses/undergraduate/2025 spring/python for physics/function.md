```
def function_name(var1, var2, ...):
	expressions
```

decorator

for example, we write an example decorator

```python
from functools import wraps

def integral(f):
  @wraps(f)
  def wrapper(*args, **kwargs):
    return f(*args, **kwargs)
  return wrapper

```

## class and object

object oriented programming

```python
class human:
	def __init__(self, height, weight):
		self.height = height
		self.weight = weight
		self.age = 23
		self.miles = 0
		
	def walk(self):
		self.miles += 1
		self.weight -= 1
```

## module
