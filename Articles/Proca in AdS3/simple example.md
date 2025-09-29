$$\begin{align}
S & =\int ^{t_{f}}_{t_{i}}\left(\frac{1}{2}A^{ab}\dot{x}_{a}\dot{x}_{b}+\frac{1}{2}B^{\alpha \beta}\phi _{\alpha}\phi _{\beta}-C^{\alpha a}\phi _{\alpha}\dot{x}_{a}\right)
\end{align}$$

assume $\displaystyle{A^{ab},B^{\alpha \beta},C^{\alpha a}}$ have no time dependence and good properties

# Dirac formalism

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
\left\{f,g\right\}_{\text{Dirac}} & =\left\{f,g\right\}+\left\{f,\varphi _{i}\right\}(C^{-1})^{ij}\left\{\varphi _{j},g\right\}
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
\left\{x_{a},p^{b}\right\} & =\delta _{a}^{b}
\end{align}$$

# CPS formalism

$$\begin{align}
S & =\int ^{t_{f}}_{t_{i}}\left(\frac{1}{2}A^{ab}\dot{x}_{a}\dot{x}_{b}+\frac{1}{2}B^{\alpha \beta}\phi _{\alpha}\phi _{\beta}-C^{\alpha a}\phi _{\alpha}\dot{x}_{a}\right)
\end{align}$$

take a variation

$$\begin{align}
\delta S & =\int ^{t_{f}}_{t_{i}}E^{a}\delta x_{a}+E^{\alpha}\delta \phi _{\alpha}+\theta \Big|^{t_{f}}_{t_{i}} \\
E^{a} & =-(A^{ab}\ddot{x}_{b}-C^{\alpha a}\dot{\phi}_{\alpha}) \\
E^{\alpha} & =B^{\alpha \beta}\phi _{\beta}-C^{\alpha a}\dot{x}_{a} \\
\theta & =(A^{ab}\dot{x}_{b}+C^{\alpha a}\dot{\phi}_{\alpha})\delta x_{a} \\
\omega & =(A^{ab}\delta \dot{x}_{b}+C^{\alpha a}\delta \dot{\phi}_{\alpha})\wedge \delta x_{a}
\end{align}$$

the eom gives the following solutions

$$\begin{align}
A^{ab}\ddot{x}_{b}-C^{\alpha a}\dot{\phi}_{\alpha} \\
x
\end{align}$$