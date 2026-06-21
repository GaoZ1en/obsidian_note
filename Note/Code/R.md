这个文件用于R+Rstudio的快速复习。R语言是一种用于统计计算的高级语言。Rstudio是R语言最通行的一个集成开发环境（Integrated Developing Environment）

## R的数据类型、常量变量和保留字

R的基本数据类型包括以下几种
1. **数值型**
	1. 整型数值，即整数
	1. 浮点型数值，即小数。分数都会转化为浮点数后进行存储
1. **逻辑型**
	1. 包括TRUE和FALSE
1. **字符型**
	1. 包括‘ ’和“ ”括起来的字符串

数据类型的转换：逻辑型可以转换为数值型，数值型可以转换为字符型
当不同类型的数据存在于同一向量中时，逻辑型数据会先转换为数值型数据（TRUE->1, FALSE->0），数值型数据会转换为字符型数据（如果存在字符型数据，否则将不会转化）。

**常量**指其值不能改变的量，同样含有数值型、逻辑型和字符型
**变量**用于存储R语言中的对象。其变量名又称为变量标识符
**保留字**指具有特定含义，不能用作变量标识符的单词。主要包括以下几类
1. 函数定义及程序控制保留字：function, if, else, for, while, repeat, break, continue, next
1. 逻辑常量保留字：TRUE, FALSE
1. 特数值，正无穷、不存在、缺失和空置：Inf, NaN, NA, NULL

## R的数据结构

R中基本的数据结构包括
1. 向量vector
	1. 最基本的数据结构，其中每个元素都必须为相同类型数据（否则按照上一节所写的方式进行转换）
1. 矩阵matrix
	1. 二维的“表格型”数据结构，其中每个元素都必须为相同的数据类型
1. 数据框data frame
	1. 同样为二维的“表格型”数据结构，其中各列可以是包含不同数据类型的向量
1. 列表list
	1. 最为灵活的一种向量，但是每个元素都可以是向量、矩阵、数据框和列表

下面给出一些代码的例子

1. 向量
```R
x<-c(1,6,8)        ## 其中"<-"表示赋值，函数c()定义向量，用于将括号中的若干参数拼接成为一个向量
y<-c("你好",2025,"everyone",FALSE)  ## 当参数为逻辑、数值和字符混合时，会自动转换为字符
z<-c(TRUE,FALSE,FALSE,TRUE,FALSE)  ## 逻辑型向量
x[1]               ## 给出向量x的第一个元素，与其他编程语言不太相同
> 1
y[c(1,3)]          ## 给出向量y的第1和3个元素
> "你好" "everyone"
z[c(1,2,5)]
> TRUE FALSE FALSE
seq(from=1, to=6, by=0.5)  ## 生成等差数列
> 1.0 1.5 2.0 2.5 3.0 3.5 4.0 4.5 5.0 5.5 6.0
rep(c(0, 2, 5), 3)         ## 生成0 2 5循环三次的向量
> 0 2 5 0 2 5 0 2 5
rep(c(0, 2, 4), c(1, 2, 3))## rep()的重复参数也可以是一个向量，此时需要和被重复向量对齐
> 0 2 2 4 4 4
paste("a", 1:8, sep="_")   ## 将"a"和1:8以"_"相连，sep参数默认为" "
> "a_1" "a_2" "a_3" "a_4" "a_5" "a_6" "a_7" "a_8"
numeric(2)                 ## 生成特定长度的0向量
> 0 0
character(6)               ## 生成特定长度的空字符向量
> "" "" "" "" "" ""
```

1. 矩阵
```R
matrix(data=NA, nrow=1, ncol=1, byrow=FALSE, dimnames=NULL) ## 定义一个行数为1，列数为1，按列排列的，行列名为空且不含数据的矩阵
## data 数据向量，默认为缺失
## nrow 行数，默认为1
## ncol 列数，默认为1
## byrow 默认为FALSE，表示数据向量按行排列成矩阵
## dimnames 默认为空。可以为一个长度为2的列表，其中为字符型向量，分别代表行列名

A<-matrix(1:12, nrow=3, ncol=4, dimnames=list(letters[1:3],LETTERS[1:4]));
print(A)                 ## 其中letters为小写字母保留字，LETTERS为大写字母保留字，print(A)打印矩阵A
>    A B C D
>  a 1 4 7 10
>  b 2 5 8 11
>  c 3 6 9 12            ## 按列填入，一列填满后换列填入

B<-matrix(c(T, F, F, T, T, F), nrow=2, ncol=3, byrow=T) ## TRUE可以省略为T，FALSE可以省略为F
>       [ ,1] [ ,2] [ ,3]
> [1, ] TRUE  FALSE FALSE
> [2, ] TRUE  TRUE  FALSE ## byrow参数为TRUE，因此按行填入

B[1,2]      ## 矩阵索引，第1行第2列的元素
> FALSE

B[c(1,3),2] ## 索引也可以用向量
> TRUE FALSE
```

1. 数据框
```R
data.frame(..., row.names=NULL, stringsAsFactors=TRUE)
## ...中省略了若干参数，格式为tag=value(类似于nrow=3)
## row.names 行名，默认为空
## stringsAsFactors 字符型向量是否当作因子处理，默认为TRUE

d<-data.frame(
	name   = c("ABC", "abc", "xyz"),
	gender = c("male", "female", "helicopter"),
	age    = c(21, 12, 1949),
	height = c(180, 170, 10050),
	stringsAsFactors=FALSE
)

d[c(1,3),c(2,4)]     ## 一种索引方法
>   gender      height
> 1 male        180 
> 3 helicopter  10050

d[,3]                ## 另一种索引方法
> 21 12 1949

d[["age"]]           ## 还有一种索引方法，注意方括号[]和引号""，等价于d$"age"或d$age
> 21 12 1949

d["age"]             ## 注意与上一种方法的区别
>   age
> 1 21
> 2 12
> 3 1949
```

1. 列表
```R
l1<-list(name="ABC", age=20, grade=c("A","B","A+"))

l1[1]      ## 各种索引
> $name
> "ABC"

l1$name
> "ABC"

l1[1:2]
> $name
> "ABC"
> $age
> 20

l1[c("name","age")]
> $name
> "ABC"
> $age
> 20
```

## R的控制结构

类似于其他编程语言，R也有各种控制结构

**运算符**：包括算术运算符（加减乘除等）、关系运算符（大于小于等）和逻辑运算符（与或非等）
```R
## 四则运算、幂、整除和求余
x<-12:10; y<-1:3
x+y
> 13 13 13
x-y
> 11 9 7
x*y
> 13 22 30
x/y
> 12.000 5.500 3.333
x%%y  ## 取余
> 0 1 1
x%/%y ## 整除
> 12 5 3

## 关系
x<- 3:1;y<-1:3
x<y
> FALSE FALSE TRUE
x<=y
> FALSE TRUE TRUE
x>y
> TRUE FALSE FALSE
x>=y
> TRUE TRUE FALSE
x==y
> FALSE TRUE FALSE
x!=y
> TRUE FALSE TRUE

## 逻辑运算
x<-0:2 ; y<-2:0
!x ## 非
> TRUE FALSE FALSE
x & y ## 与
> FALSE TRUE FALSE
x | y ## 或
> TRUE TRUE TRUE
x && y ## 与，但只判断首元素
> FALSE
x || y ## 或，但只判断首元素
> TRUE
```

如果同一表达式出现多种运算符，首先执行算术运算，然后执行关系运算，最后执行逻辑运算。
但是为了可读性和可维护性，还是用()将首先想要计算的运算符号括起来比较好

条件语句
```R
if(条件表达式1){
	程序代码1
} else if(条件表达式2) {
	程序代码2
}
...
} else if(条件表达式k) {
	程序代码k
} else {
	程序代码k+1
}
```

循环语句
```R
## for循环
for(i in v){
	程序代码
}

## while循环
while(条件表达式){
	程序代码
}
```

## R中的函数

函数可以分为两类，一种是（语言本体和导入的程序包）自带的函数，另一种是用户自定义的函数
可以接受参数，也可以不接受；可以有返回值，也可以不返回（类似于C中的void main(...)）；可以有函数名，也可以没有函数名（如果在一个文件中做好所有的分析，就可以直接运行这个文件而无需文件名），后者称为匿名函数

为了使用用户自定义函数，可以使用控制台的source()函数进行调用

```R
fun.name<-function(formal.args.list){
	body.codes;
	return(expression)
}

fibo<-funcrion(x1=1,x2=1,N){        ## 默认为1
	A<-x1;B<-x2;
	if(N=1){
		return(x1)
	} else if(N=2) {
		return(x2)
	} else {
		for (i in 3:N){
			temp<-A+B;
			A<-B;
			B<-temp;
		}
	} 
}
	return(temp)
	delete temp;
	delete A;
	delete B;
}
```

## R中的分布

R为一些常用分布提供了专门的函数，用于相关计算

|                        | 二项分布**binom**ial              | 泊松分布**pois**son | 超几何分布**hyper**geometric            | 正态分布**norm**al   | 均匀分布**unif**orm         |
| ---------------------- | ----------------------------- | --------------- | ---------------------------------- | ---------------- | ----------------------- |
| 密度函数**d**ensity        | dbinom(x,size,prob)           | dpois(x,lambda) | dhyper(x,m,n,k)                    | dnorm(x,mean,sd) | dunif(x,min,max)        |
| 分布函数**p**robability    | pbinom(p,size,prob)           | ppois(p,lambda) | phyper(p,m,n,k)                    | pnorm(p,mean,sd) | punif(p,min,max)        |
| 分位数**q**uantile        | qbinom(q,size,prob)           | qpois(q,lambda) | qhyper(q,m,n,k)                    | qnorm(q,mean,sd) | qunif(q,min,max)        |
| 产生随机数**r**andom number | rbinom(N,size,prob)           | rpois(N,lambda) | rhyper(N,m,n,k)                    | rnorm(N,mean,sd) | runif(n,min,max)        |
| 注释                     | size是伯努利实验的次数，prob为伯努利实验成功的概率 | lambda为泊松分布的参数  | 有m个A物品和n个B物品，在其中随机选取k个物品，选取到A物品的数量 | mean是数学期望，sd是标准差 | min是能取得的最小值，max是能取得的最大值 |

其中dxxx(x)的返回值是x处的密度函数取值，pxxx(p)的返回值是p处的分布函数取值，qxxx(q)是分布函数等于q时的自变量取值，rxxx(N)生成N个满足xxx分布的样本

## R中的蒙特卡洛方法

蒙特卡洛方法的精髓就是利用大数定理。下面看几个例子

```R
## 计算定积分
MC_int <- function(f,a,b,n){
  random_samples <- runif(n,a,b)
  function_values <- sapply(random_samples, f)
  MC <- (b-a)*mean(function_values)
  return(MC)
}

f <- function(x){return(x^2*exp(x^2))}
a <- 0
b <- 1

result <- MC_int(f,a,b,100000)

print(paste("结果为:", result))
```

## R中的读取和输出

cat()输出
```R
cat("Hello", "R!",sep="\n") ## 用换行符\n分隔，在控制台输出"Hello"和"R!"
>"Hello"
>"R"

cat(1:6,file="./test.txt",sep="\n",append=FALSE) ## 输出到test.txt文件
```

plot()绘图
```R
plot(x,y,...)
## x:图形横坐标点
## y:图形纵坐标点
## ...包含以下参数
## type:绘图类型，包括点图'p',线图'l',点线图'b',垂直线'h',不绘制'n'
## main:标题
## sub:副标题
## xlab:x轴标签
## ylab:y轴标签
## asp:图形高宽比

## 绘制多幅子图
par(mfrow=c(a,b)) ## 用par函数将画布分割为a行b列共ab个部分

## 例子
par(mfrow=c(2,2))
x<-seq(-3,3,0.01)
y<-exp(-x^2/2)/(2*pi)^(0.5)
xb<-dbinom(0:10,size=10,p=0.25)
xp<-dpois(0:20,lambda=2)

plot(x,type="l",main="line diagram")
plot(x,y,type="l",main="standard normal distribution")
plot(xb,type="h",main="binomial distribution")
plot(xp,type="h",main="poisson distribution")

## 同一个图形也可以绘制多条曲线
# 第一种方法是在plot()中使用lines(),segments(),abline()等低级绘图函数
# 第二种方法是使用curve()函数

# 多幅子图(每幅子图多条曲线)
par(mfrow=c(2,2))
# 准备绘图数据
x <- seq(-3,3,0.01)
y <- exp(-x^2/2)/(2*pi)^(1/2)
xb <- dbinom(0:10, size=10, p=0.25)
xp <- dpois(0:20, lambda=2)
# 第一幅子图绘制多条曲线
plot(x,y,type="l",main="标准正态分布密度函数图")
segments(-2,0, -2,dnorm(-2), lty=2) # 添加线段
segments(2,0, 2,dnorm(2), lty=2) # 添加线段
abline(v=0, lty=2) # 添加垂直线
abline(h=0, lty=2) # 添加水平线
# 第二幅子图绘制多条曲线
plot(x,y,type="l",ylim=c(-1,1)/2, main="标准正态分布密度及正弦曲线")
lines(x,0.5*sin(x),type="l",col="red") #添加正弦曲线
abline(h=0,lty=3) # 添加水平线
abline(v=0,lty=3) # 添加垂直线
# 第三幅子图
curve(sin, from=-3, to=3, ylab="", main="正余弦曲线")
curve(cos, from=-3, to=3, add=T, lty=2, col="red")
# 第四幅子图
x <- 0:50/50
matplot(x, outer(x, 1:8, function(x, k) sin(k*pi * x)),
        ylim = c(-2,2), type = "plobcsSh", ylab="", 
        main= "matplot(,type = \"plobcsSh\" )")

## 生成数值
x <- seq(from=-4, to=4, by=0.1) # 自变量
y <- pnorm(x) # 计算标准正态分布函数值
## 基本绘图
plot(x, y, type="l", lty=2, ylim=c(0,1), xaxt="n",  xaxs="i", yaxs="i", lwd=3, main="复杂绘图")
## 定制x轴坐标、标签
pos <- c(-2,0,2) # bug
pos <- qnorm(c(0.25,0.5,0.75)) # bug
labels <- letters[1:3] # c("a","b","c")
axis(1, at=pos, labels=labels)
## 修饰图形
# 添加点
points(pos[1], 0)
points(pos[2], 0.25)
points(pos[3], 0.5)
# 添加线段
segments(x[1],0,  pos[1], 0, lwd=3, col="red")
segments(pos[1], 0, pos[1], pnorm(pos[1]), lwd=3, col="red", lty=3)
segments(pos[1],pnorm(pos[1]),  pos[2],pnorm(pos[1]), lwd=3, col="red")
segments(pos[2],pnorm(pos[1]),  pos[2],pnorm(pos[2]), lwd=3, col="red", lty=3)
segments(pos[2],pnorm(pos[2]),  pos[3],pnorm(pos[2]), lwd=3, col="red")
segments(pos[3],pnorm(pos[2]),  pos[3],pnorm(pos[3]), lwd=3, col="red",lty=3)
segments(pos[3],pnorm(pos[3]), x[length(x)],pnorm(pos[3]),lwd=3, col="red")
```

hist()绘制直方图
```R
hist(x,breaks="Sturges",freq=NULL,include.lowest=TRUE,right=TRUE)
## x:绘制直方图的向量
## breaks为以下取值之一
## 分割直方图点的向量
## 计算分割点向量的函数
## 表示直方图柱子个数的整数值
## 表达计算柱子个数的字符串
## 计算柱子个数的函数
## freq:取TRUE绘制频数直方图，取FALSE绘制概率密度
## include.lowest:取TRUE表示等于分割点的观测值算入左侧柱子，否则算入右侧
## right:取TRUE表示分割区间左开右闭
```

barplot()绘制条形图
```R
barplot(height,names.arg=NULL,legend.text=NULL,beside=FALSE)
## height:向量或矩阵，值表示条高，矩阵表示堆积或并列条
## legend.txt:创建图例的向量，或为逻辑值表示是否创建图例
## besides：取TRUE绘制并列条形图，否则绘制堆积条形图
```

boxplot()绘制盒形图（包含0, 0.25, 0.5, 0.75,1分位数）
```R
boxplot(x,...,range=1.5)
## x:绘制图形所用的向量
## ...:其他参数
## range:表示盒形图外延线的外延程度
```

## R中的抽样

sample函数用于从给定有限总体中，按照有放回或无放回的方式抽取一定量子集
```R
sample(x,size,replace=FALSE,prob=NULL)
## x 向量，表示拟抽取样本对应的有限总体
## size 抽取子集元素个数
## replace 表示是否放回
## prob 表示x各分量被抽取到的相对可能性大小
```

## 用R求最值

对于一元函数，使用optimize()函数
```R
optimize(f,interval,...,maximum=FALSE)
## f:拟求取最值的函数
## interval:二维向量，表示搜索区间
## maximum:取TRUE表示求极大值，否则极小值
```

二次函数使用optim()函数
```R
optim(par,fn,...,method=c("Nelder-Mead","BFGS","CG","L-BFGS-B","SANN","Brent"),lower=-Inf,upper=Inf)
## par:拟优化参数初始值，用于后续迭代
## fn:拟优化函数，函数的第一个参数为拟优化参数向量
## ...其他参数
## method:各种极值算法

## 例子
neg.loglike<-function(theta,x){
	n<-length(x)
	mu<-theta[1]
	sigma2<-theta[2]
	v<-(n/2)*log(sigma2)+sum((x-mu)^2)/(2*sigma2)
	return(v)
}

n<-100
xobs<-rnorm(n)
norm.mle.res<-optim(c(0,1),neg.loglike,x=xobs)
```
