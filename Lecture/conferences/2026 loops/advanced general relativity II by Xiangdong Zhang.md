1. basic elements of $\displaystyle{\mathrm{SU}(2)}$ group
2. connection dynamics from canonical transformation
3. connection dynamics from Lagrangian
4. connection dynamics beyond general relativity
5. holonomy

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

