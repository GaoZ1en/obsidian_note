motivation...

---

constraints. canonical quantization of constrained systems.

nothing non-trivial though.

---

ADM formalism of general relativity.

$$\begin{align}
S & =\frac{1}{2\kappa}\int _{M} \mathrm{d}^{4}x\sqrt{ -g }R
\end{align}$$

see [[Note/useful results/ADM formalism|ADM formalism]]. secondary constraints

$$\begin{align}
C_{a} & =-2q_{ac}D_{b}P^{bc} \\
C & =\frac{1}{\sqrt{ q }}G_{abcd}P^{ab}P^{cd}-\sqrt{ q }R^{(3)}
\end{align}$$

which gives the hypersurface deformation algebra:

$$\begin{align}
\left\{\vec{C}(\vec{N}),\vec{C}(\vec{M})\right\} & =\dots \\
\left\{\vec{C}(\vec{N}),C(M)\right\} & =\dots \\
\left\{C(N),C(M)\right\} & =\dots
\end{align}$$

the Hamiltonian becomes

$$\begin{align}
H & =\int _{\Sigma}\mathrm{d}^{3}x\left(NC+N^{a}C_{a}\right)
\end{align}$$

reformulation in terms of AB variables

introduce $\displaystyle{e_{\mu}^{I}}$, then the line element can be rewritten as

$$\begin{align}
\mathrm{d}s^{2} & =g_{\mu \nu}\mathrm{d}x^{\mu}\mathrm{d}x^{\nu} \\
 & =\eta _{IJ}e^{I}e^{J}
\end{align}$$

where $\displaystyle{e^{I}=e^{I}_{\mu}\mathrm{d}x^{\mu}}$. write

$$\begin{align}
q_{ab} & =e^{i}_{a}e^{j}_{b}\delta _{ij} \\
K_{ab} & =K_{a}^{j}e^{k}_{b}\delta _{jk} \\
E_{j}^{a} & =\sqrt{ \det q }e^{a}_{j}
\end{align}$$

then

$$\begin{align}
G_{ab} & =K^{j}_{[a}e^{k}_{b]}\delta _{jk}\approx0 \\
\implies G_{jk} & =K_{a[j}E^{a}_{k]}\approx 0
\end{align}$$

then element variables becomes $\displaystyle{(K^{j}_{a},E^{a}_{j})}$ with Poisson algebra

$$\begin{align}
\left\{K^{a}_{j},E^{k}_{b}\right\} & =\dots
\end{align}$$

and all other brackets vanish. now express $\displaystyle{q_{ab}}$ and $\displaystyle{P^{ab}}$ in terms of $\displaystyle{(K,E)}$ variables

$$\begin{align}
q_{ab} & =\det(E^{a}_{i}) E^{j}_{a}E^{k}_{b}\delta _{jk} \\
P^{ab} & =\frac{2}{\det(E^{a}_{i})}(E^{a}_{i} E^{[c}_{j} E^{b]}_{m}K^{m}_{c})\delta ^{ij}
\end{align}$$

which recover the correct Poisson algebra between $\displaystyle{(q,P)}$

$$\begin{align}
\left\{q_{ab},q_{cd}\right\} & =0 \\
\left\{q_{ab},P^{cd}\right\} & =\kappa \delta ^{c}_{(a}\delta ^{d}_{b)}\delta ^{(3)}(x-y) \\
\left\{P^{a},P^{cd}\right\} & =-\frac{\sqrt{ \det(E^{a}_{j}) }}{4}\left(q^{bc}G^{ad}+q^{bd}G^{ac}+q^{ac}G^{bd}+q^{ad}G^{bc}\right) \\
 & \approx 0
\end{align}$$

---

Palatini formulation, see [[Literature Notes/Charges of supergravity (2604.09928v1)|Charges of supergravity (2604.09928v1)]]
