we first introduce the Darboux's formula

$$\begin{align}
\varphi ^{(n)}(0)(f(z)-f(a)) & =\sum ^{n}_{m=1}(-1)^{m-1}(z-a)^{m}(\varphi ^{(n-m)}(1)f^{(m)}(z)-\varphi ^{(n-m)}(0)f^{(m)}(a)) \\
 & +(-)^{m}(z-a)^{n+1}\int ^{1}_{0}\varphi(t)f^{(n+1)}[a+(z-a)t]\mathrm{d}t
\end{align}$$

this is a generalization of Taylor's formula with integral remainder. here $\displaystyle{\varphi(x)}$ is a polynomial of degree $n$. let $\displaystyle{\varphi(x)=\varphi _{n}(x)}$ be the Bernoulli polynomial defined by

$$\begin{align}
\varphi _{n}(x) & =\frac{1}{(n-1)!}\int ^{x}_{0}t^{n-1}(t-1)^{n}\mathrm{d}t
\end{align}$$

that satisfies the following properties:

$$\begin{align}
\varphi _{n}^{(m)}(x) & =\frac{n!}{m!}\varphi _{n-m}(x) \\
\varphi _{n}(1) & =(-1)^{n}\varphi _{n} \\
\varphi _{2n} & =(-1)^{n-1}B_{n}
\end{align}$$

substituting $\displaystyle{n}$ by $\displaystyle{2n}$ in Darboux's formula,

$$\begin{align}
\varphi ^{(2n)}_{2n}(0)(f(z)-f(a)) & =\sum ^{2n}_{m=1}(-1)^{m-1}(z-a)^{m}(\varphi ^{(2n-m)}(1)f^{(m)}(z)-\varphi ^{(2n-m)}(0)f^{(m)}(a)) \\
 & +(-)^{m}(z-a)^{2n+1}\int ^{1}_{0}\varphi_{2n}(t)f^{(2n+1)}[a+(z-a)t]\mathrm{d}t
\end{align}$$

using the properties of Bernoulli polynomials, we have

$$\begin{align}
f(z)-f(a) & =\frac{z-a}{2}(f'(z)-f(a)) \\
 & +\sum ^{n}_{k=1}(-)^{k}\frac{(z-a)^{2k}}{(2k)!}B_{k}(f^{(2k)}(z)-f^{(2k)}(a)) \\
 & +\frac{(z-a)^{2n+1}}{(2n)!}\int ^{1}_{0}\varphi _{2n}(t)f^{(2n+1)}(a+(z-a)t)\mathrm{d}t
\end{align}$$

let $\displaystyle{F(z)=f'(z)}$, and $\displaystyle{z-a=h}$, we get

$$\begin{align}
\int _{a}^{a+h}F(z)\mathrm{d}z & =h\frac{F(a+h)+F(a)}{2} \\
 & +\sum ^{n}_{k=1}(-)^{k}\frac{h^{2k}}{(2k)!}B_{k}(F^{(2k-1)}(a+h)-F^{(2k-1)}(a)) \\
 & +\frac{h^{2n+1}}{(2n)!}\int ^{1}_{0}\varphi _{2n}(t)F^{(2n)}(a+ht)\mathrm{d}t
\end{align}$$

and take a sum by substituting $\displaystyle{a}$ by $\displaystyle{a+kh, k=1,\dots m-1}$, we obtain the Euler-Maclaurin summation formula

$$\begin{align}
\int ^{a+mh}_{a}F(x)\mathrm{d}x & =h\left(\frac{F(a)}{2}+F(a+h)+\dots+F(a+(m-1)h)+\frac{F(a+mh)}{2}\right) \\
 & +\sum ^{n}_{k=1} \frac{(-)^{k}B_{k}h^{2k}}{(2k)!}(F^{(2k-1)}(a+mh)-F^{(2k-1)}(a)) \\
 & +\frac{h^{2n+1}}{(2n)!}\int ^{1}_{0}\varphi _{2n}(t)\sum ^{m-1}_{s=0}F^{(2n)}(a+hs+ht)\mathrm{d}t
\end{align}$$
