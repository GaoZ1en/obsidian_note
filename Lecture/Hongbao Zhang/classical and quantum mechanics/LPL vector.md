we have the Lagrangian

$$\tag{1.1}
\begin{align}
L & =\frac{1}{2}\dot{x}_{i}^{2}-\frac{\alpha}{r}
\end{align}
$$

where $\displaystyle{i=1,2,3}$. consider the following transformation

$$\tag{1.2}
\begin{align}
X_{i} & =\int \mathrm{d}t(2x_{i}\dot{x}_{j}-\dot{x}_{i}x_{j}-\delta _{ij}x_{k}\dot{x}_{k}) \frac{\delta}{\delta x_{j}}
\end{align}
$$

then

$$\tag{1.3}
\begin{align}
X_{i}\cdot \delta L & =\dot{x}_{j} \frac{\mathrm{d}}{\mathrm{d}t}(2x_{i}\dot{x}_{j}-\dot{x}_{i}x_{j}-\delta _{ij}x_{k}\dot{x}_{k})+\frac{\alpha}{r^{3}}x_{j}(2x_{i}\dot{x}_{j}-\dot{x}_{i}x_{j}-\delta _{ij}x_{k}\dot{x}_{k}) \\
 & =(2x_{i}\dot{x}_{j}\ddot{x}_{j}-\ddot{x}_{i}x_{j}\dot{x}_{j}-\dot{x}_{i}x_{j}\ddot{x}_{j})-\frac{\alpha}{r^{3}}(x_{i}x_{j}\dot{x}_{j}-\dot{x}_{i}x_{j}x_{j}) \\
 & =\frac{\mathrm{d}}{\mathrm{d}t}\left( x_{i}\dot{x}_{j}\dot{x}_{j}-\dot{x}_{i}x_{j}\dot{x}_{j}+\frac{\alpha}{r}x_{i} \right)
\end{align}
$$

and the corresponding Noether charge is

$$\tag{1.4}
\begin{align}
M_{i} & =X_{i}\cdot \theta-\alpha _{i} \\
 & =\dot{x}_{j}(2x_{i}\dot{x}_{j}-\dot{x}_{i}x_{j}-\delta _{ij}x_{k}\dot{x}_{k})-\left( x_{i}\dot{x}_{j}\dot{x}_{j}-\dot{x}_{i}x_{j}\dot{x}_{j}+\frac{\alpha}{r}x_{i} \right) \\
 & =2x_{i}\dot{x}_{j}\dot{x}_{j}-\dot{x}_{i}x_{j}\dot{x}_{j}-x
\end{align}
$$

$$\tag{.}
\begin{align}
\delta L & =\dot{x}_{i}\delta \dot{x}_{i}+\frac{\alpha}{r^{3}}x_{i}\delta x_{i} \\
 & =\left( -m \ddot{x}_{i}+\frac{\alpha}{r^{3}}x_{i} \right)\delta x_{i}+ \frac{\mathrm{d}}{\mathrm{d}t}(\dot{x}_{i}\delta x_{i})
\end{align}
$$

