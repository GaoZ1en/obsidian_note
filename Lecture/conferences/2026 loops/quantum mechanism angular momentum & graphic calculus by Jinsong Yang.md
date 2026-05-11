a vector field $\displaystyle{A}$ on a Lie group $\displaystyle{G}$ is called left-invariant if

$$\begin{align}
L_{g*}A & =A, \forall g\in G
\end{align}$$

where $\displaystyle{L_{g*}}$ is the pushfoward induced by the left translation $\displaystyle{L_{g}:G\to G}$. equivalently

$$\begin{align}
A_{g}\psi(g) & = \frac{\mathrm{d}}{\mathrm{d}t}\bigg|_{t=0} \psi(g\exp(tA))
\end{align}$$

there exists a unique Harr measure $\displaystyle{\mu _{H}}$ satisfies

1. invariant, $\displaystyle{\mu _{H}(h)=\mu _{H}(gh)=\mu _{H}(hg)=\mu _{H}(h^{-1})}$
2. normalized, $\displaystyle{\mu _{H}(G)=1}$

angular momentum, generator of $\displaystyle{\mathfrak{su}(2)}$.

*interwiner*. two reps. $\displaystyle{\pi _{i}:G\to \mathcal{B}(V_{i}), i=1,2}$ is called equivalent iff there exists a invertible linear map

$$\begin{align}
I:V_{1}\to V_{2}
\end{align}$$

satisfying

$$\begin{align}
I\pi _{1}(g) & =\pi _{2}(g)I
\end{align}$$

equivalently the following diagram commutes

```tikz
\usepackage{tikz-cd,amsmath,amssymb}
\begin{document}\begin{tikzcd}
V_{1} \arrow{r}{I} & V_{2} \\
V_{1} \arrow{u}{\pi_{1}(g)} \arrow{r}{I} & V_{2} \arrow{u}{\pi_{2}(g)}
\end{tikzcd}\end{document}
```

define

$$\begin{align}
[\pi _{j}(g)]^{m}_{~n} & = \braket{ jm|\pi _{j}(g)|jn }  \\
 & =D^{j}_{mn}(g)
\end{align}$$

for $\displaystyle{g=e^{-\mathrm{i}\alpha J_{3}}e^{-\mathrm{i}\beta J_{2}}e^{-\mathrm{i}\gamma J_{3}}}$,

$$\begin{align}
D^{j}_{mn}(g) & =e^{-\mathrm{i}m\alpha}d^{j}_{mn}(\beta)e^{-\mathrm{i}n\gamma} \\
d^{j}_{mn}(\beta) & =\sum _{\ell}\frac{(-1)^{\ell-m+n}\sqrt{(j+m)!(j-m)!(j+n)!(j-n)!}}{(j+m-\ell)!\ell!(n-m+\ell)!(j-n-\ell)!} \\
&\qquad\times \left(\cos \frac{\beta}{2}\right)^{2j+m-n-2\ell}\left(\sin \frac{\beta}{2}\right)^{n-m+2\ell}
\end{align}$$

where the summation is over the integers for which all factorials are non-negative.

Peter-Weyl theorem: the functions $\displaystyle{\sqrt{2j+1}[\pi _{j}(g)]^{m}_{~n}}$ form an orthonormal basis of $\displaystyle{L^{2}(\mathrm{SU}(2),\mathrm{d}\mu _{H})}$, namely

$$\begin{align}
\int _{\mathrm{SU}(2)}\overline{[\pi _{j}(g)]^{m}_{~n}}[\pi _{j'}(g)]^{m'}_{~n'}\mathrm{d}\mu _{H}(g) & =\frac{1}{2j+1}\delta _{jj'}\delta ^{m}_{m'}\delta ^{n}_{n'} \\
f(g) & =\sum _{j\in \frac{1}{2}\mathbb{N}_{0}}(2j+1)\sum _{m,n=-j}^{j}f^{j}_{mn}[\pi _{j}(g)]^{m}_{~n}, \\
f^{j}_{mn} & =\int _{\mathrm{SU}(2)}\overline{[\pi _{j}(g)]^{m}_{~n}}f(g)\mathrm{d}\mu _{H}(g)
\end{align}$$

the action of angular momentum of $\displaystyle{[\pi _{j}(g)]^{m}_{~n}}$ is given by

$$\begin{align}
J^{2}[\pi _{j}(g)]^{m}_{~n} & = j(j+1)[\pi _{j}(g)]^{m}_{~n}\\
J_{3}^{(L)}[\pi _{j}(g)]^{m}_{~n} & =n[\pi _{j}(g)]^{m}_{~n} \\
J_{3}^{(R)}[\pi _{j}(g)]^{m}_{~n} & =-m[\pi _{j}(g)]^{m}_{~n}
\end{align}$$

interwiners. specially
1. for $\displaystyle{V_{1}=V_{2}=V_{j}}$, the interwiner $\displaystyle{I^{m}_{~n}=\delta ^{m}_{n}}$
2. for $\displaystyle{V_{1}=V_{j}, V_{2}=V_{j}^{*}}$, the interwiner $\displaystyle{I_{m'm}=(-1)^{j-m}\delta _{m,-m'},I^{mm'}=(-1)^{j-m}\delta _{m,-m'}}$

in general, consider the direct product representation

$$\begin{align}
\pi_{j_{1}}\otimes \pi_{j_{2}} & :G\to \mathcal{B}(V_{j_{1}}\otimes V_{j_{2}}) \\
V_{j_{1}}\otimes V_{j_{2}} & \cong \bigoplus^{j_{1}+j_{2}}_{J=|j_{1}-j_{2}|}V_{J}
\end{align}$$

the interwiner

$$\begin{align}
I^{J}_{j_{1}j_{2}} & :V_{1}\otimes V_{2}\to \oplus V_{J} \\
e_{m_{1}}^{j_{1}}\otimes e_{m_{2}}^{j_{2}} & \mapsto I^{J}_{j_{1}j_{2}}(e^{j_{1}}_{m_{1}}\otimes e^{j_{2}}_{m_{2}})=\sum _{M}\braket{ JM|j_{1}m_{1}j_{2}m_{2} }e^{J}_{M} 
\end{align}$$

where $\displaystyle{\braket{ JM|j_{1}m_{1}j_{2}m_{2} }}$ is the CG coefficient, which is chosen to be real. more generally

$$\begin{align}
\otimes _{i} \pi _{j_{i}} & :G\to \mathcal{B}(\otimes _{i}V_{i}) \\
\otimes _{i} V_{i} & \cong \oplus _{J}V_{J}
\end{align}$$

the interwiner

$$\begin{align}
(I^{J;\vec{a}}_{j_{1}\dots j_{n}})_{m_{1}\dots m_{n}}^{M} & =\sum _{k_{2},\dots,k_{n-1}}(I^{a_{2}}_{j_{1}j_{2}})^{k_{2}}_{m_{1}m_{2}}(I^{a_{3}}_{a_{2}j_{3}})_{k_{2}m_{3}}^{k_{3}}\dots(I^{J}_{a_{n-1}j_{n}})_{k_{n-1}m_{n}}^{M}
\end{align}$$

CG series

$$\begin{align}
[\pi _{j_{1}}(g)]^{m_{1}}_{~n_{1}}[\pi _{j_{2}}(g)]^{m_{2}}_{~n_{2}} & =\sum _{J=|j_{1}-j_{2}|}^{j_{1}+j_{2}}\sum _{M,N=-J}^{J}\braket{JM|j_{1}m_{1}j_{2}m_{2}}\braket{JN|j_{1}n_{1}j_{2}n_{2}}[\pi _{J}(g)]^{M}_{~N}
\end{align}$$

for future convenience, introduce the $\displaystyle{i}$ symbols as

$$\begin{align}
(i^{J;\vec{a}}_{j_{1}\dots j_{n}})^{M}_{m_{1}m_{2}\dots m_{n}} & := (-1)^{j_{1}-\sum ^{n}_{i=2}j_{i}-K} (I^{J;\vec{a}}_{j_{1}\dots j_{n}})^{M}_{m_{1}\dots m_{n}}, \\
K & :=\sum _{r=2}^{n-1}a_{r}
\end{align}$$

---

elementary variables in LQG is holonomy and flux. consider $\displaystyle{(A_{a}^{i},\tilde{E}_{i}^{a})}$ defined on $\displaystyle{\Sigma}$, which satisfies the Poisson bracket

$$\begin{align}
\left\{A^{i}_{a}(x),\tilde{E}^{b}_{j}(y)\right\}=\kappa \beta \delta ^{b}_{a}\delta ^{i}_{j}\delta ^{3}(x-y)
\end{align}$$

the holonomy $\displaystyle{h_{e}(A)}$ of connection $\displaystyle{A^{i}_{a}}$ along an edge $\displaystyle{e:[0,1]\to \Sigma}$ is defined as

$$\begin{align}
h_{e}(A) & =\mathcal{P}\exp\left(\int _{e}A\right)\in \mathrm{SU}(2) \\
A & =\mathrm{d}eA^{i}_{a}\tau _{i}
\end{align}$$

which satisfies

1. $\displaystyle{h_{e_{1}\circ e_{2}}(A)=h_{e_{1}}(A)h_{e_{2}}(A)}$
2. $\displaystyle{h_{e^{-1}}(A)=h_{e}(A)^{-1}}$
3. under the gauge transformation, $\displaystyle{h_{e}(A^{g})=g(b(e))h_{e}(A)g(f(e))^{-1}}$

and the flux $\displaystyle{\tilde{E}_{i}(S)}$ of densitized triad $\displaystyle{E_{i}^{a}}$ through a 2-surface $\displaystyle{S\subset \Sigma}$ is defined by

$$\begin{align}
\tilde{E}_{i}(S) & =\int _{S}(\star \tilde{E}_{i})_{ab}
\end{align}$$

consider the Poisson bracket

$$\begin{align}
\left\{h_{e}(A),\tilde{E}_{i}(S)\right\} & =\frac{\kappa \beta}{2}\epsilon(e,S)\left(\delta _{e\cap S,b(e)}\tau _{i}h_{e}(A)+\delta _{e\cap S,f(e)}h_{e}(A)\tau _{i}\right) \\
\left\{[\pi _{j}(h_{e})]^{m}_{~n},\tilde{E}_{i}(S)\right\} & =\frac{\kappa \beta}{2}\epsilon(e,S)\left(\delta _{e\cap S,b(e)}[\tau ^{(j)}_{i}]^{m}_{~k}[\pi _{j}(h_{e})]^{k}_{~n}+\delta _{e\cap S,f(e)}[\pi _{j}(h_{e})]^{m}_{~k}[\tau ^{(j)}_{i}]^{k}_{~n}\right)
\end{align}$$

where the direction factor $\displaystyle{\epsilon(e,S)}$ is defined as

$$\begin{align}
\epsilon(e,S) & =\begin{cases}
1 & \text{up type} \\
-1 & \text{down type} \\
0 & \text{inside or outside type}
\end{cases}
\end{align}$$

the classical configuration space $\displaystyle{\mathcal{A}}$ is the set of smooth connections $\displaystyle{A}$ on $\displaystyle{\Sigma}$, and the quantum configuration space (kinetic Hilbert space) is defined as $\displaystyle{L^{2}(\mathcal{\bar{A}},\mathrm{d}\mu _{AL})}$. now we will try to find the measure $\displaystyle{\mathrm{d}\mu _{AL}}$

a graph $\displaystyle{\gamma}$ is a collection of edges and vertices, in which the edges can only intersect each other at their endpoints. a graph $\displaystyle{\gamma'}$ is said to be larger than another graph $\displaystyle{\gamma}$, if $\displaystyle{\forall e\in \gamma}$ can be written as $\displaystyle{e=e'_{1}\circ\dots \circ e_{k}'}$ for some edges of $\displaystyle{\gamma'}$. our strategy is to restrict the configuration space on a graph $\displaystyle{\gamma}$, and then find the natural measure $\displaystyle{\mathrm{d}\mu _{\gamma}}$, and then glue them together.

denote $\displaystyle{\mathcal{\bar{A}}_{\gamma}}$. there exists a bijection

$$\begin{align}
I_{E}: \mathcal{\bar{A}}_{\gamma} & \to \mathrm{SU}(2)^{n} \\
A & \mapsto (A(e_{1}),\dots ,A(e_{n}))
\end{align}$$

then it is natural to define

$$\begin{align}
\int _{\mathcal{\bar{A}}_{\gamma}}I^{*}_{E}\psi(A)\mathrm{d}\mu _{\gamma}(A) & =\int _{\mathrm{SU}(2)^{n}} \psi(A(e_{1}),\dots,A(e_{n})) \prod ^{n}_{i=1} \mathrm{d}\mu _{H}(A(e_{i}))
\end{align}$$

denote $\displaystyle{f_{\gamma}=I^{*}_{E}\psi}$ for future convenience. for $\displaystyle{\gamma'\geqslant \gamma}$, there exists a surjective map

$$\begin{align}
P_{\gamma'\gamma}:\mathcal{\bar{A}}_{\gamma'}\to \mathcal{\bar{A}}_{\gamma}
\end{align}$$

we can prove that

$$\begin{align}
\int _{\mathcal{\bar{A}}_{\gamma'}} f_{\gamma'}(A)\mathrm{d}\mu _{\gamma'}(A) & =\int _{\mathcal{\bar{A}}_{\gamma}}f_{\gamma}(A)\mathrm{d}\mu _{\gamma}(A)
\end{align}$$

therefore we can define the quantum configuration space and the Ashtekar-Lewandowski measure as the projective limit

$$\begin{align}
\mathcal{\bar{A}} & :=\varprojlim _{\gamma}\mathcal{\bar{A}}_{\gamma}, & (P_{\gamma})_{*}\mu _{AL} & =\mu _{\gamma}.
\end{align}$$

Equivalently, for any cylindrical function $\displaystyle{f_{\gamma}=P_{\gamma}^{*}\psi}$,

$$\begin{align}
\int _{\mathcal{\bar{A}}}f_{\gamma}(A)\mathrm{d}\mu _{AL}(A) & :=\int _{\mathcal{\bar{A}}_{\gamma}} \psi(A_{\gamma})\mathrm{d}\mu _{\gamma}(A_{\gamma}).
\end{align}$$

For a Borel set $\displaystyle{B\subset \mathcal{\bar{A}}_{\gamma}}$, the cylinder set $\displaystyle{\mathrm{Cyl}_{\gamma}(B):=P_{\gamma}^{-1}(B)}$ satisfies

$$\begin{align}
\mu _{AL}\left(\mathrm{Cyl}_{\gamma}(B)\right) & =\mu _{\gamma}(B), & \mu _{\gamma'}\left(P_{\gamma'\gamma}^{-1}(B)\right) & =\mu _{\gamma}(B)
\end{align}$$

for $\displaystyle{\gamma'\geqslant \gamma}$.

now we choose a convenient basis for the kinetic Hilbert space

$$\begin{align}
\mathcal{H}_{\mathrm{kin}} & :=L^{2}(\mathcal{\bar{A}},\mathrm{d}\mu _{AL}).
\end{align}$$

on a fixed graph $\displaystyle{\gamma}$,

$$\begin{align}
\mathcal{H}_{\gamma} & =L^{2}(\mathcal{\bar{A}}_{\gamma},\mathrm{d}\mu _{\gamma})\cong L^{2}(\mathrm{SU}(2)^{|E(\gamma)|},\prod _{e}\mathrm{d}\mu _{H}),
\end{align}$$

and the Peter-Weyl basis is

$$\begin{align}
T_{\gamma,\vec{j},\vec{m},\vec{n}}(A) & :=\prod _{e\in E(\gamma)}\sqrt{2j_{e}+1}\,[\pi _{j_{e}}(h_{e}(A))]^{m_{e}}_{~n_{e}}.
\end{align}$$

A spin-network label is $\displaystyle{s=(\gamma,\{j_{e}\},\{\iota _{v}\})}$, where each edge carries an irreducible representation $\displaystyle{j_{e}}$ and each vertex carries an intertwiner

$$\begin{align}
\iota _{v} & \in \mathrm{Inv}\left(\bigotimes _{e:b(e)=v}V_{j_{e}}^{*}\otimes \bigotimes _{e:f(e)=v}V_{j_{e}}\right).
\end{align}$$

The spin-network state is obtained by contracting the edge representation matrices with the vertex intertwiners:

$$\begin{align}
T_{s}(A) & :=\left(\bigotimes _{e\in E(\gamma)}\sqrt{2j_{e}+1}\,\pi _{j_{e}}(h_{e}(A))\right)\cdot \left(\bigotimes _{v\in V(\gamma)}\iota _{v}\right).
\end{align}$$

It satisfies

$$\begin{align}
T_{s}(A^{g}) & =T_{s}(A)
\end{align}$$

because the intertwiners contract the gauge transformations at every vertex. choosing orthonormal bases in all intertwiner spaces gives

$$\begin{align}
\langle T_{s},T_{s'}\rangle _{\mathcal{H}_{\mathrm{kin}}} & =\delta _{ss'}
\end{align}$$

up to the usual identification by graph refinement and trivial representations. Thus the matrix elements $\displaystyle{T_{\gamma,\vec{j},\vec{m},\vec{n}}}$ form a basis before imposing gauge invariance, while the gauge-invariant spin-network states $\displaystyle{T_{s}}$ form an orthonormal basis of the Gauss-invariant subspace.

---

graphical representation and graphical calculation.

elementary operators and their actions. the holonomy operator acts as multiplication:

$$\begin{align}
\left([\pi _{k}(\hat{h}_{e})]^{a}_{~b}f\right)(A) & =[\pi _{k}(h_{e}(A))]^{a}_{~b}f(A).
\end{align}$$

on an edge already labelled by $\displaystyle{j}$, this multiplication is reduced by the CG series:

$$\begin{align}
[\pi _{k}(h_{e})]^{a}_{~b}\left(\sqrt{2j+1}[\pi _{j}(h_{e})]^{m}_{~n}\right) & =\sum _{J=|k-j|}^{k+j}\sum _{M,N=-J}^{J}\sqrt{\frac{2j+1}{2J+1}} \\
&\qquad\times \braket{JM|ka,jm}\braket{JN|kb,jn}\left(\sqrt{2J+1}[\pi _{J}(h_{e})]^{M}_{~N}\right).
\end{align}$$

with the convention $\displaystyle{[\hat{h},\hat{E}]=\mathrm{i}\hbar\widehat{\{h,E\}}}$, the flux operator acts on a cylindrical function $\displaystyle{f_{\gamma}}$ adapted to $\displaystyle{\gamma}$ as

$$\begin{align}
\hat{E}_{i}(S)f_{\gamma} & =-\frac{\mathrm{i}\hbar\kappa \beta}{2}\sum _{e\in E(\gamma)}\epsilon(e,S)\left(\delta _{e\cap S,b(e)}X_{i}^{b(e)}+\delta _{e\cap S,f(e)}X_{i}^{f(e)}\right)f_{\gamma},
\end{align}$$

where

$$\begin{align}
X_{i}^{b(e)}[\pi _{j}(h_{e})]^{m}_{~n} & = [\tau _{i}^{(j)}]^{m}_{~k}[\pi _{j}(h_{e})]^{k}_{~n}, \\
X_{i}^{f(e)}[\pi _{j}(h_{e})]^{m}_{~n} & = [\pi _{j}(h_{e})]^{m}_{~k}[\tau _{i}^{(j)}]^{k}_{~n}.
\end{align}$$

therefore

$$\begin{align}
\hat{E}_{i}(S)[\pi _{j}(h_{e})]^{m}_{~n} & =-\frac{\mathrm{i}\hbar\kappa \beta}{2}\epsilon(e,S)\left(\delta _{e\cap S,b(e)}[\tau _{i}^{(j)}]^{m}_{~k}[\pi _{j}(h_{e})]^{k}_{~n}+\delta _{e\cap S,f(e)}[\pi _{j}(h_{e})]^{m}_{~k}[\tau _{i}^{(j)}]^{k}_{~n}\right).
\end{align}$$

on a spin-network state, the flux inserts the generator at the puncture:

$$\begin{align}
\hat{E}_{i}(S)T_{s} & =-\frac{\mathrm{i}\hbar\kappa \beta}{2}\sum _{e\in E(\gamma)}\epsilon(e,S)T_{s;i,e\cap S},
\end{align}$$

where $\displaystyle{T_{s;i,e\cap S}}$ denotes the same spin network with $\displaystyle{\tau _{i}^{(j_{e})}}$ inserted at $\displaystyle{e\cap S}$ on the corresponding edge index.

see https://arxiv.org/pdf/1505.00223 for more info