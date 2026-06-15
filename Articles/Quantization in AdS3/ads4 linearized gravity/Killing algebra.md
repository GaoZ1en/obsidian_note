we first specify the background metric

$$\begin{align}
\mathrm{d}s^{2} & =-(1+r^{2})\mathrm{d}t^{2}+\dfrac{\mathrm{d}r^{2}}{1+r^{2}}+r^{2}\mathrm{d}\Omega _{2}^{2} \\
\mathrm{d}\Omega _{2}^{2} & =\mathrm{d}\theta ^{2}+\sin ^{2}\theta \mathrm{d}\phi ^{2}
\end{align}$$

## Killing algebra

The global AdS$_{4}$ Killing algebra is $\mathfrak{so}(2,3)$. it is convenient to introduce the following two Cartan generators

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
[E^{+}_{m},E^{-}_{n}] & =\begin{cases}
-i((1+m)L_{0}+(1-m)\bar{L}_{0}), & n=-m \\
i(mJ_{m}-nJ_{n}), & mn=0,\ m+n\neq 0 \\
0, & mn=1
\end{cases}
\end{align}$$

These relations, together with antisymmetry of the Lie bracket, give the full complexified AdS$_{4}$ Killing algebra. The geometric time and azimuthal generators are recovered as

$$H=\partial _{t}=L_{0}+\bar L_{0},\qquad J_{3}=\partial _{\phi }=L_{0}-\bar L_{0}.$$

The real Killing algebra is recovered by taking the corresponding real form.

we can expand the inverse metric as

$$\begin{align}
g^{\mu \nu} & =-2L_{0}^{\mu}L_{0}^{\nu}-2\bar{L}_{0}^{\mu}\bar{L}_{0}^{\nu}-(J_{+}^{\mu}J_{-}^{\nu}+J_{-}^{\mu}J_{+}^{\nu}) \\
 & +(E_{+1}^{+\mu}E_{-1}^{-\nu}+E_{-1}^{-\mu}E_{+1}^{+\nu})+(E_{-1}^{+\mu}E_{+1}^{-\nu}+E_{+1}^{-\mu}E_{-1}^{+\nu})+(E_{0}^{+\mu}E_{0}^{-\nu}+E_{0}^{-\mu}E_{0}^{+\nu})
\end{align}$$

this will be useful in the following discussion.

the quadratic Casimir associated with the above Killing basis is

$$\begin{align}
\mathcal{C}_{2} & =-2\mathcal{L}_{L_{0}}\mathcal{L}_{L_{0}}-2\mathcal{L}_{\bar{L}_{0}}\mathcal{L}_{\bar{L}_{0}}-\mathcal{L}_{J_{+}}\mathcal{L}_{J_{-}}-\mathcal{L}_{J_{-}}\mathcal{L}_{J_{+}} \\
 & \quad+\sum_{m=-1}^{1}\left(\mathcal{L}_{E^{+}_{m}}\mathcal{L}_{E^{-}_{-m}}+\mathcal{L}_{E^{-}_{-m}}\mathcal{L}_{E^{+}_{m}}\right).
\end{align}$$

## massive scalar

acting the Casimir on scalar fields, this operator is exactly the scalar Laplacian:

$$\mathcal{C}_{2}\phi=\nabla^{2}\phi.$$

therefore for a scalar with mass $\displaystyle{\mu}$, we have

$$\mathcal{C}_{2}\phi=\mu^{2}\phi.$$

the scalar highest-weight primary is annihilated by the energy-lowering generators and is a rotational singlet:

$$\mathcal{L}_{E^{+}_{m}}\phi_{0}=0,\qquad \mathcal{L}_{J_{\pm}}\phi_{0}=0,\qquad m=-1,0,+1.$$

we take its Cartan weights to be $\displaystyle{(h,\bar{h})}$, i.e., we have

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

$$0=\mathcal{L}_{[J_{+},J_{-}]}\phi _{0}=i\mathcal{L}_{L_{0}-\bar{L}_{0}}\phi _{0}=(h-\bar{h})\phi _{0},$$

so $h=\bar{h}$. Setting $\Delta=2h=2\bar{h}$ gives

$$\mathcal{C}_{2}\phi _{0}=\Delta(\Delta-3)\phi _{0}.$$

the regular scalar primary is

$$\phi_{0}=N\dfrac{e^{-i\Delta t}}{(1+r^{2})^{\Delta/2}},$$

where $N$ is fixed later by the Klein-Gordon norm.

so the mass and highest weight are related by

$$\mu^{2}=\Delta(\Delta-3).$$

for standard quantization,

$$\Delta=\dfrac{3}{2}+\sqrt{\dfrac{9}{4}+\mu^{2}}.$$

the descendants are obtained by repeated action of the energy-raising generators:

$$\phi_{m_{1}\cdots m_{N}}=\mathcal{L}_{E^{-}_{m_{1}}}\cdots \mathcal{L}_{E^{-}_{m_{N}}}\phi_{0},\qquad m_{j}\in\{-1,0,+1\}.$$

since $[E^{-}_{m},E^{-}_{n}]=0$, the level-$N$ descendants form symmetric products of the spin-one $SO(3)$ representation. they decompose into angular momenta $\ell=N,N-2,\ldots$, matching the global scalar spectrum

$$\omega=\Delta+\ell+2p,\qquad p=0,1,2,\ldots.$$

## massive vector

For a vector field, the Lie derivative contains the spin term:

$$\left(\mathcal{L}_{K}A\right)^{\mu}=K^{\nu}\nabla_{\nu}A^{\mu}-A^{\nu}\nabla_{\nu}K^{\mu}.$$

With the same quadratic Casimir, its action on a vector field is

$$\mathcal{C}_{2}A^{\mu}=(\nabla^{2}+3)A^{\mu}.$$

The Proca equation is

$$\nabla_{\nu}F^{\nu\mu}-\mu^{2}A^{\mu}=0,\qquad F_{\mu\nu}=\nabla_{\mu}A_{\nu}-\nabla_{\nu}A_{\mu}.$$

For $\mu^{2}\neq0$, it implies the transverse condition $\nabla_{\mu}A^{\mu}=0$. On transverse vectors in AdS$_{4}$, the Proca equation becomes

$$\left(\nabla^{2}+3-\mu^{2}\right)A^{\mu}=0,$$

and hence

$$\mathcal{C}_{2}A^{\mu}=\mu^{2}A^{\mu}.$$

The spin-one primary is a triplet under the spatial rotation algebra. We write it as

$$A_{s}^{\mu},\qquad s=+1,0,-1,$$

with

$$\mathcal{L}_{E^{+}_{m}}A_{s}^{\mu}=0,\qquad \mathcal{L}_{H}A_{s}^{\mu}=-i\Delta A_{s}^{\mu},\qquad \mathcal{L}_{J_{3}}A_{s}^{\mu}=isA_{s}^{\mu}.$$

Equivalently, the Cartan weights of the spin component $s$ are

$$\mathcal{L}_{L_{0}}A_{s}^{\mu}=-i\dfrac{\Delta-s}{2}A_{s}^{\mu},\qquad \mathcal{L}_{\bar{L}_{0}}A_{s}^{\mu}=-i\dfrac{\Delta+s}{2}A_{s}^{\mu}.$$

It is enough to evaluate the Casimir on the highest rotational component $A_{+1}^{\mu}$, which satisfies

$$\mathcal{L}_{J_{+}}A_{+1}^{\mu}=0,\qquad \mathcal{L}_{J_{3}}A_{+1}^{\mu}=iA_{+1}^{\mu}.$$

For this component,

$$h=\dfrac{\Delta-1}{2},\qquad \bar{h}=\dfrac{\Delta+1}{2}.$$

Using the highest-weight conditions, the Casimir action reduces to

$$\begin{align}
\mathcal{C}_{2}A_{+1}^{\mu} & =\left(2h^{2}+2\bar{h}^{2}-3h-3\bar{h}+\bar{h}-h\right)A_{+1}^{\mu} \\
 & =(\Delta-1)(\Delta-2)A_{+1}^{\mu}.
\end{align}$$

Thus the Proca mass and the highest weight are related by

$$\mu^{2}=(\Delta-1)(\Delta-2).$$

For standard quantization,

$$\Delta=\dfrac{3}{2}+\sqrt{\dfrac{1}{4}+\mu^{2}}.$$

The regular transverse primary triplet can be chosen as

$$\begin{align}
A_{+1}^{\mu} & =N e^{-i\Delta t+i\phi}(1+r^{2})^{-\Delta/2}\left(\dfrac{r\sin\theta}{1+r^{2}},-i\sin\theta,-\dfrac{i\cos\theta}{r},\dfrac{1}{r\sin\theta}\right), \\
A_{0}^{\mu} & =N e^{-i\Delta t}(1+r^{2})^{-\Delta/2}\left(-\dfrac{ir\cos\theta}{1+r^{2}},-\cos\theta,\dfrac{\sin\theta}{r},0\right), \\
A_{-1}^{\mu} & =N e^{-i\Delta t-i\phi}(1+r^{2})^{-\Delta/2}\left(\dfrac{r\sin\theta}{1+r^{2}},-i\sin\theta,-\dfrac{i\cos\theta}{r},-\dfrac{1}{r\sin\theta}\right).
\end{align}$$

The lower spin components are proportional to repeated action of $\mathcal{L}_{J_{-}}$ on $A_{+1}^{\mu}$. Here $N$ is fixed later by the vector symplectic norm. These three fields obey

$$\nabla_{\mu}A_{s}^{\mu}=0,\qquad \left(\nabla^{2}+3-(\Delta-1)(\Delta-2)\right)A_{s}^{\mu}=0.$$

The remaining positive-energy descendants are generated by the $\mathcal{L}_{E^{-}_{m}}$ operators:

$$A^{\mu}_{s;m_{1}\cdots m_{N}}=\mathcal{L}_{E^{-}_{m_{1}}}\cdots \mathcal{L}_{E^{-}_{m_{N}}}A_{s}^{\mu},\qquad s=+1,0,-1,\qquad m_{j}\in\{-1,0,+1\}.$$

## massless vector

For Maxwell theory the equation of motion is

$$\nabla_{\nu}F^{\nu\mu}=0,$$

with the gauge redundancy

$$A_{\mu}\sim A_{\mu}+\nabla_{\mu}\lambda.$$

We work in the covariant gauge

$$\nabla_{\mu}A^{\mu}=0.$$

In this gauge, the Maxwell equation becomes

$$\left(\nabla^{2}+3\right)A^{\mu}=0,$$

so the same Casimir relation gives

$$\mathcal{C}_{2}A^{\mu}=0.$$

The massless limit of the spin-one formula

$$\mu^{2}=(\Delta-1)(\Delta-2)$$

therefore gives two branches,

$$\Delta=1,\qquad \Delta=2.$$

The standard Maxwell photon branch is $\Delta=2$. Its covariant potential is represented by the spin-one $SO(3)$ triplet $A_{s}^{\mu}$ with $s=+1,0,-1$, evaluated at $\Delta=2$. The component $s=0$ is part of the covariant vector potential; the physical Hilbert space is obtained only after imposing the gauge identification.

The $\Delta=1$ branch is a residual-gauge branch. It is obtained by evaluating the same primary triplet at $\Delta=1$, and can be written as a pure gauge mode

$$\left.A_{s}^{\mu}\right|_{\Delta=1}=\nabla^{\mu}\lambda_{s},$$

with

$$\begin{align}
\lambda_{+1} & =-iN e^{-it+i\phi}\dfrac{r\sin\theta}{\sqrt{1+r^{2}}}, \\
\lambda_{0} & =-N e^{-it}\dfrac{r\cos\theta}{\sqrt{1+r^{2}}}, \\
\lambda_{-1} & =-iN e^{-it-i\phi}\dfrac{r\sin\theta}{\sqrt{1+r^{2}}}.
\end{align}$$

These gauge parameters obey

$$\nabla^{2}\lambda_{s}=0.$$

Thus the covariant potential retains the full $SO(3)$ primary triplet, while the residual-gauge branch and the longitudinal photon polarization are removed at the level of the gauge quotient. In the flat-space limit this quotient leaves the two helicity polarizations.
