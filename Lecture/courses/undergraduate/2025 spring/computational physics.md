set $\displaystyle{x_{i}=x_{0}+ih,i=1,2}$, we have the following approximation

$$
\tag{1.1}
\begin{align}
f'(x_{0}) & = \frac{-3f(x_{0})+4f(x_{1})-f(x_{2})}{2h} \\
f'(x_{1}) & =\frac{f(x_{2})-f(x_{0})}{2h} \\
f'(x_{2}) & =\frac{f(x_{0})-4f(x_{1})+3f(x_{2})}{2h}
\end{align}
$$

with error level $\displaystyle{\mathcal{O}(h^{3})}$. this can be proved by Lagrange interpolation.

Simpson method can be proved by Taylor expansion

$$
\tag{1.2}
\begin{align}
\int _{x_{2k}}^{x_{2k+2}}f(x)\mathrm{d}x & =\int ^{x_{2k+2}}_{x_{2k}}\sum ^{\infty}_{n=0} \frac{f^{(n)}(x_{2k+1})}{n!}(x-x_{2k+1})^{n} \\
 & =\sum ^{\infty}_{n=0} \frac{2h^{2n+1}f^{(2n)}(x_{2k+1})}{(2n)!(2n+1)} \\
 & =2hf(x_{2k+1})+\frac{h^{3}}{3}f''(x_{2k+1})+\mathcal{O}(h^{5}) \\
 & =2hf(x_{2k+1})+\frac{h^{3}}{3} \frac{f(x_{2k+2})-2f(x_{2k+1})+f(x_{2k})}{h^{2}}+\mathcal{O}(h^{5}) \\
 & =\frac{1}{3}h\left(f_{2k}+4f_{2k+1}+f_{2k+2}\right)+\mathcal{O}(h^{5})
\end{align}
$$

$$
\tag{1.3}
\begin{align}
f''(x) & = \frac{f(x+h)-2f(x)+f(x-h)}{h^{2}}
\end{align}
$$

---
interpolation, curve fitting

least square method. suppose $\displaystyle{P(x)=a_{0}+a_{1}x+\dots+a_{m}x^{m}}$, and we require $\displaystyle{\Delta=\sum ^{N}_{n=1}(P(x_{n})-y_{n})^{2}}$ takes the minimum$\displaystyle{\implies}$$\displaystyle{\frac{\partial \Delta}{\partial a_{i}}=\sum ^{N}_{n=1}2(P(x_{n})-y_{n}) x_{n}^{i}=0}$

$$
\tag{2.1}
\begin{align}
\sum ^{m}_{i=1}\sum ^{N}_{n=1}a_{i}x^{i+j}_{n} & =\sum ^{N}_{n=1}y_{n}x_{n}^{j}, j=0,1,..,m
\end{align}
$$

define $\displaystyle{(A)_{ij}= \sum ^{N}_{n=1}x^{i+j}_{n} ,B_{j1}=\sum ^{N}_{n=1}y_{n}x^{j}_{n},\alpha _{j1}=a_{j}\implies \alpha=A^{-1}B}$.

zero point. Newton method

---
ode

Runge-Kutta method

$$
\tag{3.1}
\begin{align}
y_{i+1} & =y_{i}+h\sum ^{N}_{m=1}\lambda _{m}K_{m} \\
K_{1} & =f(t_{i},y_{i}) \\
K_{m} & =f\left( t_{i}+\alpha _{m} h,y_{i}+ h\sum ^{m-1}_{j=1}\beta _{mj}K_{j} \right),m=2,3,\dots,N
\end{align}
$$

the error of $\displaystyle{n}$-order Runge-Kutta method is $\displaystyle{\mathcal{O}(h^{n+1})}$

we will turn higher order ode into first order ode to solve them.

---
pde

- parabolic equations

$$
\tag{4.1}
\begin{align}
u_{t} & =a^{2}u_{xx} \\
\frac{u_{x,t+\Delta t}-u_{x,t}}{\Delta t} & =a^{2} \frac{u_{x+\Delta x,t}-2u_{x,t}+u_{x-\Delta x,t}}{\Delta x^{2}} \\
\implies u_{x,t+\Delta t} & =u_{x,t}+r(u_{x+\Delta x,t}-2u_{x,t}+u_{x-\Delta x,t}) \\
 & =r(u_{x+\Delta x,t}+u_{x-\Delta x,t})+u_{x,t}(1-2r)
\end{align}
$$

$$
\tag{.}
\begin{align}
u_{t}=a^{2}u_{xx}-bu_{x} \\
\frac{u_{i,j+1}-u_{i,j}}{\Delta t} & =a^{2} \frac{u_{i+1,j}-2u_{i,j}+u_{i-1,j}}{\Delta x^{2}}-b \frac{u_{i+1,j}-u_{i-1,j}}{\Delta x} \\
\implies u_{i,j+1} & =(1-r)u_{i,j}+(r+q) u_{i+1,j}+(r-q)u_{i-1,j}
\end{align}
$$

where $\displaystyle{r=\frac{a^{2}\Delta t}{\Delta x^{2}},q=-\frac{b\Delta t}{\Delta x}}$

or

$$
\tag{.}
\begin{align}
\frac{u_{i,j+1}-u_{i,j}}{\Delta t} & =\frac{a^{2}(u_{i+1,j+1}-2u_{i,j+1}+u_{i-1,j+1})}{\Delta x^{2}} \\
\implies u_{i,j} & =(1+2r)u_{i,j+1}-r(u_{i+1,j+1}+u_{i-1,j+1}) \\
\implies u_{i,j+1} & =\dots
\end{align}
$$

or we make a average

$$
\tag{.}
\begin{align}
\frac{u_{i,j+1}-u_{i,j}}{\Delta t}=\frac{a^{2}}{2\Delta x^{2}}(u_{i+1,j}-2u_{i,j}+u_{i-1,j}+u_{i+1,j+1}+u_{i+1,j+1}-2u_{i,j+1}+u_{i-1,j+1})
\end{align}
$$

- hyperbolic equations

$$
\tag{.}
\begin{align}
u_{tt} & =a^{2}u_{xx} \\
\frac{u_{i,j+1}-2u_{i,j}+u_{i,j-1}}{\Delta t^{2}} & =a^{2} \frac{u_{i+1,j}-2u_{i,j}+u_{i-1,j}}{\Delta x^{2}} \\
\implies u_{i,j+1} & =2(1-r)u_{i,j}-u_{i,j-1}+r(u_{i+1,j}+u_{i-1,j})
\end{align}
$$

or we can do similar thing as parabolic equation

- eliptic equations

$$
\tag{.}
\begin{align}
u_{xx}+u_{yy} & =0 \\
\frac{u_{i+1,j}-2u_{i,j}+u_{i-1,j}}{\Delta x^{2}}  & + \frac{u_{i,j+1}-2u_{i,j}+u_{i,j-1}}{\Delta y^{2}} =0 \\
\overset{\Delta x=\Delta y}{\implies}u_{i,j} & =\frac{1}{4}(u_{i+1,j}+u_{i-1,j}+u_{i,j+1}+u_{i,j-1})
\end{align}
$$

and we need iterate to approach to the exact solution, and we take average on the boundary as initial value.

---
