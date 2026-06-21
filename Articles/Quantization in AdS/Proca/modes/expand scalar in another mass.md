consider a scalar with mass $\displaystyle{\mu _{1}}$

$$\begin{align}
S & =\int \mathrm{d}^{3}x\sqrt{ -g }\left(-\frac{1}{2}\nabla _{\mu}\phi \nabla ^{\mu}\phi-\frac{1}{2}\mu_{1}^{2}\phi ^{2}\right)
\end{align}$$

---

Consider two scalar field theories with masses $\displaystyle{\mu}$ and $\displaystyle{\tilde{\mu}}$ on $\displaystyle{\mathrm{AdS}_{3}}$ with metric

$$\begin{align}
\mathrm{d}s^{2} & =-(1+r^{2})\mathrm{d}t^{2}+\frac{\mathrm{d}r^{2}}{1+r^{2}}+r^{2}\mathrm{d}\phi ^{2}.
\end{align}$$

## Mass-independent spatial basis

Use a mass-independent spatial basis,

$$\begin{align}
\phi(t,\vec{x}) & =\sum _{m=-\infty}^{\infty}\int _{0}^{\infty}\mathrm{d}k\,a_{k,m}(t)\phi _{k,m}(\vec{x}), \\
\phi _{k,m}(\vec{x}) & =C_{k,m}P^{|m|}_{-\frac{1}{2}+ik}(\sqrt{1+r^{2}})\frac{e^{im\phi}}{\sqrt{2\pi}},
\end{align}$$

The action then takes the oscillator form

$$\begin{align}
S & =\sum _{m=-\infty}^{\infty}\int _{0}^{\infty}\mathrm{d}k\int _{t_i}^{t_f}\mathrm{d}t\,\left(\frac{1}{2}\dot{a}_{k,m}^{2}-\frac{1}{2}\lambda_{\mu}(k)a_{k,m}^{2}\right), \\
\lambda_{\mu}(k) & =\frac{1}{4}+k^{2}+\mu^{2}.
\end{align}$$

## mass-dependent spatial basis

Consider a free scalar field with mass $\mu$ on $\mathrm{AdS}_{3}$ with the action

$$\begin{align}
S = -\frac{1}{2} \int d^3 x \sqrt{-g} (\nabla_\mu \phi \nabla^\mu \phi + \mu^2 \phi^2).
\end{align}$$

In global coordinates $ds^2 = -(1+r^2)dt^2 + \frac{dr^2}{1+r^2} + r^2 d\phi^2$,

$$\begin{align}
S = \frac{1}{2} \int dt d^2x \left[ \frac{r}{1+r^2} (\partial_t \phi)^2 - r(1+r^2)(\partial_r \phi)^2 - \frac{1}{r} (\partial_\phi \phi)^2 - r \mu^2 \phi^2 \right].
\end{align}$$

Introduce a reference mass $\mu_{0}$ (with conformal dimension $\Delta_{0} = 1 + \sqrt{1+\mu_{0}^{2}}$). The normalized eigenmodes of the $\mu_{0}$ theory are

$$\begin{align}
\phi _{nm}(\vec{x}) & =\sqrt{ \frac{\omega _{0,n,m}}{\pi} \frac{(\Delta_{0}+n)_{|m|}}{(n+1)_{|m|}} }e^{im\phi} r^{|m|}(1+r^{2})^{-(\Delta_{0}+|m|)/2}P_{n}^{(\Delta_{0}-1,|m|)}\left(\frac{r^{2}-1}{r^{2}+1}\right) \\
\omega _{0,n,m} & =\Delta_{0}+2n+|m|
\end{align}$$

They satisfy the orthonormalization condition

$$\begin{align}
\int _{\Sigma}\mathrm{d}^{2}x \frac{\sqrt{ \sigma }}{N} \phi _{n_{1}m_{1}}(\vec{x})\phi ^{*}_{n_{2}m_{2}}(\vec{x}) & =\delta _{n_{1}n_{2}}\delta _{m_{1}m_{2}}
\end{align}$$

turn to real basis for future convenience.

$$\begin{align}
\varphi_{n}(\vec{x}) & =\phi_{n,0}(\vec{x}), & m=0 \\
\chi_{n,m}(\vec{x}) & =\sqrt{2}\,\operatorname{Re}\phi_{n,m}(\vec{x}), & m>0 \\
\psi_{n,m}(\vec{x}) & =\sqrt{2}\,\operatorname{Im}\phi_{n,m}(\vec{x}), & m>0
\end{align}$$

These inherit the normalization from $\phi_{nm}$:

$$\begin{align}
\int _{\Sigma}\mathrm{d}^{2}x\frac{\sqrt{ \sigma }}{N}\varphi _{n_{1}}\varphi _{n_{2}} & =\delta _{n_{1}n_{2}} \\
\int _{\Sigma}\mathrm{d}^{2}x\frac{\sqrt{ \sigma }}{N}\chi _{n_{1}m_{1}}\chi _{n_{2}m_{2}} & =\delta _{n_{1}n_{2}}\delta _{m_{1}m_{2}} \\
\int _{\Sigma}\mathrm{d}^{2}x\frac{\sqrt{ \sigma }}{N}\psi _{n_{1}m_{1}}\psi _{n_{2}m_{2}} & =\delta _{n_{1}n_{2}}\delta _{m_{1}m_{2}}
\end{align}$$

and all cross-integrals vanish by the angular integral. expand the field as

$$\begin{align}
\phi(x) & =\sum ^{\infty}_{n=0}a_{n}(t)\varphi _{n}(\vec{x})+\sum ^{\infty}_{n=0} \sum ^{\infty}_{m=1}[b_{n,m}(t)\chi _{n,m}(\vec{x})+c_{n,m}(t)\psi _{n,m}(\vec{x})]
\end{align}$$

collect all basis functions into $\displaystyle{\{u_{a}(\vec{x})\}=\{\varphi _{n},\chi _{n,m},\psi _{n,m}\}}$ and all coefficients into a vector $\displaystyle{q(t)}$. define the diagonal kinetic matrix $K_{ab}=\delta_{ab}$ and $\displaystyle{(\Omega ^{2}_{0}) _{ab}=\omega _{a}^{2}\delta _{ab}}$, where

$$\begin{align}
\omega _{a} & =\Delta _{0}+2n+|m|.
\end{align}$$

substituting the expansion into the action gives

$$\begin{align}
S & =\frac{1}{2}\int \mathrm{d}t\left(\dot{q}^{T}\dot{q}-q^{T}\Omega _{0}^{2}q\right)-\frac{1}{2}(\mu ^{2}-\mu_{0}^{2})\int \mathrm{d}t\, q^{T}Oq \\
\Omega ^{2} & =\Omega _{0}^{2}+(\mu ^{2}-\mu_{0}^{2})O
\end{align}$$

here the overlap matrix $\displaystyle{O}$ is defined as

$$\begin{align}
O_{ab} & =\int _{\Sigma}\mathrm{d}^{2}x N\sqrt{ \sigma }u_{a}(\vec{x})u_{b}(\vec{x}) \\
 & =\int _{0}^{\infty}\mathrm{d}r\int _{0}^{2\pi}\mathrm{d}\phi \,r\,u_{a}(\vec{x})u_{b}(\vec{x})
\end{align}$$

remember that all cross-integrals vanish, so $\displaystyle{O}$ is already block diagonal with respect to the $\displaystyle{m}$ index and $\displaystyle{\left\{\varphi,\chi,\psi\right\}}$. the only non-zero overlaps are between $\displaystyle{\varphi _{n_{1}}}$ and $\displaystyle{\varphi _{n_{2}}}$, and $\displaystyle{\chi _{n_{1},m}}$ and $\displaystyle{\chi _{n_{2},m}}$, and $\displaystyle{\psi _{n_{1},m}}$ and $\displaystyle{\psi _{n_{2},m}}$, with

$$\begin{align}
O_{\varphi,n_{1}n_{2}} & = \int _{\Sigma} \mathrm{d}r\mathrm{d}\phi r \varphi _{n_{1}}(\vec{x})\varphi _{n_{2}}(\vec{x}) \\
O_{\chi,m,n_{1}n_{2}}=O_{\psi,m,n_{1}n_{2}} & = \int _{\Sigma} \mathrm{d}r\mathrm{d}\phi r \chi _{n_{1},m}(\vec{x})\chi _{n_{2},m}(\vec{x})
\end{align}$$

and we notice that, up to an overall factor, all of them depend on the same radial integral

$$\begin{align}
O^{m}_{n_{1}n_{2}} & =\int _{0}^{\infty}\mathrm{d}r r^{2|m|+1}(1+r^{2})^{-(\Delta_{0}+m)}P_{n_{1}}^{(\Delta_{0}-1,m)}\left(\frac{r^{2}-1}{r^{2}+1}\right)P_{n_{2}}^{(\Delta_{0}-1,m)}\left(\frac{r^{2}-1}{r^{2}+1}\right) \\
 & =2^{-(\Delta_{0}+m)}\int _{-1}^{1}\mathrm{d}x(1+x)^{m}(1-x)^{\Delta_{0}-2}P_{n_{1}}^{(\Delta_{0}-1,m)}(x)P_{n_{2}}^{(\Delta_{0}-1,m)}(x)
\end{align}$$

with $\displaystyle{x=\frac{r^{2}-1}{r^{2}+1}}$. using the normalization

$$\begin{align}
\mathcal{N}_{n,m}^{2} & =\frac{\omega _{0,n,m}}{\pi}\frac{(\Delta _{0}+n)_{m}}{(n+1)_{m}}, \\
\omega _{0,n,m} & =\Delta _{0}+2n+m,
\end{align}$$

we get the exact coefficients

$$\begin{align}
O_{\varphi,n_{1}n_{2}} & =2\sqrt{ \omega _{0,n_{1},0}\omega _{0,n_{2},0} }\,O^{0}_{n_{1}n_{2}} \\
O_{\chi,m,n_{1}n_{2}}=O_{\psi,m,n_{1}n_{2}} & =2\sqrt{ \omega _{0,n_{1},m}\omega _{0,n_{2},m}\frac{(\Delta _{0}+n_{1})_{m}(\Delta _{0}+n_{2})_{m}}{(n_{1}+1)_{m}(n_{2}+1)_{m}} }\,O^{m}_{n_{1}n_{2}}
\end{align}$$

for actual evaluation it is convenient to rewrite $\displaystyle{O^{m}_{n_{1}n_{2}}}$ as the finite double sum

$$\begin{align}
O^{m}_{n_{1}n_{2}} & =\frac{1}{2}\sum _{j=0}^{n_{1}}\sum _{k=0}^{n_{2}}(-1)^{n_{1}+n_{2}-j-k}\binom{n_{1}+\Delta _{0}-1}{j}\binom{n_{1}+m}{n_{1}-j}\binom{n_{2}+\Delta _{0}-1}{k}\binom{n_{2}+m}{n_{2}-k} \\
 & \qquad \times B\left(m+j+k+1,\Delta _{0}-1+n_{1}+n_{2}-j-k\right)
\end{align}$$

which is symmetric under $\displaystyle{n_{1}\leftrightarrow n_{2}}$

## Numerical check

take a representative example

$$\begin{align}
\mu _{0} & =0, & \Delta _{0} & =2, \\
\mu & =1, & \Delta & =1+\sqrt{ 2 }.
\end{align}$$

then for $\displaystyle{n_{1},n_{2},m\le 10}$ the overlap matrices were evaluated numerically. the first few entries are

$$\begin{align}
O^{(m=0)}_{\varphi} & \approx \begin{pmatrix}
2.0000 & 1.4142 & 1.1547 \\
1.4142 & 4.0000 & 3.2660 \\
1.1547 & 3.2660 & 6.0000
\end{pmatrix}, \\
O^{(m=1)}_{\chi/\psi} & \approx \begin{pmatrix}
3.0000 & 2.2361 & 1.8708 \\
2.2361 & 5.0000 & 4.1833 \\
1.8708 & 4.1833 & 7.0000
\end{pmatrix}, \\
O^{(m=2)}_{\chi/\psi} & \approx \begin{pmatrix}
4.0000 & 3.0000 & 2.5298 \\
3.0000 & 6.0000 & 5.0596 \\
2.5298 & 5.0596 & 8.0000
\end{pmatrix}.
\end{align}$$

for $\displaystyle{m=0}$ the $\displaystyle{\varphi}$ block is the same as the $\displaystyle{m=0}$ block written above. the $\displaystyle{\chi}$ and $\displaystyle{\psi}$ blocks are identical for each $\displaystyle{m>0}$.

now diagonalize the truncated matrix

$$\begin{align}
\Omega _{(m)}^{2}\big|_{n_{\max}=10} & =\operatorname{diag}\left((\Delta _{0}+2n+m)^{2}\right)_{n=0}^{10}+(\mu ^{2}-\mu _{0}^{2})O_{(m)}.
\end{align}$$

the lowest few eigenvalues are

$$\begin{align}
m=0:\quad \operatorname{spec}\left(\Omega _{(0)}^{2}\right) & \approx \{5.82878665,19.48918609,41.15919247,\dots\}, \\
\left(\Delta +2n\right)^{2} & =\{5.82842712,19.48528137,41.14213562,\dots\}, \\
m=5:\quad \operatorname{spec}\left(\Omega _{(5)}^{2}\right) & \approx \{54.97769441,88.65536042,130.35692290,\dots\}, \\
\left(\Delta +2n+5\right)^{2} & =\{54.97056275,88.62741700,130.28427125,\dots\}, \\
m=10:\quad \operatorname{spec}\left(\Omega _{(10)}^{2}\right) & \approx \{154.13188495,207.83286766,269.57127861,\dots\}, \\
\left(\Delta +2n+10\right)^{2} & =\{154.11269837,207.76955262,269.42640687,\dots\}.
\end{align}$$

so the answer is:

$$\begin{align}
(\Omega ^{2})_{ab} & \to \omega _{a}^{2}\delta _{ab}, \qquad \omega _{a}=\Delta +2n+|m|
\end{align}$$

in the full infinite-dimensional basis this equality is exact, because $\displaystyle{\Omega ^{2}}$ is just the matrix representation of the scalar spatial operator with mass $\displaystyle{\mu}$ in the $\displaystyle{\mu _{0}}$ basis. at finite cutoff $\displaystyle{n_{\max}=10}$ the low-lying eigenvalues already agree well with the exact values, while the discrepancy grows toward the UV end of the truncated matrix, as expected from basis truncation.
