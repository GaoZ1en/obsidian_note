we couple a charged point defect to a $U(1)$ Chern-Simons gauge field $A$ by

$$\begin{align}
S[A;\gamma] & =\frac{k}{4\pi}\int _{M}A\wedge \mathrm{d}A+q\int _{\gamma}A.
\end{align}$$

Here $\gamma$ is a prescribed oriented worldline. The coupling defines a Wilson-line defect carrying $U(1)$ charge $q$.

## Poincare dual current

Let $\delta_{\gamma}$ be the Poincare dual two-form distribution of the worldline, normalized by

$$\begin{align}
\int _{M}\alpha\wedge \delta_{\gamma} & =\int _{\gamma}\alpha
\end{align}$$

for every smooth one-form $\alpha$. Then the coupling can be written as

$$\begin{align}
q\int _{\gamma}A & =q\int _{M}A\wedge \delta_{\gamma}.
\end{align}$$

Taking a variation gives

$$\begin{align}
\delta S & =\int _{M}\delta A\wedge \left(\frac{k}{2\pi}\mathrm{d}A+q\delta_{\gamma}\right)-\frac{k}{4\pi}\int _{\partial M}A\wedge \delta A.
\end{align}$$

Thus the bulk equation of motion is

$$\begin{align}
\frac{k}{2\pi}\mathrm{d}A+q\delta_{\gamma} & =0.
\end{align}$$

## classical solution and symplectic form

Away from the defect, $\mathrm{d}A=0$, so the connection is locally pure gauge. The defect is detected by the holonomy around a small loop $C=\partial D$ linking $\gamma$ once. Integrating the equation of motion over the disk $D$ gives

$$\begin{align}
\frac{k}{2\pi}\int _{D}\mathrm{d}A+q & =0, \\
\implies \oint _{C}A & =-\frac{2\pi q}{k}.
\end{align}$$

Equivalently, in local polar coordinates $(\rho,\varphi)$ transverse to the defect,

$$\begin{align}
A & =-\frac{q}{k}\mathrm{d}\varphi+\mathrm{d}\lambda
\end{align}$$

solves the equation away from $\rho=0$ and has the required singular curvature at the origin,

$$\begin{align}
\mathrm{d}A & =-\frac{2\pi q}{k}\delta^{(2)}(x)\mathrm{d}^{2}x.
\end{align}$$

For a static defect placed at $r=0$ in global $\mathrm{AdS}_{3}$, the purely angular local representative is

$$\begin{align}
A_{\phi} & =-\frac{q}{k}.
\end{align}$$

This representative displays the singular holonomy near the puncture. The global representative must also satisfy the boundary condition at $\Gamma$.

Under a gauge transformation $A\mapsto A+\mathrm{d}\lambda$, the defect action changes by

$$\begin{align}
q\int _{\gamma}\mathrm{d}\lambda & =q\left(\lambda(\tau_{f})-\lambda(\tau_{i})\right).
\end{align}$$

Therefore a closed Wilson line is gauge invariant under small gauge transformations. For an open Wilson line, the endpoints must be attached to states of charge $q$ and $-q$.

### boundary conditions and residual gauge modes

For compact $U(1)$, the gauge transformation is specified by a single-valued group element $e^{i\lambda}$. Around the angular circle linking the defect, this allows

$$\begin{align}
\lambda(t,r,\varphi+2\pi) & =\lambda(t,r,\varphi)+2\pi n,\qquad n\in \mathbb{Z}.
\end{align}$$

Now take $k>0$ and impose the same boundary condition as in [[Articles/Quantization in AdS/Chern-Simons/U(1) formalism|U(1) formalism]], namely $A^{-}|_{\Gamma}=0$. The allowed boundary modes are the first branch, with dependence on $x^{-}=t-\varphi$. Thus write

$$\begin{align}
\lambda(t,r,\varphi) & =\lambda_{0}+n\varphi+
\sum _{\ell>0}\left(\lambda_{\ell}f_{\ell}(r)e^{-i\ell(t-\varphi)}+\lambda_{\ell}^{*}f_{\ell}(r)e^{i\ell(t-\varphi)}\right).
\end{align}$$

The sourced connection decomposes into a boundary-compatible holonomy representative and regular homogeneous modes. Its local spatial part near the defect is

$$\begin{align}
A_{\text{def}} & =-\frac{q}{k}\mathrm{d}\varphi,
\end{align}$$

so that

$$\begin{align}
\mathrm{d}A_{\text{def}} & =-\frac{2\pi q}{k}\delta^{(2)}(x)\mathrm{d}^{2}x.
\end{align}$$

With the $k>0$ chiral boundary condition, use the holonomy representative

$$\begin{align}
A_{\text{hol}} & =q_{\phi}(\mathrm{d}\varphi-\mathrm{d}t), &
q_{\phi} & =-\frac{q}{k}.
\end{align}$$

It has the same angular holonomy around the defect,

$$\begin{align}
\oint _{S^{1}}A_{\text{hol}} & =2\pi q_{\phi}=-\frac{2\pi q}{k},
\end{align}$$

and it asymptotically obeys the $k>0$ boundary condition $A^{-}|_{\Gamma}=0$ in the same convention as the first branch of the pure $U(1)$ theory. Indeed,

$$\begin{align}
A^{t}_{\text{hol}} & =\frac{q_{\phi}}{1+r^{2}}, &
A^{\phi}_{\text{hol}} & =\frac{q_{\phi}}{r^{2}}, &
A^{-}_{\text{hol}} & =A^{t}_{\text{hol}}-A^{\phi}_{\text{hol}}=-\frac{q_{\phi}}{r^{2}(1+r^{2})}=O(r^{-4}).
\end{align}$$

The oscillator modes inherited from the pure $U(1)$ formalism are regular homogeneous modes. They describe residual boundary gauge transformations, while the delta-function source is carried by the holonomy representative; $A_{\text{def}}$ is its local spatial part. To match the normalizable residual boundary modes of the pure $U(1)$ theory, choose a harmonic representative $\lambda_{\text{reg}}$ obeying

$$\begin{align}
\Box \lambda_{\text{reg}} & =0.
\end{align}$$

For a mode $\lambda_{\ell}(t,r,\varphi)=f_{\ell}(r)e^{-i\ell(t-\varphi)}$, this gives

$$\begin{align}
\frac{1}{r}\partial _{r}\left(r(1+r^{2})\partial _{r}f_{\ell}\right)
+\ell^{2}\left(\frac{1}{1+r^{2}}-\frac{1}{r^{2}}\right)f_{\ell} & =0.
\end{align}$$

The two local radial solutions are

$$\begin{align}
f_{\ell}^{(+)}(r) & =\left(\frac{r}{\sqrt{1+r^{2}}}\right)^{\ell}, &
f_{\ell}^{(-)}(r) & =\left(\frac{\sqrt{1+r^{2}}}{r}\right)^{\ell}.
\end{align}$$

Regularity at $r=0$ and the normalization $f_{\ell}(\infty)=1$ select

$$\begin{align}
f_{\ell}(r) & =\left(\frac{r}{\sqrt{1+r^{2}}}\right)^{\ell},\qquad \ell>0.
\end{align}$$

Since $f_{\ell}(r)e^{i\ell\varphi}\sim r^{\ell}e^{i\ell\varphi}$ near the origin, these modes are smooth at the defect and satisfy

$$\begin{align}
\mathrm{d}^{2}\lambda_{\text{reg}} & =0
\end{align}$$

as distributions. Therefore they preserve the delta source $q\delta_{\gamma}$. For $\ell=1$, this reproduces the gauge parameter $\Lambda_{(1,0)}\propto e^{-i(t-\varphi)}r/\sqrt{1+r^{2}}$ in the $U(1)$ formalism. Acting on the background connection, these modes give

$$\begin{align}
\delta A_{t}^{(\ell)} & =-i\ell \lambda_{\ell}f_{\ell}(r)e^{-i\ell(t-\varphi)}, \\
\delta A_{\varphi}^{(\ell)} & =i\ell \lambda_{\ell}f_{\ell}(r)e^{-i\ell(t-\varphi)}, \\
\delta A_{r}^{(\ell)} & =\lambda_{\ell}f_{\ell}'(r)e^{-i\ell(t-\varphi)}.
\end{align}$$

Near the boundary $f_{\ell}(r)\to1$ and $f_{\ell}'(r)=O(r^{-3})$, so these representatives preserve the $k>0$ boundary condition $A^{-}|_{\Gamma}=0$ in the same sense as the first branch of the pure $U(1)$ theory.

The winding term $n\varphi$ is a large gauge transformation on the punctured disk and a singular distribution on the full disk:

$$\begin{align}
\mathrm{d}^{2}(n\varphi) & =2\pi n\delta^{(2)}(x)\mathrm{d}^{2}x.
\end{align}$$

Thus it acts on the angular component by

$$\begin{align}
A_{\varphi} & \mapsto A_{\varphi}+n,
\end{align}$$

and shifts the holonomy by

$$\begin{align}
\oint _{C}A & \mapsto \oint _{C}A+2\pi n.
\end{align}$$

As a sourced connection on the full disk, the transformed field satisfies

$$\begin{align}
-\frac{q}{k}\mathrm{d}\varphi+n\mathrm{d}\varphi
& =-\frac{q-kn}{k}\mathrm{d}\varphi,
\end{align}$$

so the representative charge changes as $q\mapsto q-kn$. This gives the charge identification modulo $k$ in the compact theory. Since the physical holonomy of a compact $U(1)$ connection is $\exp(i\oint_C A)$, the shift by $2\pi n$ is invisible to unit-charge probes. For the Wilson line insertion,

$$\begin{align}
W_{q}(C) & =\exp\left(iq\oint _{C}A\right)
\end{align}$$

transforms as

$$\begin{align}
W_{q}(C) & \mapsto e^{2\pi iqn}W_{q}(C).
\end{align}$$

Gauge invariance under all winding large gauge transformations therefore requires

$$\begin{align}
q & \in \mathbb{Z}.
\end{align}$$

The same logic applied to the Chern-Simons path integral gives the level quantization $k\in \mathbb{Z}$. These charge identifications will be used in the quantization section below.

### symplectic form

On $M=\mathbb{R}_{t}\times \Sigma$, write $A=A_{t}\mathrm{d}t+A_{i}\mathrm{d}x^{i}$. Up to boundary terms, the action takes the canonical form

$$\begin{align}
S & =\frac{k}{4\pi}\int \mathrm{d}t\int _{\Sigma}\mathrm{d}^{2}x\,\epsilon^{ij}A_{i}\dot{A}_{j}
+\int \mathrm{d}t\int _{\Sigma}\mathrm{d}^{2}x\,A_{t}\left(\frac{k}{2\pi}F_{12}+q\delta^{(2)}(x-x_{\gamma})\right)
\end{align}$$

for a static defect at $x_{\gamma}\in \Sigma$. Thus $A_{t}$ imposes the Gauss constraint

$$\begin{align}
\frac{k}{2\pi}F_{12}+q\delta^{(2)}(x-x_{\gamma}) & =0,
\end{align}$$

and the symplectic form on the space of spatial connections is

$$\begin{align}
\Omega _{\Sigma} & =\frac{k}{4\pi}\int _{\Sigma}\delta A\wedge \delta A
=\frac{k}{4\pi}\int _{\Sigma}\epsilon^{ij}\delta A_{i}\wedge \delta A_{j}.
\end{align}$$

For fixed charge $q$ and fixed worldline $\gamma$, the Wilson-line coupling fixes the Gauss constraint. The defect contribution enters $\Omega_{\Sigma}$ through the allowed singular sector of $A$.

Take the spatial slice to be a punctured disk $\Sigma_{*}$ around the defect. The flat connection on $\Sigma_{*}$ includes two topological zero modes: the angular holonomy $q_{\phi}$ and the radial Wilson-line coordinate $q_{r}$.

Choose any path $I$ connecting the puncture boundary to the asymptotic boundary, and choose a function $\chi$ on $\Sigma_{*}$ whose values differ by one between the two ends of $I$. A spacetime representative of the topological sector is

$$\begin{align}
A_{\text{top}} & =q_{r}\mathrm{d}\chi+A_{\text{hol}}, &
A_{\text{hol}} & =q_{\phi}(\mathrm{d}\varphi-\mathrm{d}t), &
q_{\phi} & =-\frac{q}{k}.
\end{align}$$

On a constant-time slice, this restricts to

$$\begin{align}
A_{\text{top}}|_{\Sigma_{*}} & =q_{r}\mathrm{d}\chi+q_{\phi}\mathrm{d}\varphi.
\end{align}$$

The zero modes are measured by

$$\begin{align}
\int _{I}A_{\text{top}} & =q_{r}, &
\oint _{S^{1}}A_{\text{top}} & =2\pi q_{\phi}=-\frac{2\pi q}{k},
\end{align}$$

modulo endpoint gauge transformations. The choice of $\chi$ is only a representative of the relative cohomology class; $q_{r}$ is the radial Wilson line connecting the defect boundary to the asymptotic boundary, while $q_{\phi}$ is fixed by the defect charge sector. The full flat connection is

$$\begin{align}
A & =A_{\text{top}}+\mathrm{d}\lambda_{\text{reg}}.
\end{align}$$

Substituting its spatial restriction into the symplectic form gives

$$\begin{align}
\Omega _{\Sigma_{*}} & =k\delta q_{r}\wedge \delta q_{\phi}
+\frac{k}{4\pi}\int _{\partial \Sigma_{*}}\delta\lambda_{\text{reg}}\wedge \mathrm{d}\delta\lambda_{\text{reg}}.
\end{align}$$

For a fixed defect charge $q$, $\delta q_{\phi}=0$ and the topological term drops out. Across charge sectors, $q_{r}$ is conjugate to $q_{\phi}$:

$$\begin{align}
\{q_{r},q_{\phi}\} & =-\frac{1}{k}, &
[\hat{q}_{r},\hat{q}_{\phi}] & =-\frac{i}{k}.
\end{align}$$

The inner boundary contribution from the regular modes vanishes as $\epsilon\to0$ because $f_{\ell}(r)\sim r^{\ell}$. Thus only the asymptotic circle contributes to the oscillator part:

$$\begin{align}
\Omega _{\Sigma_{*}} & =\frac{k}{4\pi}\int _{0}^{2\pi}\mathrm{d}\varphi\,\delta\lambda_{\partial}\wedge \partial_{\varphi}\delta\lambda_{\partial},
\end{align}$$

where

$$\begin{align}
\lambda_{\partial}(t,\varphi) & =\lambda_{0}+\sum _{\ell>0}\left(\lambda_{\ell}e^{-i\ell(t-\varphi)}+\lambda_{\ell}^{*}e^{i\ell(t-\varphi)}\right)
\end{align}$$

for fixed winding sector. Substituting the mode expansion gives

$$\begin{align}
\Omega _{\Sigma_{*}} & =-ik\sum _{\ell>0}\ell\,\delta \lambda_{\ell}\wedge \delta \lambda_{\ell}^{*}.
\end{align}$$

Equivalently, the nonzero Poisson brackets are

$$\begin{align}
\left\{\lambda_{\ell},\lambda_{m}^{*}\right\} & =-\frac{i}{k\ell}\delta_{\ell m},\qquad \ell,m>0.
\end{align}$$

If one defines boundary current modes $J_{\ell}=k\ell\lambda_{\ell}$ and $J_{-\ell}=J_{\ell}^{*}$, then this becomes

$$\begin{align}
\left\{J_{\ell},J_{m}\right\} & =-ik\ell\delta_{\ell+m,0}
\end{align}$$

in this complex-mode convention. Equivalently, the quantum commutator has the standard level-$k$ form $[J_{\ell},J_{m}]=k\ell\delta_{\ell+m,0}$ after the usual replacement $[\ ,\ ]=i\{\ ,\ \}$.

## quantization

The defect selects a flat-connection sector with fixed holonomy around the puncture,

$$\begin{align}
\operatorname{Hol}_{C}(A) & =\exp\left(i\oint _{C}A\right)=\exp\left(-\frac{2\pi iq}{k}\right).
\end{align}$$

Equivalently, the charged defect is created by the Wilson line operator

$$\begin{align}
W_{q}(\gamma) & =\exp\left(iq\int _{\gamma}A\right).
\end{align}$$

In the path integral, inserting $W_{q}(\gamma)$ is the same as adding the source term $q\int_{\gamma}A$ to the action. For compact $U(1)$, large gauge invariance requires $q\in\mathbb{Z}$ and $k\in\mathbb{Z}$, and the winding transformation identifies charge sectors by

$$\begin{align}
q & \sim q-kn.
\end{align}$$

Thus the quantum defect labels are charges modulo $k$ in $U(1)_{k}$ Chern-Simons theory.

The non-Abelian generalization follows the same pattern: a defect is specified by a representation or coadjoint orbit, and the field equation fixes the conjugacy class of the holonomy around the defect. For $\mathrm{AdS}_{3}$ gravity in Chern-Simons form, the group is replaced by $\mathrm{SL}(2,\mathbb{R})_{L}\times \mathrm{SL}(2,\mathbb{R})_{R}$, and the analog of the $U(1)$ charge $q$ is the pair of representation labels $(h,\bar{h})$, or equivalently the mass and spin of the defect.
