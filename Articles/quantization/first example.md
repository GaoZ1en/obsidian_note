$$\tag{0.1}
\begin{align}
L & =\frac{1}{2}A_{ab}\dot{x}^{a}\dot{x}^{b}-V(x)
\end{align}
$$

here we assume that $\displaystyle{A^{-1,ab}}$ exists

## canonical formalism

$$\tag{1.2}
\begin{align}
p_{a}=\frac{\partial L}{\partial \dot{x}^{a}}=A_{ab}\dot{x}^{b}\implies \dot{x}^{a}=A^{-1,ab}\pi _{b}
\end{align}
$$

the Hamiltonian is

$$\tag{1.3}
\begin{align}
H & =p_{a}\dot{x}^{a}-L \\
 & =\frac{1}{2}(A^{-1})^{ab}p _{a}p _{b}+V(x)
\end{align}
$$

here the symplectic manifold is $\displaystyle{\mathbb{R}^{2n}}$, with symplectic structure $\displaystyle{\mathrm{d}p_{a}\wedge \mathrm{d}x^{a}}$, and the Poisson brackets between $\displaystyle{f(x^{a},p _{a})}$ and $\displaystyle{g(x^{a},p _{a})}$ is defined as

$$\tag{1.4}
\begin{align}
\left\{f,g\right\} & =\frac{\partial f}{\partial x^{a}} \frac{\partial g}{\partial p_{a}}-\frac{\partial f}{\partial p_{a}} \frac{\partial g}{\partial x^{a}}
\end{align}
$$

or we can write the Hamilton vector corresponding to $\displaystyle{f}$ as

$$\tag{1.5}
\begin{align}
X_{f} & =\frac{\partial f}{\partial x^{a}} \frac{\partial}{\partial p_{a}}- \frac{\partial f}{\partial p_{a}} \frac{\partial}{\partial x^{a}}
\end{align}
$$

and the Poisson brackets between $\displaystyle{f}$ and $\displaystyle{g}$ can be written as

$$\tag{1.6}
\begin{align}
\left\{f,g\right\} & =X_{f}\cdot X_{g}\cdot \omega
\end{align}
$$

in particular, we have

$$\tag{1.7}
\begin{align}
\left\{x^{a},p_{b}\right\}=\delta ^{a}_{b}
\end{align}
$$

## CPS formalism

$$\tag{2.1}
\begin{align}
\delta L & =A_{ab}\dot{x}^{a}\delta \dot{x}^{b}-\frac{\partial V}{\partial x^{a}}\delta x^{a} \\
 & =-\left( A_{ab}\ddot{x}^{a}+\frac{\partial V}{\partial x^{b}} \right)\delta x^{b}+\frac{\mathrm{d}}{\mathrm{d}t}(A_{ab}\dot{x}^{a}\delta x^{b}) \\
E_{a} & =-A_{ab}\ddot{x}^{b}-\frac{\partial V}{\partial x^{a}} \\
\theta & =A_{ab}\dot{x}^{a}\delta x^{b} \\
\implies \omega=\delta \theta & =A_{ab}\delta \dot{x}^{a}\wedge \delta x^{b}
\end{align}
$$

define $\displaystyle{p_{a}=A_{ab}\dot{x}^{b}}$ for convenience, then the symplectic form can be written as $\displaystyle{\omega=\delta p _{a}\wedge \delta x^{a}}$. the Hamilton vector corresponding to $\displaystyle{f(x^{a},p _{a})}$ can be written as

$$\tag{2.2}
\begin{align}
X_{f}= \frac{\delta f}{\delta x^{a}} \frac{\delta}{\delta p _{a}}- \frac{\delta f}{\delta p_{a}} \frac{\delta}{\delta x^{a}}
\end{align}
$$

and the Poisson brackets between $\displaystyle{f}$ and $\displaystyle{g}$ is defined as

$$\tag{2.3}
\begin{align}
\left\{f,g\right\} & =X_{f}\cdot X_{g}\cdot \omega \\
 & = \frac{\delta f}{\delta x^{a}} \frac{\delta g}{\delta p_{a}}-\frac{\delta f}{\delta p_{a}} \frac{\delta g}{\delta x^{a}}
\end{align}
$$

in particular, we have

$$\tag{2.4}
\begin{align}
\left\{x^{a},p_{b}\right\}=\delta ^{a}_{p}
\end{align}
$$

then canonical formalism is equivalent to the CPS formalism.

---

$$\tag{0.2}
\begin{align}
L & =\frac{1}{2}A_{ab}\dot{x}^{a}\dot{x}^{b}+B_{a}\dot{x}^{a}-V(x)
\end{align}
$$

## canonical formalism

$$\tag{3.1}
\begin{align}
p_{a}= \frac{\partial L}{\partial \dot{x}^{a}}= A_{ab}\dot{x}^{b}+B_{a}\implies \dot{x}^{a}=(A^{-1})^{ab}(p_{a}-B_{a})
\end{align}
$$

the Hamiltonian is

$$\tag{3.2}
\begin{align}
H & =p_{a}\dot{x}^{a}-L &  \\
 & =p_{a}(A^{-1})^{ab}(p_{b}-B_{b})-\frac{1}{2}(A^{-1})^{ab}(p_{a}-B_{a})(p_{b}-B_{b})+V(x) \\
 & -B_{a}(A^{-1})^{ab}(p_{b}-B_{b}) \\
 & =\frac{1}{2}(A^{-1})^{ab}(p_{a}-B_{a})(p_{b}-B_{b})+V(x)
\end{align}
$$

again the symplectic manifold $\displaystyle{\mathbb{R}^{2n}}$ can be parameterized by $\displaystyle{x^{a}}$ and $\displaystyle{p_{a}}$, with symplectic structure $\displaystyle{\omega=\mathrm{d}p_{a}\wedge \mathrm{d}x^{a}}$. the Hamiltonian vector corresponding to $\displaystyle{f(x^{a},p_{a})}$ is

$$\tag{3.3}
\begin{align}
f(x^{a},p_{a}) & =\frac{\partial f}{\partial x^{a}} \frac{\partial}{\partial p_{a}}- \frac{\partial f}{\partial p_{a}} \frac{\partial}{\partial x^{a}}
\end{align}
$$

and the Poisson brackets between $\displaystyle{f}$ and $\displaystyle{g}$ is defined as

$$\tag{3.4}
\begin{align}
\left\{f,g\right\} & =X_{f}\cdot X_{g}\cdot \omega \\
 & =\frac{\partial f}{\partial x^{a}} \frac{\partial g}{\partial p_{a}}-\frac{\partial f}{\partial p_{a}} \frac{\partial g}{\partial x^{a}}
\end{align}
$$

in particular, we have

$$\tag{3.5}
\begin{align}
\left\{x^{a},p_{b}\right\} & =\delta ^{a}_{b}
\end{align}
$$

## CPS formalism

$$\tag{4.1}
\begin{align}
\delta L & =A_{ab}\dot{x}^{a}\delta \dot{x}^{b}+B_{a}\delta\dot{x}^{a}-\frac{\partial V}{\partial x^{a}} \delta x^{a} \\
 & =-\left( A_{ab}\ddot{x}^{b}+B_{a}+ \frac{\partial V}{\partial x^{a}} \right)\delta x^{a}+\frac{\mathrm{d}}{\mathrm{d}t}((A_{ab}\dot{x}^{b}+B_{a})\delta x^{a}) \\
\theta & =(A_{ab}\dot{x}^{b}+B_{a})\delta x^{a} \\
\implies \omega=\delta \theta & =\delta(A_{ab}\dot{x}^{b}+B_{a})\wedge \delta x^{a}
\end{align}
$$

for convenience, we define $\displaystyle{p_{a}=A_{ab}\dot{x}^{b}+B_{a}}$, then the symplectic form can be written as $\displaystyle{\omega=\delta p_{a}\wedge \delta x^{a}}$. the Hamilton vector corresponding to $\displaystyle{f(x^{a},p_{a})}$ can be written as

$$\tag{4.2}
\begin{align}
f(x^{a},p_{a}) & =\frac{\delta f}{\delta x^{a}} \frac{\delta}{\delta p_{a}}- \frac{\delta f}{\delta p_{a}} \frac{\delta}{\delta x^{a}}
\end{align}
$$

and the Poisson brackets between $\displaystyle{f}$ and $\displaystyle{g}$ is defined as

$$\tag{4.3}
\begin{align}
\left\{f,g\right\} & =X_{f}\cdot X_{g}\cdot \omega \\
 & = \frac{\delta f}{\delta x^{a}} \frac{\delta g}{\delta p_{a}}-\frac{\delta f}{\delta p_{a}} \frac{\delta g}{\delta x^{a}}
\end{align}
$$

in particular, we have

$$\tag{4.4}
\begin{align}
\left\{x^{a},p_{b}\right\} & =\delta ^{a}_{b}
\end{align}
$$

---

$$\tag{0.3}
\begin{align}
L & =\frac{1}{2}A_{ab}\dot{x}^{a}\dot{x}^{b}+B_{a}\dot{x}^{a}\phi-\frac{1}{2}\phi ^{2}
\end{align}
$$

## $\displaystyle{\phi}$ as dynamical variable

$$\tag{5.1}
\begin{align}
\delta L & =-(A_{ab}\ddot{x}^{b}+B_{a}\dot{\phi})\delta x^{a}+(B_{a}\dot{x}^{a}-\phi)\delta \phi+\frac{\mathrm{d}}{\mathrm{d}t}(A_{ab}\dot{x}^{a}\delta x^{b}+B_{a}\phi \delta x^{a}) \\
E_{x} & =-(A_{ab}\ddot{x}^{b}+B_{a}\dot{\phi}) \\
E_{\phi} & =B_{a}\dot{x}^{a}-\phi \\
\theta & =A_{ab}\dot{x}^{a}\delta x^{b}+B_{a}\phi \delta x^{a} \\
\implies \omega =\delta \theta & =A_{ab}\delta \dot{x}^{a}\wedge \delta x^{b}+B_{a}\delta \phi \wedge \delta x^{a}
\end{align}
$$

the general solutions of equation of motion

$$\tag{5.2}
\begin{align}
(A_{ab}+B_{a}B_{b})\ddot{x}^{b}=0 \\
\phi-B_{a}\dot{x}^{a}=0
\end{align}
$$

assume that $\displaystyle{\mathrm{rank}(A_{ab}+B_{a}B_{b})=n}$, then the only possibility is $\displaystyle{\ddot{x}^{a}=0\implies x^{a}=p^{a}_{0}t+x_{0}^{a},\phi=B_{a}p_{0}^{a}}$. then the symplectic form becomes

$$\tag{5.3}
\begin{align}
\omega=(A_{ab}+B_{a}B_{b})\delta p_{0}^{a}\wedge \delta x_{0}^{a}
\end{align}
$$
## $\displaystyle{\phi}$ as Lagrangian multiplier

make a variation respect to $\displaystyle{\phi}$

$$\tag{6.1}
\begin{align}
\frac{\delta L}{\delta \phi} & =(B_{a}\dot{x}^{a}-\phi)\delta \phi=0 \\
\implies \phi & =B_{a}\dot{x}^{a}
\end{align}
$$

then plug (6.1) back into the Lagrangian (0.3), we have

$$\tag{6.2}
\begin{align}
L & =\frac{1}{2}(A_{ab}+B_{a}B_{b})\dot{x}^{a}\dot{x}^{b}
\end{align}
$$

then by similar construction in section 2, we derive the symplectic form

$$\tag{6.3}
\begin{align}
\omega=\delta p_{a}\wedge \delta x^{a}
\end{align}
$$

where $\displaystyle{p_{a}=(A_{ab}+B_{a}B_{b})\dot{x}^{b}}$. and this is equivalent with (5.4)

## canonical formalism with constraints

$$\tag{7.1}
\begin{align}
p_{a} & = \frac{\partial L}{\partial \dot{x}^{a}}=A_{ab}\dot{x}^{b}+B_{a}\phi \\
p_{\phi} & =\frac{\partial L}{\partial \phi}=0
\end{align}
$$

the we have the primary constraint $\displaystyle{\varphi _{1}=p_{\phi}=0}$. then the Hamiltonian is

$$\tag{7.2}
\begin{align}
H & = p_{a}\dot{x}^{a}-L+u\varphi _{1} \\
 & =p_{a}(A^{-1})^{ab}(p_{b}-B_{b}\phi)-\frac{1}{2}(A^{-1})^{ab}(p_{a}-B_{a}\phi)(p_{b}-B_{b}\phi)+B_{a}\phi(A^{-1})^{ab}(p_{b}-B_{b}\phi)+V(x)+up_{\phi} \\
 & =\frac{1}{2}(A^{-1})^{ab}(p_{a}-B_{a}\phi)(p_{b}-B_{b}\phi)+V(x)+up_{\phi}
\end{align}
$$

then consider the Poisson bracket between $\displaystyle{H}$ and $\displaystyle{\varphi=p_{\phi}}$

$$\tag{7.3}
\begin{align}
\dot{\varphi}_{1} & =\left\{\varphi _{1},H\right\}=- \frac{\partial H}{\partial \phi} \\
 & =(A^{-1})^{ab}B_{a}(p_{b}-B_{b}\phi)
\end{align}
$$

then we have a secondary constraint $\displaystyle{\varphi _{2}=p_{a}-B_{a}\phi=0}$. then consider the Poisson bracket between $\displaystyle{H}$ and $\displaystyle{\varphi _{2}}$

$$\tag{7.4}
\begin{align}
\dot{\varphi}_{2} & =\left\{\varphi _{2},H\right\}=\left\{p_{a}-B_{a}\phi,H\right\} =- \frac{\partial H}{\partial x^{a}}-B_{a} \frac{\partial H}{\partial p_{\phi}} \\
 & =-\frac{\partial V}{\partial x^{a}}-B_{a}u
\end{align}
$$

then we have the Hamiltonian(?) multiplier $\displaystyle{u=-(B^{-1})^{a} \frac{\partial V}{\partial x^{a}}}$, where we denote $\displaystyle{(B^{-1})^{a}=\frac{B^{a}}{B_{a}B^{a}}}$. then we have the following Hamiltonian

$$\tag{7.5}
\begin{align}
H & =\frac{1}{2}(A^{-1})^{ab}(p_{a}-B_{a}\phi)(p_{b}-B_{b}\phi)+V(x)-(B^{-1})^{a} \frac{\partial V}{\partial x^{a}}p_{\phi}
\end{align}
$$

the Poisson brackets should be replaced by Dirac brackets. consider Poisson brackets between $\displaystyle{\varphi _{1}}$ and $\displaystyle{\varphi _{2}}$

$$\tag{7.6}
\begin{align}
\left\{\varphi _{1}, \varphi _{2}\right\} & =
\end{align}
$$