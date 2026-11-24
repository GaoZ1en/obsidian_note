# Kähler Quantization

## Kähler Geometry

Kähler quantization requires us to equip $\displaystyle{X}$ with the structure of a Kähler manifold with Kähler form $\displaystyle{\omega}$. We need almost complex structure that is a linear map that satisfies

$$\begin{align}
J & :TX\to TX \\
J^{2} & =-1
\end{align}$$

and compatible with the symplectic form in the sense that

$$\begin{align}
\omega(Ju.Jv)=\omega(u,v)
\end{align}$$

we define a metric by

$$\begin{align}
g(u,v) & =\omega(u,Jv)\leftrightarrow g_{\mu \nu}=\omega _{\mu \lambda}J_{\nu}^{~\lambda}
\end{align}$$

the manifold $\displaystyle{X}$ is Kähler if $\displaystyle{g_{\mu \nu}}$ is symmetric and positive-definite, and the almost complex structure $\displaystyle{J}$ is integrable. The integrability of $\displaystyle{J}$ means that we can find local complex coordinates $\displaystyle{z^{i},\bar{z}^{i}}$ such that $\displaystyle{J}$ acts as

$$\begin{align}
J_{i}^{~j} & =i\delta _{i}^{~j},J_{\bar{i}}^{\bar{j}}=-i\delta _{\bar{i}}^{~\bar{j}} \\
J_{i}^{~\bar{j}} & =J_{\bar{i}}^{~j}=0
\end{align}$$

given such coordinates, we can classify forms into type $\displaystyle{(p,q)}$ if they have degree $\displaystyle{p}$ in the holomorphic differentials $\displaystyle{\mathrm{d}z^{i}}$ and $\displaystyle{q}$ in the antiholomorphic differentials $\displaystyle{\mathrm{d}\bar{z}^{i}}$. $\displaystyle{\omega(Ju,Jv)=\omega(u,v)}$ implies that the symplectic form is of type $\displaystyle{(1,1)}$:

$$\begin{align}
\omega & =\omega _{i\bar{j}}\mathrm{d}z^{i}\wedge \mathrm{d}\bar{z}^{\bar{j}}
\end{align}$$

furthermore, $\displaystyle{\omega _{i\bar{j}}}$ is related to the metric by

$$\begin{align}
\omega _{i\bar{j}} & =ig_{i\bar{j}}=ig_{\bar{j}i}
\end{align}$$

non-mixed components of the metric $\displaystyle{g_{ij},g_{\bar{i}\bar{j}}}$ vanishes. And we can define projectors $\displaystyle{\pi ^{(p,q)}}$ onto the spaces of $\displaystyle{(p,q)}$-forms. These projectors allow us to define holomorphic/antiholomorphic derivatives (called Dolbeault operators) by

$$\begin{align}
\partial & \equiv \pi ^{(p+1,q)}\mathrm{d}=\mathrm{d}z^{i} \frac{\partial}{\partial z^{i}} \\
\bar{\partial} & \equiv \pi ^{(p,q+1)}\mathrm{d}=\mathrm{d}\bar{z}^{\bar{i}} \frac{\partial}{\partial \bar{z}^{\bar{i}}}
\end{align}$$

where $\displaystyle{\mathrm{d}}$ is the exterior derivative operator acting on $\displaystyle{(p,q)}$-forms. Integrability of the complex structure is equivalent to the statements

$$\begin{align}
\partial ^{2}=\bar{\partial}^{2}=\partial \bar{\partial}+\bar{\partial}\partial=0
\end{align}$$

(and we can define Dolbeault cohomology, but the roles are quite different from the de Rham cohomology) and also equivalent to

$$\begin{align}
\mathrm{d}=\partial+\bar{\partial}
\end{align}$$

## Holomorphic Line Bundles on Kähler Manifolds

Given a connection $\displaystyle{D_{A}}$ on some vector bundle $\displaystyle{E}$, we can similarly define Dolbeault operators

$$\begin{align}
\partial _{A} & :\Omega ^{p,q}(E)\to \Omega ^{p+1,q}(E) \\
\bar{\partial}_{A} & :\Omega ^{p,q}(E)\to \Omega ^{p,q+1}(E)
\end{align}$$

by

$$\begin{align}
\partial _{A} & =\pi ^{(p+1,q)}D_{A} \\
\bar{\partial}_{A} & =\pi ^{(p,q+1)}D_{A}
\end{align}$$

here $\displaystyle{\Omega ^{p,q}(E)=E\times \Omega ^{p,q}(X)}$, where $\displaystyle{\Omega ^{p,q}(X)}$ is the bundle of $\displaystyle{(p,q)}$ forms on $\displaystyle{X}$. If $\displaystyle{\bar{\partial}_{A}^{2}=0}$, then $\displaystyle{E}$ becomes endowed with a holomorphic structure.

Consider a line bundle $\displaystyle{\mathcal{L}}$ with connection such that $\displaystyle{\bar{\partial}_{A}^{2}=0}$, which means that in a local patch, we can solve the equation $\displaystyle{\bar{\partial}_{A}s=0}$. Given an open covering $\displaystyle{U_{\alpha}}$, let us find local sections $\displaystyle{e_{\alpha}}$ satisfying $\displaystyle{\bar{\partial}_{A}e_{\alpha}=0}$ within each $\displaystyle{U_{\alpha}}$. We can ensure the $\displaystyle{e_{\alpha}}$ are nowhere zero inside $\displaystyle{U_{\alpha}}$ by dividing by an appropriate holomorphic function to cancel their zeros (if necessary). The sectios $\displaystyle{e_{\alpha}}$ is called a holomorphic frame. A general section can be expanded in terms of it $\displaystyle{s=s_{\alpha}e_{\alpha}}$. Note that $\displaystyle{s}$ is holomorphic iff $\displaystyle{s_{\alpha}}$ is a holomorphic function

$$\begin{align}
\bar{\partial}_{A}s & =(\bar{\partial}s_{\alpha})e_{\alpha}+s_{\alpha}\bar{\partial}_{A}e_{\alpha} \\
 & =(\bar{\partial}s_{\alpha})e_{\alpha}
\end{align}$$

consequently, within each overlap $\displaystyle{U_{\alpha}\cap U_{\beta}}$, we can expand $\displaystyle{e_{\beta}=f_{\alpha \beta}e_{\alpha}}$, where the transition functions $\displaystyle{f_{\alpha \beta}}$ are holomorphic. This gives $\displaystyle{\mathcal{L}}$ the defining data of a holomorphic line bundle.

If $\displaystyle{\mathcal{L}}$ is Hermitian with inner product $\displaystyle{h(\cdot,\cdot)}$ on fibres, we can define a local Kähler potential $\displaystyle{K_{\alpha}}$ from the norm of the holomorphic frame

$$\begin{align}
|e_{\alpha}|^{2} & =h(e_{\alpha},e_{\alpha})=e^{-K_{\alpha}}
\end{align}$$

the norm of a general section $\displaystyle{s=s_{\alpha}e_{\alpha}}$ then locally takes the form $\displaystyle{|s|^{2}=s_{\alpha}s^{*}_{\alpha}e^{-K_{\alpha}}}$. note that $\displaystyle{kK_{\alpha}}$ is the Kähler potential for $\displaystyle{\mathcal{L}^{k}}$.

---

Within overlap $\displaystyle{U_{\alpha}\cap U_{\beta}}$, we have

$$\begin{align}
e^{-K_{\beta}} & =|e_{\beta}|^{2}=|f_{\alpha \beta}e_{\alpha}|^{2} \\
 & =|f_{\alpha \beta}|^{2}e^{-K_{\alpha}} \\
\implies K_{\alpha} & =K_{\beta}+\log f_{\alpha \beta}+\log f_{\alpha \beta}^{*}
\end{align}$$

and the curvature is given by

$$\begin{align}
\omega & =i\partial \bar{\partial}K_{\alpha}
\end{align}$$

---

In this language, the Hermitian inner product on the space of sections $\displaystyle{\Gamma(X,\mathcal{L}^{k})}$ is given by

$$\begin{align}
\braket{ s_{1},s_{2} }  & =\int _{X}\mathrm{dvol} h(s_{1},s_{2}) \\
 & =\int _{X}\mathrm{dvol} (s_{1}^{*})_{\alpha}(s_{2})_{\alpha}e^{-kK_{\alpha}}
\end{align}$$

where the symplectic volume form is

$$\begin{align}
\mathrm{dvol} & =\frac{1}{n!}\left( \frac{\omega}{2\pi} \right)^{n}
\end{align}$$

## The Space of Ground States

Suppose that we have equipped $\displaystyle{X}$ with all this structure: a Hermitian line bundle $\displaystyle{\mathcal{L}}$ with connection $\displaystyle{A}$ and curvature $\displaystyle{\omega}$, and a Kähler structure such that $\displaystyle{\omega}$ is the Kähler form (curvature). With all of this, the Hamiltonian can be written

$$\begin{align}
H & =\frac{1}{2m}D_{A}^{\dagger}D_{A} \\
 & =\frac{1}{2m}(\partial ^{\dagger}_{A}+\bar{\partial}_{A}^{\dagger})(\partial _{A}+\bar{\partial}_{A}) \\
 & =\frac{1}{2m}(\partial ^{\dagger}_{A}\partial _{A}+\bar{\partial}_{A}^{\dagger}\bar{\partial}_{A})
\end{align}$$

here we use $\displaystyle{\partial ^{\dagger}_{A}\bar{\partial}_{A}=\bar{\partial}_{A}^{\dagger}\partial _{A}=0}$, since $\displaystyle{\braket{ f,\partial _{A}^{\dagger}\bar{\partial}_{A}g }=\braket{ \partial _{A}f,\bar{\partial}_{A}g }=0}$ since $\displaystyle{\partial _{A}f}$ is a $\displaystyle{(1,0)}$-form and $\displaystyle{\bar{\partial}_{A}g}$ is a $\displaystyle{(0,1)}$-form, which are orthogonal in a Hermitian metric.

---

For a Kähler manifold, we have

$$\begin{align}
\frac{1}{\sqrt{ g }}\partial _{\bar{j}}(\sqrt{ g }g^{\bar{j}i}) & = \frac{1}{\sqrt{ g }}\partial _{i}(\sqrt{ g }g^{\bar{j}i})-9
\end{align}$$

and

$$\begin{align}
\partial _{A}^{\dagger}\partial _{A} & =-g^{\bar{j}i}(\partial _{\bar{j}}-ikA_{\bar{j}})(\partial _{i}-ikA_{i}) \\
\bar{\partial}_{A}^{\dagger}\bar{\partial} _{A} & =-g^{i\bar{j}}(\partial _{i}-ikA_{i})(\partial _{\bar{j}}-ikA_{\bar{j}})
\end{align}$$

and the commutator of these operators is

$$\begin{align}
\partial _{A}^{\dagger}\partial _{A}-\bar{\partial}_{A}^{\dagger}\bar{\partial}_{A} & =-ikg^{\bar{j}i}(\partial _{i}A_{\bar{j}}-\partial _{\bar{j}}A_{i}) \\
 & =-ikg^{\bar{j}i}\omega _{i\bar{j}} \\
 & =k \frac{\dim X}{2}
\end{align}$$

---

Putting everything together, we can write

$$\begin{align}
H & =\frac{1}{2m}\left(2\partial _{A}^{\dagger}\partial _{A}+k\frac{\dim X}{2}\right)
\end{align}$$

assuming $\displaystyle{k\geqslant 0}$, this is a sum of positive-semidefinite terms, and it is minimized for sections satisfying $\displaystyle{\bar{\partial}_{A}s=0}$, i.e., holomorphic sections of $\displaystyle{\mathcal{L}^{k}}$. Consequently, in Kähler quantization, the physical Hilbert space is given by

$$\begin{align}
\mathcal{H}_{k} & =H^{0}(X,\mathcal{L}^{k})=\mathrm{Ker}(\bar{\partial}_{A}:\Omega ^{0,0}(\mathcal{L}^{k})\to \Omega ^{0,1}(\mathcal{L}^{k}))
\end{align}$$

the inner product is given by

$$\begin{align}
\braket{ s_{1},s_{2} }  & =\int _{X}\mathrm{dvol} (s_{1}^{*})_{\alpha}(s_{2})_{\alpha}e^{-kK_{\alpha}}
\end{align}$$

consider inserting some operator $\displaystyle{f(z(t),\bar{z}(t))}$ into the path integral at time $\displaystyle{t}$. In the full Hilbert space $\displaystyle{\mathcal{H}_{\text{full}}=\Omega ^{0,0}(\mathcal{L}^{k})}$, this operator simply acts as mulitplication by $\displaystyle{f(z,\bar{z})}$. Subsequent evolution with the Hamiltonian in the $\displaystyle{m\to 0}$ limit projects back onto the ground state subspace $\displaystyle{\mathcal{H}_{k}}$. Thus, in the topological limit $\displaystyle{m\to0}$, the insertion becomes the following operator on $\displaystyle{\mathcal{H}_{k}}$:

$$\begin{align}
f(z,\bar{z})\mapsto Q(f) & =\Pi_{0}\circ M_{f}\circ \iota
\end{align}$$

where $\displaystyle{\iota:\mathcal{H}_{k}\to \mathcal{H}_{\text{full}}}$ is inclusion, $\displaystyle{M_{f}}$ is multiplication by $\displaystyle{f(z,\bar{z})}$ on $\displaystyle{\mathcal{H}_{\text{full}}}$, and $\displaystyle{\Pi_{0}}$ is the projector into $\displaystyle{\mathcal{H}_{k}\subset \mathcal{H}_{\text{full}}}$. The map $\displaystyle{f\mapsto Q(f)}$ is called the Berezin-Toeplitz quantization. The operator $\displaystyle{Q(f)}$ is completelt characterized by its matrix in a basis of holomorphic sections

$$\begin{align}
\braket{ s_{i},Q(f)s_{j} }  & = \braket{ s_{i},\Pi_{0}M_{f}s_{j} } \\
 & = \braket{ \Pi_{0}s_{i},M_{f}s_{j} }= \braket{ s_{i},M_{f}s_{j} } \\
 & =\int _{X}\mathrm{dvol} (s_{i}^{*})_{\alpha}(s_{j})_{\alpha}f(z,\bar{z})e^{-kK_{\alpha}}
\end{align}$$

## Example: Particle in a Magnetic Field

Take the gauge field $\displaystyle{A=-\frac{B}{2}(y\mathrm{d}x-x\mathrm{d}y)}$. Choose a compatible complex structure on $\displaystyle{\mathbb{R}^{2}}$ as

$$\begin{align}
J_{\gamma} \frac{\partial}{\partial x} & =\frac{1}{\gamma}\frac{\partial}{\partial x}, J_{\gamma} \frac{\partial}{\partial y}=-\gamma \frac{\partial}{\partial x}
\end{align}$$

where $\displaystyle{\gamma \in \mathbb{R}^{*}}$ is a parameter. The compatible complex coordinates are

$$\begin{align}
z & =x+i\gamma y \\
\bar{z} & =x-i\gamma y
\end{align}$$

the gauge field becomes

$$\begin{align}
A & =-B\frac{z-\bar{z}}{2i\gamma}\frac{\mathrm{d}z+\mathrm{d}\bar{z}}{4}+\frac{B}{2}\frac{z+\bar{z}}{2} \frac{\mathrm{d}z-\mathrm{d}\bar{z}}{2i\gamma} \\
 & =\frac{i\alpha}{2}(z\mathrm{d}\bar{z}-\bar{z}\mathrm{d}z)
\end{align}$$

where $\displaystyle{\alpha=\frac{B}{2\gamma}}$. A holomorphic frame $\displaystyle{e}$ for $\displaystyle{\mathcal{L}}$ is a nonzero solution of

$$\begin{align}
\left( \frac{\partial}{\partial \bar{z}}-iA'_{\bar{z}} \right)e(z,\bar{z}) & =0
\end{align}$$

which gives

$$\begin{align}
e(z,\bar{z}) & =e^{-\alpha z\bar{z}/2}
\end{align}$$

the Kähler potential can be determined from

$$\begin{align}
e^{-K} & =|e|^{2}=e^{-\alpha z\bar{z}}\implies K=\alpha z\bar{z}
\end{align}$$

the curvature is

$$\begin{align}
\omega & =i\partial \bar{\partial}K \\
 & =i\alpha \mathrm{d}z\wedge \mathrm{d}\bar{z}
\end{align}$$

a general holomorphic section of $\displaystyle{\mathcal{L}^{k}}$ is can be written $\displaystyle{\psi(z)e(z,\bar{z})^{k}}$, where $\displaystyle{\psi(z)}$ is a holomorphic function on $\displaystyle{\mathbb{C}}$. The Hilbert space $\displaystyle{\mathcal{H}_{k}}$ consists of holomorphic functions $\displaystyle{\psi(z)}$ on $\displaystyle{\mathbb{C}}$ with inclusion map $\displaystyle{\iota:\psi(z)\to \psi(z)e(z,\bar{z})^{k}\subset \mathcal{H}_{\text{full}}}$ and inner product

$$\begin{align}
\braket{ \psi _{1}|\psi _{2} }  & = \braket{ \iota(\psi _{1})|\iota(\psi _{2}) }  \\
 & =\alpha\int \frac{\mathrm{d}^{2}z}{2\pi} \psi _{1}^{*}(\bar{z})\psi _{2}(z)e^{-k \alpha z\bar{z}}
\end{align}$$

this is the standard Bargmann-Fock space of holomorphic functions with Gaussian measure.

Physically, $\displaystyle{\iota(\psi(z))=\psi(z)e(z,\bar{z})^{k}}$ are wave functions of the lowest Landau level for a charge-$\displaystyle{k}$ particle moving in the magnetic field.

Now determine the Berezin-Toeplitz quantization map for some simple operators in this system. The operator $\displaystyle{Q(z)}$ is simply multiplication by $\displaystyle{z}$. This already maps $\displaystyle{\mathcal{H}_{k}\to \mathcal{H}_{k}}$, so the projector back onto the space of ground states acts trivially. To understand the quantization of $\displaystyle{\bar{z}}$, consider the matrix elements

$$\begin{align}
\braket{ \psi _{1}|Q(\bar{z})|\psi _{2} } & =\alpha \int \frac{\mathrm{d}^{2}z}{2\pi} \psi ^{*}_{1}(\bar{z})\bar{z}\psi _{2}(z)e^{-k\alpha z\bar{z}} \\
 & =\alpha \int \frac{\mathrm{d}^{2}z}{2\pi} \psi ^{*}_{1}(\bar{z})\psi _{2}(z) \left( -\frac{1}{k\alpha} \frac{\partial}{\partial z} \right)e^{-k \alpha z\bar{z}} \\
 & =\alpha \int \frac{\mathrm{d}^{2}z}{2\pi} \psi ^{*}_{1}(\bar{z}) \left(\frac{1}{k\alpha} \frac{\partial}{\partial z}\psi _{2}(z)\right) e^{-k \alpha z\bar{z}} \\
 & =\braket{ \psi _{1}| \frac{1}{k \alpha}\frac{\partial}{\partial z}\psi _{2} }
\end{align}$$

thus we find

$$\begin{align}
Q(z) & =z \\
Q(\bar{z}) & =\frac{1}{k\alpha} \frac{\partial}{\partial z}
\end{align}$$

and the commutation relation for a quantization of affine space:

$$\begin{align}
[Q(\bar{z}),Q(z)] & =\frac{1}{k \alpha}=\frac{i}{k}\omega ^{\bar{z}z}
\end{align}$$

by rescaling $\displaystyle{Q(\bar{z})}$, we obtain an algebra of creation and annihilation operators $\displaystyle{[a,a^{\dagger}]=1}$, represented by $\displaystyle{a=\frac{\partial}{\partial z}}$, and $\displaystyle{a^{\dagger}=z}$. This is known as the Bargmann representation.

---

Consider the Berezin-Toeplitz quantization of a monomial $\displaystyle{Q(z^{n}\bar{z}^{m})}$. We have

$$\begin{align}
\braket{ \psi _{1}|Q(z^{n}\bar{z}^{m})|\psi _{2} }  & = \alpha \int \frac{\mathrm{d}^{2}z}{2\pi}\psi _{1}^{*}(\bar{z})z^{n}\bar{z}^{m}\psi _{2}(z)e^{-k \alpha z\bar{z}} \\
 & =\alpha \int \frac{\mathrm{d}^{2}z}{2\pi} \psi _{1}^{*}(\bar{z})z^{n}\psi _{2}(z) \left( -\frac{1}{k\alpha} \frac{\partial}{\partial z} \right)^{m}e^{-k \alpha z\bar{z}} \\
 & =\alpha \int \frac{\mathrm{d}^{2}z}{2\pi} \psi _{1}^{*}(\bar{z}) \left(\frac{1}{k\alpha} \frac{\partial}{\partial z}\right)^{m}\left(z^{n}\psi _{2}(z)\right) e^{-k \alpha z\bar{z}} \\
 & =\braket{ \psi _{1}| \left(\frac{1}{k \alpha}\frac{\partial}{\partial z}\right)^{m}z^{n}\psi _{2} } \\
\implies Q(z^{n}\bar{z}^{m}) & =Q(\bar{z})^{m}Q(z)^{n}
\end{align}$$

note that different choices of $\displaystyle{\gamma}$ give different embeddings of $\displaystyle{\mathcal{H}_{k}}$ inside $\displaystyle{\mathcal{H}_{\text{full}}}$. However, all these copies of $\displaystyle{\mathcal{H}_{k}}$ are ismorphic, and we can define a Berry connection on $\displaystyle{\gamma}$-space by

$$\begin{align}
i\braket{ \psi _{1}|\mathcal{A}_{\gamma}|\psi _{2} }  & = \braket{ \iota(\psi _{1}), \frac{\partial}{\partial \gamma}\iota(\psi _{2}) }
\end{align}$$

$\displaystyle{\mathcal{A}_{\gamma}}$ can be represented as an 2nd order differential operator in $\displaystyle{z}$. This connection gives a notion of parallel transport on the space of complex structures (the $\displaystyle{\gamma}$ parameter here), allowing us to identify states in $\displaystyle{\mathcal{H}_{k}}$ for one choice of $\displaystyle{\gamma}$ with states in $\displaystyle{\mathcal{H}_{k}}$ for another choice. Importantly, this connection is (projectively) flat, so that the identification does not depend on the path in $\displaystyle{\gamma}$-space we choose. This means that the different choices of complex structure do not affect physical observables, which can all be computed in terms of operators on $\displaystyle{\mathcal{H}_{k}}$. However the generalization of this result to higher-dimensional spaces of complex structures is nontrivial, and flatness of the Berry connection is not guaranteed.

More generally, we can consider the target space $\displaystyle{X=\mathbb{C}^{n}}$ with a constant symplectic form $\displaystyle{\omega=\omega _{i\bar{j}}\mathrm{d}z^{i}\wedge \mathrm{d}\bar{z}^{\bar{j}}}$. The Bargmann representation is

$$\begin{align}
Q(z^{i})=z^{i},Q(\bar{z}^{\bar{j}})=\frac{i}{k}\omega ^{\bar{j}i} \frac{\partial}{\partial z^{i}}
\end{align}$$

## Example, a Particle on $\displaystyle{S^{2}}$ with Magnetic Flux

Consider a charge $\displaystyle{k}$-particle confined to $\displaystyle{S^{2}}$, with a magnetic monople background of unit flux. We can give $\displaystyle{S^{2}}$ a natural complex structure by its identification with $\displaystyle{\mathbb{C}P^{1}}$. An affine coordinate $\displaystyle{z}$ on $\displaystyle{\mathbb{C}P^{1}}$ is related to the sphere by stereographic projection:

$$\begin{align}
\frac{1}{2}(1+\vec{x}\cdot \vec{\sigma}) & =\frac{1}{1+|z|^{2}}\begin{pmatrix}
|z|^{2} & \bar{z} \\
z & 1
\end{pmatrix}\implies z=\frac{x_{1}+ix_{2}}{1+x_{3}}
\end{align}$$

the symplectic form in stereographic coordinates is

$$\begin{align}
\omega & =\frac{i\mathrm{d}z\wedge \mathrm{d}\bar{z}}{(1+|z|^{2})^{2}}=i\partial \bar{\partial}K \\
\implies K & =\ln(1+|z|^{2})
\end{align}$$

note that the sympletic volume is one

$$\begin{align}
\int _{S^{2}} \frac{\omega}{2\pi} & =1
\end{align}$$

we can read off the transition functions of the corresponding holomorphic line bundle $\displaystyle{\mathcal{L}}$ by studying how the Kähler potential transforms under a change of affine patch $\displaystyle{z\to \frac{1}{w}}$. Note that

$$\begin{align}
K & =\log(1+|z|^{2}) \\
 & =\log\left( 1+|w|^{2} \right)-\log w-\log \bar{w}
\end{align}$$

thus the transition function is $\displaystyle{f_{wz}=f^{-1}_{zw}=w}$. The transition function for $\displaystyle{\mathcal{L}^{k}}$ is $\displaystyle{f_{wz}=w^{k}}$. The tensor power $\displaystyle{\mathcal{L}^{k}}$ has $\displaystyle{k+1}$ holomorphic sections given by $\displaystyle{1,\dots,z^{k}}$. These span the Hilbert space $\displaystyle{\mathcal{H}_{k}}$ in Kähler quantization. The inner product is

$$\begin{align}
\braket{ \psi _{1}|\psi _{2} }  & =\int \frac{\omega}{2\pi} \psi _{1}^{*}(\bar{z})\psi _{2}(z) e^{-kK} \\
 & =\int \frac{\mathrm{d}^{2}z}{2\pi} \frac{\psi _{1}^{*}(\bar{z})\psi _{2}(z) }{(1+|z|^{2})^{k+2}}
\end{align}$$

note that $\displaystyle{\mathcal{H}_{k}}$ is finite-dimensional because $\displaystyle{S^{2}}$ has finite symplectic volume, in the large $\displaystyle{k}$ limit, the dimension of $\displaystyle{\mathcal{H}_{k}}$ matches the semiclassical result

$$\begin{align}
k+1 & \sim \dim\mathcal{H}_{k} =\int _{S^{2}} \frac{k\omega}{2\pi}+\text{subleading terms in } \frac{1}{k}
\end{align}$$

---

Define the operators

$$\begin{align}
J^{i} & =(j+1)Q(x^{i})
\end{align}$$

where $\displaystyle{Q(x^{i})}$ is the Berezin-Toeplitz quantization of the function $\displaystyle{x^{i}}$ on $\displaystyle{S^{2}}$, and $\displaystyle{j=\frac{k}{2}}$. These satisfy the $\displaystyle{\mathfrak{su}(2)}$ commutation relations

$$\begin{align}
[J^{i},J^{j}]=i\varepsilon ^{ijk}J^{k}
\end{align}$$

or define $\displaystyle{J^{\pm}= J^{1}\pm iJ^{2}}$, we have

$$\begin{align}
[J^{3},J^{\pm}] & =\pm J^{\pm} \\
[J^{+},J^{-}] & =2J^{3}
\end{align}$$

to see this, consider the matrix elements

$$\begin{align}
\braket{ \psi _{1}|J^{3}J^{\pm}|\psi _{2} }  & =(j+1)^{2}\braket{ \psi _{1}|Q(x^{3})Q(x^{\pm})|\psi _{2} } \\
 & =(j+1)^{2}\int \frac{\mathrm{d}^{2}z}{2\pi} \frac{\psi _{1}^{*}(\bar{z})x^{3}x^{\pm}\psi _{2}(z)}{(1+|z|^{2})^{k+2}}
\end{align}$$

...

Furthermore, $\displaystyle{J^{i}}$ act irreducibly on $\displaystyle{\mathcal{H}_{k}}$, furnishing the spin-$\displaystyle{j=\frac{k}{2}}$ representation of $\displaystyle{\mathfrak{su}(2)}$.

---

This is a special case of a much more general result. For a semisimple Lie group $\displaystyle{G}$, the quotient by its maximal torus $\displaystyle{G/T}$ is a compact Kähler manifold called a flag manifold. We can associate a line bundle $\displaystyle{\mathcal{L}_{\lambda}}$ over $\displaystyle{G/T}$. The Borel-Weil-Bott theorem states that the space of holomorphic sections of $\displaystyle{\mathcal{L}_{\lambda}}$ is precisely the irreducible representation $\displaystyle{\rho _{\lambda}}$ of $\displaystyle{G}$ associated to the weight $\displaystyle{\lambda}$. In physics language, $\displaystyle{\rho _{\lambda}}$ is the space of states of a topological quantum mechanics theory with target space $\displaystyle{G/T}$ and a background magnetic field determined by $\displaystyle{\lambda}$.

## Symplectic/Kähler Quotients

The symplectic quotient is a natural way to quotient by the action of a group while maintaining a symplectic structure. Consider a symplectic manifold $\displaystyle{(M,\omega)}$, with an action of a Lie group $\displaystyle{G}$ (with Lie algebra $\displaystyle{\mathfrak{g}}$) compaticle with the symplectic structure, which means

$$\begin{align}
\mathcal{L}_{X_{\xi}}\omega & =0, \forall \xi \in \mathfrak{g}
\end{align}$$

where $\displaystyle{X_{\xi}}$ is the vector field on $\displaystyle{M}$ generated by the infinitesimal action of $\displaystyle{\xi \in \mathfrak{g}}$. By Cartan's magic formula, we have

$$\begin{align}
0=\mathcal{L}_{X_{\xi}}\omega & =(\mathrm{d}\iota _{X_{\xi}}+\iota _{X_{\xi}}\mathrm{d})\omega \\
 & =\mathrm{d}(\iota _{X_{\xi}}\omega)
\end{align}$$

thus $\displaystyle{\iota _{X_{\xi}}\omega}$ is a closed 1-form. Furthermore, if $\displaystyle{\iota _{X_{\xi}}\omega}$ is exact for all $\displaystyle{\xi \in \mathfrak{g}}$, then the action of $\displaystyle{G}$ is called Hamiltonian. This is equivalent that we can find a moment map $\displaystyle{\mu :M\to \mathfrak{g}^{*}}$ such that

$$\begin{align}
\mathrm{d}\braket{ \mu(x),\xi } & =-\iota _{X_{\xi}}\omega , \forall \xi \in \mathfrak{g}
\end{align}$$

here $\displaystyle{\braket{ \cdot ,\cdot }}$ is the natural pairing between $\displaystyle{\mathfrak{g}^{*}}$ and $\displaystyle{\mathfrak{g}}$. The moment map is called equivariant if

$$\begin{align}
\mu(g\cdot x) & =\mathrm{Ad}^{*}_{g}\mu(x), \forall g\in G,x\in M
\end{align}$$

or infinitesimally,

$$\begin{align}
X_{\xi}\braket{ \mu,\eta } & =\braket{ \mu,[\xi ,\eta ] }, \forall \xi ,\eta \in \mathfrak{g}
\end{align}$$

that is, there is no classical anomaly.

If the action of $\displaystyle{G}$ on $\displaystyle{M}$ is Hamiltonian, with an equivariant moment map, then $\displaystyle{\mu ^{-1}(0)}$ is invariant under $\displaystyle{G}$. What is $\displaystyle{\mu ^{-1}(0)}$? It is the set of points $\displaystyle{x\in M}$ such that $\displaystyle{\braket{ \mu(x),\xi }=0}$ for all $\displaystyle{\xi \in \mathfrak{g}}$. By the definition of the moment map, this is equivalent to

$$\begin{align}
\iota _{X_{\xi}}\omega & =0, \forall \xi \in \mathfrak{g}
\end{align}$$

thus $\displaystyle{\mu ^{-1}(0)}$ is the set of points where the vector fields generating the $\displaystyle{G}$ action are in the kernel of the symplectic form. Thus we can consider the orbit space

$$\begin{align}
M//G & =\mu ^{-1}(0)/G
\end{align}$$

if $\displaystyle{G}$ acts freely on $\displaystyle{\mu ^{-1}(0)}$, which means that there are no fixed points, then it is a theorem due to Marsden-Weinstein that $\displaystyle{M//G}$ is a symplectic manifold, with symplectic form $\displaystyle{\omega _{\text{red}}}$ uniquely determined by the condition

$$\begin{align}
\pi ^{*}\omega _{\text{red}} & =\iota ^{*}\omega
\end{align}$$

here $\displaystyle{\iota :\mu ^{-1}(0)\to M}$ is the inclusion map, and $\displaystyle{\pi :\mu ^{-1}(0)\to M//G}$ is the projection map. $\displaystyle{M//G}$ is called the symplectic quotient of $\displaystyle{M}$ by $\displaystyle{G}$.

---

Here we present an example. Consider the case $\displaystyle{M=\mathbb{C}^{n+1}}$, with symplectic form $\displaystyle{\omega=\frac{i}{2}\sum ^{n}_{i=0}\mathrm{d}z^{i}\wedge \mathrm{d}\bar{z}^{i}}$. Let $\displaystyle{G=U(1)}$ act by simultaneously rotating the coordinates:

$$\begin{align}
(z^{0},z^{1},\dots ,z^{n}) & \mapsto (e^{i\theta}z^{0},e^{i\theta}z^{1},\dots ,e^{i\theta}z^{n})
\end{align}$$

an equivariant momentum map is

$$\begin{align}
\mu & =\frac{1}{2}\left( \sum _{i=0}^{n}|z^{i}|^{2}-r^{2} \right)
\end{align}$$

here $\displaystyle{r\in \mathbb{R}^{+}}$ is a parameter. The level set $\displaystyle{\mu ^{-1}(0)}$

$$\begin{align}
\mu ^{-1}(0) & =\left\{ (z^{0},z^{1},\dots ,z^{n})\in \mathbb{C}^{n+1}|\sum _{i=0}^{n}|z^{i}|^{2}=r^{2} \right\}
\end{align}$$

which is a sphere $\displaystyle{S_{r}^{2n+1}}$ of radius $\displaystyle{r}$. Quotienting gives $\displaystyle{\mathbb{C}^{n+1}//U(1)=S^{2n+1}/U(1)=\mathbb{C}P^{n}}$. The associated symplectic form is $\displaystyle{\frac{r^{2}}{2}\omega _{\text{FS}}}$, where $\displaystyle{\omega _{\text{FS}}}$ is the Fubini-Study form on $\displaystyle{\mathbb{C}P^{n}}$.

---

When $\displaystyle{M}$ is Kähler, and the complexification $\displaystyle{G_{\mathbb{C}}}$ of $\displaystyle{G}$ acts on $\displaystyle{M}$, there is a nice way to understand the symplectic quotient. The Kempf-Ness theorem states that if $\displaystyle{M}$ is a complex smooth projective variety, then $\displaystyle{M//G}$ is isomorphic to $\displaystyle{M/G_{\mathbb{C}}}$, where the latter quotient is in the sense of geometric invariant theory.

Note that for every vector field $\displaystyle{X_{\xi}}$ corresponding to some Lie algebra element $\displaystyle{\xi \in \mathfrak{g}}$, its complex rotation $\displaystyle{X_{i\xi}=JX_{\xi}}$ acts transverse to the locus $\displaystyle{\mu _{\xi}=0}$, since

$$\begin{align}
(JX_{\xi})\mu _{\xi} & =\mathrm{d}\mu _{\xi}(JX_{\xi}) \\
 & =\omega(X_{\xi},JX_{\xi})=g(X_{\xi},X_{\xi})> 0
\end{align}$$

## Quantum Mechanics on a Symplectic Quotient
