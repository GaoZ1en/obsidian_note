# example 1

$$\begin{align}
S & =\int ^{t_{f}}_{t_{i}}\left(\frac{1}{2}A^{ab}\dot{x}_{a}\dot{x}_{b}+\frac{1}{2}B^{\alpha \beta}\phi _{\alpha}\phi _{\beta}-C^{\alpha a}\phi _{\alpha}\dot{x}_{a}\right)
\end{align}$$

assume $\displaystyle{A^{ab},B^{\alpha \beta},C^{\alpha a}}$ have no time dependence and good properties

## Dirac formalism

$$\begin{align}
p^{a} & =\frac{\partial L}{\partial \dot{x}_{a}}=A^{ab}\dot{x}_{b}-C^{\alpha a}\phi _{\alpha} \\
p^{\alpha} & =\frac{\partial L}{\partial \phi _{\alpha}}=0
\end{align}$$

then we have primary constraints $\displaystyle{\varphi_{1}^{\alpha}=p^{\alpha}=0}$. introduce Lagrange multipliers $\displaystyle{\lambda _{\alpha}}$, the total Hamiltonian is

$$\begin{align}
H & =p^{a}\dot{x}_{a}-L+\lambda _{\alpha}\varphi ^{\alpha} \\
 & =\frac{1}{2}(A^{-1})_{ab}(p^{a}+C^{\alpha a}\phi _{\alpha})(p^{b}+C^{\beta b}\phi _{\beta})-\frac{1}{2}B^{\alpha \beta}\phi _{\alpha}\phi _{\beta}+\lambda _{\alpha}p^{\alpha}
\end{align}$$

the consistency condition of primary constraints gives secondary constraints

$$\begin{align}
\dot{\varphi} _{1}^{\alpha} & =\left\{p^{\alpha},H\right\}=-\frac{\partial H}{\partial \phi _{\alpha}} \\
 & =B^{\alpha \beta}\phi _{\beta}-(A^{-1})_{ab}C^{\alpha a}(p^{b}+C^{\beta b}\phi _{\beta})
\end{align}$$

the secondary constraints are $\displaystyle{\varphi _{2}^{\alpha}=B^{\alpha \beta}\phi _{\beta}-(A^{-1})_{ab}C^{\alpha a}(p^{b}+C^{\beta b}\phi _{\beta})}$. the consistency condition of secondary constraints gives

$$\begin{align}
\dot{\varphi} _{2}^{\alpha} & =\left\{\varphi _{2}^{\alpha},H\right\} \\
 & =(B^{\alpha \beta}-(A^{-1})_{ab}C^{\alpha a}C^{\beta b})\lambda _{\beta}
\end{align}$$

which gives the Lagrange multipliers $\displaystyle{\lambda _{\beta}=0}$. the Poisson brackets between the constraints are

$$\begin{align}
\left\{\varphi _{1}^{\alpha},\varphi _{1}^{\beta}\right\} & =0 \\
\left\{\varphi _{1}^{\alpha},\varphi _{2}^{\beta}\right\} & =(A^{-1})_{ab}C^{\alpha a}C^{\beta b}-B^{\alpha \beta}:= \Delta ^{\alpha \beta} \\
\left\{\varphi _{2}^{\alpha},\varphi _{2}^{\beta}\right\} & =0
\end{align}$$

then the Poisson brackets should be replaced with Dirac brackets

$$\begin{align}
\left\{f,g\right\}_{\text{Dirac}} & =\left\{f,g\right\}-\left\{f,\varphi _{i}\right\}(C^{-1})^{ij}\left\{\varphi _{j},g\right\}
\end{align}$$

where the constraint matrix $\displaystyle{C_{ij}=\left\{\varphi _{i},\varphi _{j}\right\}}$ is

$$\begin{align}
C^{\alpha \beta} & =\begin{pmatrix}
0 & \Delta ^{\alpha \beta} \\
-\Delta ^{\alpha \beta} & 0
\end{pmatrix} \\
(C^{-1})_{\alpha \beta} & =\begin{pmatrix}
0 & -(\Delta ^{-1})_{\alpha \beta} \\
(\Delta ^{-1})_{\alpha \beta} & 0 \\
\end{pmatrix}
\end{align}$$

then the nontrivial Dirac brackets are

$$\begin{align}
\left\{x_{a},p^{b}\right\}_{\text{Dirac}} & =\delta _{a}^{b}
\end{align}$$

## CPS formalism

$$\begin{align}
S & =\int ^{t_{f}}_{t_{i}}\left(\frac{1}{2}A^{ab}\dot{x}_{a}\dot{x}_{b}+\frac{1}{2}B^{\alpha \beta}\phi _{\alpha}\phi _{\beta}-C^{\alpha a}\phi _{\alpha}\dot{x}_{a}\right)
\end{align}$$

take a variation

$$\begin{align}
\delta S & =\int ^{t_{f}}_{t_{i}}E^{a}\delta x_{a}+E^{\alpha}\delta \phi _{\alpha}+\theta \Big|^{t_{f}}_{t_{i}} \\
E^{a} & =-(A^{ab}\ddot{x}_{b}-C^{\alpha a}\dot{\phi}_{\alpha}) \\
E^{\alpha} & =B^{\alpha \beta}\phi _{\beta}-C^{\alpha a}\dot{x}_{a} \\
\theta & =(A^{ab}\dot{x}_{b}-C^{\alpha a}\phi_{\alpha})\delta x_{a} \\
\omega & =(A^{ab}\delta \dot{x}_{b}-C^{\alpha a}\delta \phi_{\alpha})\wedge \delta x_{a}
\end{align}$$

the eom gives the following solutions

$$\tag{.}\begin{align}
x_{a} & =V_{a}t+X_{a} \\
\phi _{\alpha} & =(B^{-1})_{\alpha \beta}C^{\beta b}V_{b}
\end{align}$$

then the symplectic form becomes

$$\tag{.}\begin{align}
\omega & =(A^{ab}-(B^{-1})_{\alpha \beta}C^{\alpha a}C^{\beta b})\delta V_{b}\wedge \delta x_{a} \\
 & =\delta p_{0}^{a}\wedge \delta x_{0,a}
\end{align}$$

$$\begin{align}
x_{a} & =V_{a}t+X_{a} \\
 & =(A-C^{T}B^{-1}C)^{-1}_{ab}p_{0}^{b}t+X_{a}
\end{align}$$

here we do a reparametrization $\displaystyle{p_{0}^{a}=(A^{ab}-(B^{-1})_{\alpha \beta}C^{\alpha a}C^{\beta b})V_{b}}$. the Hamilton flow for $\displaystyle{x_{a}}$ and $\displaystyle{p^{a}:=A^{ab}\dot{x}_{b}-C^{\alpha a}\phi _{\alpha}}$ are

$$\begin{align}
X_{x_{a}} & = \int \mathrm{d}t \frac{\delta x_{a}}{\delta x_{0,b}} \frac{\delta}{\delta p_{0}^{c}}-\frac{\delta x_{a}}{\delta p_{0}^{a}} \frac{\delta}{\delta x_{0,c}} \\
 & =(A^{-1})_{ab} \left( \frac{\delta}{\delta V_{b}}- t \frac{\delta}{\delta X_{b}}\right) \\
 & =\frac{\delta}{\delta p_{0}^{a}}- (A-C^{T}B^{-1}C)^{-1}_{ab}t\frac{\delta}{\delta x_{0,b}} \\
X_{p^{a}} & =\int \mathrm{d}t (A^{-1})_{bc}\left( \frac{\delta p^{a}}{\delta X_{b}} \frac{\delta}{\delta V_{c}}-\frac{\delta p^{a}}{\delta V_{c}} \frac{\delta}{\delta X_{b}} \right) \\
 & = \frac{\delta}{\delta x_{0,a}}
\end{align}$$

and the Poisson brackets between $\displaystyle{x_{a}}$ and $\displaystyle{p^{b}}$ are

$$\begin{align}
\left\{x_{a},p^{b}\right\} & =X_{x_{a}}\cdot X_{p^{b}}\cdot \omega \\
 & =\delta ^{b}_{a}
\end{align}$$

which agrees with the Dirac brackets.

# example 2

$$\begin{align}
S & =\int ^{t_{f}}_{t_{i}}\mathrm{d}t\left(\frac{1}{2}\dot{x}^{2}-\frac{1}{2}\omega ^{2}x^{2}+\frac{1}{2}y^{2}-\lambda y\dot{x}\right)
\end{align}$$

## covariant phase space formalism

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

## Dirac formalism

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

## equivalence between two formalisms

in the Dirac formalism approach, take the following expansion

$$\begin{align}
x & =\frac{1}{\sqrt{ 2\omega'(1-\lambda ^{2}) }}(a+a^{\dagger}) \\
p_{x} & =i\sqrt{ \frac{\omega'(1-\lambda ^{2})}{2} }\left(-a+a^{\dagger}\right) \\
\implies a & =\sqrt{ \frac{\omega'(1-\lambda ^{2})}{2} }x+i\sqrt{ \frac{1}{2\omega'(1-\lambda ^{2})} }p_{x} \\
a^{\dagger} & =\sqrt{ \frac{\omega'(1-\lambda ^{2})}{2} }x-i\sqrt{ \frac{1}{2\omega'(1-\lambda ^{2})} }p_{x}
\end{align}$$

then the Dirac bracket between $\displaystyle{a^{\dagger}}$ and $\displaystyle{a}$ gives

$$\begin{align}
\left\{a^{\dagger},a\right\}_{\text{D}} & =-i
\end{align}$$

which is equivalent to the Poisson bracket obtained in CPS formalism.

---

$$\begin{align}
S & =\int ^{t_{f}}_{t_{i}} \mathrm{d}t\left(\frac{1}{2}\dot{x}^{2}-\frac{1}{2}\omega ^{2}x^{2}+\frac{1}{2}y^{2}-\lambda y\dot{x}\right)
\end{align}$$

take a variation of the action, we get the eoms and presymplectic potential

$$\begin{align}
\delta S & =\int ^{t_{f}}_{t_{i}}\mathrm{d}t\left(-(\ddot{x}+\omega ^{2}x-\lambda \dot{y})\delta x+(y-\lambda \dot{x})\delta y\right) \\
 & +(\dot{x}-\lambda y)\delta x\Big|^{t_{f}}_{t_{i}}
\end{align}$$

$$\begin{align}
(1-\lambda ^{2})\ddot{x}+\omega ^{2}x & =0
\end{align}$$

$$\begin{align}
x(t) & =x_{0}\cos \omega't+\frac{v_{0}}{\omega'}\sin \omega't \\
y(t) & =-\lambda \omega'x_{0}\sin \omega't+\lambda v_{0}\cos \omega't
\end{align}$$

where $\displaystyle{\omega'=\frac{\omega}{\sqrt{ 1-\lambda ^{2} }}}$. then the

$$\begin{align}
\omega & =(1-\lambda ^{2})\delta \dot{x}\wedge \delta x \\
 & =(1-\lambda ^{2})\delta x_{0}\wedge \delta v_{0} \\
 & =(1-\lambda ^{2})\delta v_{0}\wedge \delta x_{0}
\end{align}$$

$$\begin{align}
\left\{x_{0},v_{0}\right\} & =\frac{1}{1-\lambda ^{2}}
\end{align}$$