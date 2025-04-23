## classical system

$$\tag{1.1}
\begin{align}
L & =\frac{1}{2}A_{ab}\dot{x}^{a}\dot{x}^{b}, a,b=1,\dots,n
\end{align}
$$

assume that $\displaystyle{A_{ab}}$ is positive definite, then by some linear transformation $\displaystyle{x^{a}\to \xi ^{a} }$, we can diagonalized $\displaystyle{A_{ab}}$ into $\displaystyle{\delta _{ab}}$. then the Lagrangian becomes

$$\tag{1.2}
\begin{align}
L & =\frac{1}{2}\delta _{ab}\dot{\xi}^{a}\dot{\xi}^{b}
\end{align}
$$

make a variation, we have

$$\tag{1.3}
\begin{align}
\delta L & =-\delta _{ab}\ddot{\xi}^{a}\delta\xi^{b}+\frac{\mathrm{d}}{\mathrm{d}t}(\delta _{ab}\dot{\xi}^{a}\delta \xi ^{b}) \\
 & =E_{a}\delta \xi ^{a}+\frac{\mathrm{d}}{\mathrm{d}t}\theta \\
E_{a} & =-\delta _{ab}\ddot{\xi}^{a} \\
\theta & =\delta _{ab}\dot{\xi}^{a}\delta \xi ^{b} \\
\implies \omega=\delta \theta & =\delta _{ab}\delta \dot{\xi}^{a}\wedge \delta \xi ^{b} \\
 & =\delta \pi _{a}\wedge \delta \xi ^{b}
\end{align}
$$

where we define $\displaystyle{\pi _{a}=\delta _{ab}\dot{\xi}^{b}}$ as canonical momentum. in order to impose quantization, we need to consider Poisson brackets between two classical observables $\displaystyle{f(\xi ^{a}, \pi _{a})}$ and $\displaystyle{g(\xi ^{a},\pi _{a})}$. the Hamilton vector corresponding to $\displaystyle{f(\xi ^{a},\pi _{a})}$ is 

$$\tag{1.4}
\begin{align}
X_{f} & =\frac{\delta f}{\delta \pi _{a} } \frac{\delta}{\delta \xi ^{a}}- \frac{\delta f}{\delta \xi ^{a}} \frac{\delta}{\delta \pi _{a}}
\end{align}
$$

and the Poisson bracket between $\displaystyle{f}$ and $\displaystyle{g}$ is defined as

$$\tag{1.5}
\begin{align}
\left\{f,g\right\} & =X_{f}\cdot X_{g}\cdot \omega
\end{align}
$$

in particular

$$\tag{1.6}
\begin{align}
\left\{\xi ^{a},\pi _{b}\right\} & =- \frac{\delta}{\delta \pi _{a}} \cdot \frac{\delta}{\delta \xi ^{b}}\cdot \delta \pi _{c}\wedge \delta \xi ^{c} \\
 & =\delta ^{a}_{b}
\end{align}
$$

good. then impose quantization, quantum observables