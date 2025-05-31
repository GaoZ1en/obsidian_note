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

```python



```