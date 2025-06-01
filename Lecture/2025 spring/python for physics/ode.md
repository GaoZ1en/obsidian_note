# Runge-Kutta

$$\tag{1.1}
\begin{align}
\begin{cases}
\dot{y}=f(t,y) & t\in[a,b] \\
y(a)=y_{0}
\end{cases}
\end{align}
$$

define $\displaystyle{h=\frac{a-b}{n}}$

$$\tag{1.2}
\begin{align}
\frac{y(t_{i+1})-y(t_{i})}{h} = y'(t_{i}+\theta h) \\
\implies y(t_{i+1})=y(t_{i})+hk _{\mathrm{ave}}
\end{align}
$$

## Euler formula

here we choose $\displaystyle{k _{\mathrm{ave}}=\frac{K_{1}+K_{2}}{2}}$

$$\tag{1.3}
\begin{align}
y_{i+1} & =y_{i}+\frac{h}{2}(K_{1}+K_{2})
\end{align}
$$

the problem is that we do not know $\displaystyle{K_{2}}$. the method is that we first calculate $\displaystyle{K_{1}=f(t_{i},y_{i})}$, then we have $\displaystyle{K_{2}=f(t_{i+1},\bar{y}_{i+1})}$, where $\displaystyle{\bar{y}_{i+1}=y_{i}+hK_{1}}$.

Euler formula is acturally 2ed order Runge-Kutta method.

the basic idea of Runge-Kutta method is to use weighted avarage of slope to minimize the error. in general we have

$$\tag{1.4}
\begin{align}
y_{i+1} & =y_{i}+h\sum ^{N}_{m=1}\lambda _{m}K_{m} \\
K_{1} & =f(t_{i},y_{i}) \\
K_{m} & =f\left( t_{i}+\alpha _{m} h,y_{i}+h\sum ^{m-1}_{j=1}\beta _{mj}K_{j} \right), & m=2,3\dots N
\end{align}
$$

where $\displaystyle{\lambda _{m},\alpha _{m},\beta _{m,j}}$ are constants.



## 2ed order Runge-Kutta

$$\tag{1.5}
\begin{align}
y_{i+1} & =y_{i}+h(\lambda _{1}K_{1}+\lambda _{2}K_{2}) \\
K_{1} & =f(t_{i},y_{i}) \\
K_{2} & =f(t_{i}+\alpha h,y_{i}+\beta hK_{1})
\end{align}
$$

take a Taylor expansion

$$\tag{1.6}
\begin{align}
y_{i+1} & =y_{i}+\lambda _{1}hf(t_{i}+y_{i})+\lambda_{2}h\left(f(t_{i},y_{i})+\frac{\partial f}{\partial t}\alpha h+\frac{\partial f}{\partial y}\beta hK_{1} \right) \\
 & +\frac{1}{2}\lambda _{2}h\left(\frac{\partial ^{2}f}{\partial t^{2}}\alpha ^{2}h^{2}+\frac{\partial ^{2}f}{\partial y^{2}}\beta ^{2}h^{2}K_{1}^{2}+2\frac{\partial ^{2}f}{\partial t\partial y}\alpha \beta h^{2}K_{1}\right)
\end{align}
$$

let $\displaystyle{\alpha=\beta=p}$, we have

$$\tag{1.7}
\begin{align}
y_{i+1} & =y_{i}+hf(t_{i},y_{i})(\lambda_{1}+\lambda_{2})+\frac{1}{2} \frac{\partial f}{\partial t}h^{2}+\frac{1}{2} \frac{\partial f}{\partial y}K_{1}h^{2} \\
 & \begin{cases}
\lambda _{1}+\lambda _{2}=1 \\
\lambda_{2}p=\frac{1}{2}
\end{cases}
\end{align}
$$

1. $\displaystyle{\lambda _{1}=\lambda _{2}=\frac{1}{2},p=1}$, we got the Euler formula.
2. $\displaystyle{\lambda _{1}=0,\lambda _{2}=1,p=\frac{1}{2}}$, we got the middle point formula


## 3rd and 4st order Runge-Kutta

3rd order is similar to the 2nd order

$$\tag{1.8}
\begin{align}
y_{i+1} & = y_{i}+h(\lambda _{1}K_{1}+\lambda _{2}K_{2}+\lambda _{3}K_{3}) \\
K_{1} & =f(t_{i},y_{i}) \\
K_{2} & =f(t_{i}+ph,y_{i}+phK_{1}) \\
K_{3} & =f(t_{i}+qh,y_{i}+qh(rK_{1}+sK_{2}))
\end{align}
$$

after a long derivation, we have

$$\tag{1.9}
\begin{align}
r+s & =1 \\
\lambda _{1}+\lambda _{2}+\lambda _{3} & =1 \\
\lambda _{2}p+\lambda _{3}q & =\frac{1}{2} \\
\lambda _{2}p^{2}+\lambda _{3}q^{2} & =\frac{1}{3} \\
\lambda _{3}pqs & =\frac{1}{6}
\end{align}
$$

a useful formula is to choose 

$$\tag{1.10}
\begin{align}
y_{i+1} & =y_{i}+\frac{h}{6}(K_{1}+4K_{2}+K_{3}) \\
K_{1} & =f(t_{i},y_{i}) \\
K_{2} & =f\left( t_{i}+\frac{h}{2},y_{i}+\frac{h}{2}K_{1} \right) \\
K_{3} & =f\left( t_{i}+h,y_{i}+h(-K_{1}+2K_{2}) \right)
\end{align}
$$

and a 4st order method is

$$\tag{1.11}
\begin{align}
y_{i+1} & =y_{i}+\frac{1}{6}h(K_{1}+2K_{2}+2K_{3}+K_{4}) \\
K_{1} & =f(t_{i},y_{i}) \\
K_{2} & =f\left( t_{i}+\frac{h}{2},y_{i}+\frac{hK_{1}}{2} \right) \\
K_{3} & =f\left( t_{i}+\frac{h}{2},y_{i}+\frac{hK_{2}}{2} \right) \\
K_{4} & =f(t_{i}+h,y_{i}+hK_{3})
\end{align}
$$

# 