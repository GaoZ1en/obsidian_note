we specify the spacetime background as

$$\begin{align}
\mathrm{d}s^{2} & =-(1+r^{2})\mathrm{d}t^{2}+\dfrac{\mathrm{d}r^{2}}{1+r^{2}}+r^{2}\left(\mathrm{d}\theta ^{2}+\sin ^{2}\theta \mathrm{d}\phi ^{2}\right)
\end{align}$$

and we will find the normalization constant of modes in the highest-weight module discussed in [[Articles/Quantization in AdS3/ads4 linearized gravity/Killing algebra|Killing algebra]]. the main purpose is to find which module is physical in gauge systems, especially in Maxwell theory and linearized gravity, discussed as below.

## massive scalar

the action of massive scalar is given by

$$\begin{align}
S & =\int _{M} \mathrm{d}^{4}x\sqrt{ -g }\left(-\dfrac{1}{2}\nabla _{\mu}\phi \nabla ^{\mu}\phi-\dfrac{1}{2}\mu ^{2}\phi ^{2}\right)
\end{align}$$

in order that the action is finite, the asymptotic behavior of $\displaystyle{\phi}$ is given by

$$\begin{align}
\phi & =o(r^{-3/2}),  & r\to \infty
\end{align}$$

take a variation of the action

$$\begin{align}
\delta S & =\int _{M}\mathrm{d}^{4}x\sqrt{ -g }E\delta \phi+\theta|_{\Sigma _{f}-\Sigma _{i}} \\
E & =\nabla ^{2}\phi-\mu ^{2}\phi \\
\theta & =\int _{\Sigma}\mathrm{d}^{3}x\sqrt{ \sigma }\tau ^{\mu}\nabla _{\mu}\phi \delta \phi
\end{align}$$

the symplectic form is obtained by taking another variation of the symplectic potential $\displaystyle{\theta}$

$$\begin{align}
\omega & =\delta \theta \\
 & =\int _{\Sigma}\mathrm{d}^{3}x\sqrt{ \sigma }\tau ^{\mu}\nabla _{\mu}\delta\phi \wedge \delta \phi
\end{align}$$

we have already solved the highest weight primary in [[Articles/Quantization in AdS3/ads4 linearized gravity/Killing algebra|Killing algebra]]

$$\begin{align}
\phi_{0} & =\dfrac{Ne^{-i\Delta t}}{(1+r^{2})^{\Delta/2}}
\end{align}$$

the normalization constant is determined by the symplectic form as

$$\begin{align}
\omega[\phi,\phi ^{*}] & =-i
\end{align}$$

which gives

$$\begin{align}
N & =\sqrt{ \dfrac{1}{2\pi ^{3/2}}\dfrac{\Gamma(\Delta)}{\Gamma(\Delta-1/2)} }
\end{align}$$

The raw descendants

$$\begin{align}
\mathcal{L}_{E^{-}_{m_{1}}}\dots \mathcal{L}_{E^{-}_{m_{q}}}\phi _{0}, \quad m_{j}\in\left\{-1,0,+1\right\}
\end{align}$$

are symmetric tensor descendants. The three operators $\displaystyle{\mathcal{L}_{E^{-}_{m}}}$ transform as a spin-one triplet under the spatial $\displaystyle{SO(3)}$. Hence the level $\displaystyle{q}$ descendant space is the symmetric product of $\displaystyle{q}$ spin-one representations,

$$\begin{align}
\mathrm{Sym}^{q}(V_{1}) & =V_{q}\oplus V_{q-2}\oplus V_{q-4}\oplus\cdots .
\end{align}$$

Thus a fixed level contains several angular momenta. The raw monomial labels keep track of the level and magnetic weight, but they do not by themselves diagonalize the $\displaystyle{SO(3)}$ content or the symplectic norm. For normalization it is convenient to use the irreducible labels

$$\begin{align}
q & =\ell+2p,  & p & =0,1,2,\dots,  & \ell & =0,1,2,\dots.
\end{align}$$

Here $\displaystyle{\ell}$ is the physical angular momentum, $\displaystyle{m=-\ell,\ldots,\ell}$ labels the $\displaystyle{2\ell+1}$ degenerate states inside the same multiplet, and $\displaystyle{p}$ counts how many spin-zero traces have been taken inside the symmetric product.

Equivalently, at fixed descendant level $\displaystyle{q}$ the energy and angular momentum content is

$$\begin{align}
\omega _{q} & =\Delta+q,  & \ell & =q,q-2,q-4,\ldots\geq0,  & m & =-\ell,\ldots,\ell.
\end{align}$$

Thus each angular momentum $\displaystyle{\ell}$ contributes $\displaystyle{2\ell+1}$ states, and the total degeneracy at level $\displaystyle{q}$ is

$$\begin{align}
d_{q} & =\sum _{k=0}^{\lfloor q/2\rfloor}\left(2(q-2k)+1\right)=\dfrac{(q+1)(q+2)}{2}.
\end{align}$$

Using spherical harmonics normalized by $\displaystyle{\int \mathrm{d}\Omega _{2}Y_{\ell m}^{*}Y_{\ell' m'}=\delta_{\ell\ell'}\delta_{mm'}}$, the normalized scalar descendants can be written as

$$\begin{align}
\Phi _{p\ell m} & =C_{p\ell}e^{-i\omega _{p\ell}t}Y_{\ell m}(\theta,\phi)r^{\ell}(1+r^{2})^{-(\Delta+\ell)/2}P_{p}^{(\ell+1/2,\Delta-3/2)}\left(\dfrac{1-r^{2}}{1+r^{2}}\right), \\
\omega _{p\ell} & =\Delta+\ell+2p.
\end{align}$$

The radial integral is

$$\begin{align}
\int _{0}^{\infty}\mathrm{d}r\dfrac{r^{2\ell+2}}{(1+r^{2})^{\Delta+\ell+1}}\left[P_{p}^{(\ell+1/2,\Delta-3/2)}\left(\dfrac{1-r^{2}}{1+r^{2}}\right)\right]^{2} & =\dfrac{\Gamma(p+\ell+3/2)\Gamma(p+\Delta-1/2)}{2(\Delta+\ell+2p)\Gamma(p+1)\Gamma(p+\Delta+\ell)}.
\end{align}$$

In this projected basis, the condition $\displaystyle{\omega[\Phi_{p\ell m},\Phi_{p\ell m}^{*}]=-i}$ fixes

$$\begin{align}
C_{p\ell} & =\left(\dfrac{\Gamma(p+1)\Gamma(p+\Delta+\ell)}{\Gamma(p+\ell+3/2)\Gamma(p+\Delta-1/2)}\right)^{1/2}.
\end{align}$$

For $\displaystyle{p=\ell=0}$, this gives $\displaystyle{C_{00}Y_{00}=N}$ with $\displaystyle{Y_{00}=1/\sqrt{4\pi}}$, so it agrees with the primary normalization above.

## massive vector

the action for Proca theory is

$$\begin{align}
S & =\int _{M}\mathrm{d}^{4}x\sqrt{ -g }\left(-\dfrac{1}{4}F_{\mu \nu}F^{\mu \nu}-\dfrac{1}{2}\mu ^{2}A_{\mu}A^{\mu}\right)
\end{align}$$

to ensure the action is finite, we impose the asymptotic behavior

$$\begin{align}
A_{t},A_{\theta},A_{\phi} & =o(r^{-1/2}),  & A_{r} & =o(r^{-5/2}), & r\to \infty
\end{align}$$

following the standard CPS procedure, we get the symplectic form

$$\begin{align}
\omega & =\int _{\Sigma}\mathrm{d}^{3}x\sqrt{ \sigma }\tau _{\mu}\delta F^{\mu \nu}\wedge \delta A_{\nu}
\end{align}$$

the vector primary is a spin-1 triplet, given by

$$\begin{align}
A_{s,\mu} & =N_{s}e^{-i\Delta t}(1+r^{2})^{-\Delta/2}u_{s,\mu}
\end{align}$$

here $\displaystyle{u_{s,\mu}}$ are polarization (co)vectors given by

$$\begin{align}
u_{+,\mu} & =e^{i\phi}\left(-r\sin\theta,-\dfrac{i\sin\theta}{1+r^{2}},-ir\cos\theta,r\sin\theta\right), \\
u_{0,\mu} & =\left(ir\cos\theta,-\dfrac{\cos\theta}{1+r^{2}},r\sin\theta,0\right), \\
u_{-,\mu} & =e^{-i\phi}\left(-r\sin\theta,-\dfrac{i\sin\theta}{1+r^{2}},-ir\cos\theta,-r\sin\theta\right).
\end{align}$$

the normalization is determined by the symplectic form as

$$\begin{align}
\omega[A,A^{*}] & =-i
\end{align}$$

which gives

$$\begin{align}
N_{\pm} & =\sqrt{ \dfrac{1}{4\pi ^{3/2}} \dfrac{\Gamma(\Delta+1)}{(\Delta-1)\Gamma(\Delta-1/2)} }, \\
N_{0} & =\sqrt{ \dfrac{1}{2\pi ^{3/2}} \dfrac{\Gamma(\Delta+1)}{(\Delta-1)\Gamma(\Delta-1/2)} }
\end{align}$$

moreover, we have

$$\begin{align}
\omega[A_{s},A_{s'}^{*}] & =-i\mathbb{I}_{3}
\end{align}$$

which means the three primary vectors are orthonormal to each other w.r.t. symplectic form.

The vector descendants are generated by acting with the same spin-one lowering operators $\displaystyle{\mathcal{L}_{E^{-}_{m}}}$. At level $\displaystyle{q}$, the massive vector descendant space is therefore

$$\begin{align}
\mathcal{H}_{q}^{\mathrm{Proca}} & =V_{1}\otimes \mathrm{Sym}^{q}(V_{1}) \\
 & =V_{1}\otimes\left(V_{q}\oplus V_{q-2}\oplus V_{q-4}\oplus\cdots\right).
\end{align}$$

For each scalar descendant angular momentum $\displaystyle{\ell=q-2p}$, the vector primary spin couples as

$$\begin{align}
V_{1}\otimes V_{\ell} & =V_{\ell+1}\oplus V_{\ell}\oplus V_{\ell-1},  & \ell & \geq 1, \\
V_{1}\otimes V_{0} & =V_{1}.
\end{align}$$

Thus the raw labels $\displaystyle{(s;m_{1},\ldots,m_{q})}$ are useful for generating the module, but the symplectic norm is naturally organized in the total angular momentum basis $\displaystyle{V_{J}}$, with magnetic degeneracy $\displaystyle{2J+1}$.

At fixed level $\displaystyle{q}$, every state has energy

$$\begin{align}
\omega _{q} & =\Delta+q.
\end{align}$$

The angular momentum spectrum is obtained by taking

$$\begin{align}
\ell & =q,q-2,q-4,\ldots\geq0, \\
J & \in\{\ell+1,\ell,\ell-1\},  & \ell & \geq1, \\
J & =1,  & \ell & =0.
\end{align}$$

For each parent $\displaystyle{\ell\geq1}$, the three total-spin multiplets have degeneracies

$$\begin{align}
(2(\ell+1)+1)+(2\ell+1)+(2(\ell-1)+1) & =3(2\ell+1).
\end{align}$$

For $\displaystyle{\ell=0}$, the single multiplet $\displaystyle{J=1}$ has degeneracy $\displaystyle{3}$. Therefore the total degeneracy at level $\displaystyle{q}$ is

$$\begin{align}
d_{q}^{\mathrm{Proca}} & =3\sum _{k=0}^{\lfloor q/2\rfloor}\left(2(q-2k)+1\right)=\dfrac{3(q+1)(q+2)}{2}.
\end{align}$$

When the same total $\displaystyle{J}$ occurs from different parent $\displaystyle{\ell}$ values, it gives independent copies of the same $\displaystyle{SO(3)}$ multiplet.

## massless vector

In the Maxwell limit, the standard photon branch is $\displaystyle{\Delta=2}$. The physical Hilbert space is obtained by quotienting the longitudinal scalar gauge module. At level $\displaystyle{q}$ this gives

$$\begin{align}
\mathcal{H}_{q}^{\mathrm{Max}} & =\dfrac{V_{1}\otimes \mathrm{Sym}^{q}(V_{1})}{\mathrm{Sym}^{q-1}(V_{1})},  & \mathrm{Sym}^{-1}(V_{1}) & =0.
\end{align}$$

Equivalently,

$$\begin{align}
\mathcal{H}_{q}^{\mathrm{Max}} & =V_{q+1}\oplus V_{q}\oplus\cdots\oplus V_{1},
\end{align}$$

so every physical state at level $\displaystyle{q}$ has energy

$$\begin{align}
\omega _{q}^{\mathrm{Max}} & =2+q.
\end{align}$$

The angular momentum spectrum and magnetic degeneracy are

$$\begin{align}
J & =1,2,\ldots,q+1,  & M & =-J,\ldots,J.
\end{align}$$

Therefore the physical Maxwell degeneracy at level $\displaystyle{q}$ is

$$\begin{align}
\dim \mathcal{H}_{q}^{\mathrm{Max}} & =\sum _{J=1}^{q+1}(2J+1)=(q+1)(q+3).
\end{align}$$

As for the residual-gauge branch $\displaystyle{\Delta=1}$, these modes are non-renormalizable since

$$\begin{align}
\omega[A_{s},A^{*}_{s}]=0\implies N\to \infty
\end{align}$$

and they are not physical edge modes.

## massive TT tensor

we adopt the symplectic form obtained in [[Articles/Quantization in AdS3/ads4 linearized gravity/linearize|linearize]], since the mass term does not contribute to the symplectic form

$$\begin{align}
\omega & =\dfrac{1}{2}\int _{\Sigma}\mathrm{d}^{3}x\sqrt{ \sigma }\tau _{\mu}\left(-\dfrac{1}{2}\delta h^{\nu \rho}\wedge \nabla ^{\mu}\delta h_{\nu \rho}-3\nabla_{\rho}(\delta h^{\nu \rho}\wedge \delta h^{\mu}_{~\nu})\right) \\
 & =\dfrac{1}{4}\int _{\Sigma}\mathrm{d}^{3}x\sqrt{ \sigma }\tau _{\mu}\nabla ^{\mu}\delta h_{\nu \rho}\wedge\delta h^{\nu \rho}+\dfrac{3}{2}\int _{\partial\Sigma}\mathrm{d}^{2}x\sqrt{ h }\tau _{\mu}n _{\nu}\delta h^{\mu \rho}\wedge \delta h^{\nu}_{~\rho}
\end{align}$$

notice we have rescaled as $\displaystyle{h\to \kappa h,\kappa ^{2}=8\pi G}$. the massive TT tensor primary form a spin-2 quintet, given by

$$\begin{align}
h_{+2,\mu\nu} & =N_{+2} e^{-i\Delta t}(1+r^{2})^{-\Delta/2}u_{+,\mu}u_{+,\nu}, \\
h_{+1,\mu\nu} & =N_{+1} e^{-i\Delta t}(1+r^{2})^{-\Delta/2}\left(u_{+,\mu}u_{0,\nu}+u_{0,\mu}u_{+,\nu}\right), \\
h_{0,\mu\nu} & =N_{0} e^{-i\Delta t}(1+r^{2})^{-\Delta/2}\left(u_{+,\mu}u_{-,\nu}+u_{-,\mu}u_{+,\nu}+4u_{0,\mu}u_{0,\nu}\right), \\
h_{-1,\mu\nu} & =N_{-1} e^{-i\Delta t}(1+r^{2})^{-\Delta/2}\left(u_{-,\mu}u_{0,\nu}+u_{0,\mu}u_{-,\nu}\right), \\
h_{-2,\mu\nu} & =N_{-2} e^{-i\Delta t}(1+r^{2})^{-\Delta/2}u_{-,\mu}u_{-,\nu}.
\end{align}$$

the normalization constants are determined by the symplectic form as

$$\begin{align}
\omega[h,h^{*}]=-i
\end{align}$$

then

$$\begin{align}
N_{\pm2}=N_{\pm 1} & =\sqrt{ \dfrac{1}{2\pi ^{3/2}} \dfrac{\Gamma(\Delta+2)}{\Delta(\Delta-1)\Gamma(\Delta-1/2)} }, \\
N_{0} & =\sqrt{ \dfrac{1}{12\pi ^{3/2}} \dfrac{\Gamma(\Delta+2)}{\Delta(\Delta-1)\Gamma(\Delta-1/2)} }
\end{align}$$

and

$$\begin{align}
\omega[h_{s},h_{s'}^{*}] & =-i\mathbb{I}_{5}, & s\in\left\{-2,-1,0,+1,+2\right\}
\end{align}$$

we should notice that $\displaystyle{\omega _{\partial \Sigma}}$ does not contribute to the normalization constant for this sector.

The massive TT descendants are generated by acting with the same spin-one lowering operators $\displaystyle{\mathcal{L}_{E^{-}_{m}}}$. At level $\displaystyle{q}$, the descendant space is

$$\begin{align}
\mathcal{H}_{q}^{\mathrm{TT}} & =V_{2}\otimes \mathrm{Sym}^{q}(V_{1}) \\
 & =V_{2}\otimes\left(V_{q}\oplus V_{q-2}\oplus V_{q-4}\oplus\cdots\right).
\end{align}$$

For each scalar descendant angular momentum $\displaystyle{\ell=q-2p}$, the spin-two primary couples as

$$\begin{align}
V_{2}\otimes V_{\ell} & =V_{\ell+2}\oplus V_{\ell+1}\oplus\cdots\oplus V_{|\ell-2|}.
\end{align}$$

At fixed level $\displaystyle{q}$, every massive TT descendant has energy

$$\begin{align}
\omega _{q}^{\mathrm{TT}} & =\Delta+q.
\end{align}$$

The angular momentum spectrum is

$$\begin{align}
\ell & =q,q-2,q-4,\ldots\geq0, \\
J & =|\ell-2|,|\ell-2|+1,\ldots,\ell+2,  & M & =-J,\ldots,J.
\end{align}$$

For each parent $\displaystyle{V_{\ell}}$, the spin-two coupling contributes

$$\begin{align}
\sum _{J=|\ell-2|}^{\ell+2}(2J+1) & =5(2\ell+1).
\end{align}$$

Therefore the total degeneracy at level $\displaystyle{q}$ is

$$\begin{align}
d_{q}^{\mathrm{TT}} & =5\sum _{k=0}^{\lfloor q/2\rfloor}\left(2(q-2k)+1\right)=\dfrac{5(q+1)(q+2)}{2}.
\end{align}$$

When the same total $\displaystyle{J}$ occurs from different parent $\displaystyle{\ell}$ values, it gives independent copies of the same $\displaystyle{SO(3)}$ multiplet.

## massless TT tensor

In the massless graviton limit, consider the standard branch $\displaystyle{\Delta=3}$. The linearized diffeomorphism redundancy is

$$\begin{align}
h_{\mu\nu} & \sim h_{\mu\nu}+\nabla_{\mu}\zeta_{\nu}+\nabla_{\nu}\zeta_{\mu}.
\end{align}$$

The gauge module is a transverse vector module with $\displaystyle{(\Delta,S)=(4,1)}$. Therefore, at level $\displaystyle{q}$, the pure-gauge descendants have the same energy as the level $\displaystyle{q-1}$ descendants of this vector module. The physical massless graviton space is

$$\begin{align}
\mathcal{H}_{q}^{\mathrm{grav}} & =\dfrac{V_{2}\otimes \mathrm{Sym}^{q}(V_{1})}{V_{1}\otimes \mathrm{Sym}^{q-1}(V_{1})},  & \mathrm{Sym}^{-1}(V_{1}) & =0.
\end{align}$$

Equivalently, the quotient removes the longitudinal vector gauge module and leaves one copy of each total angular momentum multiplet

$$\begin{align}
\mathcal{H}_{q}^{\mathrm{grav}} & =V_{q+2}\oplus V_{q+1}\oplus\cdots\oplus V_{2}.
\end{align}$$

Hence every physical state at level $\displaystyle{q}$ has energy

$$\begin{align}
\omega _{q}^{\mathrm{grav}} & =3+q.
\end{align}$$

The angular momentum spectrum and magnetic degeneracy are

$$\begin{align}
J & =2,3,\ldots,q+2,  & M & =-J,\ldots,J.
\end{align}$$

Thus the physical graviton degeneracy at level $\displaystyle{q}$ is

$$\begin{align}
\dim \mathcal{H}_{q}^{\mathrm{grav}} & =\sum _{J=2}^{q+2}(2J+1)=(q+1)(q+5).
\end{align}$$

for the $\displaystyle{\Delta=0}$ sector, the primaries also form a spin-2 quintet

$$\begin{align}
h_{s,\mu \nu} & =\nabla _{\mu}\zeta _{\nu,s}+\nabla _{\nu}\zeta _{\mu,s}
\end{align}$$

where

$$\begin{align}
\zeta_{+2,\mu} & =\dfrac{N_{+2}}{2}e^{2i\phi}\left(ir^{2}\sin^{2}\theta,-\dfrac{r\sin^{2}\theta}{1+r^{2}},-r^{2}\sin\theta\cos\theta,-ir^{2}\sin^{2}\theta\right), \\
\zeta_{+1,\mu} & =N_{+1}e^{i\phi}\left(r^{2}\sin\theta\cos\theta,\dfrac{ir\sin\theta\cos\theta}{1+r^{2}},\dfrac{i}{2}r^{2}\cos2\theta,-\dfrac{1}{2}r^{2}\sin\theta\cos\theta\right), \\
\zeta_{0,\mu} & =\dfrac{N_{0}}{2}\left(-ir^{2}(1+3\cos2\theta),\dfrac{r(1+3\cos2\theta)}{1+r^{2}},-6r^{2}\sin\theta\cos\theta,0\right), \\
\zeta_{-1,\mu} & =N_{-1}e^{-i\phi}\left(r^{2}\sin\theta\cos\theta,\dfrac{ir\sin\theta\cos\theta}{1+r^{2}},\dfrac{i}{2}r^{2}\cos2\theta,\dfrac{1}{2}r^{2}\sin\theta\cos\theta\right), \\
\zeta_{-2,\mu} & =\dfrac{N_{-2}}{2}e^{-2i\phi}\left(ir^{2}\sin^{2}\theta,-\dfrac{r\sin^{2}\theta}{1+r^{2}},-r^{2}\sin\theta\cos\theta,ir^{2}\sin^{2}\theta\right).
\end{align}$$

by inserting to the symplectic form, we arrive at

$$\begin{align}
N_{s}\to \infty
\end{align}$$

which means these lgts are not physical modes.

since no lgt in the module is physical and $\displaystyle{\omega _{\partial \Sigma}}$ does not contribute to the $\displaystyle{\Delta=3}$ sector, we will drop the $\displaystyle{\omega _{\partial \Sigma}}$ in the following discussion. namely, we will use

$$\begin{align}
\omega & =\dfrac{1}{4}\int _{\Sigma}\mathrm{d}^{3}x\sqrt{ \sigma }\tau _{\mu}\nabla ^{\mu}\delta h_{\nu \rho}\wedge\delta h^{\nu \rho}
\end{align}$$

in the following discussion.