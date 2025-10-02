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
\dot{p}_{n} & =-\frac{\partial H}{\partial q^{n}}-\lambda ^{m}\frac{\partial \phi _{m}}{\partial q^{n}} \\
\phi _{m}(q,p) & =0
\end{align}$$

here we think $\displaystyle{H}$ a functional of variables $\displaystyle{q^{n},p_{n},\lambda ^{m}}$, which can be derived from the follwoing variational principle:

$$\begin{align}
\delta \int ^{t_{f}}_{t_{i}}\left(\dot{q}^{n}p_{n}-H-\lambda ^{m}\phi _{m}\right) & =0
\end{align}$$

for arbitrary variations $\displaystyle{\delta q^{n},\delta p_{n},\delta u_{m}}$. the eom of operator $\displaystyle{\mathcal{O}}$ is given by

$$\begin{align}
\mathcal{\dot{O}} & =[\mathcal{O},H]+u^{m}[\mathcal{O},\phi _{m}]
\end{align}$$

and the poisson bracket is defined as usual

$$\begin{align}
[F,G] & =\frac{\partial F}{\partial q^{n}}\frac{\partial G}{\partial p_{n}}-\frac{\partial F}{\partial p_{n}}\frac{\partial G}{\partial q^{n}}
\end{align}$$

a basic consistency requirement is that the primary constraints must be preserved in time, i.e.

$$\begin{align}
\dot{\phi} _{m} & =[\phi _{m},H]+u^{m'}[\phi _{m},\phi _{m'}]\approx 0
\end{align}$$

this equation can either reduce to a relation independent of $\displaystyle{u}$'s or it may impose a restriction on the $\displaystyle{u}$'s. in the former case, if the new relation is independent of the primary constraints, it is called a secondary constraint. and we can repeat the procedure until no new constraints arise. let $\displaystyle{\phi _{k}=0,k=M+1,\dots,M+K}$, where $\displaystyle{K}$ is the total number of secondary constricts. it is useful to be able to denote all constraints in a uniform way as

$$\begin{align}
\phi _{j} & =0, & j=1,\dots,J
\end{align}$$

and we assume that regularity conditions are satisfied for all constraints, and the rank of the matrix $\displaystyle{[\phi _{j},\phi _{j'}]}$ is constant throughout the constraint surface $\displaystyle{\Sigma }$ defined by all constraints. these constraints provide several restrictions on the Lagrange multipliers

$$\begin{align}
[\phi _{j},H]+\lambda^{m}[\phi _{j},\phi _{m}]\approx 0
\end{align}$$

