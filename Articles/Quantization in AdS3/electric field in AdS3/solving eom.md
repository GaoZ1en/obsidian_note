the eom of $\displaystyle{\mathrm{U}(1)}$ gauge theory is

$$\begin{align}
(1+r^{2})\partial _{r}^{2}A^{t}+\frac{1}{r^{2}}\partial _{\phi}^{2}A^{t}+\frac{1+5r^{2}}{r}\partial _{r}A^{t}+4A^{t}+\frac{1}{1+r^{2}}\partial _{t}\partial _{r}A^{r}+\frac{1-r^{2}}{r(1+r^{2})^{2}}\partial _{t}A^{r}+\frac{1}{1+r^{2}}\partial _{t}\partial _{\phi}A^{\phi} & =0 \\
-(1+r^{2})\partial _{t}\partial _{r}A^{t}-2r\partial _{t}A^{t}-\frac{1}{1+r^{2}}\partial _{t}^{2}A^{r}+\frac{1}{r^{2}}\partial _{\phi}^{2}A^{r}-(1+r^{2})\partial _{r}\partial _{\phi}A^{\phi}-\frac{2(1+r^{2})}{r}\partial _{\phi}A^{\phi} & =0 \\
-\frac{1}{r^{2}}\partial _{t}\partial _{\phi}A^{t}-\frac{1}{r^{2}}\partial _{r}\partial _{\phi}A^{r}+\frac{1}{r^{3}}\partial _{\phi}A^{r}-\frac{1}{1+r^{2}}\partial _{t}^{2}A^{\phi}+(1+r^{2})\partial _{r}^{2}A^{\phi}+\frac{3+5r^{2}}{r}\partial _{r}A^{\phi}+4A^{\phi} & =0
\end{align}$$

and we impose the gauge condition

$$\begin{align}
\nabla _{\mu}A^{\mu} & =0 \\
\implies\partial _{t}A^{t}+\partial _{r}A^{r}+\frac{1}{r}A^{r}+\partial _{\phi}A^{\phi} & =0
\end{align}$$

take the following ansatz

$$\begin{align}
A^{\mu}(x) & =e^{-i\omega t+im\phi}f^{\mu}(r)
\end{align}$$

and insert the gauge condition to the second and third equations, we have

$$\begin{align}
(1+r^{2})\partial _{r}^{2}f^{r}+\frac{1+3r^{2}}{r}\partial _{r}f^{r}+\left( 1+\frac{\omega ^{2}}{1+r^{2}}-\frac{1+m^{2}}{r^{2}} \right)f^{r} & =\frac{2im}{r}f^{\phi} \\
(1+r^{2})\partial _{r}^{2}f^{\phi}+\frac{3+5r^{2}}{r}\partial _{r}f^{r}+\left(4+\frac{\omega ^{2}}{1+r^{2}}-\frac{m^{2}}{r^{2}}\right)f^{\phi} & =-\frac{2im}{r^{3}}A^{r}
\end{align}$$

introduce

$$\begin{align}
\Phi _{\pm} & =\frac{i}{2}f^{r}\pm \frac{1}{2}rf^{\phi}
\end{align}$$

we have

$$\begin{align}
(1+r^{2})\partial _{r}^{2}\Phi_{\pm}+\frac{1+3r^{2}}{r}\partial _{r}\Phi _{\pm}+\left(1+\frac{\omega ^{2}}{1+r^{2}}-\frac{m_{\pm}^{2}}{r^{2}}\right)\Phi _{\pm}=0
\end{align}$$

here $\displaystyle{m_{\pm}^{2}=(m\mp 1)^{2}}$

the asymptotic boundary conditions of $\displaystyle{\Phi _{\pm}}$ are

$$\begin{align}
\Phi _{\pm} & =\mathcal{O}(r^{-1}) & \text{ as } & r\to \infty \\
\Phi _{\pm} & =\mathcal{O}(r^{0}) & \text{ as } & r\to 0
\end{align}$$

change variable to $\displaystyle{\tan \rho=r}$ and then to $\displaystyle{z=\cos ^{2}\rho}$, we have

$$\begin{align}
4z(1-z)\partial _{z}^{2}\Phi _{\pm}-4z\partial _{z}\Phi _{\pm}+\left(\frac{1}{z}+\omega ^{2}-\frac{m_{\pm}^{2}}{1-z}\right)\Phi _{\pm}=0
\end{align}$$

the solution with the correct asymptotic behavior is

$$\begin{align}
\Phi _{\pm} & =r^{|m_{\pm}|}(1+r^{2})^{(-|m_{\pm}|-1)/2}{}_{2}F_{1}\left( \frac{1}{2}(|m_{\pm}|-\omega+1), \frac{1}{2}(|m_{\pm}|+\omega+1);1; \frac{1}{1+r^{2}} \right)
\end{align}$$

hypergeometric function should terminate to avoid divergence at $\displaystyle{r=0}$, which requires it truncates to a polynomial, thus

$$\begin{align}
\frac{1}{2}(|m_{\pm}|-\omega+1) & =-n,\quad n\in \mathbb{N} \\
\implies \omega _{n,m} & =1+|m_{\pm}|+2n
\end{align}$$

which agrees with the spectrum obtained in the Proca field case by setting $\displaystyle{\mu\to 0}$. the normalized solutions are

$$\begin{align}
h_{+,m\geqslant 1,n}^{t} & =e^{-i(m+2n)t}e^{im\phi} \sqrt{ \frac{1}{8\pi n(n+m)} }\left[mr^{m}(1+r^{2})^{-(m+2)/2}P_{n}^{(n,m-1)}\left(\frac{r^{2}-1}{r^{2}+1}\right)-4r^{m-1}(1+r^{2})^{-(m+4)/2}P_{n}^{(0,m-1)'}\left(\frac{r^{2}-1}{r^{2}+1}\right)\right] \\
h_{+,m\geqslant 1,n}^{r} & =-ie^{-i(m+2n)t}e^{im\phi} \sqrt{ \frac{(2n+m)^{2}}{8\pi n(n+m)} }r^{m-1}(1+r^{2})^{-m/2}P_{n}^{(0,m-1)}\left(\frac{r^{2}-1}{r^{2}+1}\right) \\
h_{+,m\geqslant 1,n}^{\phi} & =e^{-i(m+2n)t}e^{im\phi} \sqrt{ \frac{(2n+m)^{2}}{8\pi n(n+m)} }r^{m-2}(1+r^{2})^{-m/2}P_{n}^{(0,m-1)}\left(\frac{r^{2}-1}{r^{2}+1}\right)
\end{align}$$

with conformal weights $\displaystyle{(h,\bar{h})=(n+m,n)}$

$$\begin{align}
h^{t}_{+,m=0,n} & =e^{-i(2+2n)t}\sqrt{ \frac{1}{8\pi(n+1)^{2}} }\left[(r^{2}-2)(1+r^{2})^{-2}P_{n}^{(0,1)}\left( \frac{r^{2}-1}{r^{2}+1} \right)-4r^{2}(1+r^{2})^{-3}P_{n}^{(0,1)'}\left(\frac{r^{2}-1}{r^{2}+1}\right)\right] \\
h^{r}_{+,m=0,n} & =-ie^{-i(2+2n)t}\sqrt{ \frac{1}{2\pi} }r(1+r^{2})^{-1}P_{n}^{(0,1)}\left(\frac{r^{2}-1}{r^{2}+1}\right) \\
h^{\phi}_{+,m=0,n} & =e^{-i(2+2n)t}\sqrt{ \frac{1}{2\pi} }(1+r^{2})^{-1}P_{n}^{(0,1)}\left(\frac{r^{2}-1}{r^{2}+1}\right)
\end{align}$$

with conformal weights $\displaystyle{(h,\bar{h})=(n+1,n+1)}$

$$\begin{align}
h^{t}_{+,m\leqslant -1,n} & =e^{-i(2-m+2n)t}e^{im\phi}\sqrt{ \frac{1}{8\pi(1+n)(1+n-m)} }\left[(mr^{2}+2(m-1))r^{-m}(1+r^{2})^{-(m+4)/2}P_{n}^{(0,-m+1)}\left(\frac{r^{2}-1}{r^{2}+1}\right)-4r^{-m+2}(1+r^{2})^{-(-m+6)/2}P_{n}^{(0,-m+1)'}\left(\frac{r^{2}-1}{r^{2}+1}\right)\right] \\
h^{r}_{+,m\leqslant -1,n} & =-ie^{-i(2-m+2n)t}e^{im\phi}\sqrt{ \frac{(2+2n-m)^{2}}{8\pi(1+n)(1+n-m)} }r^{-m+1}(1+r^{2})^{-(-m+2)/2}P_{n}^{(0,-m+1)}\left(\frac{r^{2}-1}{r^{2}+1}\right) \\
h^{\phi}_{+,m\leqslant -1,n} & =e^{-i(2-m+2n)t}e^{im\phi}\sqrt{ \frac{(2+2n-m)^{2}}{8\pi(1+n)(1+n-m)} }r^{-m}(1+r^{2})^{-(-m+2)/2}P_{n}^{(0,-m+1)}\left(\frac{r^{2}-1}{r^{2}+1}\right)
\end{align}$$

with conformal weights $\displaystyle{(h,\bar{h})=(n+1,n+1-m)}$

$$\begin{align}
h^{t}_{-,m\geqslant 1,n} & =e^{-i(2+m+2n)t}e^{im\phi}\sqrt{ \frac{1}{8\pi(1+n)(1+n+m)} }\left[(-mr^{2}-2(m+1))r^{m}(1+r^{2})^{-(m+4)/2}P_{n}^{(0,m+1)}\left(\frac{r^{2}-1}{r^{2}+1}\right)-4r^{m+2}(1+r^{2})^{-(m+6)/2}P_{n}^{(0,m+1)'}\left(\frac{r^{2}-1}{r^{2}+1}\right)\right] \\
h^{r}_{-,m\geqslant 1,n} & =-ie^{-i(2+m+2n)t}e^{im\phi}\sqrt{ \frac{(2+m+2n)^{2}}{8\pi(1+n)(1+n+m)} }r^{m+1}(1+r^{2})^{-(m+2)/2}P_{n}^{(0,m+1)}\left(\frac{r^{2}-1}{r^{2}+1}\right) \\
h^{\phi}_{-,m\geqslant 1,n} & =-e^{-i(2+m+2n)t}e^{im\phi}\sqrt{ \frac{(2+m+2n)^{2}}{8\pi(1+n)(1+n+m)} }r^{m}(1+r^{2})^{-(m+2)/2}P_{n}^{(0,m+1)}\left(\frac{r^{2}-1}{r^{2}+1}\right)
\end{align}$$

with conformal weights $\displaystyle{(h,\bar{h})=(n+m+1,n+1)}$

$$\begin{align}
h^{t}_{-,m=0,n} & =e^{-i(2+2n)t}\sqrt{ \frac{1}{8\pi(1+n)^{2}} }\left[ (r^{2}-2)(1+r^{2})^{-2}P_{n}^{(0,1)}\left( \frac{r^{2}-1}{r^{2}+1} \right)-4r^{2}(1+r^{2})^{-3}P_{n}^{(0,1)'}\left( \frac{r^{2}-1}{r^{2}+1} \right) \right] \\
h^{r}_{-,m=0,n} & =-ie^{-i(2+2n)t}\sqrt{ \frac{1}{2\pi} }r(1+r^{2})^{-1}P_{n}^{(0,1)}\left(\frac{r^{2}-1}{r^{2}+1}\right) \\
h^{\phi}_{-,m=0,n} & =-e^{-i(2+2n)t}\sqrt{ \frac{1}{2\pi} }(1+r^{2})^{-1}P_{n}^{(0,1)}\left(\frac{r^{2}-1}{r^{2}+1}\right)
\end{align}$$

with conformal weights $\displaystyle{(h,\bar{h})=(n+1,n+1)}$

$$\begin{align}
h^{t}_{-,m\leqslant -1,n} & =e^{-i(-m+2n)t}e^{im\phi} \sqrt{ \frac{1}{8\pi n(n-m)} }\left[-mr^{-m}(1+r^{2})^{-(-m+2)/2}P_{n}^{(-,-m-1)}\left(\frac{r^{2}-1}{r^{2}+1}\right)-4r^{-m}(1+r^{2})^{-(-m+4)/2}P_{n}^{(0,-m-1)'}\left(\frac{r^{2}-1}{r^{2}+1}\right)\right] \\
h^{r}_{-,m\leqslant -1,n} & =-ie^{-i(-m+2n)t}e^{im\phi} \sqrt{ \frac{(2n-m)^{2}}{8\pi n(n-m)} }r^{-m-1}(1+r^{2})^{m/2}P_{n}^{(0,-m-1)}\left(\frac{r^{2}-1}{r^{2}+1}\right) \\
h^{\phi}_{-,m\leqslant -1,n} & =-e^{-i(-m+2n)t}e^{im\phi}\sqrt{ \frac{(2n-m)^{2}}{8\pi n(n-m)} }r^{-m-2}(1+r^{2})^{m/2}P_{n}^{(0,m-1)}\left(\frac{r^{2}-1}{r^{2}+1}\right)
\end{align}$$

with conformal weights $\displaystyle{(h,\bar{h})=(n,n-m)}$

# gauge redundancy

actually there are still residual guage redundancy left in the solutions above. solutions with conformal weight $\displaystyle{(h,\bar{h})=(k,\bar{k}),k,\bar{k}=\mathbb{Z}^{+}}$ in both sectors correspond to the same physical state. the conformal weight is defined as

$$\begin{align}
\mathcal{L}_{\xi _{0}}A^{\mu} & =-ihA^{\mu} \\
\mathcal{L}_{\bar{\xi}_{0}}A^{\mu} & =-i \bar{h}A^{\mu}
\end{align}$$

and the Killing vectors $\displaystyle{\xi}$'s are

$$\begin{align}
\xi _{0} & =\frac{1}{2}\left( \partial _{t}- \partial _{\phi} \right) \\
\bar{\xi}_{0} & =\frac{1}{2}\left(\partial _{t}+\partial _{\phi}\right)
\end{align}$$

then we have to show

1. $\displaystyle{h^{\mu}_{+,m=0,n}}$ and $\displaystyle{h^{\mu}_{-,m=0,n}}$ differ by a gauge transformation, $\displaystyle{n\in \mathbb{N}}$.
2. $\displaystyle{h^{\mu}_{+,m\geqslant 1,n+1}}$ and $\displaystyle{h^{\mu}_{-,m\geqslant1,n}}$ differ by a gauge transformation, $\displaystyle{n\in \mathbb{N}}$.
3. $\displaystyle{h^{\mu}_{+,m\leqslant -1,n}}$ and $\displaystyle{h^{\mu}_{-,m\leqslant -1,n+1}}$ differ by a gauge transformation, $\displaystyle{n\in \mathbb{N}}$.

## $\displaystyle{h_{+,m=0,n}^{\mu},h^{\mu}_{-,m=0,n}}$

we first write down these two solutions explicitly

$$\begin{align}
h^{t}_{+,m=0,n} & =e^{-i(2+2n)t}\sqrt{ \frac{1}{8\pi(n+1)^{2}} }\left[(r^{2}-2)(1+r^{2})^{-2}P_{n}^{(0,1)}\left( \frac{r^{2}-1}{r^{2}+1} \right)-4r^{2}(1+r^{2})^{-3}P_{n}^{(0,1)'}\left(\frac{r^{2}-1}{r^{2}+1}\right)\right] \\
h^{r}_{+,m=0,n} & =-ie^{-i(2+2n)t}\sqrt{ \frac{1}{2\pi} }r(1+r^{2})^{-1}P_{n}^{(0,1)}\left(\frac{r^{2}-1}{r^{2}+1}\right) \\
h^{\phi}_{+,m=0,n} & =e^{-i(2+2n)t}\sqrt{ \frac{1}{2\pi} }(1+r^{2})^{-1}P_{n}^{(0,1)}\left(\frac{r^{2}-1}{r^{2}+1}\right)
\end{align}$$

and

$$\begin{align}
h^{t}_{-,m=0,n} & =e^{-i(2+2n)t}\sqrt{ \frac{1}{8\pi(1+n)^{2}} }\left[ (r^{2}-2)(1+r^{2})^{-2}P_{n}^{(0,1)}\left( \frac{r^{2}-1}{r^{2}+1} \right)-4r^{2}(1+r^{2})^{-3}P_{n}^{(0,1)'}\left( \frac{r^{2}-1}{r^{2}+1} \right) \right] \\
h^{r}_{-,m=0,n} & =-ie^{-i(2+2n)t}\sqrt{ \frac{1}{2\pi} }r(1+r^{2})^{-1}P_{n}^{(0,1)}\left(\frac{r^{2}-1}{r^{2}+1}\right) \\
h^{\phi}_{-,m=0,n} & =-e^{-i(2+2n)t}\sqrt{ \frac{1}{2\pi} }(1+r^{2})^{-1}P_{n}^{(0,1)}\left(\frac{r^{2}-1}{r^{2}+1}\right)
\end{align}$$

consider the symplectic matrix $\displaystyle{i\Omega[h_{1},h_{2}^{*}]}$ between these two modes, we have

$$\begin{align}
i\Omega[h_{m=0,n},h_{m=0,n}] & =\begin{pmatrix}
1 & -1 \\
-1 & 1
\end{pmatrix}
\end{align}$$

the eigenvalues of this matrix are $\displaystyle{0,2}$, thus there is one null direction, which means these two modes differ by a gauge transformation.

## $\displaystyle{h^{\mu}_{+,m\geqslant 1,n+1}}$ and $\displaystyle{h^{\mu}_{-,m\geqslant1,n}}$

similarly, consider the symplectic matrix between these two modes

$$\begin{align}
i\Omega[h_{m\geqslant 1,n_{1}},h_{m\geqslant 1,n_{2}}] & =\begin{pmatrix}
1 & -1 \\
-1 & 1
\end{pmatrix}
\end{align}$$

the eigenvalues of this matrix are $\displaystyle{0,2}$, thus there is one null direction, which means these two modes differ by a gauge transformation.

## $\displaystyle{h^{\mu}_{+,m\leqslant -1,n}}$ and $\displaystyle{h^{\mu}_{-,m\leqslant -1,n+1}}$

similarly, for $\displaystyle{h^{\mu}_{+,m\leqslant -1,n}}$ and $\displaystyle{h^{\mu}_{-,m\leqslant -1,n+1}}$, consider the symplectic matrix between these two modes

$$\begin{align}
i\Omega[h_{m\leqslant -1,n_{1}},h_{m\leqslant -1,n_{2}}] & =\begin{pmatrix}
1 & -1 \\
-1 & 1
\end{pmatrix}
\end{align}$$

the eigenvalues of this matrix are $\displaystyle{0,2}$, thus there is one null direction, which means these two modes differ by a gauge transformation.

# edge mode

besides the normalizable modes solved above, the following modes are not discussed

$$\begin{align}
h_{+,m\geqslant 1,n=0}^{t} & =e^{-im(t-\phi)}r^{m}(1+r^{2})^{-(m+2)/2} \\
h_{+,m\geqslant 1,n=0}^{r} & =-ie^{-im(t-\phi)}r^{m-1}(1+r^{2})^{-m/2} \\
h_{+,m\geqslant 1,n=0}^{\phi} & =e^{-im(t-\phi)}r^{m-2}(1+r^{2})^{-m/2}
\end{align}$$

with conformal weights $\displaystyle{(h,\bar{h})=(m,0)}$, and

$$\begin{align}
h^{t}_{-,m\leqslant -1,n=0} & =e^{im(t+\phi)}r^{-m}(1+r^{2})^{-(-m+2)/2} \\
h^{r}_{-,m\leqslant -1,n=0} & =-ie^{im(t+\phi)}r^{-m-1}(1+r^{2})^{m/2} \\
h^{\phi}_{-,m\leqslant -1,n=0} & =-e^{im(t+\phi)}r^{-m-2}(1+r^{2})^{m/2}
\end{align}$$

with conformal weights $\displaystyle{(h,\bar{h})=(0,-m)}$. these modes are not normalizable under the usual inner product (since the $\displaystyle{0}$ factor in the denominator, so we drop them in the following analysis).

the field strength of these modes vanishes identically, thus they are pure gauge configurations.

# zero energy modes

for modes with $\displaystyle{\omega =0}$, we start from the eom and the gauge condition with all time derivatives dropped

$$\begin{align}
(1+r^{2})\partial _{r}^{2}A^{t}+\frac{1}{r^{2}}\partial _{\phi}^{2}A^{t}+\frac{1+5r^{2}}{r}\partial _{r}A^{t}+4A^{t} & =0 \\
\frac{1}{r^{2}}\partial _{\phi}^{2}A^{r}-(1+r^{2})\partial _{r}\partial _{\phi}A^{\phi}-\frac{2(1+r^{2})}{r}\partial _{\phi}A^{\phi} & =0 \\
-\frac{1}{r^{2}}\partial _{r}\partial _{\phi}A^{r}+\frac{1}{r^{3}}\partial _{\phi}A^{r}+(1+r^{2})\partial _{r}^{2}A^{\phi}+\frac{3+5r^{2}}{r}\partial _{r}A^{\phi}+4A^{\phi} & =0 \\
\partial _{r}A^{r}+\frac{1}{r}A^{r}+\partial _{\phi}A^{\phi} & =0
\end{align}$$

insert the gauge condition to the second and the third equations, we have

$$\begin{align}
(1+r^{2})\partial _{r}^{2}A^{t}+\frac{1+5r^{2}}{r}\partial _{r}A^{t}+4A^{t}+\frac{1}{r^{2}}\partial _{\phi}^{2}A^{t} & =0 \\
(1+r^{2})\partial _{r}^{2}A^{r}+\frac{1+3r^{2}}{r}\partial _{r}A^{r}+A^{r}-\frac{1}{r^{2}}A^{r}+\frac{1}{r^{2}}\partial _{\phi}^{2}A^{r} & =\frac{2}{r}\partial _{\phi}A^{\phi} \\
(1+r^{2})\partial _{r}^{2}A^{\phi}+\frac{3+5r^{2}}{r}\partial _{r}A^{\phi}+4A^{\phi}+\frac{1}{r^{2}}\partial _{\phi}^{2}A^{\phi} & =-\frac{2}{r^{3}}\partial _{\phi}A^{r}
\end{align}$$

here $\displaystyle{A^{t}}$ decouples from other components, and the equation for $\displaystyle{A^{r}}$ and $\displaystyle{A^{\phi}}$ are the same as before with $\displaystyle{\omega =0}$. we can still introduce

$$\begin{align}
\Phi _{\pm} & =\frac{i}{2}A^{r}\pm \frac{1}{2}rA^{\phi}
\end{align}$$

and obtain

$$\begin{align}
(1+r^{2})\partial _{r}^{2}\Phi _{\pm}+\frac{1+3r^{2}}{r}\partial _{r}\Phi _{\pm}+\left(1-\frac{m_{\pm}^{2}}{r^{2}}\right)\Phi _{\pm} & =0 \\
\implies 4z(1-z)\partial _{z}^{2}f^{t}-4\partial _{z}f^{t}+\left( \frac{4}{z}-\frac{m^{2}}{1-z} \right)f^{t} & =0\\
4z(1-z)\partial _{z}^{2}\Phi _{\pm}-4z\partial _{z}\Phi _{\pm}+\left(\frac{1}{z}-\frac{m_{\pm}^{2}}{1-z}\right)\Phi _{\pm} & =0
\end{align}$$

the solutions of these equations are not regular at $\displaystyle{r=0}$, so there is no zero energy modes.

# alternative boundary condition

$$\begin{align}
(1+r^{2})\partial _{r}^{2}\Phi_{\pm}+\frac{1+3r^{2}}{r}\partial _{r}\Phi _{\pm}+\left(1+\frac{\omega ^{2}}{1+r^{2}}-\frac{m_{\pm}^{2}}{r^{2}}\right)\Phi _{\pm} & =0 \\
4z(1-z)\partial _{z}^{2}\Phi _{\pm}-4z\partial _{z}\Phi _{\pm}+\left(\frac{1}{z}+\omega ^{2}-\frac{m_{\pm}^{2}}{1-z}\right)\Phi _{\pm} & =0
\end{align}$$

we can also impose a looser boundary condition for $\displaystyle{\Phi _{\pm}}$ at $\displaystyle{r\to \infty}$ as

$$\begin{align}
\Phi _{\pm} & =\mathcal{O}(r^{-1}\log r)
\end{align}$$

apart from the previous solutions, we have new solutions

