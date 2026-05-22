*overview of quantum geometry*

building block: quantum tetrahedron.

classically, the tetrahedron has 6 dofs (edges). 

equivalently, we use 4 faces to describe it $\displaystyle{\vec{A}_{i=1,\dots,4}}$. there is redundancy. constraints
1. closure condition: $\displaystyle{\sum ^{4}_{i=4}\vec{A}_{i}=0}$
2. gauge transformation: 3D rotations

quantum geometry from LQG. $\displaystyle{\vec{A}_{i}}$ becomes (flux) operators with the commutation relation

$$\begin{align}
[A^{a}_{i},A^{b}_{j}] & =i\gamma \ell _{p}^{2}\delta _{ij}\varepsilon ^{abc}A^{c}_{i}
\end{align}$$

here $\displaystyle{\gamma}$ is the BI parameter. consider the area operator

$$\begin{align}
A_{i} & =\sqrt{ A_{i}^{a}A_{i}^{a} }
\end{align}$$

then

$$\begin{align}
[A_{i},A_{j}] & =0
\end{align}$$

and the eigenvalue spectrum is given by $\displaystyle{A_{i}=8\pi \gamma \ell _{p}^{2}\sqrt{ j(j+1) }, j\in \mathbb{N}/2}$. the Hilbert space for a fixed area would be

$$\begin{align}
\mathcal{H}_{\text{kin}} & =\mathcal{H}_{j_{1}}\otimes \mathcal{H}_{j_{2}}\otimes \mathcal{H}_{j_{3}}\otimes \mathcal{H}_{j_{4}}
\end{align}$$

and $\displaystyle{\vec{A}_{i}}$ act on $\displaystyle{\mathcal{H}_{j_{1}}}$ as angular momentum $\displaystyle{J_{i}}$. constraints
- closure condition: $\displaystyle{\sum ^{4}_{i=1}\vec{A}_{i}\ket{\psi}=0}$

the physical Hilbert space would be the space of zero total angular momentum.

$$\begin{align}
\mathcal{H}_{\text{phys}} & =\mathrm{Inv}_{\mathrm{SU}(2)}\mathcal{H}_{\text{kin}}
\end{align}$$

and is the space of interwiner/invariant tensors.

$$\begin{align}
\bigotimes^{4}_{i=1}\pi ^{j_{i}}(g)\ket{\psi} & =\ket{\psi} , & \forall g\in \mathrm{SU}(2) & \iff \text{the closre condition}
\end{align}$$

and it is easy to generalize to polyhedron.

the next problem is to build the quantum geometry by gluing building blocks.

consider the graph $\displaystyle{\Gamma}$ consists of nodes $\displaystyle{\left\{n\right\}}$ (polyhedrons) and links $\displaystyle{\left\{l\right\}}$ (faces shared by polyhedrons)
- links $\displaystyle{\ell}$ carry area, quantum number $\displaystyle{j_{\ell}}$, angular momentum.
- nodes $\displaystyle{n}$ carry quantum polyhedron, quantum number $\displaystyle{i_{n}}$, interwiner of nodes.

a triple $\displaystyle{\ket{\Gamma,\left\{j_{\ell}\right\},\left\{i_{n}\right\}}}$ is called the spin network state. the LQG Hilbert space is spanned by all spin-network states.

$$\begin{align}
\braket{ \Gamma,\left\{j_{\ell}\right\},\left\{i_{n}\right\}|\Gamma',\left\{j_{\ell}'\right\},\left\{i_{n}'\right\} }  & =\delta _{\Gamma,\Gamma'}\delta _{\left\{j_{\ell}\right\},\left\{j_{\ell}'\right\}}\delta _{\left\{i_{n}\right\},\left\{i_{n}'\right\}}
\end{align}$$

remarks
1. background independent, spacetimes are emergent from quantum states
2. geometrical quantities are operators of the Hilbert space $\displaystyle{\mathcal{H}_{\text{LQG}}}$. 

---

covariant dynamics of LQG. initial and final Cauchy surface $\displaystyle{\Sigma ^{\text{in/out}}}$.

path integral

$$\begin{align}
Z[h_{ab}^{\text{out}},h_{ab}^{(\text{in})}] & =\int ^{g|_{\Sigma ^{\text{in}}}=h^{\text{in}}}_{g|_{\Sigma ^{\text{out}}}=h^{\text{out}}}\mathcal{D}g e^{i/\ell _{p}^{2}\int R+\dots}
\end{align}$$

for LQG, 3d geometry is quantized, and 4d geometry is history of 3d quantum geometries/spin network states.

spinfoam vertex, interaction among edges and faces.

spinfoam model of BF theory.

$$\begin{align}
S_{\text{BF}} & =\int _{M_{D}}\mathrm{Tr}(B\wedge F(A))
\end{align}$$

here $\displaystyle{A}$ is the $\displaystyle{\mathfrak{g}}$-valued connection, and $\displaystyle{F(A)}$ is its curvature. $\displaystyle{B}$ is an auxiliary field. this theory has gauge redundancy as

$$\begin{align}
B & \to gBg^{-1} \\
A & \to gAg^{-1}+g\mathrm{d}g^{-1}\quad g\in G
\end{align}$$

and

$$\begin{align}
B & \to B+\mathrm{d}_{A}F \\
A & \to A
\end{align}$$

consider a topologically trivial manifold $\displaystyle{M_{D}=\mathbb{R}^{D}}$. the solution of the eom is given by

$$\begin{align}
F(A) & =0 & \implies &  &  A=0 \text{ up to gauge} \\
\mathrm{d}_{A}B  & =0 & \implies &  & B=0 \text{ up to gauge}
\end{align}$$

there is no local propagating dof in BF theory, and the only dofs are topologies of $\displaystyle{M_{D}}$.

$$\begin{align}
Z & =\int \mathcal{D}B\mathcal{D}Ae^{iS_{\text{BF}}} \\
 & =\int \mathcal{D}A\delta(F(A))
\end{align}$$

for $\displaystyle{D=4,G=\mathrm{SU}(2)}$, Oogari(?) model 1992.

simplicial complex... any simplicial complex associates a unique dual 2-complex (triagulation and link the center)

in a general triangulation
- 4-complex dual to vertex $\displaystyle{v}$, corresponding to dynamics
- tetrahedron dual to edge $\displaystyle{e}$, corresponding to interwiner
- triangle dual to face $\displaystyle{f}$, corresponding to area quantum number

---

discretized BF path integral

$$\begin{align}
Z & =\int \mathcal{D}A\prod _{e}\delta _{G}(h_{e}(A)) \\
 & =\int \prod _{e}\mathrm{d}\mu _{}(h_{e}(A))\prod _{f} \sum ^{\infty}_{j_{f}=0} \dim(j_{f})\pi ^{j_{f}}_{m_{f}*_{f}}(h_{e_{1}})\dots \pi ^{j_{f}}_{*_{f}m_{f}}(h_{e_{\dots}})
\end{align}$$

here the integral to an edge is actually a projector

$$\begin{align}
 & \int \mathrm{d}\mu(h_{e})\pi ^{j_{1}}_{m_{1}n_{1}}(h_{e})\dots \pi ^{j_{4}}_{m_{4}n_{4}}(h_{e}) \\
= & P^{j_{1}\dots j_{4}}_{m_{1}\dots m_{4},n_{1}\dots n_{4}} \\
= & \sum _{i} i^{*}_{m_{1}\dots m_{4}}i_{n_{1}\dots n_{4}} \\
= & \sum _{i} \ket{i} \bra{i} 
\end{align}$$

therefore

$$\begin{align}
Z & =\sum _{\left\{j_{f}\right\}} \prod _{f}\dim(j_{f})\mathrm{Tr}_{f}\left( \prod _{e}P_{e} \right)
\end{align}$$

here the trace contract over indices associated to faces.

gravity is a constrained BF theory... nothing special. see [[Literature Notes/Charges of supergravity (2604.09928v1)|Charges of supergravity (2604.09928v1)]]

---

spinfoam quantization on a simplex in 4d.
1. define $\displaystyle{Z_{pl}}$ on a single 4-simplex. the result is the spinfoam vertex amplitude
2. quantize the contrained BF theory

$$\begin{align}
Z_{BF} & =\int \mathcal{D}A\mathcal{D}Be^{i/\ell _{p} \int (B+1/\gamma \star B)^{IJ}\wedge F_{IJ}}
\end{align}$$

3. quantize the simplicity constraint and impose the BF boundary Hilbert space.
4. vertex amplitude

$$\begin{align}
A_{v} & =Z_{BF}(\text{bdy data}|_{\text{simplicity}})
\end{align}$$

...

quantization of $\displaystyle{B}$ field....

---

EPRL proposal... less interested...

