the orthonormal relation for Jacobi polynomials is

$$\tag{.}\begin{align}
\int ^{1}_{-1}\mathrm{d}x(1-x)^{\alpha}(1+x)^{\beta}P_{m}^{(\alpha,\beta)}P_{n}^{(\alpha,\beta)}(x)\mathrm{d}x & =\frac{2^{\alpha+\beta+1}}{2n+\alpha+\beta+1} \frac{\Gamma(n+\alpha+1)\Gamma(n+\beta+1)}{\Gamma(n+\alpha+\beta+1)\Gamma(n+1)}\delta _{n,m}
\end{align}$$

---
$$\tag{.}\begin{align}
I_{1} & =\int _{0}^{\infty} \mathrm{d}r r^{2m+1}(1+r^{2})^{-(\mu+m+2)}P_{n+1}^{(\mu,m-1)}\left( \frac{r^{2}-1}{r^{2}+1} \right)P^{(\mu,m+1)}_{n}\left( \frac{r^{2}-1}{r^{2}+1} \right) \\
 & =2^{-(\mu+m+2)}\int _{-1}^{1}\mathrm{d}x(1-x)^{\mu}(1+x)^{m}P_{n+1}^{(\mu,m-1)}(x)P_{n}^{(\mu,m+1)}(x)
\end{align}$$

---
$$\tag{.}\begin{align}
I_{2} & =\int _{0}^{\infty} \mathrm{d}rr^{2m+1}(1+r^{2})^{-(\mu+m+3)}P^{(\mu,m+1)}_{n}\left( \frac{r^{2}-1}{r^{2}+1} \right)P^{(\mu+1,m)}_{n}\left( \frac{r^{2}-1}{r^{2}+1} \right) \\
 & =2^{-(\mu+m+3)}\int _{-1}^{1}\mathrm{d}x(1-x)^{\mu+1}(1+x)^{m}P_{n}^{(\mu,m+1)}(x)P_{n}^{(\mu+1,m)}(x)
\end{align}$$

use

$$\tag{.}\begin{align}
(1-x)P^{(\alpha+1,\beta)}_{n}(x)+(1+x)P_{n}^{(\alpha,\beta+1)}(x) & =2P_{n}^{(\alpha,\beta)}(x)
\end{align}$$

we have

$$\tag{.}\begin{align}
\int _{-1}^{1}\mathrm{d}x(1-x)^{\mu+1}(1+x)^{m}P_{n}^{(\mu,m+1)}(x)P_{n}^{(\mu+1,m)}(x) & =\int _{-1}^{1}\mathrm{d}x(1-x)^{\mu}(1+x)^{m}P_{n}^{(\mu,m+1)}(2P_{n}^{(\mu,m)}(x)-(1+x)P_{n}^{(\mu,m+1)}(x)) \\
 & =2\int _{-1}^{1}\mathrm{d}x(1-x)^{\mu}(1+x)^{m}P_{n}^{(\mu,m+1)}(x)P_{n}^{(\mu,m)}(x)-\int _{-1}^{1}\mathrm{d}x(1-x)^{\mu}(1+x)^{m+1}[P_{n}^{(\mu,m+1)}(x)]^{2}
\end{align}$$

then use

$$\tag{.}\begin{align}
\frac{2n+\alpha+\beta+2}{2}(1+x)P_{n}^{(\alpha,\beta+1)}(x) & =(n+\beta+1)P^{(\alpha,\beta)}_{n}(x)+(n+1)P_{n+1}^{(\alpha,\beta)}(x)
\end{align}$$

the first term becomes

$$\tag{.}\begin{align}
\int _{-1}^{1}\mathrm{d}x(1-x)^{\mu}(1+x)^{m}P_{n}^{(\mu,m+1)}(x)P_{n}^{(\mu,m)}(x) & =\frac{2}{2n+\mu+m+2}\int _{-1}^{1}\mathrm{d}x(1-x)^{\mu}(1+x)^{m-1}\left((n+m+1)P_{n}^{(\mu,m)}(x)+(m+1)P_{n+1}^{(\mu,m)}(x)\right)P^{(\mu,m)}_{n}(x)
\end{align}$$

---
$$\tag{.}\begin{align}
I_{3} & =\int _{0}^{\infty} \mathrm{d}rr^{2m-1}(1+r^{2})^{-(\mu+m+2)}P^{(\mu,m-1)}_{n+1}\left( \frac{r^{2}-1}{r^{2}+1} \right) P^{(\mu,m+1)}_{n}\left( \frac{r^{2}-1}{r^{2}+1} \right) \\
 & =2^{-(\mu+m+2)}\int _{-1}^{1} \mathrm{d}x(1-x)^{1+\mu}(1+x)^{m-1}P_{n}^{(\mu,m-1)}(x)P_{n}^{(\mu,m+1)}(x)
\end{align}$$


