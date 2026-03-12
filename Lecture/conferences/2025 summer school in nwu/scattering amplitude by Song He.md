**surfaceology**, from curves on surface to (stringy) scattering amplitude (of colored particles)

history
1. S-matrix program
2. Parke-Taylor amplitude
3. generalized unitarity
4. twistor string, BCFW recursion, etc.

Parke-Taylor form

$$\tag{1.1}
\begin{align}
\Omega ^{\mathrm{PT}} & =\frac{\mathrm{d}^{n}z}{\mathrm{vol}SL(2,\mathbb{Z})}\mathrm{PT}(1,\dots,n)
\end{align}
$$

defines a polytope $\displaystyle{\mathcal{P}}$. $\displaystyle{\Omega ^{\mathrm{PT}}}$ is a canonical form, which has and only has logarithmic singularities on $\displaystyle{\partial \mathcal{P}}$.

and here is a recursion

$$\tag{1.2}
\begin{align}
\mathrm{Res}_{\partial \mathcal{P}}\Omega ^{(n)}(\mathcal{P}) & =\Omega ^{(n-1)}(\partial \mathcal{P})
\end{align}
$$

and finally $\displaystyle{\Omega ^{(0)}(\cdot)=\pm1}$.

this helps to calculate string amplitude... we will see that later.

**He claims that amplitude of NLSM and YM and so on can be read off from the geometries $\displaystyle{\mathcal{P}}$.**

amplituhedron, positive Grassmannian, etc.

ABJM amplitude, correlators and correlahedron in 4d, "ABJM correlahedron"(don't know what is the exactly meaning)

---
references
1. 2312.16282
2. 2401.00041
3. ...

the Lagrangian of the $\displaystyle{\mathrm{Tr}\phi ^{3}}$ theory

$$\tag{1.1}
\begin{align}
\mathcal{L} & =\mathrm{Tr}(\partial \phi)^{2}+g\mathrm{Tr}\phi ^{3}
\end{align}
$$

where $\displaystyle{\phi}$ lies in the adjoint representation of the gauge group $\displaystyle{G}$.

denote $\displaystyle{X_{i,j}=(p_{i}+\dots+p_{j})^{2}}$, $\displaystyle{c_{ij}=-2p_{i}\cdot p_{j}}$, then we have $\displaystyle{c_{ij}=X_{i,j}+X_{i+1,j+1}-X_{i,j+1}-X_{i+1,j}}$. as a generalization, we can write

$$\tag{1.2}
\begin{align}
X_{B}+X_{T}-X_{L}-X_{R} & =\sum _{c_{i,j}\in \diamond }c_{i,j}
\end{align}
$$

where $\displaystyle{\diamond}$ is a rectangle determined by $\displaystyle{B,T,L,R}$. there is a beautiful diagram interpretation of this relation.

![[Attachments/Pasted image 20250625092246.png]]

if we select a region that contains $\displaystyle{X_{i,i+1}}$ exactly once, we realize a associahedron.

![[Attachments/Pasted image 20250625092521.png]]

we require $\displaystyle{X_{i,j}>0}$ for all $\displaystyle{i>j+1}$ (mod n), we got a polytope in the Mandelstam space, which is called the ABHY associahedron. the amplitude can be read off from the volume of this polytope.

if we let $\displaystyle{c_{i,j}=0}$, we got a factorize

![[Attachments/Pasted image 20250625093445.png]]

this can be generalized to let $\displaystyle{c_{i,j}}$ in a rectangle $\displaystyle{\diamond}$ be zero, while keeping one of them non-zero, we get a more general factorization.

$$\tag{1.3}
\begin{align}
\mathcal{M}_{n}(c_{\star}\neq_{0}) & =\left(\frac{1}{X_{B}}+\frac{1}{X_{T}}\right)\times\mathcal{M}^{\mathrm{down}}\times \mathcal{M}^{\mathrm{up}}
\end{align}
$$

Minkowski sum?

NLSM Lagrangian (describing pions for example)

$$\tag{1.4}
\begin{align}
\mathcal{L}_{\mathrm{NLSM}} & =\frac{1}{8\lambda ^{2}}\mathrm{Tr}(\partial _{\mu}U^{\dagger}\partial ^{\mu}U)
\end{align}
$$

with $\displaystyle{U=(\mathbb{1}+\lambda \Phi)(\mathbb{1}-\lambda \Phi)^{-1}}$ lies in fundamental representation of $\displaystyle{G}$. its amplitudes have the same zero points and similar factorization as $\displaystyle{\mathrm{Tr}\phi ^{3}}$ theory. since there are only vertices with even number of legs, only $\displaystyle{X_{i,j}}$ with even $\displaystyle{i}$ and odd $\displaystyle{j}$ can appear in the denominator.

$$\tag{1.5}
\begin{align}
\mathcal{A}_{2n}^{\mathrm{NLSM}}(c_{\star}\neq 0) & =\left( \frac{1}{X_{B}}+\frac{1}{X_{T}} \right)\times \mathcal{A}^{\mathrm{down,NLSM}}\times \mathcal{A}^{\mathrm{up,NLSM}} \\
\mathcal{A}_{2n}^{\mathrm{NLSM}}(c_{\star}\neq 0) & =(X_{B}+X_{T})\times \mathcal{A}^{\mathrm{down,NLSM+\phi ^{3}}}\times \mathcal{A}^{\mathrm{up,NLSM+\phi ^{3}}}
\end{align}
$$

for gluons, the amplitudes depends also on the polarization vectors... they are unified by string amplitudes.

$$\tag{1.6}
\begin{align}
\mathcal{I}_{n}^{\mathrm{Tr}\phi ^{3}} & =\int _{D(1,\dots,n)} \frac{\mathrm{d}z_{1}\dots \mathrm{d}z_{n}}{\mathrm{vol}\,\mathrm{SL}(2,\mathbb{Z})} \frac{1}{z_{1,2}z_{2,3}\dots z_{n,1}}\times\prod _{i<j}z_{i,j}^{2\alpha'p_{i}\cdot p_{j}}
\end{align}
$$

introduce a new set of variables $\displaystyle{u_{a,b}= \frac{z_{a,b-1}z_{a-1,b}}{z_{a,b}z_{a-1,b-1}}}$, then the Koba-Nielsen factor can be written as

$$\tag{1.7}
\begin{align}
\prod _{i<j}z_{i,j}^{2\alpha'p_{i}\cdot p_{j}} & =\prod _{a<b}u_{a,b}^{\alpha'X_{a,b}}
\end{align}
$$

$\displaystyle{u}$ satisfies binary relation

$$\tag{1.8}
\begin{align}
u_{a,b}+\prod _{j\in L,J\in R}u_{i,J}=1
\end{align}
$$

where $\displaystyle{L,R}$ are sets separated by $\displaystyle{a,b}$. it can be proved that the solution space is $\displaystyle{d}$-dimensional, where $\displaystyle{d}$ is the dimension of the modular space. here $\displaystyle{d=n-3}$. this $\displaystyle{u}$-equations give all factorizations.

positive parametrization $\displaystyle{y_{I=1,\dots,n-3}}$

$$\tag{1.9}
\begin{align}
\mathcal{I}^{\mathrm{Tr}\phi ^{3}}_{n} & =\int _{0}^{\infty}\prod _{I} \frac{\mathrm{d}y_{I}}{y_{I}}\prod _{C}u_{C}(y)^{\alpha'X_{C}}
\end{align}
$$

where $\displaystyle{u_{C}(y)}$ is a function determined by combinatorics. when $\displaystyle{\alpha'\to0}$, we return to a field theory limit $\displaystyle{\mathrm{Tr}\phi ^{3}}$. let's dive into it. actually

$$\tag{1.10}
\begin{align}
\mathcal{I}_{n}^{\mathrm{Tr}\phi ^{3}} & =\int _{\mathbb{R}^{n-3}_{>0}} \prod ^{n}_{I=1} \frac{\mathrm{d}y_{I}}{y_{I}}\prod _{(a,b)} u^{\alpha'X_{a,b}}_{a,b}(y) \\
 & =\int _{\mathbb{R}^{n-3}_{>0}}\prod ^{n}_{I=1} \frac{\mathrm{d}y_{I}}{y_{I}}y^{\alpha'X_{a,b}}\prod _{i,j}F_{i,j}(y)^{-\alpha'c_{i,j}}
\end{align}
$$

where $\displaystyle{F_{i,j}(y)=1+y_{1,j}+y_{1,j}y_{1,j-1}+\dots+y_{1,j}\dots y_{1,i+2}}$. field theory limit, Newton polytopes???

make a shift while keeping zero points and factorization unchanged

$$\tag{1.11}
\begin{align}
\alpha'X_{e,e} & \to \alpha'(X_{e,e}+\delta) \\
\alpha'X_{o,o} & \to \alpha'(X_{o,o}-\delta)
\end{align}
$$

(the shift is unique) the shifted amplitude is

$$\tag{1.12}
\begin{align}
\mathcal{I}^{\delta}_{2n} & =\int \prod ^{n}_{I=1} \frac{\mathrm{d}y_{I}}{y_{I}}\prod _{(e,e)}u_{e,e}^{\alpha'(X_{e,e}+\delta)}\prod _{(o,o)}u_{o,o}^{\alpha'(X_{o,o}-\delta)}\prod _{(e,o)}u_{e,o}^{\alpha'X_{e,o}}
\end{align}
$$

and the field theory limit is

$$\tag{1.13}
\begin{align}
\begin{cases}
\alpha'\delta=0 & \mathrm{\mathrm{Tr}}\phi ^{3} \\
\alpha \delta \in \mathbb{R}/\mathbb{Z} & \mathrm{NLSM} \\
\alpha'\delta=\pm1 & \mathrm{YMS} \\
\alpha \delta \in \mathbb{Z}-{0,\pm_{1}} & \mathrm{unknown}\dots
\end{cases}
\end{align}
$$

and we have

$$\tag{1.14}
\begin{align}
\mathcal{A}^{\mathrm{NLSM}}_{2n} & =\lim_{ \delta \to \infty } \delta ^{n-1}\mathcal{A}_{2n}^{\mathrm{Tr}\phi ^{3}}(X_{e,e}\to X_{e,e}+\delta,X_{o,o}\to X_{o,o}-\delta)) \\
\mathcal{A}^{\mathrm{gluons}}(X) & =\mathcal{A}^{\mathrm{Tr}\phi ^{3}}\left( X_{e,e}\to X_{e,e}+\frac{1}{\alpha'},X_{o,o}\to X_{o,o}-\frac{1}{\alpha'},X_{e,o}\to X_{e,o} \right)
\end{align}
$$

fascinating.

# surfaceology

a surface is a disk(or some other) with punctures and external legs.

curves on surface? we connect point $\displaystyle{i}$ and $\displaystyle{j}$, and take a lamination, resulting in a path from leg $\displaystyle{i,i+1}$ to $\displaystyle{j,j+1}$. at loop level, there are infinite number of topological inequivalent curves. 

each curve corresponds to a kinematics invariant (momentum like)

$$\tag{2.1}
\begin{align}
P_{C} & =P_{\text{start}}+\sum _{\text{turn left}}P_{\text{from left}}
\end{align}
$$

a curve can also "end" on puncture (loop) only anti-clockwisely. 

in order to not actually draw the graphs, we introduce word for a curve... consider a 5-point amplitude, a word for a curve starting at $\displaystyle{1}$ and ending at $\displaystyle{3}$ can be written as

$$\tag{2.2}
\begin{align}
W_{13} & =(12)R(13)L(34)
\end{align}
$$

similarly we have

$$\tag{2.3}
\begin{align}
W_{14} & =(12)R(13)R(14)L(45) \\
\dots
\end{align}
$$

remember that the string amplitude can be written as

$$\tag{2.4}
\begin{align}
\mathcal{A}_{S} & =\int ^{\infty}_{0}\prod ^{\infty}_{i=1} \frac{\mathrm{d}y_{i}}{y_{i}}\prod _{C}u_{C}^{\alpha'X_{C}}(y)
\end{align}
$$

tropical limit? write $\displaystyle{y=e^{t}}$ and $\displaystyle{\mathrm{Trop}:\times\to+,+ \to \mathrm{max}}$, the amplitude becomes

$$\tag{2.5}
\begin{align}
\mathcal{A}^{\mathrm{Tr}\phi ^{3}}_{S} & =\int \mathrm{d} t_{i} e^{\sum _{C}\alpha _{C}(t)X_{C}}
\end{align}
$$

then

$$\tag{2.6}
\begin{align}
\alpha _{C}(t) & =\mathrm{Trop}u_{C}(y)
\end{align}
$$
consider $\displaystyle{W_{13}=(12)R(13)L(34)}$, it will have peaks and valleys, we write $\displaystyle{g_{13}=e_{13}}$. for peaks we got a minus and for valleys a plus. then we have several $\displaystyle{g_{ij}}$ vectors, corresponding to the norm vector of the associahedron.

$\displaystyle{u_{C}}$ satisfies the $\displaystyle{u}$-equations

$$\tag{2.7}
\begin{align}
u_{C}+\prod _{C'}u_{C'}^{\text{int}(C|C')}=1
\end{align}
$$

when $\displaystyle{u_{C}\to0}$, all other $\displaystyle{u_{C'}}$ with $\displaystyle{\text{int}(C|C')>0}$ will go to 1, and we have

$$\tag{2.8}
\begin{align}
\text{Res}_{X_{C}\to0} \mathcal{A}^{\alpha'}_{\mathcal{S}} & =\mathcal{A}^{\alpha'}_{\mathcal{S}\setminus C}
\end{align}
$$

recursion relation! now we determine $\displaystyle{u_{C}(y)}$. denote

$$\tag{2.9}
\begin{align}
M_{L}(y) & =\begin{pmatrix}
y & y \\
0 & 1
\end{pmatrix} \\
M_{R}(y) & =\begin{pmatrix}
y & 0 \\
1 & 1
\end{pmatrix}
\end{align}
$$

then we write $\displaystyle{M_{C}=\prod _{L\in C}M_{L}\prod _{R\in C}M_{R}}$, then $\displaystyle{u_{C}=\frac{(M_{C})_{12}(M_{C})_{21}}{(M_{C})_{11}(M_{C})_{22}}}$. it can be proved that $\displaystyle{u_{C}}$ solves the u-equations.

$$\tag{2.10}
\begin{align}
\mathcal{A}_{S} & =\int ^{\infty}_{0}\prod ^{\infty}_{i=1} \frac{\mathrm{d}y_{i}}{y^{2}_{i}}\prod _{C}u_{C}^{\alpha'X_{C}}(y)
\end{align}
$$

He claims that (2.10) is the gluon amplitude. actually consider $\displaystyle{n}$-pt tachyon bosonic string amplitude

$$\tag{2.11}
\begin{align}
\mathcal{A}_{n}^{\text{ tree }}(1,2,\dots,n) & =\int \frac{\mathrm{d}^{n}z_{i}}{\mathrm{vol}SL(2,\mathbb{Z})}\prod _{i<j}z_{i,j}^{2\alpha'p_{i}\cdot p_{j}}\exp\left(\sum _{i\neq j}2 \frac{\varepsilon _{i}\cdot \varepsilon _{j}}{(ij)^{2}}-\sqrt{ \alpha' }\frac{\varepsilon _{i}\cdot p_{j}}{(ij)}\right)
\end{align}
$$

choose $\displaystyle{p_{i}\cdot \varepsilon _{j}=0,\dots}$, ... gluon emerges as a pair of two tachyons.

$\displaystyle{u}$-functions satisfies

$$\tag{2.12}
\begin{align}
u^{(s)}_{\mathcal{C}}=\prod _{\text{ all curves }\mathcal{C}_{\mathcal{c}}\text{ extending }\mathcal{C}\text{ into }\mathcal{S}}u^{(\mathcal{S})}_{\mathcal{C_{c}}}
\end{align}
$$

this is very important. $\displaystyle{y}$ can be written as a monomial of $\displaystyle{u}$

$$\tag{2.13}
\begin{align}
y_{i} & =\prod _{X}u_{X}^{g^{(i)}_{X}}
\end{align}
$$

where $\displaystyle{g^{(i)}_{X}}$ is actually the $\displaystyle{g}$-vector defined before. then

$$\tag{2.14}
\begin{align}
\prod y_{i} & =\prod u_{X}^{p_{X}},\quad p_{X}=\sum _{i}g^{(i)}_{X}=0,\pm1
\end{align}
$$

---

$\displaystyle{\left|\mathcal{A}\right|^{2}}$

references
1. 2410.09859
2. 2503.15593
3. 2506.07796

actually some unitary cut of vacuum diagram...

"squared amplituhedron", open problems
1. pole sturctures & residues.
2. surfaceology

F-graph?

can't understand...

---
