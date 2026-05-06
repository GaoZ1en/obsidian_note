the eom is given by

$$\begin{align}
(1+r^{2})\partial _{r}^{2}A^{t}+\frac{1}{r^{2}}\partial _{\phi}^{2}A^{t}+\frac{1+5r^{2}}{r}\partial _{r}A^{t}+4A^{t}+\frac{1}{1+r^{2}}\partial _{t}\partial _{r}A^{r}+\frac{1-r^{2}}{r(1+r^{2})^{2}}\partial _{t}A^{r}+\frac{1}{1+r^{2}}\partial _{t}\partial _{\phi}A^{\phi} & =0 \\
-(1+r^{2})\partial _{t}\partial _{r}A^{t}-2r\partial _{t}A^{t}-\frac{1}{1+r^{2}}\partial _{t}^{2}A^{r}+\frac{1}{r^{2}}\partial _{\phi}^{2}A^{r}-(1+r^{2})\partial _{r}\partial _{\phi}A^{\phi}-\frac{2(1+r^{2})}{r}\partial _{\phi}A^{\phi} & =0 \\
-\frac{1}{r^{2}}\partial _{t}\partial _{\phi}A^{t}-\frac{1}{r^{2}}\partial _{r}\partial _{\phi}A^{r}+\frac{1}{r^{3}}\partial _{\phi}A^{r}-\frac{1}{1+r^{2}}\partial _{t}^{2}A^{\phi}+(1+r^{2})\partial _{r}^{2}A^{\phi}+\frac{3+5r^{2}}{r}\partial _{r}A^{\phi}+4A^{\phi} & =0
\end{align}$$

the asymptotic boundary behavior should be

$$\begin{align}
A^{t} & =\mathcal{O}(r^{-2}) \\
A^{r} & =\mathcal{O}(r^{-3}) \\
A^{\phi} & =\mathcal{O}(r^{-2})
\end{align}$$

## covariant gauge

under the covariant gauge

$$\begin{align}
\nabla _{\mu}A^{\mu} & =0 \\
\implies \partial _{t}A^{t}+\partial _{r}A^{r}+\frac{1}{r}A^{r}+\partial _{\phi}A^{\phi} & =0
\end{align}$$

the only possibility that $\displaystyle{A^{\mu}}$ linearly depends on $\displaystyle{t}$ and satisfies the gauge condition is that $\displaystyle{A^{t}\propto t}$ and $\displaystyle{\partial _{t}A^{r,\phi}=0}$ (for modes with $\displaystyle{\partial _{t}A^{\mu}=0}$, we have already discussed in [[Articles/Quantization in AdS3/Proca/solving equation|solving equation]]). take a Fourier transformation as

$$\begin{align}
A^{t} & = te^{im\phi}f^{t} \\
A^{r,\phi} & =e^{im\phi}f^{r,\phi}
\end{align}$$

$$\begin{align}
(t\pm \phi)e^{-i(t\pm \phi)}
\end{align}$$

the gauge condition becomes

$$\begin{align}
f^{t}+\partial _{r}f^{r}+\frac{1}{r}f^{r}+imf^{\phi} & =0
\end{align}$$

and the eom becomes

$$\begin{align}
(1+r^{2})\partial _{r}^{2}f^{t}+\frac{1+5r^{2}}{r}\partial _{r}f^{t}+\left(4-\frac{m^{2}}{r^{2}}\right)f^{t} & =0 \\
-(1+r^{2})\partial _{r}f^{t}-2rf^{t}-\frac{m^{2}}{r^{2}}f^{r}-im(1+r^{2})\partial _{r}f^{\phi}-\frac{2im(1+r^{2})}{r}f^{\phi} & =0 \\
(1+r^{2})\partial _{r}^{2}f^{\phi}+\frac{3+5r^{2}}{r}\partial _{r}f^{\phi}+4f^{\phi}-\frac{im}{r^{2}}f^{t}-\frac{im}{r^{2}}\partial _{r}f^{r}+\frac{im}{r^{3}}f^{r} & =0
\end{align}$$

For $\displaystyle{m\neq 0}$, the gauge condition gives

$$\begin{align}
f^{\phi} & =\frac{i}{m}\left(f^{t}+\partial _{r}f^{r}+\frac{1}{r}f^{r}\right).
\end{align}$$

Substituting this into the second eom gives

$$\begin{align}
r(1+r^{2})\left(3\partial _{r}f^{r}+r\partial _{r}^{2}f^{r}\right)+(1-m^{2}+r^{2})f^{r}+2rf^{t} & =0.
\end{align}$$

The third eom is then implied by this equation, the equation for $\displaystyle{f^{t}}$, and the gauge condition. Therefore the independent equations are

$$\begin{align}
(1+r^{2})\partial _{r}^{2}f^{t}+\frac{1+5r^{2}}{r}\partial _{r}f^{t}+\left(4-\frac{m^{2}}{r^{2}}\right)f^{t} & =0, \\
r(1+r^{2})\left(3\partial _{r}f^{r}+r\partial _{r}^{2}f^{r}\right)+(1-m^{2}+r^{2})f^{r}+2rf^{t} & =0.
\end{align}$$

Let $\displaystyle{n=|m|}$. The solution of the first equation that is regular at the origin is

$$\begin{align}
f^{t} & =c_{t}r^{n}\,{}_{2}F_{1}\left(1+\frac{n}{2},1+\frac{n}{2};1+n;-r^{2}\right).
\end{align}$$

Near the boundary this behaves as

$$\begin{align}
f^{t} & \sim r^{-2}\log r.
\end{align}$$

This is not compatible with the boundary condition $\displaystyle{A^{t}=\mathcal{O}(r^{-2})}$ without logarithmic weakening, so $\displaystyle{c_{t}=0}$.

With $\displaystyle{f^{t}=0}$, the regular solution of the remaining homogeneous equation for $\displaystyle{f^{r}}$ is

$$\begin{align}
f^{r} & =c_{r}r^{n-1}\,{}_{2}F_{1}\left(\frac{n}{2},\frac{n}{2};1+n;-r^{2}\right),
\end{align}$$

and it behaves near the boundary as

$$\begin{align}
f^{r} & \sim r^{-1}\log r.
\end{align}$$

This violates $\displaystyle{A^{r}=\mathcal{O}(r^{-3})}$, so $\displaystyle{c_{r}=0}$. The gauge condition then gives $\displaystyle{f^{\phi}=0}$. Thus for $\displaystyle{m\neq 0}$ there is no non-trivial linearly time-dependent mode satisfying both regularity at the origin and the boundary condition.

For $\displaystyle{m=0}$, the first equation gives

$$\begin{align}
f^{t} & =\frac{c_{1}+c_{2}\log r}{1+r^{2}}.
\end{align}$$

Regularity at the origin sets $\displaystyle{c_{2}=0}$. The gauge condition then gives

$$\begin{align}
\partial _{r}f^{r}+\frac{1}{r}f^{r} & =-\frac{c_{1}}{1+r^{2}}, \\
f^{r} & =\frac{c_{3}-\frac{c_{1}}{2}\log(1+r^{2})}{r}.
\end{align}$$

Regularity sets $\displaystyle{c_{3}=0}$, but the remaining solution behaves as $\displaystyle{f^{r}\sim -c_{1}r^{-1}\log r}$ near the boundary. The boundary condition $\displaystyle{A^{r}=\mathcal{O}(r^{-3})}$ therefore sets $\displaystyle{c_{1}=0}$.

The remaining $\displaystyle{f^{\phi}}$ equation is

$$\begin{align}
(1+r^{2})\partial _{r}^{2}f^{\phi}+\frac{3+5r^{2}}{r}\partial _{r}f^{\phi}+4f^{\phi} & =0,
\end{align}$$

with solution

$$\begin{align}
f^{\phi} & =\frac{c_{4}}{r^{2}}+\frac{c_{5}\log(1+r^{2})}{2r^{2}}.
\end{align}$$

The $\displaystyle{c_{4}}$ branch is singular at the origin, while the $\displaystyle{c_{5}}$ branch behaves as $\displaystyle{r^{-2}\log r}$ near the boundary and is not allowed by the boundary condition without logarithmic weakening. Hence $\displaystyle{f^{\phi}=0}$.

Therefore, with the boundary behavior written above and regularity at the origin, all linearly time-dependent modes in this sector are excluded.

---
