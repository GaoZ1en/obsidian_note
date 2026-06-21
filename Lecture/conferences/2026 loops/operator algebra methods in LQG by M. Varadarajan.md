1. GNS representation
1. ...

---

definition of *algebra*

an $\displaystyle{*}$-algebra $\displaystyle{\mathcal{S}}$ is an algebra equipped with an operation $\displaystyle{\star:\mathcal{S}\to \mathcal{S}}$, which looks like "complex conjugation".

the GNS construction relies on a positive linear functional (PLF) $\displaystyle{\omega}$ defined on a $\displaystyle{\star}$-algebra $\displaystyle{\mathcal{S}}$. GNS construct a representation of the algebra $\displaystyle{\mathcal{S}}$ on a Hilbert space. steps:
1. define a vector space $\displaystyle{V}$
	1. we will choose $\displaystyle{V\equiv \mathcal{S}}$
	1. in particular, $\displaystyle{\ket{\Omega}=\ket{1}}$
1. represent $\displaystyle{\forall A\in \mathcal{S}}$ as a linear operator $\displaystyle{\Lambda(A)}$ on $\displaystyle{V}$
	1. $\displaystyle{\Lambda(A)\ket{B}=\ket{AB}}$
1. define a scalar product $\displaystyle{(\cdot,\cdot)}$ on $\displaystyle{V}$.
	1. $\displaystyle{(\ket{A},\ket{B})=\omega(A^{*}B)}$
1. Cauchy completion of $\displaystyle{V}$ with respect to $\displaystyle{(\cdot,\cdot)}$ will yield the GNS Hilbert space.

if every state in $\displaystyle{V}$ can be written as $\displaystyle{\Lambda(\dots)\ket{\Omega}}$ then the rep. is called cyclic.

---

*Weyl algebra*

consider the algebra expanded by $\displaystyle{(x,p)}$, with commutator

$$\begin{align}
[x,p] & =i\hbar
\end{align}$$

define

$$\begin{align}
W(a,b) & =e^{i(ax+bp)}
\end{align}$$

and the $\displaystyle{\star}$-operator on $\displaystyle{W}$ is given by

$$\begin{align}
W^{*}(a,b) & =W(-a,-b)
\end{align}$$

one can show that

$$\begin{align}
W(a_{1},b_{1})W(a_{2},b_{2}) & =e^{i\hbar(a_{1}b_{2}-a_{2}b_{1})/2}W(a_{1}+a_{2},b_{1}+b_{2})
\end{align}$$

consider a harmonic oscillator. the corresponding PLF would be

$$\begin{align}
\omega(W(a,b)) & =e^{-(a^{2}+b^{2})/4}
\end{align}$$

then
1. $\displaystyle{\omega(W(a,b))=\braket{ \Omega|\hat{W}(a,b)|\Omega }}$
1. the state $\displaystyle{\ket{W(a,b)}}$ corresponds to the coherent state

*a PLF for LQC*

define $\displaystyle{\omega}$ through

$$\begin{align}
\omega(W(a,b)) & =1, & \text{if }a=0 \\
\omega(W(a,b)) & =0, & \text{if }a\neq 0
\end{align}$$

a problem is that the operator $\displaystyle{a}$ is not well-defined... this property creates open issues in defining the LQG dynamics.

---

normed vector space...

norm on $\displaystyle{*}$-algebra $\displaystyle{\mathcal{S}}$. a $\displaystyle{C*}$-algebra is a normed $\displaystyle{*}$-algebra which is Cauchy complete with respect to the norm.

Abelian $\displaystyle{C*}$-algebra, $\displaystyle{\forall A,B\in \mathcal{C},\text{ s.t. } AB=BA}$.

nothing nontrivial.

Gelfand showed that every Abelian $\displaystyle{C*}$-algebra can be realized as the Abelian $\displaystyle{C*}$-algebra $\displaystyle{\mathcal{F}_{\Delta}}$ of continuous functions on a certain compact Hausdorff space $\displaystyle{\Delta}$. more precisely:
1. any Abelian $\displaystyle{C*}$-algebra $\displaystyle{\mathcal{C}}$ is isomorphic to the Abelian $\displaystyle{C*}$-algebra $\displaystyle{\mathcal{F}_{\Delta}}$ of continuous (complex-valued) functions on a compact Hausdorff space $\displaystyle{\Delta}$, which is refered to as the spectrum of the $\displaystyle{C*}$-algebra $\displaystyle{\mathcal{C}}$
1. elements of $\displaystyle{\Delta}$ are in 1-1 correspondence to the homomorphism $\displaystyle{\mathcal{C}\to \mathbb{C}}$.
1. $\displaystyle{f_{A}(h)=h(A)}$.
1. the topology of $\displaystyle{\Delta}$ is defined to be the weakest topology.

this suggest us that we can represent element of $\displaystyle{\mathcal{C}}$ as a multiplication representation of $\displaystyle{\Delta}$...

---

denote abstract element corresponding to $\displaystyle{e^{ikx}}$ by $\displaystyle{a_{k}}$. then an Abelian $\displaystyle{C*}$-algebra consists elements of the form

$$\begin{align}
a & =\sum ^{n}_{i=1}c_{i}a_{k _{i}},  & c_{i}\in \mathbb{C}
\end{align}$$

the norm is defined as

$$\begin{align}
\left\|a\right\| & =\sup_{x \in \mathbb{R}}\left|\sum ^{n}_{i=1} c_{i}e^{ik _{i}x}\right|
\end{align}$$

then $\displaystyle{\mathcal{C}}$ is obtained by Cauchy completion of $\displaystyle{\mathcal{S}}$ in the sup norm.

...
