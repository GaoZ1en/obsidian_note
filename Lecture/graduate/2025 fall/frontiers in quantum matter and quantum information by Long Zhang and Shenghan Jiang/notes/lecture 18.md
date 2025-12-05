topological quantum computing

the origin of anyons is the symmetry group in 2-dim that describing permutation is no longer permutation group $\displaystyle{S_{n}}$. instead, it is braid group $\displaystyle{B_{n}}$. the generator of braid group $\displaystyle{B_{n}}$ is

$$\begin{align}
\sigma _{i},\sigma _{i}^{-1}
\end{align}$$

and $\displaystyle{\sigma _{i}}$ stands for strand $\displaystyle{i}$ moves over strand $\displaystyle{i+1}$, and similar for $\displaystyle{\sigma _{i}^{-1}}$. and $\displaystyle{\sigma _{ij}}$ stands for strand $\displaystyle{i}$ over strand $\displaystyle{j}$...

we have

$$\begin{align}
\sigma _{i}\sigma _{j} & =\sigma _{j}\sigma _{i}, |i-j|\geqslant 2 \\
\sigma _{i}\sigma _{i+1}\sigma _{i} & =\sigma _{i+1}\sigma _{i}\sigma _{i+1}
\end{align}$$

particles are irrep of braid group, in particular, Abelian anyons are 1-dim irrep of braid group.

non-Abelian anyons are high dim irrep of braid group, and logical gates are realized as braidings.

Majorana zero modes are a possibility to realize non-Abelian anyon. consider 2n Majorana modes $\displaystyle{\left\{\gamma _{1}\dots \gamma _{2n}\right\}}$ that satisfies

$$\begin{align}
\left\{\gamma _{i},\gamma _{j}\right\} & =2\delta _{ij}
\end{align}$$

define usual fermion operators

$$\begin{align}
f^{\dagger}_{l} & =\frac{1}{2}(\gamma _{2l-1}+i\gamma _{2l}) \\
f_{l} & =\frac{1}{2}(\gamma _{2l-1}-i\gamma _{2l})
\end{align}$$

that satisfy

$$\begin{align}
\left\{f_{l},f_{l'}^{\dagger}\right\} & =\delta _{ll'} \\
\left\{f_{l},f_{l'}\right\} & =\left\{f_{l}^{\dagger},f_{l}^{\dagger}\right\}=0
\end{align}$$

suppose the Hamiltonian is zero but with $\displaystyle{n}$ Majorana modes seperating far (that their interaction is weak). the divergence is then $\displaystyle{n}$, and the dim of Hilbert space is $\displaystyle{2^{n}}$, which contains a $\displaystyle{2^{n-1}}$-dim fermion-parity-odd subspace and a $\displaystyle{2^{n-1}}$-sim fermion-parity-even subspace. we can only choose only one of them to encode qubits due to superselection rule, that fermion-parity-even states cannot superposition coherently with fermion-parity-odd states.

if we impose braiding between two Majorana modes, we have

$$\begin{align}
\sigma_{ij}: & \gamma _{i}\to \gamma _{j} \\
 & \gamma _{j}\to \gamma _{i} \\
\sigma _{ij}\gamma _{i}\sigma _{ij}^{\dagger} & =-\gamma _{j} \\
\sigma _{ij}\gamma _{j}\sigma _{ij}^{\dagger} & =\gamma _{i} \\
\sigma _{ij}\gamma _{k}\sigma _{ij}^{\dagger} & =\gamma _{k}, k\neq i,j
\end{align}$$

which solves

$$\begin{align}
\sigma _{ij} & =\sqrt{ \frac{i}{2} }(1+\gamma _{i}\gamma _{j})
\end{align}$$

then

$$\begin{align}
\sigma _{ij}^{2} & =i\gamma _{i}\gamma _{j} \\
 & =\begin{cases}
+1 & \text{parity even} \\
-1 & \text{parity odd}
\end{cases}
\end{align}$$

to construct a logical qubit, we need 4 Majorana fermions. we first bind them to 2 fermions, and then seperate parity odd and even sector. we choose the odd sector,

$$\begin{align}
\ket{\tilde{0}}  & =\ket{01}  \\
\ket{\tilde{1}} & =\ket{10}  
\end{align}$$

here Majorana modes $\displaystyle{12}$ binds to fermion 1, and so on. then the logical Pauli operators can be represented as

$$\begin{align}
Z & =i\gamma _{1}\gamma _{2}=\sigma _{12}^{2} \\
X & =i\gamma _{2}\gamma _{3}=\sigma _{23}^{2} \\
S & =\sqrt{ Z }=\sigma _{12} \\
\sqrt{ X } & =\sigma _{23} \\
H & = \frac{1}{2}(X+Z)=e^{-i\pi/4}\sigma _{12}\sigma _{23}\sigma _{12}
\end{align}$$

as for CNOT gate, we need Majorana 1-4 as control qubit, Majorana 5-8 as auxiliary in $\displaystyle{\ket{\tilde{0}}+\ket{\tilde{1}}}$ and Majorana 9-12 as target,  and we need projective measurement of $\displaystyle{i\gamma _{i}\gamma _{j}}$ and $\displaystyle{-\gamma _{i}\gamma _{j}\gamma _{k}\gamma _{l}=(i\gamma _{i}\gamma_{j})(i\gamma _{k}\gamma _{l})}$.

1. measurement of $\displaystyle{P_{1}=-\gamma _{3}\gamma_{4}\gamma_{5}\gamma_{6}}$
2. action of $\displaystyle{H}$ on auxiliary and target
3. measurement of $\displaystyle{P_{2}=-\gamma_{7}\gamma_{8}\gamma_{9}\gamma_{10}}$
4. action of $\displaystyle{H}$ on auxiliary and target
5. measurement of $\displaystyle{P_{3}=-\gamma_{5}\gamma_{6}\gamma_{7}\gamma_{8}}$

the whole circuit is equivalent to the action of

$$\begin{align}
\frac{1}{4}(1+iP_{3}\gamma_{5}\gamma_{6})\cdot\left(\frac{1}{2}(1+P_{1}P_{2}Z_{\text{control}})+\frac{1}{2}P_{2}(1-P_{1}P_{3}Z_{\text{control}})X_{\text{target}}\right)
\end{align}$$

then if
1. $\displaystyle{P_{2}=+1,P_{1}P_{3}=+1}$, CNOT
2. $\displaystyle{P_{2}=+1,P_{1}P_{3}=-1}$, apply $\displaystyle{X_{\text{target}}}$
3. $\displaystyle{P_{2}=-1,P_{1}P_{3}=+1}$, apply $\displaystyle{Z_{\text{control}}}$
4. $\displaystyle{P_{2}=-1,P_{1}P_{3}=-1}$, apply $\displaystyle{X_{\text{target}}Z_{\text{control}}}$

actually we cannot realize beyond Clifford gates since braiding are in the Clifford group. we cannot realize universal quantum computing...

how to realize Majorana fermion in quantum material? one possibility is $\displaystyle{p_{x}+ip_{y}}$-wave topological superconductor.

in usual superconductor, the Cooper pair is $\displaystyle{\ket{\uparrow \downarrow}}$, which is called the s-wave. the wave function is spin-asymmetric and spatial symmetric.

consider spinless fermion with creation and annihilation operator $\displaystyle{c_{k}}$ and $\displaystyle{c_{k}^{\dagger}}$. the Hamiltonian is

$$\begin{align}
H & =\sum _{k}\xi _{k}c_{k}^{\dagger}c_{k}+\Delta _{k} c_{k}^{\dagger}c_{k}^{\dagger}+\text{h.c.} \\
\xi _{k} & =\varepsilon _{k}-\mu=\frac{k^{2}}{2m}-\mu \\
\Delta _{k} & =-\Delta _{-k} \\
 & =\Delta _{0}(k _{x}-ik _{y})
\end{align}$$

---

in the usual s-wave

$$\begin{align}
\Delta H & =\Delta c_{k,\uparrow}^{\dagger}c_{-k,\downarrow}^{\dagger}+\text{h.c.}
\end{align}$$

---

introduce

$$\begin{align}
\alpha _{k} & =u_{k}c_{k}-v_{k}c_{-k}^{\dagger} \\
\alpha _{k}^{\dagger} & =u_{k}^{*}c_{k}^{\dagger}-v_{k}^{*}c_{-k}
\end{align}$$

that satisfies

$$\begin{align}
[H,\alpha _{k}^{\dagger}] & =E_{k}\alpha _{k}^{\dagger} \\
[H,\alpha _{k}] & =-E_{k}\alpha _{k}
\end{align}$$

gives the Bogoliubov-de Gennes equations

$$\begin{align}
E_{k}u_{k} & =\xi _{k}u_{k}-\Delta ^{*}_{k}v_{k} \\
E_{k}v_{k} & =-\xi _{k}v_{k}-\Delta _{k}u_{k}
\end{align}$$

which solves

$$\begin{align}
u_{k} & =\dots \\
v_{k} & =\dots \\
E_{k} & =\sqrt{ \xi _{k}^{2}+|\Delta _{k}|^{2} }
\end{align}$$

for simplicity, we assume the $\displaystyle{\xi _{k}\sim-\mu}$, then $\displaystyle{E_{k}=\sqrt{ \mu ^{2}+|\Delta_{0}|^{2}k^{2} }}$. turn to coordinate space, the BdG equation becomes

$$\begin{align}
Eu & =-\mu u+i\Delta ^{*}(\partial _{x}+i\partial _{y})v \\
Ev & =\mu v+i\Delta(\partial _{x}-i\partial _{y})u
\end{align}$$

this equation allows a particle-hole transformation

$$\begin{align}
(u,v;E)\leftrightarrow (v^{*},u^{*};-E)
\end{align}$$

however if there is a zero mode, there are two possibilities
1. there are two mode that transform into each other under particle-hole transformation
2. remains invariant under particle-hole transformation under $\displaystyle{u=v^{*}}$. we get a Majorana zero mode.

add magnetic flux. and apply a gauge transformation to remove the vector potential $\displaystyle{A}$. as a consequence we have to impose twisted periodic condition

$$\begin{align}
\begin{pmatrix}
u(\theta+2\pi) \\
v(\theta+2\pi)
\end{pmatrix} & =-\begin{pmatrix}
u(\theta) \\
v(\theta)
\end{pmatrix}
\end{align}$$

in the polar coordinate

$$\begin{align}
\Delta(r)ie^{i\theta}\left( \partial _{r}+\frac{i}{r}\partial _{\theta} \right)v-\mu u & =0 \\
\Delta(r)ie^{-i\theta}\left( \partial _{r}-\frac{i}{r}\partial _{\theta} \right)u+\mu v & =0
\end{align}$$

and assume

$$\begin{align}
\begin{pmatrix}
u \\
v
\end{pmatrix} & =\begin{pmatrix}
e^{-i\pi/4}e^{iB/2}\frac{f(r)}{\sqrt{ r }} \\
e^{i\pi/4}e^{-iB/r} \frac{f(r)}{\sqrt{ r }}
\end{pmatrix}
\end{align}$$

the BdG equation becomes

$$\begin{align}
\frac{\mathrm{d}f}{\mathrm{d}r} & =-\frac{\mu}{\Delta(r)}f(r) \\
\implies f(r) & =C\exp\left(-\int _{0}^{r} \frac{\mu}{\Delta(r)}\mathrm{d}r\right)
\end{align}$$

which gives a specific bound state, which is a Majorana fermion. under perturbation that preserve particle-hole-transformation, this bound state is stable, unless the energy gap encloses. 

Atiyah-Singer index theorem ensures our statement is effective. 

---

now the problem is that how to get a p-wave SC from s-wave SC?

Fu-Kane model states that 3D topological insulator+s-wave SC=p-wave SC...

3D topological insulator... the Hamiltonian in the basis $\displaystyle{\ket{E+},\ket{H+},\ket{E-},\ket{E+}}$ is

$$\begin{align}
H & =\begin{pmatrix}
Bk^{2}-M_{0} -c+Dk^{2}&  &  &  \\
 & M_{0}-Bk^{2}-c+Dk^{2} &  &  \\
 &  & Bk^{2}-M_{0}-c+Dk^{2} &  \\
 &  &  & M_{0}-Bk^{2}-c+Dk^{2}
\end{pmatrix} \\
 & =M(k)\tau _{z}+\varepsilon(k)\mathbb{I}_{4\times 4} \\
M(k) & =Bk^{2}-M_{0} \\
\varepsilon(k) & = -C+Dk^{2}\\
M_{0} & > 0, B> 0
\end{align}$$

after hybridization

$$\begin{align}
\Delta H & =+A\vec{k}\cdot \vec{\sigma}\tau _{x} \\
 & =\begin{pmatrix}
 & Ak _{z} &  & A(k _{x}-i k_{y}) \\
Ak _{z} &  & A(k _{x}+ik _{y}) &  \\
 & A(k _{x}-i k _{y}) &  & -Ak _{z} \\
A(k _{x}+ik _{y}) & & -Ak _{z}
\end{pmatrix}
\end{align}$$

after diagonalization

$$\begin{align}
E(k) & =\varepsilon(k)\pm \sqrt{ M(k)^{2}+A^{2}|k|^{2} }
\end{align}$$

surface states, Dirac cone...

I cannot understand...