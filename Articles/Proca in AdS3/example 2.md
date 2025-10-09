## 约束系统完整分析（遵循“quantization of gauge systems.md”的 formalism）

### 模型与记号

变量与拉氏量：
$$
\begin{align}
S &= \int_{t_i}^{t_f}\!\mathrm{d}t\;L,\\
L(x,\dot x;y,\lambda) &= \tfrac12\dot x^{2}-\tfrac12\omega ^{2}x^{2}+\tfrac12 y^{2}-\lambda\, y\,\dot x.
\end{align}
$$

$$\tag{.}\begin{align}
(1-\lambda ^{2})\ddot{x}& =\omega ^{2}x
\end{align}$$

相空间坐标与正则对：$\,(x,p_x),(y,p_y),(\lambda,p_\lambda)$，基本泊松括号（沿用笔记记号 $[\,,\,]$ 表示 PB）：
$$
\begin{align}
[x,p_x]=1,\quad [y,p_y]=1,\quad [\lambda,p_\lambda]=1,\quad \text{其余为 }0.
\end{align}
$$

# covariant phase space formalism

take a variation of the action, we get the eoms and presymplectic potential

$$\begin{align}
\delta S & =\int ^{t_{f}}_{t_{i}}\left(E_{x}\delta x+E_{y}\delta y\right)+\theta|_{t_{f}}-\theta|_{t_{i}} \\
E_{x} & =-\ddot{x}-\omega ^{2}x+\lambda \dot{y} \\
E_{y} & =y-\lambda \dot{x} \\
\theta & =(\dot{x}-\lambda y)\delta x
\end{align}$$

take a variation of the presymplectic potential, we get the presymplectic form

$$\begin{align}
\omega & =(\delta \dot{x}-\lambda \delta y)\wedge \delta x
\end{align}$$

the general solution of the eoms is

$$\begin{align}
x & =\frac{1}{\sqrt{ 2\omega'(1-\lambda ^{2}) }}(ae^{-i\omega' t}+a^{\dagger}e^{i\omega't}) \\
y & =\frac{i\omega'\lambda}{\sqrt{ 2\omega'(1-\lambda ^{2}) }}(-ae^{-i\omega't}+a^{\dagger}e^{i\omega't})
\end{align}$$

where $\displaystyle{\omega'=\frac{\omega ^{2}}{1-\lambda ^{2}}}$. under this parametrization, the presymplectic form becomes

$$\begin{align}
\omega & =i\delta a^{\dagger}\wedge \delta a
\end{align}$$

which gives the following standard Poisson bracket

$$\begin{align}
\{a,a^{\dagger}\} & =-i
\end{align}$$

# Dirac formalism

the canonical momenta are given by

$$\begin{align}
p_{x} & =\frac{\delta S}{\delta \dot{x}}=\dot{x}-\lambda y \\
p_{y} & =\frac{\delta S}{\delta \dot{y}}=0
\end{align}$$

we get a primary constraint $\displaystyle{\phi _{1}=p_{y}\approx 0}$. the total Hamiltonian is given by

$$\begin{align}
H_{\text{tot}} & =H+u\phi _{1} \\
 & =p_{x}\dot{x}-L+u\phi _{1} \\
 & =\frac{1}{2}(p_{x}+\lambda y)^{2}+\frac{1}{2}\omega ^{2}x^{2}-\frac{1}{2}y^{2}+up_{y}
\end{align}$$

the time evolution of primary constraint $\displaystyle{\phi _{1}}$ should vanish weakly, which gives a secondary constraint

$$\begin{align}
\phi _{2}=\dot{\phi}_{1} & =\{\phi _{1},H_{\text{tot}}\} \\
 & =(1-\lambda ^{2})y-\lambda p_{x}\approx 0
\end{align}$$

since

$$\begin{align}
\left\{\phi _{1},\phi _{2}\right\} & =\lambda ^{2}-1:= -\Delta\neq 0
\end{align}$$

this is a system with 2 second-class constraints. to ensure the consistency of $\displaystyle{\phi _{2}}$, we have

$$\begin{align}
\dot{\phi}_{2} & =(1-\lambda ^{2})u+\lambda \omega ^{2}x\implies u=\frac{\lambda\omega ^{2}x}{\lambda ^{2}-1}
\end{align}$$

thus the Hamiltonian becomes

$$\begin{align}
H' & =\frac{1}{2}(p_{x}+\lambda y)^{2}+\frac{1}{2}\omega ^{2}x^{2}-\frac{1}{2}y^{2}+\frac{\lambda \omega ^{2}x}{\lambda ^{2}-1}p_{y}
\end{align}$$

the Poisson brackets are replaced by Dirac brackets on the constraint surface defined by $\displaystyle{\phi _{1}\approx0,\phi _{2}\approx 0}$

$$\begin{align}
\left\{F,G\right\}_{\text{D}}=\left\{F,G\right\}-\left\{F,\phi _{i}\right\}C^{ij}\left\{\phi _{j},G\right\}
\end{align}$$

where the constraint matrix and its inverse are

$$\begin{align}
C & =\begin{pmatrix}
0 & -\Delta \\
\Delta & 0
\end{pmatrix}, & C^{-1} & =\begin{pmatrix}
0 & \Delta ^{-1} \\
-\Delta ^{-1} & 0
\end{pmatrix}
\end{align}$$

thus the nontrivial Diract brackets are

$$\begin{align}
\left\{x,p_{x}\right\}_{\text{D}} & =1 \\
\left\{x,y\right\}_{\text{D}} & =\frac{\lambda}{1-\lambda ^{2}}
\end{align}$$

and the time evolution of canonical variables are given by

$$\begin{align}
\dot{x} & =\left\{x,H'\right\}_{\text{D}} \\
 & \frac{p_{x}}{1-\lambda ^{2}} \\
\dot{p}_{x} & =\left\{p_{x},H'\right\}_{\text{D}} \\
 & =-\omega ^{2}x-\frac{\lambda\omega ^{2}}{\lambda ^{2}-1}p_{y} \\
 & \approx -\omega ^{2}x \\
\dot{y} & =\left\{y,H'\right\}_{\text{D}} \\
 & =\omega ^{2}\frac{\lambda}{\lambda ^{2}-1}x+\frac{\lambda \omega ^{2}}{\lambda ^{2}-1}p_{y}\frac{\lambda}{\lambda ^{2}-1} \\
 & \approx \frac{\omega ^{2}\lambda x}{\lambda ^{2}-1}
\end{align}$$

which is equivalent to the following unconstrained system

$$\begin{align}
H & =\frac{p_{x}^{2}}{2(1-\lambda ^{2})}+\frac{1}{2}\omega ^{2}x^{2}
\end{align}$$

# equivalence between two formalisms

