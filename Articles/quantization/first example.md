$$\tag{1.1}
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
