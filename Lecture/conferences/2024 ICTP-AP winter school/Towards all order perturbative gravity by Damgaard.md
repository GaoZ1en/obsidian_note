How to use SA to efficiently provide black hole dynamics?

again, gravitational perturbation theory

define

$$
\tag{1.1}
\begin{align}
\mathfrak{g}^{\mu \nu}=\eta^{\mu \nu}-h^{\mu \nu}
\end{align}
$$

consider a black hole with a point source

$$
\tag{1.2}
\begin{align}
S & =\int \mathrm{d}^{4x}\left( \frac{1}{16\pi G}R+\frac{1}{2}j^{\mu \nu}g_{\mu \nu} \right) \\
j^{\mu \nu} & =Mv^{\mu}v^{\nu}\delta^{3}(x)
\end{align}
$$

then the generating functional

$$
\tag{1.3}
\begin{align}
\exp{W[]}
\end{align}
$$

This formalism seem much harder than the usual Schwarzschild approach

introduce new variables $\displaystyle{\tilde{\mathfrak{g}}_{\mu \nu}}$ so that $\displaystyle{\mathfrak{g}^{\mu \rho}\tilde{\mathfrak{g}}_{\rho \nu}=\delta^{\mu}_{\nu}}$, keep it fulfilled and do a double recursion

by induction, we can prove that

$$
\tag{1.4}
\begin{align}
h^{00} & =8\left( 1-\frac{M}{r} \right)^{-1}-8-\frac{4M}{r}-\frac{M^{2}}{r^{2}} \\
h^{ij} & =\frac{M^{2}x^{i}x^{j}}{r^{2}}
\end{align}
$$

we actually have recovered from perturbation theory the exact result.

see Kanghoon Lee to find more progress.
