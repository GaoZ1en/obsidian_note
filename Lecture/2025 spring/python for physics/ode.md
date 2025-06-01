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

let $\displaystyle{\alpha=\beta}$, we have

$$\tag{1.7}
\begin{align}

\end{align}
$$