given a Lagrangian defined on $\displaystyle{TM}$

$$\begin{align}
L & =L[q^{a},\dot{a}^{a},t], & a=1,\dots,N
\end{align}$$

the canonical momentum

$$\begin{align}
p_{a} & =\frac{\partial L}{\partial \dot{q}^{a}}
\end{align}$$

and by standard procedure we get $\displaystyle{2M}$ second class constraints $\displaystyle{\chi ^{\alpha}(q^{a},p_{a},t)\approx 0}$ (and there is no first class constraints), with constraint matrix

$$\begin{align}
C^{\alpha \beta} & =\left\{\chi ^{\alpha},\chi ^{\beta}\right\}
\end{align}$$

we denote the inverse matrix of $\displaystyle{C^{\alpha \beta}}$ as $\displaystyle{C_{\alpha \beta}}$. the constraint surface $\displaystyle{\Sigma}$ is defined as $\displaystyle{\chi ^{\alpha}(q^{a},p_{a},t)\approx 0}$, and let $\displaystyle{x^{\mu}=x^{\mu}(Q^{i})}$ be the parametric equations of $\displaystyle{\Sigma}$, $\displaystyle{i=1,\dots,2(N-M)}$ of $\displaystyle{\Sigma}$, here $\displaystyle{x^{\mu}=(q^{a},p_{a})}$. $\displaystyle{\left\{Q^{i},\chi ^{\alpha}\right\}}$ forms ....

the symplectic structure defined on the $\displaystyle{T^{*}M}$ is given by $\displaystyle{\omega _{\lambda \mu}=[x_{\lambda},x_{\mu}]}$, and the induced form on $\displaystyle{\Sigma}$ of $\displaystyle{\omega _{\lambda \mu}}$ is given by

$$\begin{align}
\omega _{ij} & =\omega _{\lambda \mu} \frac{\partial x^{\lambda}}{\partial Q^{i}} \frac{\partial x^{\mu}}{\partial Q^{j}}
\end{align}$$

then the Poisson bracket defined by $\displaystyle{\omega _{ij}}$

$$\begin{align}
[f,g] & =\omega ^{ij}\frac{\partial f}{\partial Q^{i}} \frac{\partial g}{\partial Q^{j}} \\
 & =\omega ^{\mu \nu} \frac{\partial f}{\partial x^{\mu}} \frac{\partial g}{\partial x^{\nu}}-[f,\chi _{\alpha}]C^{\alpha \beta}[\chi _{\beta},g]
\end{align}$$

is exacly the Dirac bracket (see Quantization of Gauge System by Henneaux and Teitelboim). here $\displaystyle{\omega ^{ij}}$ is the inverse of $\displaystyle{\omega _{ij}}$.

a key insight is that the general solution to the eom has $\displaystyle{2(N-M)}$ independent parameters

$$\begin{align}
x^{\mu} & =x^{\mu}(C^{i}), & i=1,\dots,2(N-M)
\end{align}$$

and we can choose $\displaystyle{Q^{i}=C^{i}}$. on the other hand in the covariant phase space formalism

$$\begin{align}
\delta L & =E_{a}\delta q^{a}+\frac{\mathrm{d}}{\mathrm{d}t}\theta \\
\omega & =\delta \theta \\
 & =\frac{1}{2}\omega _{\mu \nu}\delta x^{\mu}\wedge \delta x^{\nu}
\end{align}$$

the parametrization of the solution space can be chosen as $\displaystyle{Q^{i}}$. then the symplectic form becomes

$$\begin{align}
\omega & =\frac{1}{2}\omega _{\mu \nu} \frac{\partial x^{\mu}}{\partial Q^{i}} \frac{\partial x^{\nu}}{\partial Q^{j}} \delta Q^{i}\wedge \delta Q^{j} \\
 & =\frac{1}{2}\omega _{ij} \delta Q^{i}\wedge \delta Q^{j}
\end{align}$$

which gives the same Poisson bracket as the Dirac formalism...

