in general it is hard to solve the arc parameter $\displaystyle{s}$, and we can express curvature $\displaystyle{\kappa}$ and torsion $\displaystyle{\tau}$ via other parameter as

$$\begin{align}
\nu(t) & =|\dot{\alpha}| \\
 & =\sqrt{ \dot{x}^{2}+\dot{y}^{2}+\dot{z}^{2} } \\
T(t) & =\frac{\alpha'}{\nu} \\
 & =\frac{x',y',z'}{\sqrt{ \dot{x}^{2}+\dot{y}^{2}+\dot{z}^{2} }} \\
N(t) & =\frac{T'}{|T'|} \\
B(t) & =T\times N \\
\kappa(t) & =\frac{|\dot{T}|}{\nu} \\
\tau(t) & =\frac{(T\times \dot{T})\cdot \ddot{T}}{|\dot{T}|^{2}\nu} \\
\end{align}$$

and the Frenet-Serret equations become

$$\begin{align}
\begin{cases}
\dot{T}= & +\nu \kappa N \\
\dot{N}=-\nu \kappa T &  & +\nu \tau B \\
\dot{B}= & -\nu \tau N
\end{cases}
\end{align}$$
