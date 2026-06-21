the action of Proca field in 4d Minkowskian spacetime is

$$\begin{align}
S & =\int \mathrm{d}^{4}x\left(-\frac{1}{4}F_{\mu \nu}F^{\mu \nu}-\frac{1}{2}\mu ^{2}A_{\mu}A^{\mu}\right) \\
 & =\int \mathrm{d}^{4}x\left(-\frac{1}{4}(\partial _{i}A^{j}-\partial _{j}A^{i})(\partial _{i}A^{j}-\partial _{j}A^{i})+\frac{1}{2}(\dot{A}^{i}+\partial _{i}A^{0})^{2}+\frac{1}{2}\mu^{2}(A^{0})^{2}-\frac{1}{2}\mu^{2}(A^{i})^{2}\right)
\end{align}$$

the canonical momenta are

$$\begin{align}
\pi _{i} & =\frac{\partial \mathcal{L}}{\partial \dot{A}^{i}} \\
 & =\dot{A}^{i}+\partial _{i}A^{0} \\
\pi _{0} & =\frac{\partial \mathcal{L}}{\partial \dot{A}^{0}} \\
 & =0
\end{align}$$

thus we have a primary constraint $\displaystyle{\varphi _{1}=\pi _{0}\approx 0}$. the Hamiltonian is

$$\begin{align}
\mathcal{H} & =\pi _{i}\dot{A}^{i}-\mathcal{L} \\
 & =\frac{1}{2}\pi _{i}^{2}+\frac{1}{4}\left(\partial _{i}A^{j}-\partial _{j}A^{i}\right)^{2}-\pi _{i}\partial _{i}A^{0}-\frac{1}{2}\mu ^{2}(A^{0})^{2}+\frac{1}{2}\mu ^{2}(A^{i})^{2}
\end{align}$$

consider the Poisson bracket between $\displaystyle{\varphi _{1}}$ and $\displaystyle{H}$

$$\begin{align}
\left\{\varphi _{1},H\right\} & =-\frac{\delta H}{\delta A^{0}} \\
 & =\partial _{i}\pi _{i}+\mu ^{2}A^{0}
\end{align}$$

then we get a secondary constraint $\displaystyle{\varphi _{2}=\partial _{i}\pi _{i}+\mu ^{2}A^{0}}$. consider the Poisson bracket between $\displaystyle{\varphi _{1}}$ and $\displaystyle{\varphi _{2}}$:

$$\begin{align}
\left\{\varphi _{1}(x),\varphi _{2}(y)\right\} & =-\frac{\delta \varphi _{2}(y)}{\delta A^{0}(x)} \\
 & =-\mu ^{2}\delta ^{3}(x-y)
\end{align}$$

thus this is a second class constraint. the Dirac bracket is defined as

$$\begin{align}
\left\{f,g\right\}_{\text{D}} & =\left\{f,g\right\}-\int \mathrm{d}^{3}x\mathrm{d}^{3}y\left\{f,\varphi _{i}(x)\right\}(\Delta ^{-1})^{ij}\left\{\varphi _{j}(y),g\right\}
\end{align}$$

where $\displaystyle{\Delta ^{-1}}$ is the inverse of the constraint matrix $\displaystyle{\Delta _{ij}=\left\{\varphi _{i},\varphi _{j}\right\}}$, which is given by

$$\begin{align}
\Delta & =\begin{pmatrix}
0 & -\mu ^{2}\delta ^{3}(x-y) \\
\mu ^{2}\delta ^{3}(x-y) & 0
\end{pmatrix} \\
\Delta ^{-1} & =\begin{pmatrix}
0 & \frac{1}{\mu ^{2}}\delta ^{3}(x-y) \\
-\frac{1}{\mu ^{2}}\delta ^{3}(x-y) & 0
\end{pmatrix}
\end{align}$$

and they satisfy

$$\begin{align}
\sum _{k}\int \mathrm{d}^{3}z\Delta _{ik}(x,z)(\Delta ^{-1})^{kj}(z,y) & =\delta _{i}^{j}\delta ^{3}(x-y)
\end{align}$$

then the (equal time) Dirac brackets among the fields are given by

$$\begin{align}
\left\{A^{i}(x),A^{j}(y)\right\}_{\text{D}} & =\left\{A^{i}(x),A^{j}(y)\right\}=0 \\
\left\{A^{i}(x),\pi _{j}(y)\right\}_{\text{D}} & =\left\{A^{i}(x),\pi _{j}(y)\right\}=\delta ^{i}_{j}\delta ^{3}(x-y) \\
\left\{A^{i}(x),A^{0}(y)\right\}_{\text{D}} & =\int \mathrm{d}^{3}z\mathrm{d}^{3}z'\left\{A^{i}(x),\partial _{k}\pi _{k}(z)\right\} \frac{1}{\mu ^{2}}\delta ^{3}(z-z')\left\{\pi _{0}(z'),A^{0}(y)\right\} \\
 & =\int \mathrm{d}^{3}z\mathrm{d}^{3}z' \partial_{i}^{z}\delta ^{3}(x-z) \frac{1}{\mu ^{2}}\delta ^{3}(z-y) \\
 & =\frac{1}{\mu ^{2}}\partial _{i}^{x}\delta ^{3}(x-y) \\
\left\{A^{i}(x),\pi _{0}(y)\right\} & =0 \\
\left\{A^{0}(x),A^{0}(y)\right\}_{\text{D}} & =0 \\
\end{align}$$

after quantization, we lift the Dirac brackets to commutators by $\displaystyle{\left\{f,g\right\}_{\text{D}}\to \frac{1}{i}\left[f,g\right]}$. thus we the following non-zero commutators:

$$\begin{align}
[A^{i}(x),\pi _{j}(y)]_{\text{D}} & =\delta ^{i}_{j}\delta ^{3}(x-y) \\
[A^{i}(x),A^{0}(y)]_{\text{D}} & =\frac{i}{\mu ^{2}}\partial _{i}^{x}\delta ^{3}(x-y)
\end{align}$$

and the Hamiltonian is

$$\begin{align}
H & =\int \mathrm{d}^{3}x\mathcal{H} \\
 & =\int \mathrm{d}^{3}x\left(\frac{1}{2}\pi _{i}^{2}+\frac{1}{4}(\partial _{i}A^{j}-\partial _{j}A^{i})^{2}+\frac{1}{2\mu ^{2}}(\partial _{i}\pi _{i})^{2}+\frac{1}{2}\mu ^{2}(A^{i})^{2}\right)
\end{align}$$

here we have used the secondary constraint $\displaystyle{\varphi _{2}=0}$ and integral by parts to eliminate $A^{0}$ in the Hamiltonian.
