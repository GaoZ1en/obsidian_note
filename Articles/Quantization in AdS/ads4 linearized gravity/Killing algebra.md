We first specify the background metric

$$\begin{align}
\mathrm{d}s^{2} & =-(1+r^{2})\mathrm{d}t^{2}+\dfrac{\mathrm{d}r^{2}}{1+r^{2}}+r^{2}\mathrm{d}\Omega _{2}^{2} \\
\mathrm{d}\Omega _{2}^{2} & =\mathrm{d}\theta ^{2}+\sin ^{2}\theta \mathrm{d}\phi ^{2}
\end{align}$$

## Killing algebra

The global AdS$_{4}$ Killing algebra is $\mathfrak{so}(2,3)$. It is convenient to introduce the following two Cartan generators

$$\begin{align}
L_{0} & =\dfrac{1}{2}(\partial _{t}+\partial _{\phi}) \\
\bar{L}_{0} & =\dfrac{1}{2}(\partial _{t}-\partial _{\phi})
\end{align}$$

the angular generators are

$$\begin{align}
J_{\pm} & =\dfrac{e^{\pm i\phi}}{\sqrt{ 2 }}\left(\pm i\partial _{\theta}-\cot \theta \partial _{\phi}\right)
\end{align}$$

the remaining six generators are written as $\displaystyle{E^{\sigma}_{m}}$ with $\displaystyle{\sigma=\pm1}$ and $\displaystyle{m=-1,0,+1}$.

$$\begin{align}
E^{\sigma}_{m} & = \dfrac{e^{i(\sigma t+m\phi)}}{2}\left(\dfrac{r\sin \theta}{\sqrt{ 1+r^{2} }}\partial _{t}-\sigma i\sqrt{ 1+r^{2} }\sin \theta \partial _{r}-\sigma i \dfrac{\sqrt{ 1+r^{2} }}{r}\cos \theta \partial _{\theta}+\sigma m \dfrac{\sqrt{ 1+r^{2} }}{r\sin \theta}\partial _{\phi}\right),  & m=\pm 1 \\
E^{\pm}_{0} & = \dfrac{e^{\pm it}}{\sqrt{ 2 }}\left(\dfrac{r\cos \theta}{\sqrt{ 1+r^{2} }}\partial _{t}\mp i\sqrt{ 1+r^{2} }\cos \theta \partial _{r}\pm i \dfrac{\sqrt{ 1+r^{2} }}{r}\sin \theta \partial _{\theta}\right)
\end{align}$$

the non-vanishing Lie brackets are

$$\begin{align}
[L_{0},J_{\pm}] & =\pm \dfrac{i}{2}J_{\pm}, & [L_{0},E^{\sigma}_{m}] & =\dfrac{i}{2}(\sigma+m)E^{\sigma}_{m}, \\
[\bar{L}_{0},J_{\pm}] & =\mp \dfrac{i}{2}J_{\pm}, & [\bar{L}_{0},E^{\sigma}_{m}] & =\dfrac{i}{2}(\sigma-m)E^{\sigma}_{m}, \\
[J_{+},J_{-}] & =i(L_{0}-\bar{L}_{0}),
\end{align}$$

and

$$\begin{align}
[J_{s},E^{\sigma}_{m}] & =-i(2m+s)E^{\sigma}_{m+s}, & m+s & \in\{-1,0,+1\},
\end{align}$$

and finally

$$\begin{align}
[E^{+}_{m},E^{-}_{n}] & =\begin{cases} -i((1+m)L_{0}+(1-m)\bar{L}_{0}), & n=-m \\
i(mJ_{m}-nJ_{n}), & mn=0,\ m+n\neq 0 \\
0, & mn=1
\end{cases}
\end{align}$$

These relations, together with antisymmetry of the Lie bracket, give the full complexified AdS$_{4}$ Killing algebra. The geometric time and azimuthal generators are recovered as

$$\begin{align}
H=\partial _{t}=L_{0}+\bar L_{0},\qquad J_{3}=\partial _{\phi }=L_{0}-\bar L_{0}.
\end{align}$$

The real Killing algebra is recovered by taking the corresponding real form.

We can expand the inverse metric as

$$\begin{align}
g^{\mu \nu} & =-2L_{0}^{\mu}L_{0}^{\nu}-2\bar{L}_{0}^{\mu}\bar{L}_{0}^{\nu}-(J_{+}^{\mu}J_{-}^{\nu}+J_{-}^{\mu}J_{+}^{\nu}) \\
 & +(E_{+1}^{+\mu}E_{-1}^{-\nu}+E_{-1}^{-\mu}E_{+1}^{+\nu})+(E_{-1}^{+\mu}E_{+1}^{-\nu}+E_{+1}^{-\mu}E_{-1}^{+\nu})+(E_{0}^{+\mu}E_{0}^{-\nu}+E_{0}^{-\mu}E_{0}^{+\nu})
\end{align}$$

this will be useful in the following discussion.

The quadratic Casimir associated with the above Killing basis is

$$\begin{align}
\mathcal{C}_{2} & =-2\mathcal{L}_{L_{0}}\mathcal{L}_{L_{0}}-2\mathcal{L}_{\bar{L}_{0}}\mathcal{L}_{\bar{L}_{0}}-\mathcal{L}_{J_{+}}\mathcal{L}_{J_{-}}-\mathcal{L}_{J_{-}}\mathcal{L}_{J_{+}} \\
 & \quad+\sum_{m=-1}^{1}\left(\mathcal{L}_{E^{+}_{m}}\mathcal{L}_{E^{-}_{-m}}+\mathcal{L}_{E^{-}_{-m}}\mathcal{L}_{E^{+}_{m}}\right).
\end{align}$$

## Massive scalar

Acting the Casimir on scalar fields, this operator is exactly the scalar Laplacian:

$$\begin{align}
\mathcal{C}_{2}\phi=\nabla^{2}\phi.
\end{align}$$

Therefore for a scalar with mass $\displaystyle{\mu}$, we have

$$\begin{align}
\mathcal{C}_{2}\phi=\mu^{2}\phi.
\end{align}$$

The scalar highest-weight primary is annihilated by the energy-lowering generators and is a rotational singlet:

$$\begin{align}
\mathcal{L}_{E^{+}_{m}}\phi_{0}=0,\qquad \mathcal{L}_{J_{\pm}}\phi_{0}=0,\qquad m=-1,0,+1.
\end{align}$$

We take its Cartan weights to be $\displaystyle{(h,\bar{h})}$, i.e., we have

$$\begin{align}
\mathcal{L}_{L_{0}}\phi _{0} & =-ih\phi _{0} \\
\mathcal{L}_{\bar{L}_{0}}\phi _{0} & =-i \bar{h}\phi _{0}
\end{align}$$

Using the highest-weight and rotational-singlet conditions, the Casimir action reduces to

$$\begin{align}
\mathcal{C}_{2}\phi _{0} & =-2\mathcal{L}_{L_{0}}^{2}\phi _{0}-2\mathcal{L}_{\bar{L}_{0}}^{2}\phi _{0}+\sum_{m=-1}^{1}\mathcal{L}_{[E^{+}_{m},E^{-}_{-m}]}\phi _{0} \\
 & =\left(2h^{2}+2\bar{h}^{2}-3h-3\bar{h}\right)\phi _{0}.
\end{align}$$

Moreover, the rotational-singlet condition implies

$$\begin{align}
0=\mathcal{L}_{[J_{+},J_{-}]}\phi _{0}=i\mathcal{L}_{L_{0}-\bar{L}_{0}}\phi _{0}=(h-\bar{h})\phi _{0},
\end{align}$$

so $h=\bar{h}$. Setting $\Delta=2h=2\bar{h}$ gives

$$\begin{align}
\mathcal{C}_{2}\phi _{0}=\Delta(\Delta-3)\phi _{0}.
\end{align}$$

The regular scalar primary is

$$\begin{align}
\phi_{0}=N\dfrac{e^{-i\Delta t}}{(1+r^{2})^{\Delta/2}},
\end{align}$$

where $N$ is fixed later by the Klein-Gordon norm.

So the mass and highest weight are related by

$$\begin{align}
\mu^{2}=\Delta(\Delta-3).
\end{align}$$

For standard quantization,

$$\begin{align}
\Delta=\dfrac{3}{2}+\sqrt{\dfrac{9}{4}+\mu^{2}}.
\end{align}$$

The descendants are obtained by repeated action of the energy-raising generators:

$$\begin{align}
\phi_{m_{1}\cdots m_{N}}=\mathcal{L}_{E^{-}_{m_{1}}}\cdots \mathcal{L}_{E^{-}_{m_{N}}}\phi_{0},\qquad m_{j}\in\{-1,0,+1\}.
\end{align}$$

Since $[E^{-}_{m},E^{-}_{n}]=0$, the level-$N$ descendants form symmetric products of the spin-one $SO(3)$ representation. They decompose into angular momenta $\ell=N,N-2,\ldots$, matching the global scalar spectrum

$$\begin{align}
\omega=\Delta+\ell+2p,\qquad p=0,1,2,\ldots.
\end{align}$$

## Massive vector

For a vector field, the Lie derivative contains the spin term:

$$\begin{align}
\left(\mathcal{L}_{K}A\right)^{\mu}=K^{\nu}\nabla_{\nu}A^{\mu}-A^{\nu}\nabla_{\nu}K^{\mu}.
\end{align}$$

With the same quadratic Casimir, its action on a vector field is

$$\begin{align}
\mathcal{C}_{2}A^{\mu}=(\nabla^{2}+3)A^{\mu}.
\end{align}$$

The Proca equation is

$$\begin{align}
\nabla_{\nu}F^{\nu\mu}-\mu^{2}A^{\mu}=0,\qquad F_{\mu\nu}=\nabla_{\mu}A_{\nu}-\nabla_{\nu}A_{\mu}.
\end{align}$$

For $\mu^{2}\neq0$, it implies the transverse condition $\nabla_{\mu}A^{\mu}=0$. On transverse vectors in AdS$_{4}$, the Proca equation becomes

$$\begin{align}
\left(\nabla^{2}+3-\mu^{2}\right)A^{\mu}=0,
\end{align}$$

and hence

$$\begin{align}
\mathcal{C}_{2}A^{\mu}=\mu^{2}A^{\mu}.
\end{align}$$

The spin-one primary is a triplet under the spatial rotation algebra. We write it as

$$\begin{align}
A_{s}^{\mu},\qquad s=+1,0,-1,
\end{align}$$

with

$$\begin{align}
\mathcal{L}_{E^{+}_{m}}A_{s}^{\mu}=0,\qquad \mathcal{L}_{H}A_{s}^{\mu}=-i\Delta A_{s}^{\mu},\qquad \mathcal{L}_{J_{3}}A_{s}^{\mu}=isA_{s}^{\mu}.
\end{align}$$

Equivalently, the Cartan weights of the spin component $s$ are

$$\begin{align}
\mathcal{L}_{L_{0}}A_{s}^{\mu}=-i\dfrac{\Delta-s}{2}A_{s}^{\mu},\qquad \mathcal{L}_{\bar{L}_{0}}A_{s}^{\mu}=-i\dfrac{\Delta+s}{2}A_{s}^{\mu}.
\end{align}$$

It is enough to evaluate the Casimir on the highest rotational component $A_{+1}^{\mu}$, which satisfies

$$\begin{align}
\mathcal{L}_{J_{+}}A_{+1}^{\mu}=0,\qquad \mathcal{L}_{J_{3}}A_{+1}^{\mu}=iA_{+1}^{\mu}.
\end{align}$$

For this component,

$$\begin{align}
h=\dfrac{\Delta-1}{2},\qquad \bar{h}=\dfrac{\Delta+1}{2}.
\end{align}$$

Using the highest-weight conditions, the Casimir action reduces to

$$\begin{align}
\mathcal{C}_{2}A_{+1}^{\mu} & =\left(2h^{2}+2\bar{h}^{2}-3h-3\bar{h}+\bar{h}-h\right)A_{+1}^{\mu} \\
 & =(\Delta-1)(\Delta-2)A_{+1}^{\mu}.
\end{align}$$

Thus the Proca mass and the highest weight are related by

$$\begin{align}
\mu^{2}=(\Delta-1)(\Delta-2).
\end{align}$$

For standard quantization,

$$\begin{align}
\Delta=\dfrac{3}{2}+\sqrt{\dfrac{1}{4}+\mu^{2}}.
\end{align}$$

We introduce the spin-1 polarization (co)vectors as

$$\begin{align}
u_{+,\mu} & =e^{i\phi}\left(-r\sin\theta,-\dfrac{i\sin\theta}{1+r^{2}},-ir\cos\theta,r\sin\theta\right), \\
u_{0,\mu} & =\left(ir\cos\theta,-\dfrac{\cos\theta}{1+r^{2}},r\sin\theta,0\right), \\
u_{-,\mu} & =e^{-i\phi}\left(-r\sin\theta,-\dfrac{i\sin\theta}{1+r^{2}},-ir\cos\theta,-r\sin\theta\right).
\end{align}$$

Then the regular transverse primary triplet can be chosen as

$$\begin{align}
A_{s}^{\mu} & =Ne^{-i\Delta t}(1+r^{2})^{-\Delta/2}u_{s}^{\mu}
\end{align}$$

With the normalization used above, the rotational ladder operators act as

$$\begin{align}
\mathcal{L}_{J_{-}}A_{+1}^{\mu}=\sqrt{2}A_{0}^{\mu},\qquad \mathcal{L}_{J_{-}}A_{0}^{\mu}=\frac{1}{\sqrt{2}}A_{-1}^{\mu},
\end{align}$$

and

$$\begin{align}
\mathcal{L}_{J_{+}}A_{0}^{\mu}=-\frac{1}{\sqrt{2}}A_{+1}^{\mu},\qquad \mathcal{L}_{J_{+}}A_{-1}^{\mu}=-\sqrt{2}A_{0}^{\mu}.
\end{align}$$

Here $N$ is fixed later by the vector symplectic norm. These three fields obey

$$\begin{align}
\nabla_{\mu}A_{s}^{\mu}=0,\qquad \left(\nabla^{2}+3-(\Delta-1)(\Delta-2)\right)A_{s}^{\mu}=0.
\end{align}$$

The remaining positive-energy descendants are generated by the $\mathcal{L}_{E^{-}_{m}}$ operators:

$$\begin{align}
A^{\mu}_{s;m_{1}\cdots m_{N}}=\mathcal{L}_{E^{-}_{m_{1}}}\cdots \mathcal{L}_{E^{-}_{m_{N}}}A_{s}^{\mu},\qquad s=+1,0,-1,\qquad m_{j}\in\{-1,0,+1\}.
\end{align}$$

## Massless vector

For Maxwell theory the equation of motion is

$$\begin{align}
\nabla_{\nu}F^{\nu\mu}=0,
\end{align}$$

with the gauge redundancy

$$\begin{align}
A_{\mu}\sim A_{\mu}+\nabla_{\mu}\lambda.
\end{align}$$

We work in the covariant gauge

$$\begin{align}
\nabla_{\mu}A^{\mu}=0.
\end{align}$$

In this gauge, the Maxwell equation becomes

$$\begin{align}
\left(\nabla^{2}+3\right)A^{\mu}=0,
\end{align}$$

so the same Casimir relation gives

$$\begin{align}
\mathcal{C}_{2}A^{\mu}=0.
\end{align}$$

The massless limit of the spin-one formula

$$\begin{align}
\mu^{2}=(\Delta-1)(\Delta-2)
\end{align}$$

therefore gives two branches,

$$\begin{align}
\Delta=1,\qquad \Delta=2.
\end{align}$$

The standard Maxwell photon branch is $\Delta=2$. Its covariant potential is represented by the spin-one $SO(3)$ triplet $A_{s}^{\mu}$ with $s=+1,0,-1$, evaluated at $\Delta=2$. The component $s=0$ is part of the covariant vector potential; the physical Hilbert space is obtained only after imposing the gauge identification.

The $\Delta=1$ branch is a residual-gauge branch. It is obtained by evaluating the same primary triplet at $\Delta=1$, and can be written as a pure gauge mode

$$\begin{align}
\left.A_{s}^{\mu}\right|_{\Delta=1}=\nabla^{\mu}\lambda_{s},
\end{align}$$

with

$$\begin{align}
\lambda_{+1} & =-iN e^{-it+i\phi}\dfrac{r\sin\theta}{\sqrt{1+r^{2}}}, \\
\lambda_{0} & =-N e^{-it}\dfrac{r\cos\theta}{\sqrt{1+r^{2}}}, \\
\lambda_{-1} & =-iN e^{-it-i\phi}\dfrac{r\sin\theta}{\sqrt{1+r^{2}}}.
\end{align}$$

These gauge parameters obey

$$\begin{align}
\nabla^{2}\lambda_{s}=0.
\end{align}$$

Thus the covariant potential retains the full $SO(3)$ primary triplet, while the residual-gauge branch and the longitudinal photon polarization are removed at the level of the gauge quotient. In the flat-space limit this quotient leaves the two helicity polarizations.

## Massive TT tensor

For a symmetric two-tensor, the Lie derivative is

$$\begin{align}
\left(\mathcal{L}_{K}h\right)_{\mu\nu}=K^{\rho}\nabla_{\rho}h_{\mu\nu}+h_{\rho\nu}\nabla_{\mu}K^{\rho}+h_{\mu\rho}\nabla_{\nu}K^{\rho}.
\end{align}$$

With the same quadratic Casimir, its action on the transverse-traceless spin-two sector is

$$\begin{align}
\mathcal{C}_{2}h_{\mu\nu}=(\nabla^{2}+8)h_{\mu\nu}.
\end{align}$$

We consider the second-order massive spin-two equation in the transverse-traceless sector,

$$\begin{align}
\nabla^{\mu}h_{\mu\nu} & =0, & g^{\mu\nu}h_{\mu\nu} & =0, & \left(\nabla^{2}+2-\mu^{2}\right)h_{\mu\nu} & =0.
\end{align}$$

In this sector,

$$\begin{align}
\mathcal{C}_{2}h_{\mu\nu}=(\mu^{2}+6)h_{\mu\nu}.
\end{align}$$

The spin-two primary is a quintet under the spatial rotation algebra. We write it as

$$\begin{align}
h_{s,\mu\nu},\qquad s=+2,+1,0,-1,-2,
\end{align}$$

with

$$\begin{align}
\mathcal{L}_{E^{+}_{m}}h_{s,\mu\nu}=0,\qquad \mathcal{L}_{H}h_{s,\mu\nu}=-i\Delta h_{s,\mu\nu},\qquad \mathcal{L}_{J_{3}}h_{s,\mu\nu}=is h_{s,\mu\nu}.
\end{align}$$

Equivalently, the Cartan weights of the spin component $s$ are

$$\begin{align}
\mathcal{L}_{L_{0}}h_{s,\mu\nu}=-i\dfrac{\Delta-s}{2}h_{s,\mu\nu},\qquad \mathcal{L}_{\bar{L}_{0}}h_{s,\mu\nu}=-i\dfrac{\Delta+s}{2}h_{s,\mu\nu}.
\end{align}$$

It is enough to evaluate the Casimir on the highest rotational component $h_{+2,\mu\nu}$, which satisfies

$$\begin{align}
\mathcal{L}_{J_{+}}h_{+2,\mu\nu}=0,\qquad \mathcal{L}_{J_{3}}h_{+2,\mu\nu}=2i h_{+2,\mu\nu}.
\end{align}$$

For this component,

$$\begin{align}
h=\dfrac{\Delta-2}{2},\qquad \bar{h}=\dfrac{\Delta+2}{2}.
\end{align}$$

Using the highest-weight conditions, the Casimir action reduces to

$$\begin{align}
\mathcal{C}_{2}h_{+2,\mu\nu} & =\left(2h^{2}+2\bar{h}^{2}-3h-3\bar{h}+\bar{h}-h\right)h_{+2,\mu\nu} \\
 & =\left(\Delta(\Delta-3)+6\right)h_{+2,\mu\nu}.
\end{align}$$

Thus the mass and the highest weight are related by

$$\begin{align}
\mu^{2}=\Delta(\Delta-3).
\end{align}$$

For standard quantization,

$$\begin{align}
\Delta=\dfrac{3}{2}+\sqrt{\dfrac{9}{4}+\mu^{2}}.
\end{align}$$

The regular transverse-traceless primary quintet can be written in terms of the following spin-one polarization covectors, whose components are ordered as $(t,r,\theta,\phi)$:

$$\begin{align}
h_{+2,\mu\nu} & =N e^{-i\Delta t}(1+r^{2})^{-\Delta/2}u_{+,\mu}u_{+,\nu}, \\
h_{+1,\mu\nu} & =N e^{-i\Delta t}(1+r^{2})^{-\Delta/2}\left(u_{+,\mu}u_{0,\nu}+u_{0,\mu}u_{+,\nu}\right), \\
h_{0,\mu\nu} & =N e^{-i\Delta t}(1+r^{2})^{-\Delta/2}\left(u_{+,\mu}u_{-,\nu}+u_{-,\mu}u_{+,\nu}+4u_{0,\mu}u_{0,\nu}\right), \\
h_{-1,\mu\nu} & =N e^{-i\Delta t}(1+r^{2})^{-\Delta/2}\left(u_{-,\mu}u_{0,\nu}+u_{0,\mu}u_{-,\nu}\right), \\
h_{-2,\mu\nu} & =N e^{-i\Delta t}(1+r^{2})^{-\Delta/2}u_{-,\mu}u_{-,\nu}.
\end{align}$$

The lower spin components are generated from $h_{+2,\mu\nu}$ by repeated action of $\mathcal{L}_{J_{-}}$. With the normalization above,

$$\begin{align}
\mathcal{L}_{J_{-}}h_{+2,\mu\nu} & =\sqrt{2}\,h_{+1,\mu\nu}, & \mathcal{L}_{J_{-}}h_{+1,\mu\nu} & =\dfrac{1}{\sqrt{2}}h_{0,\mu\nu}, \\
\mathcal{L}_{J_{-}}h_{0,\mu\nu} & =3\sqrt{2}\,h_{-1,\mu\nu}, & \mathcal{L}_{J_{-}}h_{-1,\mu\nu} & =\sqrt{2}\,h_{-2,\mu\nu}.
\end{align}$$

Here $N$ is fixed later by the spin-two symplectic norm. These five fields obey

$$\begin{align}
g^{\mu\nu}h_{s,\mu\nu}=0,\qquad \nabla^{\mu}h_{s,\mu\nu}=0,\qquad \left(\nabla^{2}+2-\Delta(\Delta-3)\right)h_{s,\mu\nu}=0.
\end{align}$$

The remaining positive-energy descendants are generated by the $\mathcal{L}_{E^{-}_{m}}$ operators:

$$\begin{align}
h_{s;m_{1}\cdots m_{N},\mu\nu}=\mathcal{L}_{E^{-}_{m_{1}}}\cdots \mathcal{L}_{E^{-}_{m_{N}}}h_{s,\mu\nu},\qquad s=+2,+1,0,-1,-2,\qquad m_{j}\in\{-1,0,+1\}.
\end{align}$$

## Massless TT tensor

For the massless Einstein equation in TT gauge, the field equation is

$$\begin{align}
\left(\nabla^{2}+2\right)h_{\mu\nu}=0.
\end{align}$$

This is the $\mu^{2}=0$ limit of the massive spin-two relation

$$\begin{align}
\mu^{2}=\Delta(\Delta-3),
\end{align}$$

so the two roots are

$$\begin{align}
\Delta=0,\qquad \Delta=3.
\end{align}$$

The standard normalizable graviton branch is $\Delta=3$. Its covariant metric perturbation is represented by the spin-two $SO(3)$ quintet $h_{s,\mu\nu}$ with $s=+2,+1,0,-1,-2$, evaluated at $\Delta=3$. The linearized diffeomorphism redundancy is

$$\begin{align}
h_{\mu\nu}\sim h_{\mu\nu}+\nabla_{\mu}\zeta_{\nu}+\nabla_{\nu}\zeta_{\mu}.
\end{align}$$

In TT gauge, residual gauge parameters satisfy

$$\begin{align}
\nabla^{\mu}\zeta_{\mu}=0,\qquad \left(\nabla^{2}-3\right)\zeta_{\mu}=0.
\end{align}$$

The $\Delta=0$ branch is a residual-diffeomorphism branch. Evaluating the same quintet at $\Delta=0$, the highest spin component can be written as

$$\begin{align}
\left.h_{+2,\mu\nu}\right|_{\Delta=0}=\nabla_{\mu}\zeta_{+2,\nu}+\nabla_{\nu}\zeta_{+2,\mu},
\end{align}$$

where the gauge parameters are the following covectors, with components ordered as $\displaystyle{(t,r,\theta,\phi)}$:

$$\begin{align}
\zeta_{+2,\mu} & =\dfrac{N}{2}e^{2i\phi}\left(ir^{2}\sin^{2}\theta,-\dfrac{r\sin^{2}\theta}{1+r^{2}},-r^{2}\sin\theta\cos\theta,-ir^{2}\sin^{2}\theta\right), \\
\zeta_{+1,\mu} & =Ne^{i\phi}\left(r^{2}\sin\theta\cos\theta,\dfrac{ir\sin\theta\cos\theta}{1+r^{2}},\dfrac{i}{2}r^{2}\cos2\theta,-\dfrac{1}{2}r^{2}\sin\theta\cos\theta\right), \\
\zeta_{0,\mu} & =\dfrac{N}{2}\left(-ir^{2}(1+3\cos2\theta),\dfrac{r(1+3\cos2\theta)}{1+r^{2}},-6r^{2}\sin\theta\cos\theta,0\right), \\
\zeta_{-1,\mu} & =Ne^{-i\phi}\left(r^{2}\sin\theta\cos\theta,\dfrac{ir\sin\theta\cos\theta}{1+r^{2}},\dfrac{i}{2}r^{2}\cos2\theta,\dfrac{1}{2}r^{2}\sin\theta\cos\theta\right), \\
\zeta_{-2,\mu} & =\dfrac{N}{2}e^{-2i\phi}\left(ir^{2}\sin^{2}\theta,-\dfrac{r\sin^{2}\theta}{1+r^{2}},-r^{2}\sin\theta\cos\theta,ir^{2}\sin^{2}\theta\right).
\end{align}$$

They are generated with the same rotational ladder normalization as the $\displaystyle{h_{s,\mu\nu}}$ quintet.

They obey

$$\begin{align}
\nabla^{\mu}\zeta_{s,\mu}=0,\qquad \left(\nabla^{2}-3\right)\zeta_{s,\mu}=0,\qquad \left.h_{s,\mu\nu}\right|_{\Delta=0}=\nabla_{\mu}\zeta_{s,\nu}+\nabla_{\nu}\zeta_{s,\mu}.
\end{align}$$

Thus the covariant metric perturbation retains the full $SO(3)$ primary quintet before the gauge quotient. The quotient removes the gauge components, and in the flat-space limit the physical polarizations reduce to the two helicity-two polarizations.
