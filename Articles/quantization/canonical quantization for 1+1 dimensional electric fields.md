$$\tag{0.1}
\begin{align}
S & =\int \mathrm{d}^{2}x\left(-\frac{1}{4}F_{\mu \nu}F^{\mu \nu}\right) \\
 & =\int \mathrm{d}^{2}x\left(-\frac{1}{2}F_{01}F^{01}\right) \\
 & =\int \mathrm{d}^{2}x\left(\frac{1}{2}(\dot{A}^{1})^{2}+\dot{A}^{1}\partial _{1}A^{0}+\frac{1}{2}(\partial _{1}A^{0})^{2}\right)
\end{align}
$$

the system is defined on $\displaystyle{\mathbb{R}}$ or $\displaystyle{S^{1}}$ with radius $\displaystyle{R}$. then the discussion is separated by two parts. we first consider the $\displaystyle{\mathbb{R}}$ case.

---

canonical momentum

$$\tag{1.1}
\begin{align}
\pi _{0} & =\frac{\partial\mathcal{L}}{\partial \dot{A}^{0}}=0 \\
\pi _{1} & =\frac{\partial \mathcal{L}}{\partial \dot{A}^{1}}=\dot{A}_{1}+\partial _{1}A^{0}
\end{align}
$$

then we have a primary constraint $\displaystyle{\varphi _{1}=\pi _{0}\approx0}$. the Hamiltonian is

$$\tag{1.2}
\begin{align}
H & =\int \mathrm{d}^{2}x\left(\pi _{1}\dot{A}^{1}-\mathcal{L}[A^{1},A^{0}]\right) \\
 & =\int \mathrm{d}^{2}x\left(\frac{1}{2}\pi _{1}\pi ^{1}-\pi ^{1}\partial _{1}A^{0}\right)
\end{align}
$$

consider the Poisson bracket between $\displaystyle{\varphi _{1}}$ and $\displaystyle{H}$

$$\tag{1.3}
\begin{align}
\left\{\varphi _{1},H\right\} & =\left\{\pi _{0},H\right\}=- \frac{\delta H}{\delta A^{0}} \\
 & =-\partial _{1}\pi ^{1}
\end{align}
$$

then we get a secondary constraints $\displaystyle{\varphi _{2}=-\partial _{1}\pi ^{1}=0}$. consider the Poisson bracket between $\displaystyle{\varphi _{1}}$ and $\displaystyle{\varphi _{2}}$

$$\tag{1.4}
\begin{align}
\left\{\varphi _{1},\varphi _{2}\right\} & =\left\{\pi_{0},-\partial _{1}\pi ^{1}\right\}=0
\end{align}
$$

so $\displaystyle{\varphi _{1}}$ and $\displaystyle{\varphi _{2}}$ are first class constraints. choose Column gauge $\displaystyle{\partial _{1}A^{1}=0}$ and fix $\displaystyle{A^{0}=0}$ by a gauge transformation. then the Hamiltonian becomes

$$\tag{1.5}
\begin{align}
H & =\int \mathrm{d}^{2}x \frac{1}{2}(\pi _{1})^{2}
\end{align}
$$

the equation of motion is

$$\tag{1.6}
\begin{align}
\dot{A}^{1} & =\left\{A^{1},H\right\} =\pi _{1} \\
\dot{\pi}_{1} & =\left\{\pi _{1},H\right\}=0
\end{align}
$$

the general solution of (1.6) is $\displaystyle{A^{1}=-E_{0}t+C_{0},\pi _{1}=-E_{0}}$, where $\displaystyle{E_{0}}$ and $\displaystyle{C_{0}}$ are constants. so there is no local degrees of freedom. what is the canonical quantization?

---

make a variation

$$\tag{2.1}
\begin{align}
\delta S & =\int \mathrm{d}^{2}x\left(-F^{\mu \nu}\partial _{\mu}\delta A_{\nu}\right) \\
 & =\int \mathrm{d}^{2}x\partial _{\mu}F^{\mu \nu}\delta A_{\nu}+\int _{\Sigma _{f}-\Sigma _{i}}\mathrm{d}xF^{01}\delta A_{1}
\end{align}
$$

symplectic form

$$\tag{2.2}
\begin{align}
\omega =\delta \theta & =\int _{\Sigma}\mathrm{d}x\delta F^{01}\wedge \delta A_{1}
\end{align}
$$

equation of motion

$$\tag{2.3}
\begin{align}
\partial _{\mu}F^{\mu \nu} & =0 \\
\implies F^{01} & = E_{0}
\end{align}
$$

choose Column gauge $\displaystyle{\partial _{1}A^{1}=0}$ and fix $\displaystyle{A^{0}=0}$, we have $\displaystyle{A^{1}=-E_{0}t+C_{0}}$. then the symplectic form becomes

$$\tag{2.4}
\begin{align}
\omega & =-\int _{\Sigma}\mathrm{d}x \delta E^{0}\wedge \delta C_{0}
\end{align}
$$

the Hamiltonian flow corresponding to $\displaystyle{A^{1}}$ is

$$\tag{2.5}
\begin{align}
X_{A^{1}} & = \frac{\delta A^{1}}{\delta C_{0}} \frac{\delta}{\delta E^{0}}- \frac{\delta A^{1}}{\delta E^{0}} \frac{\delta}{\delta C_{0}}  \\
 & =  \frac{\delta}{\delta E^{0}}+t\frac{\delta}{\delta C_{0}}
\end{align}
$$

we have

$$\tag{2.6}
\begin{align}
[A^{1}(x_{1},t_{1}),A^{1}(x_{2},t_{2})] & =iX_{A^{1}_{1}}\cdot X_{A^{1}_{2}}\cdot \omega \\
 & =i(t_{1}-t_{2})
\end{align}
$$

then consider the time ordered correlation function

$$\tag{2.6}
\begin{align}
\braket{0|\mathcal{T} A^{1}(t_{1})A^{1}(t_{2})|0} & =\theta(t_{1}-t_{2})\braket{ 0|A^{1}(t_{1})A^{1}(t_{2})|0 } +\theta(t_{2}-t_{1})\braket{ 0|A^{1}(t_{2})A^{1}(t_{1})|0 }  \\
 & =\theta(t_{1}-t_{2})\braket{ 0|(-E_{0}t_{1}+C_{0})(-E_{0}t_{2}+C_{0})|0 }+(t_{1}\leftrightarrow t_{2}) \\
 & =\theta(t_{1}-t_{2})t_{2}+\theta(t_{2}-t_{1})t_{1} \\
 & =\int \frac{\mathrm{d}\omega}{2\pi i} e^{-i\omega(t_{1}-t_{2})}\left( \frac{t_{1}}{\omega-i\varepsilon}+\frac{t_{2}}{\omega+i\varepsilon}\right)​
\end{align}
$$

---

then we will consider the following action

$$\tag{0.2}
\begin{align}
S & =\int \mathrm{d}^{2}x\left(-\frac{1}{4}F_{\mu \nu}F^{\mu \nu}+\frac{\theta}{2\pi}F_{01}\right) \\
 & =\int \mathrm{d}^{2}x\left(\frac{1}{2}(\dot{A}^{1})^{2}+\dot{A}^{1}\partial _{1}A^{0}+\frac{1}{2}(\partial _{1}A^{0})^{2}+\frac{\theta}{2\pi}(\dot{A}^{1}+\partial _{1}A^{0})\right)
\end{align}
$$

where the spatial dimension is $\displaystyle{S^{1}}$ with radius $\displaystyle{R}$

---

---

make a variation

$$\tag{4.1}
\begin{align}
\delta S & =
\end{align}
$$