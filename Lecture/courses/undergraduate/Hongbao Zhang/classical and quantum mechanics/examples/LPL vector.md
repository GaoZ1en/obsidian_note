## hydrogen atom

we have the Lagrangian

$$
\tag{1.1}
\begin{align}
L & =\frac{1}{2}\dot{x}_{i}^{2}-\frac{\alpha}{r}
\end{align}
$$

where $\displaystyle{i=1,2,3}$. consider the following transformation

$$
\tag{1.2}
\begin{align}
X_{i} & =\int \mathrm{d}t(2x_{i}\dot{x}_{j}-\dot{x}_{i}x_{j}-\delta _{ij}x_{k}\dot{x}_{k}) \frac{\delta}{\delta x_{j}}
\end{align}
$$

then

$$
\tag{1.3}
\begin{align}
X_{i}\cdot \delta L & =\dot{x}_{j} \frac{\mathrm{d}}{\mathrm{d}t}(2x_{i}\dot{x}_{j}-\dot{x}_{i}x_{j}-\delta _{ij}x_{k}\dot{x}_{k})+\frac{\alpha}{r^{3}}x_{j}(2x_{i}\dot{x}_{j}-\dot{x}_{i}x_{j}-\delta _{ij}x_{k}\dot{x}_{k}) \\
 & =(2x_{i}\dot{x}_{j}\ddot{x}_{j}-\ddot{x}_{i}x_{j}\dot{x}_{j}-\dot{x}_{i}x_{j}\ddot{x}_{j})-\frac{\alpha}{r^{3}}(x_{i}x_{j}\dot{x}_{j}-\dot{x}_{i}x_{j}x_{j}) \\
 & =\frac{\mathrm{d}}{\mathrm{d}t}\left( x_{i}\dot{x}_{j}\dot{x}_{j}-\dot{x}_{i}x_{j}\dot{x}_{j}+\frac{\alpha}{r}x_{i} \right)
\end{align}
$$

and the corresponding Noether charge is

$$
\tag{1.4}
\begin{align}
M_{i} & =X_{i}\cdot \theta-\alpha _{i} \\
 & =\dot{x}_{j}(2x_{i}\dot{x}_{j}-\dot{x}_{i}x_{j}-\delta _{ij}x_{k}\dot{x}_{k})-\left( x_{i}\dot{x}_{j}\dot{x}_{j}-\dot{x}_{i}x_{j}\dot{x}_{j}+\frac{\alpha}{r}x_{i} \right) \\
 & =x_{i}\dot{x}_{j}\dot{x}_{j}-\dot{x}_{i}x_{j}\dot{x}_{j}-\frac{\alpha}{r}x_{i}
\end{align}
$$

which is exacly the Laplace-Runge-Lenz vector.

## d-dim oscillator

$$
\tag{2.1}
\begin{align}
L & =\frac{1}{2}\dot{x}_{i}\dot{x}_{i}-\frac{1}{2}\omega ^{2}x_{i}x_{i}
\end{align}
$$

consider

$$
\tag{2.2}
\begin{align}
X_{ij} & =\int \mathrm{d}t(\delta _{ik}\dot{x}_{j}+\delta _{jk}\dot{x}_{i}) \frac{\delta}{\delta x_{k}}
\end{align}
$$

then we have

$$
\tag{2.3}
\begin{align}
X_{ij}\cdot \delta L & =\dot{x}_{k} \frac{\mathrm{d}}{\mathrm{d}t}(\delta _{ik}\dot{x}_{j}+\delta _{jk}\dot{x}_{i})-\omega ^{2}x_{k}(\delta _{ik}\dot{x}_{j}+\delta _{jk}\dot{x}_{i}) \\
 & =\dot{x}_{i}\ddot{x}_{j}+\dot{x}_{j}\ddot{x}_{i}-\omega ^{2}(x_{i}\dot{x}_{j}+x_{j}\dot{x}_{i}) \\
 & =\frac{\mathrm{d}}{\mathrm{d}t}(\dot{x}_{i}\dot{x}_{j}-\omega ^{2}x_{i}x_{j})
\end{align}
$$

then the corresponding Noether charge is

$$
\tag{2.4}
\begin{align}
H_{ij} & =X_{ij}\cdot \theta-\alpha _{ij} \\
 & =\dot{x}_{i}\dot{x}_{j}+\omega ^{2}x_{i}x_{j}
\end{align}
$$
