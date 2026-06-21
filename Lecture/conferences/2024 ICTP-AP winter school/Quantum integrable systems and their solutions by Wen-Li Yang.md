classically, for a system if we have independent conversed charges with the number equals the degrees of freedom, we call this system integrable.

for example, two-body system, oscillators are classically integrable systems. however three-body system is not integrable proved by Poincare.

quantum mechanically,

for example, H atom, 2d Ising model...

quantum integrable systems have many applications.
1. string/gauge theory. AdS/CFT, SYM...
1. statistical mechanics. Ising model, the six-vertex models....
1. condensed matter physics. the supersymmetric t-J model, the Hubbard model...
1. mathematics. quantum group, representation theory, algebraic topology...

methods. (coordinate, algebraic, off-diagonal) Bethe Ansatz, Baxter T-Q relation...

algebraic Bethe Ansatz.

Heisenberg spin chains with U(1)-symmetry with Hamiltonian

$$
\tag{1.1}
\begin{align}
H & =\frac{1}{2}\sum^{N}_{k=1}(\sigma^{x}_{k}\sigma^{x}_{k+1}+\sigma^{y}_{k}\sigma^{y}_{k+1}+\sigma^{z}_{k}\sigma^{z}_{k+1})
\end{align}
$$

with periodic boundary condition

$$
\tag{1.2}
\begin{align}
\sigma^{\alpha}_{N+1}=\sigma^{\alpha}_{1},\quad\alpha=x,y,z
\end{align}
$$

this system is integrable, i.e., there exists enough conserved charges

$$
\tag{1.3}
\begin{align}
i \frac{\partial}{\partial t}h_{i}=[H,h_{i}]=0,\quad i=1,2,\dots
\end{align}
$$

with

$$
\tag{1.4}
\begin{align}
[h_{i},h_{j}]=0
\end{align}
$$

transfer matrix (generation function)

$$
\tag{1.5}
\begin{align}
t(u)=\sum^{N}_{i=0}h_{i}u^{i},\quad [t(u),t(v))]=[H,t(u)]=0
\end{align}
$$

R-matrix

$$
\tag{1.6}
\begin{align}
R(u) & =\frac{u+\eta}{2}(1+\sigma^{z}\otimes \sigma^{z})+\frac{u}{2}(1-\sigma^{z}\otimes \sigma^{z})+\frac{1}{2}(\sigma^{x}\otimes \sigma^{x}+\sigma^{y}\otimes \sigma^{y})
\end{align}
$$

which satisfies the Yang-Baxter equation

$$
\tag{1.7}
\begin{align}
R_{12}(u-v)R_{13}(u)R_{23}(v)=R_{23}(v)R_{13}(u)R_{12}(u-v)
\end{align}
$$

???

for any quantum integrable system, any eigenstate can be expanded into a flat wave in some picture, which is protected by a large amount of conserved charges.

summary

T-Q relation with $\displaystyle{\Lambda(u)}$ eigenvalue generation function>

$$
\tag{1.8}
\begin{align}
\Lambda(u)=a(u) \frac{Q(u-\eta)}{Q(u)}+d(u) \frac{Q(u+\eta)}{Q(u)}
\end{align}
$$

and Bethe Ansatz function

$$
\tag{1.9}
\begin{align}
\frac{a(\lambda_{j})}{d(\lambda_{j})}=-\frac{Q(\lambda_{j}+\eta)}{Q(\lambda_{j}-\eta)},\quad j=1,\dots,M
\end{align}
$$

this method requires a $\displaystyle{U(1)}$ symmetry.

The Hamiltonian of the Heisenberg chain with parallel boundary fields along the $\displaystyle{z}$-direction is

$$
\tag{2.1}
\begin{align}
H=\frac{1}{2}\sum^{N-1}_{k=1}(\sigma_{k}^{x}\sigma_{k+1}^{x}+\sigma_{k}^{y}\sigma^{y}_{k+1}+\sigma^{z}_{k\sigma^{z}_{k+1}})+\frac{\eta}{p}\sigma_{1}^{z}+\frac{\eta}{q}\sigma_{N}^{z}
\end{align}
$$

is also integrable.

>[!Comment]
>in fact, even if the boundary fields are not parallel, this system is also integrable. but we can not solve it using the method introduced above.

non diagonal Hamiltonian

$$
\tag{3.1}
\begin{align}
H=\frac{1}{2}\sum^{N-1}_{k=1}(\sigma_{k}^{x}\sigma_{k+1}^{x}+\sigma_{k}^{y}\sigma_{k+1}^{y}+\sigma_{k}^{z}\sigma_{k+1}^{z})+\frac{\eta}{p}\sigma_{1}^{x}+\frac{\eta}{p}(\sigma_{N}^{z}+\sigma^{x}_{N})
\end{align}
$$

is also integrable. but hard to solve.

how to construct R matrix and K matrix?

non diagonal correction

$$
\tag{3.2}
\begin{align}
\Lambda(u) & =a(u) \frac{Q(u-\eta)}{Q(u)}+d(u) \frac{Q(u+\eta)}{Q(u)}+2[1-(1+\xi)^{1/2}]u(u+\eta) \frac{a(u)d(u)}{Q(u)}
\end{align}
$$

and

$$
\tag{3.3}
\begin{align}
\frac{a(\lambda_{j})}{d(\lambda_{j})}+\frac{Q(\lambda_{j}+\eta)}{Q(\lambda_{j}-\eta)} & =-2[1-(1+\xi^{2})^{1/2}]\lambda_{j}(\lambda_{j}+\eta) \frac{a(\lambda_{i})}{Q(\lambda_{j}-\eta)}
\end{align}
$$

off-diagonal Bethe Ansatz, which is universal

many U(1)-broken models have been solved by this method
1. spin-1/2 Heisenberg chain with arbitrary boundary fields
1. the open spin chains with general boundary condition
