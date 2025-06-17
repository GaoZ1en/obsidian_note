set $\displaystyle{x_{i}=x_{0}+ih,i=1,2}$, we have the following approximation

$$\tag{1.1}
\begin{align}
f'(x_{0}) & = \frac{-3f(x_{0})+4f(x_{1})-f(x_{2})}{2h} \\
f'(x_{1}) & =\frac{f(x_{2})-f(x_{0})}{2h} \\
f'(x_{2}) & =\frac{f(x_{0})-4f(x_{1})+3f(x_{2})}{2h}
\end{align}
$$

with error level $\displaystyle{\mathcal{O}(h^{3})}$. this can be proved by Lagrange interpolation.

Simpson method can be proved by Taylor expansion

$$\tag{1.2}
\begin{align}
\int _{x_{2k}}^{x_{2k+2}}f(x)\mathrm{d}x & =\int ^{x_{2k+2}}_{x_{2k}}\sum ^{\infty}_{n=0} \frac{f^{(n)}(x_{2k+1})}{n!}(x-x_{2k+1})^{n} \\
 & =\sum ^{\infty}_{n=0} \frac{2h^{2n+1}f^{(2n)}(x_{2k+1})}{(2n)!(2n+1)} \\
 & =2hf(x_{2k+1})+\frac{h^{3}}{3}f''(x_{2k+1})+\mathcal{O}(h^{5}) \\
 & =2hf(x_{2k+1})+\frac{h^{3}}{3} \frac{f(x_{2k+2})-2f(x_{2k+1})+f(x_{2k})}{h^{2}}+\mathcal{O}(h^{5}) \\
 & =\frac{1}{3}h\left(f_{2k}+\right)
\end{align}
$$