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
\left\{x_{a},p^{b}\right\}_{\text{Dirac}} & =\delta _{a}^{b}
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