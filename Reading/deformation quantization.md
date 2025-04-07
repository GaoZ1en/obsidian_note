## the simplest example of deformation quantization

Heisenberg commutation relation

$$\tag{1.1}
\begin{align}
[x,p]=i\hbar
\end{align}
$$

introduce phase space translation operators

$$\tag{1.2}
\begin{align}
U(\pi,\xi) & =e^{-i(\pi x+\xi p)} \\
U(\pi,\xi)xU^{\dagger}(\pi,\xi) & =x-\xi \\
U(\pi,\xi)pU^{\dagger}(\pi,\xi) & =p+\pi
\end{align}
$$

the phase space realize a projection representation of the translation group

$$\tag{1.3}
\begin{align}
U(\pi_{1},\xi_{1})U(\pi_{2},\xi_{2}) & =e^{-i/2(\pi_{1}\xi_{2}-\pi_{2}\xi_{1})}U(\pi_{1}+\pi_{2},\xi_{1}+\xi_{2})
\end{align}
$$

then there exists an 1-1 correpsondence $\displaystyle{Q}$ between the function $\displaystyle{f(x,p)}$ support on the phase space and the operator support on the Hilbert space $\displaystyle{F(x,p)}$, which is related by

$$\tag{1.4}
\begin{align}
F(x,p)=Q(f(x,p)) & =\frac{1}{2\pi}\int \mathrm{d}\pi \mathrm{d}\xi\chi(\pi,\xi)U(\pi,\xi) \\
\chi(\pi,\xi) & =\frac{1}{2\pi}\int \mathrm{d}x\mathrm{d}pf(x,p)e^{i(\pi x+\xi p)}
\end{align}
$$

and we can define the ***Moyal star product*** as

$$\tag{1.5}
\begin{align}
f(x,p)\star g(x,p) & =Q^{-1}(Q(f)Q(g)
\end{align}
$$

and this star product is associative, but not commutative.

$$\tag{.}
\begin{align}
f\star g-g\star f & =\left\{f,g\right\}
\end{align}
$$

which is exactly the Poisson bracket in classical mechanics.

