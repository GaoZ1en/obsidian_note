## seperation of variables

we represent the equation of motions as

$$\begin{align}
(1+r^{2})\partial _{r}^{2}A^{t}+\frac{1}{r^{2}}\partial _{\phi}^{2}A^{t}+\frac{1+5r^{2}}{r}\partial _{r}A^{t}+(4-\mu ^{2})A^{t}+\frac{1}{1+r^{2}}\partial _{t}\partial _{r}A^{r}+\frac{1-r^{2}}{r(1+r^{2})^{2}}\partial _{t}A^{r}+\frac{1}{1+r^{2}}\partial _{t}\partial _{\phi}A^{\phi} & =0 \\
-(1+r^{2})\partial _{t}\partial _{r}A^{t}-2r\partial _{t}A^{t}-\frac{1}{1+r^{2}}\partial _{t}^{2}A^{r}+\frac{1}{r^{2}}\partial _{\phi}^{2}A^{r}-\mu ^{2}A^{r}-(1+r^{2})\partial _{r}\partial _{\phi}A^{\phi}-\frac{2(1+r^{2})}{r}\partial _{\phi}A^{\phi} & =0 \\
-\frac{1}{r^{2}}\partial _{t}\partial _{\phi}A^{t}-\frac{1}{r^{2}}\partial _{r}\partial _{\phi}A^{r}+\frac{1}{r^{3}}\partial _{\phi}A^{r}-\frac{1}{1+r^{2}}\partial _{t}^{2}A^{\phi}+(1+r^{2})\partial _{r}^{2}A^{\phi}+\frac{3+5r^{2}}{r}\partial _{r}A^{\phi}+(4-\mu ^{2})A^{\phi} & =0
\end{align}$$

and the boundary conditions at $\displaystyle{r=0}$ are

$$\begin{align}
A^{t} & =\mathcal{O}(r^{0}) \\
A^{r} & =\mathcal{O}(r^{0}) \\
A^{\phi} & =\mathcal{O}(r^{-1})
\end{align}$$

and at $\displaystyle{r\to \infty}$ are

$$\begin{align}
A^{t} & =o(r^{-2}) \\
A^{r} & =o(r^{-1}) \\
A^{\phi} & =o(r^{-2})
\end{align}$$

consider the following ansatz

$$\begin{align}
A^{\mu}(t,r,\phi) & =e^{-i\omega t}e^{im\phi}\tilde{A}^{\mu}(r)
\end{align}$$

and substitute into the eom, we have

$$\begin{align}
(1+r^{2})\partial _{r}^{2}\tilde{A}^{t}-\frac{m^{2}}{r^{2}}\tilde{A}^{t}+\frac{1+5r^{2}}{r}\partial _{r}\tilde{A}^{t}+(4-\mu ^{2})\tilde{A}^{t}-\frac{i\omega}{1+r^{2}}\partial _{r}\tilde{A}^{r}-\frac{i\omega(1-r^{2})}{r(1+r^{2})^{2}}\tilde{A}^{r}+\frac{\omega m}{1+r^{2}}\tilde{A}^{\phi} & =0 \tag{1}\\
i\omega(1+r^{2})\partial _{r}\tilde{A}^{t}+2i\omega r\tilde{A}^{t}+\frac{\omega ^{2}}{1+r^{2}}\tilde{A}^{r}-\frac{m^{2}}{r^{2}}\tilde{A}^{r}-\mu ^{2}\tilde{A}^{r}-im(1+r^{2})\partial _{r}\tilde{A}^{\phi}-\frac{2im(1+r^{2})}{r}\tilde{A}^{\phi} & =0 \tag{2}\\
-\frac{\omega m}{r^{2}}\tilde{A}^{t}-\frac{im}{r^{2}}\partial _{r}\tilde{A}^{r}+\frac{im}{r^{3}}\tilde{A}^{r}+\frac{\omega ^{2}}{1+r^{2}}\tilde{A}^{\phi}+(1+r^{2})\partial _{r}^{2}\tilde{A}^{\phi}+\frac{3+5r^{2}}{r}\partial _{r}\tilde{A}^{\phi}+(4-\mu ^{2})\tilde{A}^{\phi} & =0 \tag{3}
\end{align}$$

compute

$$\begin{align}
\frac{\partial}{\partial r}(2)+\frac{1}{r}(2)-i\omega(1)+im(3)
\end{align}$$

we get

$$\begin{align}
\mu ^{2}\left( i\omega \tilde{A}^{t}-\partial _{r}\tilde{A}^{r}-\frac{1}{r}\tilde{A}^{r}-im\tilde{A}^{\phi} \right) & =0\tag{4}
\end{align}$$

which solves the $\displaystyle{\tilde{A}^{t}}$ as

$$\begin{align}
\tilde{A}^{t} & =-\frac{i}{\omega}\partial _{r}\tilde{A}^{r}-\frac{i}{\omega r}\tilde{A}^{r}+\frac{m}{\omega}\tilde{A}^{\phi}
\end{align}$$

insert (4) into (2) and (3), we have

$$\begin{align}
(1+r^{2})\partial _{r}^{2}\tilde{A}^{r}+\frac{1+3r^{2}}{r}\partial _{r}\tilde{A}^{r}+\left( 1-\mu ^{2}-\frac{m^{2}+1}{r^{2}}+\frac{\omega ^{2}}{1+r^{2}} \right)\tilde{A}^{r}-\frac{2im}{r}\tilde{A}^{\phi} & =0 \\
\frac{2im}{r^{3}}\tilde{A}^{r}+(1+r^{2})\partial _{r}^{2}\tilde{A}^{\phi}+\frac{3+5r^{2}}{r}\partial _{r}\tilde{A}^{\phi}+\left( 4-\mu ^{2}-\frac{m^{2}}{r^{2}}+\frac{\omega ^{2}}{1+r^{2}} \right)\tilde{A}^{\phi} & =0
\end{align}$$

introduce

$$\begin{align}
\Phi _{r} & =\frac{i}{2}\tilde{A}^{r}+\frac{1}{2}r\tilde{A}^{\phi} \\
\Phi _{l} & =\frac{i}{2}\tilde{A}^{r}-\frac{1}{2}r\tilde{A}^{\phi}
\end{align}$$

we can rewrite the equations as

$$\begin{align}
(1+r^{2})\partial _{r}^{2}\Phi _{r}+\frac{1+3r^{2}}{r}\partial _{r}\Phi _{r}+\left( 1-\mu ^{2}-\frac{(m-1)^{2}}{r^{2}}+\frac{\omega ^{2}}{1+r^{2}} \right)\Phi _{r} & =0 \\
(1+r^{2})\partial _{r}^{2}\Phi _{l}+\frac{1+3r^{2}}{r}\partial _{r}\Phi _{l}+\left( 1-\mu ^{2}-\frac{(m+ 1)^{2}}{r^{2}}+\frac{\omega ^{2}}{1+r^{2}} \right)\Phi _{l} & =0
\end{align}$$

the boundary conditions of $\displaystyle{\Phi _{r,l}}$ at $\displaystyle{r=0}$ are

$$\begin{align}
\Phi _{r} & =\mathcal{O}(r^{0}) \\
\Phi _{l} & =\mathcal{O}(r^{0})
\end{align}$$

and at $\displaystyle{r\to \infty}$ are

$$\begin{align}
\Phi _{r} & =o(r^{-1}) \\
\Phi _{l} & =o(r^{-1})
\end{align}$$

the solutions are

$$\begin{align}
\Phi _{r} & =\tilde{C}_{r,1}r^{|m-1|}(1+r^{2})^{-(\mu+1+|m-1|)/2}{}_{2}F_{1}\left( \frac{1+\mu+|m-1|-\omega}{2},\frac{1+\mu +|m-1|+\omega}{2};1+\mu; \frac{1}{1+r^{2}} \right) \\
 & \tilde{C}_{r,2}r^{|m-1|}(1+r^{2})^{-(-\mu+1+|m-1|)/2}{}_{2}F_{1}\left( \frac{1-\mu+|m-1|-\omega}{2},\frac{1-\mu +|m-1|+\omega}{2};1-\mu; \frac{1}{1+r^{2}} \right) \\
\Phi _{l} & =\tilde{C}_{l,1}r^{|m+1|}(1+r^{2})^{-(\mu+1+|m+1|)/2}{}_{2}F_{1}\left( \frac{1+\mu+|m+1|-\omega}{2},\frac{1+\mu +|m+1|+\omega}{2};1+\mu; \frac{1}{1+r^{2}} \right) \\
 & \tilde{C}_{l,2}r^{|m+1|}(1+r^{2})^{-(-\mu+1+|m+1|)/2}{}_{2}F_{1}\left( \frac{1-\mu+|m+1|-\omega}{2},\frac{1-\mu +|m+1|+\omega}{2};1-\mu; \frac{1}{1+r^{2}} \right)
\end{align}$$

to satisfy the boundary conditions at $\displaystyle{r\to \infty}$, we have

$$\begin{align}
\tilde{C}_{r,2}=0, \quad \tilde{C}_{l,2}=0
\end{align}$$

and to satisfy the boundary conditions at $\displaystyle{r=0}$, we have the quantization condition

$$\begin{align}
\omega _{r,n,m} & =2n+\mu +|m-1|+1\quad n=0,1,2,\ldots  \\
\omega _{l,n,m} & =2n+\mu +|m+1|+1\quad n=0,1,2,\ldots
\end{align}$$

we can rewrite

$$\begin{align}
\tilde{A}^{t} & =-\frac{1}{\omega}\partial _{r}\Phi _{r}+\frac{m-1}{\omega r}\Phi _{r}-\frac{1}{\omega}\partial _{r}\Phi _{l}-\frac{m+1}{\omega r}\Phi _{l} \\
\tilde{A}^{r} & =-i\Phi _{r}-i\Phi _{l} \\
\tilde{A}^{\phi} & =\frac{1}{r}\Phi _{r}-\frac{1}{r}\Phi _{l}
\end{align}$$

the solutions of $\displaystyle{(A^{t},A^{r},A^{\phi})}$ are
1. first family

$$\begin{align}
\omega _{r,n,m} & =\mu+1+|m-1|+2n, \qquad n\in \mathbb{Z}, m\in \mathbb{Z} \\
\tilde{A}^{t} & =C_{r,n,m} \frac{1}{\mu+1+|m-1|+2n}\left[((\mu+m)r^{2}+((m-1)-|m-1|))r^{|m-1|-1}(1+r^{2})^{-(\mu+3+|m-1|)/2}P_{n}^{(\mu,|m-1|)}\left(\frac{r^{2}-1}{r^{2}+1}\right)\right. \\
 & \left.-4r^{|m-1|+1}(1+r^{2})^{-(\mu+5+|m-1|)/2}P_{n}^{(\mu,|m-1|)'}\left(\frac{r^{2}-1}{r^{2}+1}\right)\right] \\
\tilde{A}^{r} & =-iC_{r,n,m}r^{|m-1|}(1+r^{2})^{-(\mu+1+|m-1|)/2}P_{n}^{(\mu,|m-1|)}\left(\frac{r^{2}-1}{r^{2}+1}\right) \\
\tilde{A}^{\phi} & =C_{r,n,m}r^{|m-1|-1}(1+r^{2})^{-(\mu+1+|m-1|)/2}P_{n}^{(\mu,|m-1|)}\left(\frac{r^{2}-1}{r^{2}+1}\right)
\end{align}$$

1. second family

$$\begin{align}
\omega _{l,n,m} & =\mu+1+|m+1|+2n, \qquad n\in \mathbb{Z}, m\in \mathbb{Z} \\
\tilde{A}^{t} & =C_{l,n,m} \frac{1}{\mu+1+|m+1|+2n}\left[((\mu-m)r^{2}-((m+1)+|m+1|))r^{|m+1|-1}(1+r^{2})^{-(\mu+3+|m+1|)/2}P_{n}^{(\mu,|m+1|)}\left(\frac{r^{2}-1}{r^{2}+1}\right)\right. \\
 & \left.-4r^{|m+1|+1}(1+r^{2})^{-(\mu+5+|m+1|)/2}P_{n}^{(\mu,|m+1|)'}\left(\frac{r^{2}-1}{r^{2}+1}\right)\right] \\
\tilde{A}^{r} & =-iC_{l,n,m}r^{|m+1|}(1+r^{2})^{-(\mu+1+|m+1|)/2}P_{n}^{(\mu,|m+1|)}\left(\frac{r^{2}-1}{r^{2}+1}\right) \\
\tilde{A}^{\phi} & =-C_{l,n,m}r^{|m+1|-1}(1+r^{2})^{-(\mu+1+|m+1|)/2}P_{n}^{(\mu,|m+1|)}\left(\frac{r^{2}-1}{r^{2}+1}\right)
\end{align}$$

to normalize the solutions, we consider the symplectic form

$$
\tag{.}
\begin{align}
\Omega[\delta _{1}A,\delta _{2}A] & =\int \mathrm{d}r\mathrm{d}\phi\left( r\partial _{r}\delta_{1}A^{t}+\frac{2r^{2}}{1+r^{2}}\delta _{1}A^{t}+ \frac{r}{(1+r^{2})^{2}}\partial _{t}\delta _{1}A^{r} \right)\delta _{2}A^{r} \\
 & -\int \mathrm{d}r\mathrm{d}\phi\left( r\partial _{r}\delta_{2}A^{t}+\frac{2r^{2}}{1+r^{2}}\delta _{2}A^{t}+ \frac{r}{(1+r^{2})^{2}}\partial _{t}\delta _{2}A^{r} \right)\delta _{1}A^{r} \\
 & +\int \mathrm{d}r\mathrm{d}\phi\left( r\partial _{\phi}\delta_{1} A^{t}+\frac{r^{3}}{1+r^{2}}\partial _{t}\delta_{1} A^{\phi} \right)\delta_{2} A^{\phi} \\
 & -\int \mathrm{d}r\mathrm{d}\phi\left( r\partial _{\phi}\delta_{2} A^{t}+\frac{r^{3}}{1+r^{2}}\partial _{t}\delta_{2} A^{\phi} \right)\delta_{1} A^{\phi}
\end{align}
$$

and insert one of the solutions into the $\displaystyle{\delta _{1}A}$ and its complex conjugate into the $\displaystyle{\delta _{2}A}$, then we can fix the normalization constant $\displaystyle{C_{r}}$ or $\displaystyle{C_{l}}$ such that

$$\begin{align}
\Omega[A,A^{*}] & =-i
\end{align}$$

then we write

$$\begin{align}
{h^{(+)}_{+,m\geqslant 1,n}}^{\mu} & =C_{r,n,m\geqslant 1}e^{-i\omega _{r,n,m\geqslant 1}t}e^{im\phi}\tilde{A}^{\mu}_{r,n,m\geqslant 1} \\
C_{r,n,m\geqslant 1} & =\sqrt{ \frac{(\mu+m+2n)^{2}}{2\pi(\mu ^{2}+(\mu+m+2n)^{2}-m^{2})} \frac{\Gamma(\mu+m+n)\Gamma(1+n)}{\Gamma(\mu+1+n)\Gamma(m+n)} } \\
{h^{(+)}_{+,m=0,n}}^{\mu} & =C_{r,n,m=0}e^{-i\omega _{r,n,m=0}t}\tilde{A}^{\mu}_{r,n,m=0} \\
C_{r,n,m=0} & =\sqrt{ \frac{(\mu+2+2n)^{2}}{2\pi(\mu ^{2}+(\mu+2+2n)^{2})} \frac{\mu+1+n}{1+n} } \\
{h^{(+)}_{+,m\leqslant -1,n}}^{\mu} & =C_{r,n,m\leqslant -1}e^{-i\omega _{r,n,m\leqslant -1}t}e^{im\phi}\tilde{A}^{\mu}_{r,n,m\leqslant -1} \\
C_{r,n,m\leqslant -1} & =\sqrt{ \frac{(\mu+2-m+2n)^{2}}{2\pi(\mu ^{2}+(\mu+2-m+2n)^{2}-m^{2})} \frac{\Gamma(\mu+1+n)\Gamma(2-m+n)}{\Gamma(\mu+2-m+n)\Gamma(1+n)} } \\
{h^{(+)}_{-,m\geqslant 1,n}}^{\mu} & =C_{l,n,m\geqslant 1}e^{-i\omega _{l,n,m\geqslant 1}t}e^{im\phi}\tilde{A}^{\mu}_{l,n,m\geqslant 1} \\
C_{l,n,m\geqslant 1} & =\sqrt{ \frac{(\mu+2+m+2n)^{2}}{2\pi(\mu ^{2}+(\mu+2+m+2n)^{2}-m^{2})} \frac{\Gamma(\mu+2+m+n)\Gamma(1+n)}{\Gamma(\mu+1+n)\Gamma(2+m+n)} } \\
{h^{(+)}_{-,m=0,n}}^{\mu} & =C_{l,n,m=0}e^{-i\omega _{l,n,m=0}t}\tilde{A}^{\mu}_{l,n,m=0} \\
C_{l,n,m=0} & =\sqrt{ \frac{(\mu+2+2n)^{2}}{2\pi(\mu ^{2}+(\mu+2+2n)^{2})} \frac{\mu+1+n}{1+n} } \\
{h^{(+)}_{-,m\leqslant -1,n}}^{\mu} & =C_{l,n,m\leqslant -1}e^{-i\omega _{l,n,m\leqslant -1}t}e^{im\phi}\tilde{A}^{\mu}_{l,n,m\leqslant -1} \\
C_{l,n,m\leqslant -1} & =\sqrt{ \frac{(\mu-m+2n)^{2}}{2\pi(\mu ^{2}+(\mu-m+2n)^{2}-m^{2})} \frac{\Gamma(\mu-m+n)\Gamma(1+n)}{\Gamma(\mu+1+n)\Gamma(-m+n)} }
\end{align}$$

insert these solutions or their complex conjugates into the symplectic form, we have the following table:

| $\displaystyle{\delta _{1}A}$\ $\displaystyle{\delta _{2}A}$ | $\displaystyle{h^{(-)}_{+,m'=0,n'}}$                                            | $\displaystyle{h^{(-)}_{-,m'=0,n}}$                                             | $\displaystyle{h^{(-)}_{+,m'\geqslant 1,n'}}$                                                                                                       | $\displaystyle{h^{(-)}_{-,m'\geqslant 1,n'}}$                                                                                                | $\displaystyle{h^{(-)}_{+,m'\leqslant -1,n'}}$                                                                                            | $\displaystyle{h^{(-)}_{-,m'\leqslant -1,n'}}$                                                                                                   |
| ------------------------------------------------------------ | ------------------------------------------------------------------------------- | ------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| $\displaystyle{h^{(+)}_{+,m=0,n}}$                           | $\displaystyle{-i\delta _{n,n'}}$                                               | $\displaystyle{\frac{4i(\mu+1+n)(1+n)}{\mu ^{2}+(\mu+2+2n)^{2}}\delta _{n,n'}}$ | $\displaystyle{0}$                                                                                                                                  | $\displaystyle{0}$                                                                                                                           | $\displaystyle{0}$                                                                                                                        | $\displaystyle{0}$                                                                                                                               |
| $\displaystyle{h^{(+)}_{-,m=0,n}}$                           | $\displaystyle{\frac{4i(\mu+1+n)(1+n)}{\mu ^{2}+(\mu+2+2n)^{2}}\delta _{n,n'}}$ | $\displaystyle{-i\delta _{n,n'}}$                                               | $\displaystyle{0}$                                                                                                                                  | $\displaystyle{0}$                                                                                                                           | $\displaystyle{0}$                                                                                                                        | $\displaystyle{0}$                                                                                                                               |
| $\displaystyle{h^{(+)}_{+,m\geqslant 1,n}}$                  | $\displaystyle{0}$                                                              | $\displaystyle{0}$                                                              | $\displaystyle{-i\delta _{n,n'}\delta _{m,m'}}$                                                                                                     | $\displaystyle{\frac{4i(\mu+n)(m+n)}{\mu ^{2}+(\mu+m+2n)^{2}-m^{2}} \sqrt{ \frac{n(\mu+m+n)}{(m+n)(\mu+n)} }\delta _{n,n'+1}\delta _{m,m'}}$ | $\displaystyle{0}$                                                                                                                        | $\displaystyle{0}$                                                                                                                               |
| $\displaystyle{h^{(+)}_{-,m\geqslant 1,n}}$                  | $\displaystyle{0}$                                                              | $\displaystyle{0}$                                                              | $\displaystyle{\frac{4i(\mu+n')(m+n')}{\mu ^{2}+(\mu+m+2n')^{2}-m^{2}} \sqrt{ \frac{n'(\mu+m+n')}{(m+n')(\mu+n')} }\delta _{n+1,n'}\delta _{m,m'}}$ | $\displaystyle{-i\delta _{n,n'}\delta _{m,m'}}$                                                                                              | $\displaystyle{0}$                                                                                                                        | $\displaystyle{0}$                                                                                                                               |
| $\displaystyle{h^{(+)}_{+,m\leqslant -1,n}}$                 | $\displaystyle{0}$                                                              | $\displaystyle{0}$                                                              | $\displaystyle{0}$                                                                                                                                  | $\displaystyle{0}$                                                                                                                           | $\displaystyle{-i\delta _{n,n'}\delta _{m,m'}}$                                                                                           | $\displaystyle{\frac{4i(\mu+n')(-m+n')}{\mu ^{2}+(\mu-m+2n')-m^{2}}\sqrt{ \frac{n'(\mu-m+n')}{(-m+n')(\mu+n')} }\delta _{n,n'-1}\delta _{m,m'}}$ |
| $\displaystyle{h^{(+)}_{-,m\leqslant -1,n}}$                 | $\displaystyle{0}$                                                              | $\displaystyle{0}$                                                              | $\displaystyle{0}$                                                                                                                                  | $\displaystyle{0}$                                                                                                                           | $\displaystyle{\frac{4i(\mu+n)(-m+n)}{\mu ^{2}+(\mu-m+2n)-m^{2}}\sqrt{ \frac{n(\mu-m+n)}{(-m+n)(\mu+n)} }\delta _{n-1,n'}\delta _{m,m'}}$ | $\displaystyle{-i\delta _{n,n'}\delta _{m,m'}}$                                                                                                  |
