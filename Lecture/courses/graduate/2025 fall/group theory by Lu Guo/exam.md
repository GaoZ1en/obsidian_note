# exam 1

1. 简述同态核定理
*sol*. suppose $\displaystyle{f:G\to G'}$ is a group homomorphism, we have

$$\begin{align}
G/\mathrm{Ker}f\cong \mathrm{Im}f
\end{align}$$

1. $\displaystyle{D_{4}}$群
    1. 写出一组生成元和$\displaystyle{D_{4}}$的秩
    1. 写出所有不变子群和类，判断每个类是否是自逆类
    1. 构造出$\displaystyle{D_{4}}$群的所有$\displaystyle{I}$型非固有点群和$\displaystyle{P}$型非固有点群
*sol*.
- 生成元可以取为$\displaystyle{c_{4}}$和$\displaystyle{c_{2}'}$，秩为2
- 类：$\displaystyle{\{E\},\{c_{4},c_{4}^{3}\},\{c_{2}\},\{c_{2}',c_{2}''\},\{c_{2}'',c_{2}'''\}}$；不变子群：$\displaystyle{\{E\},\{E,c_{2}\},\{E,c_{4},c_{2},c_{4}^{3}\},\{E,c_{2}',c_{2},c_{2}''\},\{E,c_{2}'',c_{2},c_{2}'''\}}$；所有类均为自逆类
- $\displaystyle{I}$型非固有点群：$\displaystyle{D_{4h}=D_{4}\times \{E,I\}}$；$\displaystyle{P}$型非固有点群：取$\displaystyle{H=C_{4}}$，则$\displaystyle{C_{4v}=C_{4}+(D_{4}-C_{4})I}$；取$\displaystyle{H=D_{2}}$，则$\displaystyle{D_{2d}=D_{2}+(D_{4}-D_{2})I}$；取$\displaystyle{H=D_{2}'}$，则$\displaystyle{D_{2d}'=D_{2}' +(D_{4}-D_{2}')I}$
1. 补全有限群的特征标表

|                        | $\displaystyle{E}$ | $\displaystyle{3C_{4}^{2}}$ | $\displaystyle{8C_{3}'}$ | $\displaystyle{6C_{4}}$ | $\displaystyle{6C_{2}''}$ |
| ---------------------- | ------------------ | --------------------------- | ------------------------ | ----------------------- | ------------------------- |
| $\displaystyle{A}$     | 1                  | 1                           | 1                        | 1                       | 1                         |
| $\displaystyle{B}$     | 1                  | 1                           | 1                        | -1                      | -1                        |
| $\displaystyle{E}$     | 2                  | 2                           | -1                       | 0                       | 0                         |
| $\displaystyle{T_{1}}$ | 3                  | -1                          | 0                        | 1                       | -1                        |
| $\displaystyle{T_{2}}$ | 3                  | -1                          | 0                        | -1                      | 1                         |

1. 将$\displaystyle{D_{3}}$群元素看作二维空间中点的坐标变换，$\displaystyle{\begin{pmatrix}x' \\ y'\end{pmatrix}=R\begin{pmatrix}x\\y\end{pmatrix}}$，$\displaystyle{R\in D_{3}}$。取生成元$\displaystyle{D,A}$，其对应的变换矩阵为$\displaystyle{D=\frac{1}{2}\begin{pmatrix}-1 & -\sqrt{ 3 }\\\sqrt{ 3 } & -1\end{pmatrix},A=\begin{pmatrix}1 & 0 \\ 0 & -1\end{pmatrix}}$. 已知$\displaystyle{\psi _{1}(x,y)=x^{2}-y^{2},\psi _{2}(x,y)=2xy,\psi _{3}(x,y)=x^{2}+y^{2}}$架设的三维函数空间对$\displaystyle{D_{3}}$群保持不变。
    1. 计算$\displaystyle{D_{3}}$生成元$\displaystyle{D,A}$在这组函数集上的表示矩阵
    1. 将此表示约化为$\displaystyle{D_{3}}$群不可约表示的直和
    1. 将函数集重新组合为分属各不等价不可约表示的函数集
*sol*.
- we have

$$\begin{align}
D\psi _{1}(x,y) & =\psi _{1}\left(D^{-1}x,D^{-1}y\right) \\
 & =\left(\frac{1}{2}(-x+\sqrt{ 3 }y)\right)^{2}-\left(\frac{1}{2}(-\sqrt{ 3 }x-y)\right)^{2} \\
 & =\frac{1}{4}\left(x^{2}+3y^{2}-2\sqrt{ 3 }xy\right)-\frac{1}{4}\left(3x^{2}+2\sqrt{ 3 }xy+y^{2}\right) \\
 & =-\frac{1}{2}x^{2}+\frac{1}{2}y^{2}-\sqrt{ 3 }xy \\
 & =-\frac{1}{2}\psi _{1}(x,y)-\frac{\sqrt{ 3 }}{2}\psi _{2}(x,y) \\
D\psi _{2}(x,y) & =\psi _{2}(D^{-1}x,D^{-1}y) \\
 & =2\left(\frac{1}{2}(-x+\sqrt{ 3 }y)\right)\left(\frac{1}{2}(-\sqrt{ 3 }x-y)\right) \\
 & =\frac{1}{2}\left(\sqrt{ 3 }x^{2}-\sqrt{ 3 }y^{2}-2xy\right) \\
 & =\frac{\sqrt{ 3 }}{2}\psi _{1}(x,y)-\frac{1}{2}\psi _{2}(x,y) \\
D\psi _{3}(x,y) & =\psi _{3}(x,y)
\end{align}$$

thus the representation matrices are

$$\begin{align}
D & =\begin{pmatrix} -\frac{1}{2} & -\frac{\sqrt{ 3 }}{2} & 0 \\
\frac{\sqrt{ 3 }}{2} & -\frac{1}{2} & 0 \\
0 & 0 & 1
\end{pmatrix}
\end{align}$$

and notice that $\displaystyle{A\psi _{1}=\psi _{1},A\psi _{2}=-\psi _{2},A\psi _{3}=\psi _{3}}$, then the representation matrix of $\displaystyle{A}$ is

$$\begin{align}
A & =\begin{pmatrix}
1 & 0 & 0 \\
0 & -1 & 0 \\
0 & 0 & 1
\end{pmatrix}
\end{align}$$

- the character table of $\displaystyle{D_{3}}$ is

|                        | $\displaystyle{E}$ | $\displaystyle{2C_{3}}$ | $\displaystyle{3C_{2}'}$ |
| ---------------------- | ------------------ | ----------------------- | ------------------------ |
| $\displaystyle{A_{1}}$ | 1                  | 1                       | 1                        |
| $\displaystyle{A_{2}}$ | 1                  | 1                       | -1                       |
| $\displaystyle{E}$     | 2                  | -1                      | 0                        |
| current rep.           | 3                  | 0                       | 1                        |

thus we have

$$\begin{align}
\text{current rep.} & =A_{1}\oplus E
\end{align}$$

- $\displaystyle{\psi _{3}}$ is basis of $\displaystyle{A_{1}}$ representation, and $\displaystyle{\psi _{1},\psi _{2}}$ are basis of $\displaystyle{E}$ representation. then we will diagonlize the representation matrices in this basis.

1. 对置换群$\displaystyle{S_{5}}$
    1. 写出杨图$\displaystyle{[2,2,1]}$对应的最大正则杨表的杨算符（无需展开乘积）
    1. 计算元素$\displaystyle{(2,3)}$在表示$\displaystyle{[2,2,1]}$中的表示矩阵
    1. 写出$\displaystyle{(2,3)}$在表示$\displaystyle{[2,2,1]}$中的表示矩阵的实正交形式
*sol*.
- the maximal standard Young tableau corresponding to partition $\displaystyle{[2,2,1]}$ is

$$\begin{align}
T_{0} & =\begin{pmatrix}
1 & 4 \\
2 & 5 \\
3
\end{pmatrix}
\end{align}$$

the Young operator is

$$\begin{align}
\mathcal{Y} & =PQ \\
P & =[e+(14)][e+(25)] \\
Q & =[e-(12)-(13)+(123)+(132)][e-()]
\end{align}$$

- the standard Young tableaux of shape $\displaystyle{[2,2,1]}$ are

```tikz
\begin{document}
\def \youngdiagram{2,2,1}
\begin{tikzpicture}[scale=0.6 ,
box/.style={draw=black, thick, minimum size=6mm} 
]
\foreach \n [count=\y from 0] in \youngdiagram { 
    \foreach \x in {0,...,\numexpr\n-1} {        
        \draw[box] (\x, -\y) rectangle ++(1,1); 
    }
\node at (0.5,0.5) {1};
\node at (1.5,0.5) {2};
\node at (0.5,-0.5) {3};
\node at (1.5,-0.5) {4};
\node at (0.5,-1.5) {5};
}
\end{tikzpicture}
\begin{tikzpicture}[scale=0.6 ,
box/.style={draw=black, thick, minimum size=6mm} 
]
\foreach \n [count=\y from 0] in \youngdiagram { 
    \foreach \x in {0,...,\numexpr\n-1} {        
        \draw[box] (\x, -\y) rectangle ++(1,1); 
    }
\node at (0.5,0.5) {1};
\node at (1.5,0.5) {2};
\node at (0.5,-0.5) {3};
\node at (1.5,-0.5) {5};
\node at (0.5,-1.5) {4};
}
\end{tikzpicture}
\begin{tikzpicture}[scale=0.6 ,
box/.style={draw=black, thick, minimum size=6mm} 
]
\foreach \n [count=\y from 0] in \youngdiagram { 
    \foreach \x in {0,...,\numexpr\n-1} {        
        \draw[box] (\x, -\y) rectangle ++(1,1); 
    }
\node at (0.5,0.5) {1};
\node at (1.5,0.5) {3};
\node at (0.5,-0.5) {2};
\node at (1.5,-0.5) {4};
\node at (0.5,-1.5) {5};
}
\end{tikzpicture}
\begin{tikzpicture}[scale=0.6 ,
box/.style={draw=black, thick, minimum size=6mm} 
]
\foreach \n [count=\y from 0] in \youngdiagram { 
    \foreach \x in {0,...,\numexpr\n-1} {        
        \draw[box] (\x, -\y) rectangle ++(1,1); 
    }
\node at (0.5,0.5) {1};
\node at (1.5,0.5) {3};
\node at (0.5,-0.5) {2};
\node at (1.5,-0.5) {5};
\node at (0.5,-1.5) {4};
}
\end{tikzpicture}
\begin{tikzpicture}[scale=0.6 ,
box/.style={draw=black, thick, minimum size=6mm} 
]
\foreach \n [count=\y from 0] in \youngdiagram { 
    \foreach \x in {0,...,\numexpr\n-1} {        
        \draw[box] (\x, -\y) rectangle ++(1,1); 
    }
\node at (0.5,0.5) {1};
\node at (1.5,0.5) {4};
\node at (0.5,-0.5) {2};
\node at (1.5,-0.5) {5};
\node at (0.5,-1.5) {3};
}
\end{tikzpicture}
\end{document}
```

thus the matrix of $\displaystyle{(2,3)}$ in this representation is calculated as follows:
- diagonal elements are given by $\displaystyle{\frac{1}{\rho}}$, where $\displaystyle{\rho}$ is the axial distance between 2 and 3 in each tableau; off-diagonal elements are given by $\displaystyle{\sqrt{1-\frac{1}{\rho^{2}}}}$ if exchanging 2 and 3 gives another standard tableau, otherwise 0. thus we have

$$\begin{align}
D(23) & =\begin{pmatrix} \frac{1}{2} & 0 & \frac{\sqrt{ 3 }}{2} & 0 & 0 \\
0 & \frac{1}{2} & 0 & \frac{\sqrt{ 3 }}{2} & 0 \\
\frac{\sqrt{ 3 }}{2} & 0 & -\frac{1}{2} &0 & 0 \\
0 & \frac{\sqrt{ 3 }}{2} & 0 & -\frac{1}{2} & 0 \\
0 & 0 & 0 & 0 & 1
\end{pmatrix}
\end{align}$$

1. $\displaystyle{S_{6}}$群的不可约表示$\displaystyle{[3,3]}$，作为子群$\displaystyle{S_{3}\otimes S_{3}}$的分导表示，按子群不可约表示约化，并验证维数
*sol*. possible factorization is

$$\begin{align}
[3,3] & =[3]\otimes [3]\oplus [2,1]\otimes [2,1]
\end{align}$$

the dimensions of LHS is

$$\begin{align}
D & =\frac{6!}{3!3!}\cdot \frac{6!}{3!3!}\cdot \frac{1}{2!} = 5
\end{align}$$

and the dimension of RHS is

$$\begin{align}
D & =1\times1+2 \times2=5
\end{align}$$

which verifies the dimension.
1. 求转动矩阵$\displaystyle{R(\alpha,\beta,\gamma)=\begin{pmatrix}-\frac{1}{2}&-\frac{\sqrt{ 3 }}{2} & 0 \\ -\frac{\sqrt{ 3 }}{4} & \frac{1}{4} & \frac{\sqrt{ 3 }}{2} \\ -\frac{3}{4} & \frac{\sqrt{ 3 }}{4} & -\frac{1}{2} \end{pmatrix}}$的欧拉角（先转z轴，再转y轴，最后转z轴）

we have

$$\begin{align}
R(\alpha,\beta,\gamma) & =R(\vec{e}_{3},\alpha)R(\vec{e}_{2},\beta)R(\vec{e}_{3},\gamma) \\
 & =\begin{pmatrix}
\cos \alpha \cos \beta \cos \gamma-\sin \alpha \sin \gamma & -\cos \alpha \cos \beta \sin \gamma-\sin \alpha \cos \gamma & \cos \alpha \sin \beta \\
\sin \alpha \cos \beta \cos \gamma+\cos \alpha \sin \gamma & -\sin \alpha \cos \beta \sin \gamma+\cos \alpha \cos \gamma & \sin \alpha \sin \beta \\
-\sin \beta \cos \gamma & \sin \beta \sin \gamma & \cos \beta
\end{pmatrix}
\end{align}$$

thus we have

$$\begin{align}
\beta & =\frac{2\pi}{3} \\
\gamma & =\frac{\pi}{6} \\
\alpha & =\frac{\pi}{2}
\end{align}$$

1. 写出绕$\displaystyle{\hat{n}=\frac{\sqrt{ 6 }}{4}\hat{e}_{1}+\frac{\sqrt{ 2 }}{4}\hat{e}_{2}+\frac{\sqrt{ 2 }}{2}\hat{e}_{3}}$方向转$\displaystyle{\frac{\pi}{3}}$角的$\displaystyle{\mathrm{SU}(2)}$群元素的具体形式
*sol*. we have

$$\begin{align}
U\left( \hat{n},\frac{\pi}{3} \right) & = \cos \frac{\pi}{6}I -i\sin \frac{\pi}{6}\left( \frac{\sqrt{ 6 }}{4}\sigma _{x}+\frac{\sqrt{ 2 }}{4}\sigma _{y}+\frac{\sqrt{ 2 }}{2}\sigma _{z} \right)
\end{align}$$

1. 由球谐函数$\displaystyle{Y^{1/2}_{-1/2}(\hat{n}),Y^{1/2}_{1/2}(\hat{n})}$组合出沿$\displaystyle{\hat{n}=\frac{\sqrt{ 3 }}{2}\hat{e}_{2}-\frac{1}{2}\hat{e}_{3}}$方向轨道角动量的本征值为$\displaystyle{-\frac{1}{2}, \frac{1}{2}}$的本征函数
*sol*. in the following derivation we use Dirac notation for convenience, suppose the corresponding eigenstates are $\displaystyle{\ket{\hat{n},+},\ket{\hat{n},-}}$. then we have

$$\begin{align}
\vec{J}\hat{n}\ket{\hat{n},+} = \frac{1}{2}\ket{\hat{n},+} \\
\vec{J}\hat{n}\ket{\hat{n},-} = -\frac{1}{2}\ket{\hat{n},-} \\
\implies \ket{\hat{n},+} & = \cos \frac{\beta}{2}e^{-i\frac{\alpha +\gamma }{2}}\ket{+}+\sin \frac{\beta}{2}e^{i\frac{\alpha -\gamma }{2}}\ket{-} \\
 & = \frac{\sqrt{ 2 +\sqrt{ 3 }}}{2}Y^{1/2}_{1/2}(\hat{n})+\frac{\sqrt{ 2 -\sqrt{ 3 }}}{2}Y^{1/2}_{-1/2}(\hat{n}) \\
\ket{\hat{n},-} & = -\sin \frac{\beta}{2}e^{-i\frac{\alpha -\gamma }{2}}\ket{+}+\cos \frac{\beta}{2}e^{i\frac{\alpha +\gamma }{2}}\ket{-} \\
 & = -\frac{\sqrt{ 2 -\sqrt{ 3 }}}{2}Y^{1/2}_{1/2}(\hat{n})+\frac{\sqrt{ 2 +\sqrt{ 3 }}}{2}Y^{1/2}_{-1/2}(\hat{n})
\end{align}$$

# exam 2

1. 简答题
    1. 简述群的重排定理
    1. 写出用$\displaystyle{D_{3}}$群构造出的$\displaystyle{I}$型和$\displaystyle{P}$型非固有点群的所有元素
    1. 特征标表填空
    1. 写出$\displaystyle{\mathrm{SU}(2)}$群绕$\displaystyle{\hat{n}=\frac{1}{\sqrt{ 2 }}(\hat{e}_{1}+\hat{e}_{2})}$方向，转角$\displaystyle{\omega=\frac{\pi}{3}}$矩阵的具体形式
    1. 写出$\displaystyle{S_{6}}$的不可约表示$\displaystyle{[4,2]}$，关于子群$\displaystyle{S_{3}\otimes S_{3}}$的分导表示按不可约表示约化，并验证维数
1. some easy problem
1. just like exam 1 Q4
1. $\displaystyle{S_{4}}$群不可约表示$\displaystyle{[3,1]}$
    1. 写出最大杨表对应的杨算符，结果用无公共客体轮换来表示
    1. 将元素$\displaystyle{(24)}$写成相邻客体对换乘积形式，并求出在正交表示下，$\displaystyle{(24)}$的矩阵表示
1. 给了$\displaystyle{\mathrm{SO}(3)}$群$\displaystyle{d^{1}(\beta)}$矩阵形式，用$\displaystyle{Y^{1}_{1}(\hat{n}),Y^{1}_{0}(\hat{n}),Y^{1}_{-1}(\hat{n})}$线性组合出沿$\displaystyle{\hat{r}=\frac{3}{4}\hat{e}_{1}+\frac{\sqrt{ 3 }}{4}\hat{e}_{2}-\frac{1}{2}\hat{e}_{3}}$方向、本征值为$\displaystyle{1,0,-1}$的本征函数
