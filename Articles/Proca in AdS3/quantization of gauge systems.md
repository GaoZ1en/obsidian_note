basically first and second class constraints and the geometry of constraint surface.

starting from a action

$$\begin{align}
S & =\int ^{t_{f}}_{t_{i}}L(q,\dot{q})\mathrm{d}t
\end{align}$$

eom

$$\begin{align}
\frac{\mathrm{d}}{\mathrm{d}t}\left(\frac{\partial L}{\partial \dot{q}^{n}}\right)-\frac{\partial L}{\partial q^{n}} & =0, & n=1,\dots N
\end{align}$$

eom can be rewritten as (notice that $\displaystyle{\frac{\mathrm{d}}{\mathrm{d}t}=\dot{q}^{n}\frac{\partial}{\partial q^{n}}}+\ddot{q}^{n}\frac{\partial}{\partial \dot{q}^{n}}$, and assume there is no higher derivative dependence in $\displaystyle{L}$)

$$\begin{align}
\frac{\partial L}{\partial q^{n}}-\dot{q}^{n'} \frac{\partial ^{2}L}{\partial q^{n'}\partial \dot{q}^{n}} & = \ddot{q}^{n'}\frac{\partial ^{2}L}{\partial \dot{q}^{n'}\partial \dot{q}^{n}}
\end{align}$$

and iff the Hesse matrix $\displaystyle{\frac{\partial ^{2}L}{\partial \dot{q}^{n}\partial \dot{q}^{n'}}}$ can be inverted ($\displaystyle{\det\left(\frac{\partial ^{2}L}{\partial \dot{q}^{n}\partial \dot{q}^{n'}}\right)\neq0}$), the $\displaystyle{\ddot{q}^{n}}$ at given time are uniquely determined by the $\displaystyle{q^{n}}$ and $\displaystyle{\dot{q}^{n}}$. on the other hand, if $\displaystyle{\det\left(\frac{\partial ^{2}L}{\partial \dot{q}^{n}\partial \dot{q}^{n'}}\right)=0}$, the solution of eom could contain arbitrary functions of time. in Hamiltonian formalism, we define the canonical momenta by

$$\begin{align}
p_{n} & =\frac{\partial L}{\partial \dot{q}^{n}}
\end{align}$$

and $\displaystyle{\det\left(\frac{\partial ^{2}L}{\partial \dot{q}^{n}\partial \dot{q}^{n'}}\right)=0}$ means that $\displaystyle{q}$ and $\displaystyle{p}$ are constrained by relations

$$\begin{align}
\phi _{m}(q,p) & =0,  & m=1,\dots,M
\end{align}$$

these relations are called primary constraints, and the surface defined by these relations in phase space is called the primary constraint surface $\displaystyle{\Sigma _{1}}$. there are many equivalent ways to represent a primary constraint surface, and to pass to the Hamiltonian formalism, it is necessary to impose some restrictions (regularity conditions) on the choice of the functions $\displaystyle{\phi _{m}}$.:

1. anyhow they are independent and nonsingular

theorem: if a phase space function $\displaystyle{G}$ vanishes on the primary constraint surface $\displaystyle{\Sigma _{1}}$, then there exist functions $\displaystyle{u^{m}(q,p)}$ such that $\displaystyle{G=\sum _{m=1}^{M}u^{m}\phi _{m}}$ in some neighborhood of $\displaystyle{\Sigma _{1}}$.

theorem: if $\displaystyle{\lambda _{n}\delta q^{n}+\mu ^{n}\delta p_{n}=0}$ for arbitrary varaitions $\displaystyle{\delta q^{n},\delta p_{n}}$ tangent to the primary constraint surface $\displaystyle{\Sigma _{1}}$, then

$$\begin{align}
\lambda _{n} & \approx u^{m}\frac{\partial \phi _{m}}{\partial q^{n}} \\
\mu ^{n} & \approx u^{m}\frac{\partial \phi _{m}}{\partial p_{n}}
\end{align}$$

for some universal functions $\displaystyle{u^{m}}$. here $\displaystyle{\approx}$ means equality on $\displaystyle{\Sigma _{1}}$, and below we will use this symbol frequently. we will assume that the regularity conditions are satisfied throughout this note except where otherwise stated.

the canonical Hamiltonian is defined by

$$\begin{align}
H & =\dot{q}^{n}p_{n}-L
\end{align}$$

the eom is given by

$$\begin{align}
\dot{q}^{n} & =\frac{\partial H}{\partial p_{n}} \\
\dot{p}_{n} & =-\frac{\partial H}{\partial q^{n}}
\end{align}$$

the Hamiltonian is not unique, since we have $\displaystyle{M}$ primary constraints. the most general Hamiltonian is given by

$$\begin{align}
H & \to H+\lambda^{m}\phi _{m}
\end{align}$$

then the eom becomes

$$\begin{align}
\dot{q}^{n} & =\frac{\partial H}{\partial p_{n}}+\lambda ^{m}\frac{\partial \phi _{m}}{\partial p_{n}} \\
\dot{p}_{n} & =-\frac{\partial H}{\partial q^{n}}-\lambda ^{m}\frac{\partial \phi _{m}}{\partial q^{n}}
\end{align}$$

