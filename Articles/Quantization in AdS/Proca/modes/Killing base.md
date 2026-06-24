We follow the Killing-basis coefficient method used for the linearized gravity modes. Let

$$\begin{align}
\mathscr{C}[A]_{\mu}&\equiv \varepsilon_{\mu}^{~\nu\rho}\nabla^{(0)}_{\nu}A_{\rho}.
\end{align}$$

For $\mu>0$, the Proca equation decomposes into the two first-order branches

$$\begin{align}
(\mathscr{C}+\mu)A&=0, & (\mathscr{C}-\mu)A&=0.
\end{align}$$

The divergence constraint follows from either first-order equation.

For the unbarred branch, expand

$$\begin{align}
A_{\mu}&=A_{1}\xi_{1,\mu}+A_{0}\xi_{0,\mu}+A_{-1}\xi_{-1,\mu}.
\end{align}$$

Using

$$\begin{align}
\mathscr{C}[\xi_{a}]_{\mu}&=2\xi_{a,\mu},
\end{align}$$

the projected curl is

$$\begin{align}
(\mathscr{C}A)_{1}&=(2-2i\mathcal{L}_{\xi_{0}})A_{1}-i\mathcal{L}_{\xi_{-1}}A_{0},\\
(\mathscr{C}A)_{0}&=2A_{0}+2i\mathcal{L}_{\xi_{1}}A_{1}-2i\mathcal{L}_{\xi_{-1}}A_{-1},\\
(\mathscr{C}A)_{-1}&=(2+2i\mathcal{L}_{\xi_{0}})A_{-1}+i\mathcal{L}_{\xi_{1}}A_{0}.
\end{align}$$

Therefore $(\mathscr{C}+\mu)A=0$ gives

$$\begin{align}
(2+\mu-2i\mathcal{L}_{\xi_{0}})A_{1}-i\mathcal{L}_{\xi_{-1}}A_{0}&=0,\\
(2+\mu)A_{0}+2i\mathcal{L}_{\xi_{1}}A_{1}-2i\mathcal{L}_{\xi_{-1}}A_{-1}&=0,\\
(2+\mu+2i\mathcal{L}_{\xi_{0}})A_{-1}+i\mathcal{L}_{\xi_{1}}A_{0}&=0.
\end{align}$$

The divergence constraint is

$$\begin{align}
\mathcal{L}_{\xi_{1}}A_{1}+\mathcal{L}_{\xi_{0}}A_{0}+\mathcal{L}_{\xi_{-1}}A_{-1}&=0.
\end{align}$$

The coefficient functions use the scalar equation

$$\begin{align}
(\nabla^{(0)2}-\mu(\mu+2))\phi&=0, & \Delta&=\mu+2.
\end{align}$$

A convenient positive-energy scalar basis is

$$\begin{align}
\phi_{n,\bar n}&=\frac{1}{\sqrt{n!\bar n!(\Delta)_{n}(\Delta)_{\bar n}}} \mathcal{L}_{\xi_{-1}}^{n}\mathcal{L}_{\bar\xi_{-1}}^{\bar n}\phi_{0,0},& \phi_{0,0}&=\frac{1}{\sqrt{2\pi}}\frac{e^{-i\Delta t}}{(1+r^{2})^{\Delta/2}}.
\end{align}$$

The unbarred Killing derivatives act as

$$\begin{align}
\mathcal{L}_{\xi_{0}}\phi_{n,\bar n}&=-i\frac{\Delta+2n}{2}\phi_{n,\bar n},\\
\mathcal{L}_{\xi_{-1}}\phi_{n,\bar n}&=\sqrt{(n+1)(\Delta+n)}\,\phi_{n+1,\bar n},\\
\mathcal{L}_{\xi_{1}}\phi_{n,\bar n}&=-\sqrt{n(\Delta+n-1)}\,\phi_{n-1,\bar n}.
\end{align}$$

Expand

$$\begin{align}
A_{a}&=\sum_{n,\bar n=0}^{\infty}a_{a,n,\bar n}\phi_{n,\bar n},& a_{a,n,\bar n}&=0\quad(n<0).
\end{align}$$

Substitution gives, for each fixed $\bar n$,

$$\begin{align}
2n\,a_{1,n,\bar n}+i\sqrt{n(\Delta+n-1)}\,a_{0,n-1,\bar n}&=0,\\
\Delta\,a_{0,n,\bar n}-2i\sqrt{(n+1)(\Delta+n)}\,a_{1,n+1,\bar n} -2i\sqrt{n(\Delta+n-1)}\,a_{-1,n-1,\bar n}&=0,\\
2(\Delta+n)a_{-1,n,\bar n} -i\sqrt{(n+1)(\Delta+n)}\,a_{0,n+1,\bar n}&=0.
\end{align}$$

The divergence constraint becomes

$$\begin{align}
-\sqrt{(n+1)(\Delta+n)}\,a_{1,n+1,\bar n} -i\frac{\Delta+2n}{2}a_{0,n,\bar n} +\sqrt{n(\Delta+n-1)}\,a_{-1,n-1,\bar n}&=0.
\end{align}$$

These relations are solved by one free coefficient family $b_{n,\bar n}\equiv a_{1,n,\bar n}$:

$$\begin{align}
a_{1,n,\bar n}&=b_{n,\bar n},\\
a_{0,n,\bar n}&=2i\sqrt{\frac{n+1}{\Delta+n}}\,b_{n+1,\bar n},\\
a_{-1,n,\bar n}&=-\sqrt{\frac{(n+1)(n+2)}{(\Delta+n)(\Delta+n+1)}}\,b_{n+2,\bar n}.
\end{align}$$

For a single mode parameterized by $b_{n,\bar n}$, set all other $b_{m,\bar m}$ to zero. The unnormalized unbarred branch mode is

$$\begin{align}
A^{(u)}_{\mu,n,\bar n} &=b_{n,\bar n}\left[ \phi_{n,\bar n}\xi_{1,\mu} +2i\sqrt{\frac{n}{\Delta+n-1}}\phi_{n-1,\bar n}\xi_{0,\mu} -\sqrt{\frac{n(n-1)}{(\Delta+n-2)(\Delta+n-1)}}\phi_{n-2,\bar n}\xi_{-1,\mu} \right].
\end{align}$$

Entries containing $\phi_{m,\bar n}$ with $m<0$ are omitted.

---

For the barred branch, expand

$$\begin{align}
A_{\mu}&=\tilde A_{1}\bar\xi_{1,\mu}+\tilde A_{0}\bar\xi_{0,\mu}+\tilde A_{-1}\bar\xi_{-1,\mu}.
\end{align}$$

Using

$$\begin{align}
\mathscr{C}[\bar\xi_{a}]_{\mu}&=-2\bar\xi_{a,\mu},
\end{align}$$

the equation $(\mathscr{C}-\mu)A=0$, multiplied by $-1$, gives the same coefficient form with barred Killing derivatives:

$$\begin{align}
(2+\mu-2i\mathcal{L}_{\bar\xi_{0}})\tilde A_{1}-i\mathcal{L}_{\bar\xi_{-1}}\tilde A_{0}&=0,\\
(2+\mu)\tilde A_{0}+2i\mathcal{L}_{\bar\xi_{1}}\tilde A_{1}-2i\mathcal{L}_{\bar\xi_{-1}}\tilde A_{-1}&=0,\\
(2+\mu+2i\mathcal{L}_{\bar\xi_{0}})\tilde A_{-1}+i\mathcal{L}_{\bar\xi_{1}}\tilde A_{0}&=0.
\end{align}$$

The divergence constraint is

$$\begin{align}
\mathcal{L}_{\bar\xi_{1}}\tilde A_{1}+\mathcal{L}_{\bar\xi_{0}}\tilde A_{0} +\mathcal{L}_{\bar\xi_{-1}}\tilde A_{-1}&=0.
\end{align}$$

The barred Killing derivatives on the same scalar basis are

$$\begin{align}
\mathcal{L}_{\bar\xi_{0}}\phi_{n,\bar n}&=-i\frac{\Delta+2\bar n}{2}\phi_{n,\bar n},\\
\mathcal{L}_{\bar\xi_{-1}}\phi_{n,\bar n}&=\sqrt{(\bar n+1)(\Delta+\bar n)}\,\phi_{n,\bar n+1},\\
\mathcal{L}_{\bar\xi_{1}}\phi_{n,\bar n}&=-\sqrt{\bar n(\Delta+\bar n-1)}\,\phi_{n,\bar n-1}.
\end{align}$$

Expand

$$\begin{align}
\tilde A_{a}&=\sum_{n,\bar n=0}^{\infty}\tilde a_{a,n,\bar n}\phi_{n,\bar n},& \tilde a_{a,n,\bar n}&=0\quad(\bar n<0).
\end{align}$$

For each fixed $n$, the solution is

$$\begin{align}
\tilde a_{1,n,\bar n}&=\tilde b_{n,\bar n},\\
\tilde a_{0,n,\bar n}&=2i\sqrt{\frac{\bar n+1}{\Delta+\bar n}}\,\tilde b_{n,\bar n+1},\\
\tilde a_{-1,n,\bar n}&=-\sqrt{\frac{(\bar n+1)(\bar n+2)}{(\Delta+\bar n)(\Delta+\bar n+1)}}\,\tilde b_{n,\bar n+2}.
\end{align}$$

For a single mode parameterized by $\tilde b_{n,\bar n}$, the unnormalized barred branch mode is

$$\begin{align}
A^{(b)}_{\mu,n,\bar n} &=\tilde b_{n,\bar n}\left[ \phi_{n,\bar n}\bar\xi_{1,\mu} +2i\sqrt{\frac{\bar n}{\Delta+\bar n-1}}\phi_{n,\bar n-1}\bar\xi_{0,\mu} -\sqrt{\frac{\bar n(\bar n-1)}{(\Delta+\bar n-2)(\Delta+\bar n-1)}}\phi_{n,\bar n-2}\bar\xi_{-1,\mu} \right].
\end{align}$$

Entries containing $\phi_{n,m}$ with $m<0$ are omitted.

The coordinate frequency of both branches is

$$\begin{align}
\omega_{n,\bar n}&=\Delta+n+\bar n-1=\mu+1+n+\bar n.
\end{align}$$

For the unbarred branch the angular momentum is $m=n-\bar n-1$, so the spectrum can also be written as

$$\begin{align}
\omega&=\mu+1+2N+|m+1|.
\end{align}$$

For the barred branch the angular momentum is $m=n-\bar n+1$, giving

$$\begin{align}
\omega&=\mu+1+2N+|m-1|.
\end{align}$$

Here $N=\min(n,\bar n)$.

This matches the two helicity towers obtained by the coordinate-mode calculation.
