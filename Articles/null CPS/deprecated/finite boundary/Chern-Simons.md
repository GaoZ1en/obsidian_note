in this file we will consider $\displaystyle{\mathrm{U}(1)}$ Chern-Simons theory in the finite spacetime region $\displaystyle{R=[u_{i},u_{f}]\times D^{2}}$, with boundary contains a null hypersurface

$$\begin{align}
\mathcal{N} & \cong[u_{i},u_{f}]\times S^{1}
\end{align}$$

where $\displaystyle{u}$ is the parameter along the null generator, $\displaystyle{\phi \sim \phi+2\pi}$ is the coordinate on the $\displaystyle{S^{1}}$. every

$$\begin{align}
C_{u} & =\left\{u\right\}\times S^{1}
\end{align}$$

is a dimension-one cut. specially, we have

$$\begin{align}
\partial _{\mathcal{N}}=C_{f}-C_{i}
\end{align}$$

the action is chosen to be

$$\begin{align}
S_{\mathrm{CS}}[A] & =\dfrac{k}{4\pi} \int _{R} A\wedge \mathrm{d}A+S_{\text{bdy}}[A]
\end{align}$$

we will specify the $\displaystyle{S_{\text{bdy}}}$ later.

## local null collar

near $\displaystyle{\mathcal{N}}$ choose Gaussian null collar coordinates

$$\begin{align}
x^{\mu} & =(u,\rho,\phi),& 0 & \leq \rho <\epsilon,& \phi & \sim \phi+2\pi
\end{align}$$

with orientation $\displaystyle{\mathrm{d}u\wedge \mathrm{d}\rho\wedge \mathrm{d}\phi}$ and

$$\begin{align}
\mathcal{N} & =\{\rho=0\},& C_{u} & =\{\rho=0,u=\text{constant}\}.
\end{align}$$

The metric is only used to identify the boundary as null. A convenient local choice is

$$\begin{align}
\mathrm{d}s^{2} & =-2\,\mathrm{d}u\,\mathrm{d}\rho+R_{\mathcal{N}}^{2}\mathrm{d}\phi^{2}+O(\rho),
\end{align}$$

so $\displaystyle{\partial _{u}}$ is the null generator on $\displaystyle{\mathcal{N}}$. The induced orientation on $\displaystyle{\mathcal{N}}$ is $\displaystyle{\mathrm{d}u\wedge \mathrm{d}\phi}$, which gives $\displaystyle{\partial \mathcal{N}=C_{f}-C_{i}}$.

With this convention, the variation of the bulk Chern-Simons action gives

$$\begin{align}
\delta S_{\mathrm{CS}}^{\mathrm{bulk}} & =\frac{k}{2\pi}\int_{R}\delta A\wedge \mathrm{d}A+\frac{k}{4\pi}\int_{\partial R}A\wedge \delta A,\\
\left.A\wedge \delta A\right|_{\mathcal{N}} & =(A_{u}\delta A_{\phi}-A_{\phi}\delta A_{u})\,\mathrm{d}u\wedge \mathrm{d}\phi .
\end{align}$$

To get a definite mode problem, choose the chiral null boundary term

$$\begin{align}
S_{\mathrm{bdy}}^{(+)}[A] & =\frac{k}{4\pi}\int_{\mathcal{N}}\mathrm{d}u\,\mathrm{d}\phi\left(A_{u}A_{\phi}+vA_{\phi}^{2}\right),& v & >0 .
\end{align}$$

Then the boundary part of the variation is

$$\begin{align}
\left.\delta S_{\mathrm{total}}^{(+)}\right|_{\mathcal{N}} & =\frac{k}{2\pi}\int_{\mathcal{N}}\mathrm{d}u\,\mathrm{d}\phi\,(A_{u}+vA_{\phi})\delta A_{\phi},
\end{align}$$

so the variational principle fixes the null chiral boundary condition

$$\begin{align}
A_{u}+vA_{\phi} & =0 \qquad \text{on }\mathcal{N}.
\end{align}$$

The opposite chirality is obtained from $\displaystyle{S_{\mathrm{bdy}}^{(-)}=\frac{k}{4\pi}\int_{\mathcal{N}}\mathrm{d}u\,\mathrm{d}\phi\left(A_{u}A_{\phi}-vA_{\phi}^{2}\right)}$, which gives $\displaystyle{A_{u}-vA_{\phi}=0}$. The choice of chirality replaces the timelike-boundary split $\displaystyle{A^{\pm}=A^{t}\pm A^{\phi}}$ in the AdS calculation; it is extra boundary data, not something fixed by the degenerate metric on $\displaystyle{\mathcal{N}}$.

## Carroll interpretation of the chiral polarization

The null boundary carries the Carroll data

$$\begin{align}
q_{ab}\mathrm{d}x^{a}\mathrm{d}x^{b} & =R_{\mathcal{N}}^{2}\mathrm{d}\phi^{2},& \ell^{a}\partial _{a} & =\partial _{u},& q_{ab}\ell^{b} & =0 .
\end{align}$$

Together with the cut vector $\displaystyle{s^{a}\partial _{a}=\partial _{\phi}}$, the chiral boundary condition can be written as

$$\begin{align}
V_{\pm}^{a} & =\ell^{a}\pm v s^{a},& \iota _{V_{\pm}}A & =0 .
\end{align}$$

In components this is exactly

$$\begin{align}
\iota _{V_{\pm}}A & =A_{u}\pm vA_{\phi}=0 .
\end{align}$$

Thus $\displaystyle{v}$ is the edge velocity that chooses a Chern-Simons boundary polarization relative to the Carroll frame $\displaystyle{(\ell^{a},q_{ab})}$. Rescaling the generator $\displaystyle{\ell^{a}\to f\ell^{a}}$ rescales the coordinate $\displaystyle{u}$ and the numerical value of $\displaystyle{v}$; the invariant statement is the choice of the chiral line field $\displaystyle{V_{\pm}^{a}}$ on $\displaystyle{\mathcal{N}}$. The flux-free sector below is the sector in which the gauge parameter and the connection are both transported along this same line field.

The Carroll data geometrizes this Chern-Simons polarization, but it does not by itself generate a universal boundary condition. For Yang-Mills theory the relevant null flux is controlled by the field-strength components along the generator and the cut directions, such as $\displaystyle{F_{\ell A}}$, so a condition on $\displaystyle{\iota _{V}A}$ is at most a source or gauge choice. For gravity the null flux is controlled by geometric data such as shear, expansion, surface gravity, and the corner area form. In those theories the boundary condition must be derived from the corresponding variational principle and symplectic flux; the condition $\displaystyle{\iota _{V_{\pm}}A=0}$ is a Chern-Simons-specific chiral polarization written in Carrollian language.

## flat solutions and edge modes

The equation of motion is

$$\begin{align}
\mathrm{d}A & =0 .
\end{align}$$

Since $\displaystyle{D^{2}}$ is contractible, every smooth bulk solution is gauge equivalent to

$$\begin{align}
A & =\mathrm{d}\Lambda .
\end{align}$$

Gauge transformations whose parameter vanishes on $\displaystyle{\mathcal{N}}$ are degenerate directions of the presymplectic form. The physical modes are therefore the boundary values of $\displaystyle{\Lambda}$ on $\displaystyle{\mathcal{N}}$. A smooth representative for each non-zero Fourier mode is obtained by choosing a disk radial coordinate $\displaystyle{r\in[0,1]}$ that agrees with $\displaystyle{r=1-\rho}$ in the collar and taking

$$\begin{align}
\Lambda _{n}^{(+)}(u,\rho,\phi) & =C_{n}\,r^{n}e^{-in(vu-\phi)},& n & =1,2,\ldots .
\end{align}$$

The corresponding connection mode is

$$\begin{align}
A_{n}^{(+)} & =\mathrm{d}\Lambda _{n}^{(+)},\\
A_{n,u}^{(+)} & =-inv\Lambda _{n}^{(+)},& A_{n,\rho}^{(+)} & =-\frac{n}{r}\Lambda _{n}^{(+)},& A_{n,\phi}^{(+)} & =in\Lambda _{n}^{(+)} .
\end{align}$$

These modes obey

$$\begin{align}
\mathrm{d}A_{n}^{(+)} & =0,& \left(A_{n,u}^{(+)}+vA_{n,\phi}^{(+)}\right)\big|_{\mathcal{N}} & =0 .
\end{align}$$

Their complex conjugates are the negative-frequency modes. The zero mode is a constant gauge parameter on the disk and has no symplectic norm. A non-zero $\displaystyle{\mathrm{d}\phi}$ holonomy would be a separate global sector on an annulus, but it is excluded for a smooth connection on $\displaystyle{D^{2}}$.

Thus the right-moving solution space for $\displaystyle{k>0}$ is represented by

$$\begin{align}
A & =\sum_{n=1}^{\infty}\left(a_{n}A_{n}^{(+)}+a_{n}^{*}A_{n}^{(+)*}\right)+\mathrm{d}\Lambda _{\mathrm{small}},
\end{align}$$

where $\displaystyle{\Lambda _{\mathrm{small}}|_{\mathcal{N}}=0}$ is pure gauge. For $\displaystyle{k<0}$ the positive-norm branch is the opposite chirality

$$\begin{align}
\Lambda _{n}^{(-)}(u,\rho,\phi) & =C_{n}\,r^{n}e^{-in(vu+\phi)},& A_{u}^{(-)}-vA_{\phi}^{(-)} & =0 .
\end{align}$$

## symplectic normalization

On shell, the Chern-Simons presymplectic form on a cut $\displaystyle{C_{u}}$ reduces to the boundary expression

$$\begin{align}
\Omega _{C_{u}} & =\frac{k}{4\pi}\int_{C_{u}}\delta \Lambda \wedge \partial _{\phi}\delta \Lambda\,\mathrm{d}\phi .
\end{align}$$

For the right-moving branch,

$$\begin{align}
\Omega _{C_{u}}\!\left[A_{m}^{(+)},A_{n}^{(+)}\right] & =0,\\
\Omega _{C_{u}}\!\left[A_{m}^{(+)},A_{n}^{(+)*}\right] & =-ikn|C_{n}|^{2}\delta _{mn}.
\end{align}$$

Imposing the same convention as the AdS calculation,

$$\begin{align}
\Omega _{C_{u}}\!\left[A_{n}^{(+)},A_{n}^{(+)*}\right] & =-i,
\end{align}$$

fixes

$$\begin{align}
C_{n} & =\frac{1}{\sqrt{kn}},& k & >0 .
\end{align}$$

For $\displaystyle{k<0}$ one instead uses the left-moving branch and fixes

$$\begin{align}
C_{n} & =\frac{1}{\sqrt{-kn}},& k & <0 .
\end{align}$$

## proper and large gauge transformations

For the right-moving polarization define the boundary phase space

$$\begin{align}
\mathcal{F}_{+} & =\left\{A\mid \mathrm{d}A=0,\ \left.(A_{u}+vA_{\phi})\right|_{\mathcal{N}}=0,\ A\text{ smooth on }D^{2}\right\}.
\end{align}$$

An infinitesimal gauge transformation is admissible when it preserves this phase space:

$$\begin{align}
\mathfrak{g}_{\mathrm{adm}}^{(+)} & =\left\{\epsilon\mid \left.(\partial _{u}+v\partial _{\phi})\epsilon\right|_{\mathcal{N}}=0\right\}.
\end{align}$$

The proper gauge transformations are the admissible transformations whose vector fields are degenerate directions of the cut presymplectic form:

$$\begin{align}
\mathfrak{g}_{\mathrm{proper}}^{(+)} & =\left\{\epsilon\in \mathfrak{g}_{\mathrm{adm}}^{(+)}\mid \Omega _{C_{u}}(\delta A,\mathrm{d}\epsilon)=0\ \text{for all }\delta A\in T\mathcal{F}_{+}\right\}.
\end{align}$$

Equivalently,

$$\begin{align}
\delta Q_{\epsilon}[C_{u}] & =\frac{k}{2\pi}\int_{C_{u}}\epsilon \delta A_{\phi}\,\mathrm{d}\phi=0
\end{align}$$

for all allowed variations. In the smooth disk sector this includes all gauge parameters that vanish on $\displaystyle{\mathcal{N}}$ and the constant boundary mode. The constant mode has zero charge because $\displaystyle{\oint_{C_{u}}A_{\phi}\mathrm{d}\phi=0}$ for a smooth exact connection on $\displaystyle{D^{2}}$.

The large gauge algebra is therefore the quotient

$$\begin{align}
\mathfrak{g}_{\mathrm{large}}^{(+)} & =\mathfrak{g}_{\mathrm{adm}}^{(+)}/\mathfrak{g}_{\mathrm{proper}}^{(+)} .
\end{align}$$

It is represented by the non-zero chiral boundary modes

$$\begin{align}
\epsilon _{n}^{(+)} & =e^{-in(vu-\phi)},& n & \in \mathbb{Z}\setminus\{0\}.
\end{align}$$

The left-moving polarization uses $\displaystyle{\partial _{u}-v\partial _{\phi}}$ and $\displaystyle{\epsilon _{n}^{(-)}=e^{-in(vu+\phi)}}$ instead.

## Noether theorem and flux

For an infinitesimal gauge transformation

$$\begin{align}
\delta _{\epsilon}A & =\mathrm{d}\epsilon ,
\end{align}$$

the Hamiltonian Noether charge is defined on a cut by

$$\begin{align}
\delta Q_{\epsilon}[C_{u}] & =-\iota _{X_{\epsilon}}\Omega _{C_{u}}=\frac{k}{2\pi}\int_{C_{u}}\epsilon \delta A_{\phi}\,\mathrm{d}\phi,\\
Q_{\epsilon}[C_{u}] & =\frac{k}{2\pi}\int_{C_{u}}\epsilon A_{\phi}\,\mathrm{d}\phi .
\end{align}$$

For gauge parameters preserving the right-moving boundary condition, $\displaystyle{(\partial _{u}+v\partial _{\phi})\epsilon=0}$, the charge algebra on each cut is

$$\begin{align}
\{Q_{\epsilon},Q_{\eta}\} & =\frac{k}{2\pi}\int_{C_{u}}\epsilon \partial _{\phi}\eta\,\mathrm{d}\phi .
\end{align}$$

Taking $\displaystyle{\epsilon _{n}=e^{-in(vu-\phi)}}$ gives the $\displaystyle{\mathrm{U}(1)}$ Kac-Moody central term.

The null-boundary version of Noether theorem is a balance law between the two cuts. With the orientation fixed above,

$$\begin{align}
Q_{\epsilon}[C_{f}]-Q_{\epsilon}[C_{i}] & =\frac{k}{2\pi}\int_{\mathcal{N}}\mathrm{d}_{\mathcal{N}}(\epsilon A)\\
 & =\frac{k}{2\pi}\int_{\mathcal{N}}\left[\partial _{u}(\epsilon A_{\phi})-\partial _{\phi}(\epsilon A_{u})\right]\mathrm{d}u\,\mathrm{d}\phi\\
 & =\frac{k}{2\pi}\int_{\mathcal{N}}\left[(\partial _{u}\epsilon)A_{\phi}-(\partial _{\phi}\epsilon)A_{u}\right]\mathrm{d}u\,\mathrm{d}\phi .
\end{align}$$

The last line uses the equation of motion $\displaystyle{F_{u\phi}=\partial _{u}A_{\phi}-\partial _{\phi}A_{u}=0}$. This term is the flux through the null boundary in the charge-balance sense. It is not a propagating bulk flux, because abelian Chern-Simons theory has no local bulk modes; it measures exchange between the cut charge and the boundary source data.

For the chiral boundary condition and its preserving symmetry,

$$\begin{align}
A_{u}+vA_{\phi} & =0,& (\partial _{u}+v\partial _{\phi})\epsilon & =0,
\end{align}$$

the flux density vanishes:

$$\begin{align}
(\partial _{u}\epsilon)A_{\phi}-(\partial _{\phi}\epsilon)A_{u} & =0 .
\end{align}$$

Therefore the chiral edge charges are conserved from $\displaystyle{C_{i}}$ to $\displaystyle{C_{f}}$. If instead $\displaystyle{A_{u}}$ is treated as an arbitrary boundary source and $\displaystyle{\partial _{u}\epsilon=0}$, the balance law becomes

$$\begin{align}
Q_{\epsilon}[C_{f}]-Q_{\epsilon}[C_{i}] & =-\frac{k}{2\pi}\int_{\mathcal{N}}(\partial _{\phi}\epsilon)A_{u}\,\mathrm{d}u\,\mathrm{d}\phi .
\end{align}$$

This is the null-boundary difference from the timelike AdS calculation: the Hamiltonian charge is conserved only after imposing a flux-free boundary condition or restricting to the chiral symmetry-preserving sector.
