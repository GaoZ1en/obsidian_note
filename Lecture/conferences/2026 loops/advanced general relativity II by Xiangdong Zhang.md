1. basic elements of $\displaystyle{\mathrm{SU}(2)}$ group
1. connection dynamics from canonical transformation
1. connection dynamics from Lagrangian
1. connection dynamics beyond general relativity
1. holonomy

---

some basic group theory concepts.

define

$$\begin{align}
K_{a}^{i} & =K_{ab}e^{b}_{j}\delta ^{ij} \\
E_{i}^{a} & =\sqrt{ h }e^{a}_{i}
\end{align}$$

the constraints can be written as

$$\begin{align}
C_{a} & =2sD_{b}[K^{j}_{a}E_{j}^{b}-\delta ^{b}_{a}K^{j}_{c}E^{c}_{j}] \\
C & =-\frac{s}{\det q}(K^{l}_{a}K^{j}_{b}-K^{j}_{a}K^{l}_{b})E^{a}_{j}E^{b}_{l}-\sqrt{ \det q }R
\end{align}$$

where $\displaystyle{q^{ab}=\delta ^{ij}e_{i}^{a}e^{b}_{j}}$. equip $\displaystyle{(K^{i}_{a},E_{i}^{a})}$ with the Poisson algebra

$$\begin{align}
\left\{E^{a}_{i}(x),K^{j}_{b}(y)\right\} & =\frac{\kappa}{2}\delta ^{a}_{b}\delta ^{j}_{i}\delta ^{(3)}(x-y)
\end{align}$$

note that the compatibility condition $\displaystyle{D_{a}q_{bc}=0}$ implies the spin connection

$$\begin{align}
\Gamma _{ajk} & =-e^{b}_{k}\left(\partial _{a}e^{j}_{b}-\Gamma ^{c}_{~ab}e^{j}_{c}\right)
\end{align}$$

and introduce $\displaystyle{\Gamma _{a}^{i}}$ as

$$\begin{align}
\Gamma ^{i}_{a} & =\frac{1}{2}\epsilon ^{ijk}e^{b}_{k}(\partial _{b}e^{j}_{a}-\partial _{a}e^{j}_{b}+e^{c}_{j}e^{l}_{a}\partial _{b}e^{l}_{c}) \\
 & =\dots(E \text{ expression})
\end{align}$$

introduce the Ashtekar-Barbero connection

$$\begin{align}
A^{i}_{a} & =\Gamma ^{i}_{a}+\beta K^{i}_{a}
\end{align}$$

we have the algebra

$$\begin{align}
\left\{A^{i}_{a}(x),E^{b}_{j}(x')\right\} & =8\pi G\beta \delta ^{i}_{j}\delta ^{b}_{a}\delta ^{(3)}(x-x')
\end{align}$$

---

introduce the curvatures

$$\begin{align}
R^{j}_{ab} & =2\partial _{[a}\Gamma ^{j}_{b]}+\epsilon _{jkl}\Gamma ^{k}_{a}\Gamma ^{l}_{b} \\
{}^{(\beta)}F^{j}_{ab} & =\dots
\end{align}$$

expand $\displaystyle{F}$ in terms of $\displaystyle{\Gamma}$ and $\displaystyle{K}$

$$\begin{align}
{}^{(\beta)}F^{j}_{ab} & =R^{j}_{ab}+2\beta D_{[a}K^{j}_{b]}+\beta ^{2}\epsilon _{jkl}K^{k}_{a}K^{l}_{b}
\end{align}$$

Bianchi identity

$$\begin{align}
\epsilon _{ijk}\epsilon ^{efc}R^{j}_{ef}e^{k}_{c} & =0 \\
\implies R^{j}_{ab}E^{b}_{j} & =0
\end{align}$$

(Gauss, Diffeo, Hamiltonian)constraints can be rewritten as

$$\begin{align}
D_{i}E^{i}_{a} & \approx 0 \\
\frac{1}{\kappa \beta}F^{i}_{ab}E^{b}_{i} & \approx 0 \\
\frac{\epsilon ^{ijk}E^{a}_{i}E^{b}_{j}}{2\kappa \sqrt{ h }}F^{k}_{ab}-2(1+\beta ^{2}) \frac{E^{a}_{[i}E^{b}_{j]}}{2\kappa \sqrt{ h }} K^{i}_{a}K^{j}_{b} & \approx 0
\end{align}$$

Palatini formalism. basic dynamical variables are tetrad $\displaystyle{e^{\alpha}_{I}}$ and $\displaystyle{\mathfrak{so}(1,3)}$-valued connection $\displaystyle{\omega _{\alpha}^{~IJ}}$. the action is given by

$$\begin{align}
S & =\frac{1}{2\kappa}\int _{M} R\wedge e\wedge e
\end{align}$$

where $\displaystyle{R}$ is the curvature of the connection $\displaystyle{\omega}$. the action is invariant under the internal $\displaystyle{\mathrm{SO}(1,3)}$ rotations

$$\begin{align}
(e,\omega)\mapsto (b^{-1}e,b^{-1}\omega b+b^{-1}\mathrm{d}b)
\end{align}$$

the eom are given by

$$\begin{align}
\mathcal{D}[(e)e^{\alpha}_{[I}e^{\beta}_{J]}] & =0\implies \mathcal{D}_{[\alpha}e^{I}_{\beta]}=0 \\
e^{\alpha}_{I}R^{IJ}_{\alpha \beta}-\frac{1}{2}\Omega _{\alpha \gamma}^{IK}e^{\alpha}_{I}e^{\gamma}_{K}e^{J}_{\beta} & =0
\end{align}$$

the first equation implies the torsion free condition.

link the Palatini formalism to the $\displaystyle{(E,K)}$ prescription...

generalized Palatini formalism

$$\begin{align}
S & =\frac{1}{2\kappa}\int _{M} \left( R+\frac{1}{2\beta}\star R \right)\wedge e\wedge e
\end{align}$$

not so intereted...
