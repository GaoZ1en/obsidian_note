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

1. 