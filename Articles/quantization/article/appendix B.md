in this appendix we discuss electric fields.

## electric fields in 1+1 dimensional spacetime

we first consider electric fields defined in 1+1 dimensional spacetime, and the space is a circle with radius $\displaystyle{R}$. the action is defined as follows:

$$\tag{1.1}
\begin{align}
S & =\int \mathrm{d}^{2}x\left(-\frac{1}{4}F_{\mu \nu}F^{\mu \nu}+\frac{\Theta}{2\pi}F_{01}\right)
\end{align}
$$

where $\displaystyle{F_{\mu \nu}=\partial _{\mu}A_{\nu}-\partial _{\nu}A_{\mu}}$ is the field strength, and $\displaystyle{\Theta}$ is a constant. we first take a variation of the action

$$\tag{1.2}
\begin{align}
\delta S & =\int \mathrm{d}^{2}x\left(E_{1}\delta A^{1}+E_{0}\delta A^{0}\right)+\theta|_{\Sigma _{f}-\Sigma _{i}}
\end{align}
$$

where $\displaystyle{E_{1}=-\partial _{0}(\dot{A}^{1}+\partial _{1}A^{0})}$ and $\displaystyle{E_{0}=-\partial _{1}(\dot{A}^{1}+\partial _{1}A^{0})}$ are the Euler-Lagrangian operators, and $\displaystyle{\theta}$ is the symplectic potential. the equation of motion is given by

$$\tag{1.3}
\begin{align}
\partial _{0}(A^{1}+\partial _{1}A^{0})=\partial _{1}(A^{1}+\partial _{1}A^{0})=0
\end{align}
$$

which solves to

$$\tag{1.4}
\begin{align}
\dot{A}^{1}+\partial _{1}A^{0} & =-E_{0}
\end{align}
$$

we choose the Column gauge $\displaystyle{\partial _{1}A^{1}=0}$, which implies the constraints equation $\displaystyle{A^{1}=0}$. so there is no local degrees of freedom. and the only degree of freedom is the zero mode of $\displaystyle{A^{1}}$, which is defined as

$$\tag{1.5}
\begin{align}
\phi(t) & =\int_{0}^{2\pi R}\mathrm{d}xA^{1}(x,t)
\end{align}
$$

the action can be rewritten as

$$\tag{1.6}
\begin{align}
S & =\int \mathrm{d}t\left(\frac{1}{4\pi R^{2}}\dot{\phi}^{2}+\frac{\theta}{2\pi}\dot{\phi}\right)
\end{align}
$$

the equation of motion for $\displaystyle{\phi}$ is then

$$\tag{1.7}
\begin{align}
E_{\phi} & =-\frac{1}{4\pi R^{2}}\ddot{\phi}=0
\end{align}
$$

which implies that $\displaystyle{\phi=E_{0}t+\phi_{0}}$. then the symplectic form is given by

$$\tag{1.8}
\begin{align}
\omega & =\frac{1}{2\pi R^{2}}\delta E_{0}\wedge \delta \phi_{0}
\end{align}
$$

the Hamiltonian flow corresponding to $\displaystyle{\phi}$ is then defined as

$$\tag{1.9}
\begin{align}
X_{\phi(t)} & =2\pi R^{2}\left(\frac{\delta \phi}{\delta \phi_{0}} \frac{\delta}{\delta E_{0}}-\frac{\delta \phi}{\delta E_{0}} \frac{\delta}{\delta \phi _{0}}\right) \\
 & =2\pi R^{2}\left(\frac{\delta}{\delta E_{0}}-t \frac{\delta}{\delta \phi _{0}}\right)
\end{align}
$$

the commutation relation between $\displaystyle{\phi(t)}$ and $\displaystyle{\phi(t')}$ is given by

$$\tag{1.10}
\begin{align}
[\phi(t),\phi(t')] & =iX_{\phi(t)}\cdot X_{\phi(t')}\cdot \omega \\
 & =2\pi R^{2}(t'-t)
\end{align}
$$

and the time ordered 2-point correlation function is

$$\tag{1.11}
\begin{align}
\braket{ 0|\mathcal{T}\phi(t)\phi(t')|0 } & =\theta(t-t')\braket{ 0|\phi(t)\phi(t')|0 } +\theta(t'-t)\braket{ 0|\phi(t')\phi(t)|0 }  \\
 & =2\pi R^{2}[\theta(t-t')t'+\theta(t'-t)t]
\end{align}
$$

## electric fields in 1+3 dimensional spacetime

in this subsection we will consider electric field in 1+3 dimensional spacetime. again the metric is flat with signature $\displaystyle{(-,+,+,+)}$. the Cauchy surfaces are chosen to be the constant time hypersurfaces with norm vector $\displaystyle{\tau ^{\mu}=(1,0,0,0)}$. the boundary condition is chosen to be that the dynamical fields vanish at infinity. the action is given by

$$\tag{1.12}
\begin{align}
S & =\int \mathrm{d}^{4}x\left(-\frac{1}{4}F_{\mu \nu}F^{\mu \nu}\right)
\end{align}
$$

the variation of the action gives

$$\tag{1.13}
\begin{align}
\delta S & =\int \mathrm{d}^{4}xE_{\nu}\delta A^{\nu}+\theta|_{\Sigma _{f}-\Sigma _{i}} \\
E_{\nu} & =\partial ^{\mu}F_{\mu \nu} \\
\theta & =\int _{\Sigma}\mathrm{d}^{3}x\delta _{ij}\dot{A}^{i}\delta A^{j}
\end{align}
$$

impose Column gauge $\displaystyle{\vec{\nabla}\cdot \vec{A}=0}$, the equation of motion for $\displaystyle{A^{0}}$ implies $\displaystyle{\vec{\nabla}^{2}A^{0}=0}$. then by boundary condition, we have the constraint $\displaystyle{A^{0}=0}$. a general solution to the equation of motion is given by

$$\tag{1.14}
\begin{align}
A^{i}(x) =&\int \mathrm{d}^{3}\vec{k}\sum ^{2}_{s=1} e^{s,i}_{k}[a_{ks}\sigma _{k}(x)+a^{\dagger}_{ks}\sigma ^{*}_{k}(x)]
\end{align}
$$

then the symplectic form is defined as

$$\tag{1.15}
\begin{align}
\omega & =\delta \theta \\
 & =i\int \mathrm{d}^{3}\vec{k}\sum ^{2}_{s=1} \delta a^{\dagger}_{ks}\wedge \delta a_{ks}
\end{align}
$$

