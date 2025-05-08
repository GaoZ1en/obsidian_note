```python
fw = open("input.txt","w+t")

strs = input("请输入")

while str != "over":
	fw.write(strs,"\n")
	strs = input("请输入")

fw.seek(0)
fw.close()	
```

```python
input_file = open("D:\\input.txt","rb")
output_file = open("D:\\output.txt","wb")

input_file.seek(0)
for line in input_file:
	output_file.write(line)

input_file.close()
output_file.close()
```

