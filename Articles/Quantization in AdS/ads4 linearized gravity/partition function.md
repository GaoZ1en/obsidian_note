we follow results obtained in [[Articles/Quantization in AdS/ads4 linearized gravity/symplectic norm|symplectic norm]]. and try to find a natural generalization of ads3 case.

it seems to be convenient to consider the following operator trace

$$\begin{align}
Z[\beta,\alpha] & =\mathrm{Tr}_{\mathcal{H}}e^{-\beta H+i\alpha J_{3}} \\
 & =\mathrm{Tr}_{\mathcal{H}}q^{H}y^{J_{3}}
\end{align}$$

where $\displaystyle{\mathcal{H}}$ is the Fock space, and $\displaystyle{H,J_{3}}$ are the Cartan generators of $\displaystyle{\mathfrak{so}(2,3)}$.

## massive scalar

as written in [[Articles/Quantization in AdS/ads4 linearized gravity/symplectic norm|symplectic norm]], the scalar primary is a rotational singlet,

$$\begin{align}
\mathcal{H}_{0}^{\mathrm{scalar}} & =V_{0}.
\end{align}$$

and the level-$q$ descendants furnish

$$\begin{align}
\mathcal{H}_{q}^{\mathrm{scalar}} & =\mathrm{Sym}^{q}(V_{1})=V_{q}\oplus V_{q-2}\oplus V_{q-4}\oplus\cdots .
\end{align}$$

Thus the one-particle Hilbert space is organized as

$$\begin{align}
\mathcal{H}_{\mathrm{1p}}^{\mathrm{scalar}} & =\bigoplus _{p=0}^{\infty}\bigoplus _{\ell=0}^{\infty}V_{\ell}, & H|_{(p,\ell)} & =\Delta+\ell+2p.
\end{align}$$

The refined one-particle trace with angular potential is therefore

$$\begin{align}
Z_{1}^{\mathrm{scalar}}(\beta,\alpha) & =\mathrm{Tr}_{\mathcal{H}_{\mathrm{1p}}^{\mathrm{scalar}}}\left(e^{-\beta H+i\alpha J_{3}}\right) \\
 & =\sum _{p=0}^{\infty}\sum _{\ell=0}^{\infty}\sum _{m=-\ell}^{\ell}e^{-\beta(\Delta+\ell+2p)+i\alpha m}.
\end{align}$$

Writing $\displaystyle{q=e^{-\beta}}$, $\displaystyle{y=e^{i\alpha}}$, and $\displaystyle{\chi_{\ell}(y)=\sum_{m=-\ell}^{\ell}y^{m}}$, this becomes

$$\begin{align}
Z_{1}^{\mathrm{scalar}}(\beta,\alpha) & =q^{\Delta}\left(\sum _{p=0}^{\infty}q^{2p}\right)\left(\sum _{\ell=0}^{\infty}q^{\ell}\chi_{\ell}(y)\right) \\
 & =\dfrac{q^{\Delta}}{(1-q)(1-qy)(1-qy^{-1})}.
\end{align}$$

The normal-ordered Fock-space partition function is the bosonic oscillator product over the same representation data,

$$\begin{align}
Z^{\mathrm{scalar}}(\beta,\alpha) & =\prod _{p=0}^{\infty}\prod _{\ell=0}^{\infty}\prod _{m=-\ell}^{\ell}\dfrac{1}{1-e^{-\beta(\Delta+\ell+2p)+i\alpha m}}.
\end{align}$$

Equivalently,

$$\begin{align}
\log Z^{\mathrm{scalar}}(\beta,\alpha) & =\sum _{n=1}^{\infty}\dfrac{1}{n}\dfrac{q^{n\Delta}}{(1-q^{n})(1-q^{n}y^{n})(1-q^{n}y^{-n})}.
\end{align}$$

## massive vector

The Proca primary is a spin-one multiplet,

$$\begin{align}
\mathcal{H}_{0}^{\mathrm{Proca}} & =V_{1}.
\end{align}$$

At descendant level $\displaystyle{N}$, the lowering operators again furnish the symmetric spin-one tower, so

$$\begin{align}
\mathcal{H}_{N}^{\mathrm{Proca}} & =V_{1}\otimes\mathrm{Sym}^{N}(V_{1}) \\
 & =V_{1}\otimes\left(V_{N}\oplus V_{N-2}\oplus V_{N-4}\oplus\cdots\right).
\end{align}$$

Equivalently, writing $\displaystyle{N=\ell+2p}$, each scalar descendant multiplet $\displaystyle{V_{\ell}}$ is coupled to the primary spin by

$$\begin{align}
V_{1}\otimes V_{\ell} & =V_{\ell+1}\oplus V_{\ell}\oplus V_{\ell-1},  & \ell & \geq 1, \\
V_{1}\otimes V_{0} & =V_{1}.
\end{align}$$

The one-particle Hilbert space is therefore organized as

$$\begin{align}
\mathcal{H}_{\mathrm{1p}}^{\mathrm{Proca}} & =\bigoplus _{p=0}^{\infty}\bigoplus _{\ell=0}^{\infty}\left(V_{1}\otimes V_{\ell}\right), & H|_{(p,\ell)} & =\Delta+\ell+2p.
\end{align}$$

Thus

$$\begin{align}
Z_{1}^{\mathrm{Proca}}(\beta,\alpha) & =q^{\Delta}\left(\sum _{p=0}^{\infty}q^{2p}\right)\left(\sum _{\ell=0}^{\infty}q^{\ell}\chi_{1}(y)\chi_{\ell}(y)\right) \\
 & =\dfrac{q^{\Delta}\chi_{1}(y)}{(1-q)(1-qy)(1-qy^{-1})}.
\end{align}$$

The normal-ordered Fock-space partition function is

$$\begin{align}
Z^{\mathrm{Proca}}(\beta,\alpha) & =\prod _{p=0}^{\infty}\prod _{\ell=0}^{\infty}\prod _{J=|\ell-1|}^{\ell+1}\prod _{M=-J}^{J}\dfrac{1}{1-e^{-\beta(\Delta+\ell+2p)+i\alpha M}}.
\end{align}$$

Equivalently,

$$\begin{align}
\log Z^{\mathrm{Proca}}(\beta,\alpha) & =\sum _{n=1}^{\infty}\dfrac{1}{n}\dfrac{q^{n\Delta}\chi_{1}(y^{n})}{(1-q^{n})(1-q^{n}y^{n})(1-q^{n}y^{-n})}.
\end{align}$$

## massless vector

For the Maxwell branch, the primary triplet at $\displaystyle{\Delta=2}$ is kept as a physical spin-one multiplet. The quotient by the longitudinal scalar gauge module acts level by level as

$$\begin{align}
\mathcal{H}_{N}^{\mathrm{Max}} & =\dfrac{V_{1}\otimes\mathrm{Sym}^{N}(V_{1})}{\mathrm{Sym}^{N-1}(V_{1})},  & \mathrm{Sym}^{-1}(V_{1}) & =0.
\end{align}$$

In irreducible $\displaystyle{SO(3)}$ representations this is

$$\begin{align}
\mathcal{H}_{N}^{\mathrm{Max}} & =V_{N+1}\oplus V_{N}\oplus\cdots\oplus V_{1}, & H|_{N} & =2+N.
\end{align}$$

At $\displaystyle{N=0}$ this gives the full primary multiplet $\displaystyle{V_{1}}$; no component of the primary triplet is quotiented out. The one-particle trace is

$$\begin{align}
Z_{1}^{\mathrm{Max}}(\beta,\alpha) & =\sum _{N=0}^{\infty}q^{2+N}\sum _{J=1}^{N+1}\chi_{J}(y) \\
 & =\dfrac{q^{2}\chi_{1}(y)-q^{3}}{(1-q)(1-qy)(1-qy^{-1})}.
\end{align}$$

The corresponding Fock-space partition function is

$$\begin{align}
Z^{\mathrm{Max}}(\beta,\alpha) & =\prod _{N=0}^{\infty}\prod _{J=1}^{N+1}\prod _{M=-J}^{J}\dfrac{1}{1-e^{-\beta(2+N)+i\alpha M}}.
\end{align}$$

Equivalently,

$$\begin{align}
\log Z^{\mathrm{Max}}(\beta,\alpha) & =\sum _{n=1}^{\infty}\dfrac{1}{n}\dfrac{q^{2n}\chi_{1}(y^{n})-q^{3n}}{(1-q^{n})(1-q^{n}y^{n})(1-q^{n}y^{-n})}.
\end{align}$$

## massive TT tensor

The massive transverse-traceless tensor primary is a spin-two multiplet,

$$\begin{align}
\mathcal{H}_{0}^{\mathrm{TT}} & =V_{2}.
\end{align}$$

At descendant level $\displaystyle{N}$,

$$\begin{align}
\mathcal{H}_{N}^{\mathrm{TT}} & =V_{2}\otimes\mathrm{Sym}^{N}(V_{1}) \\
 & =V_{2}\otimes\left(V_{N}\oplus V_{N-2}\oplus V_{N-4}\oplus\cdots\right).
\end{align}$$

Equivalently, for $\displaystyle{N=\ell+2p}$,

$$\begin{align}
V_{2}\otimes V_{\ell} & =V_{\ell+2}\oplus V_{\ell+1}\oplus\cdots\oplus V_{|\ell-2|}.
\end{align}$$

Thus

$$\begin{align}
\mathcal{H}_{\mathrm{1p}}^{\mathrm{TT}} & =\bigoplus _{p=0}^{\infty}\bigoplus _{\ell=0}^{\infty}\left(V_{2}\otimes V_{\ell}\right), & H|_{(p,\ell)} & =\Delta+\ell+2p.
\end{align}$$

and the one-particle trace is

$$\begin{align}
Z_{1}^{\mathrm{TT}}(\beta,\alpha) & =q^{\Delta}\left(\sum _{p=0}^{\infty}q^{2p}\right)\left(\sum _{\ell=0}^{\infty}q^{\ell}\chi_{2}(y)\chi_{\ell}(y)\right) \\
 & =\dfrac{q^{\Delta}\chi_{2}(y)}{(1-q)(1-qy)(1-qy^{-1})}.
\end{align}$$

The normal-ordered Fock-space partition function is

$$\begin{align}
Z^{\mathrm{TT}}(\beta,\alpha) & =\prod _{p=0}^{\infty}\prod _{\ell=0}^{\infty}\prod _{J=|\ell-2|}^{\ell+2}\prod _{M=-J}^{J}\dfrac{1}{1-e^{-\beta(\Delta+\ell+2p)+i\alpha M}}.
\end{align}$$

Equivalently,

$$\begin{align}
\log Z^{\mathrm{TT}}(\beta,\alpha) & =\sum _{n=1}^{\infty}\dfrac{1}{n}\dfrac{q^{n\Delta}\chi_{2}(y^{n})}{(1-q^{n})(1-q^{n}y^{n})(1-q^{n}y^{-n})}.
\end{align}$$

## massless TT tensor

For the massless graviton branch, the $\displaystyle{\Delta=3}$ primary quintet is kept as a physical spin-two multiplet. The diffeomorphism quotient removes the level-shifted vector gauge module,

$$\begin{align}
\mathcal{H}_{N}^{\mathrm{grav}} & =\dfrac{V_{2}\otimes\mathrm{Sym}^{N}(V_{1})}{V_{1}\otimes\mathrm{Sym}^{N-1}(V_{1})},  & \mathrm{Sym}^{-1}(V_{1}) & =0.
\end{align}$$

In irreducible $\displaystyle{SO(3)}$ representations,

$$\begin{align}
\mathcal{H}_{N}^{\mathrm{grav}} & =V_{N+2}\oplus V_{N+1}\oplus\cdots\oplus V_{2}, & H|_{N} & =3+N.
\end{align}$$

At $\displaystyle{N=0}$ this is the full primary quintet $\displaystyle{V_{2}}$; no component of the primary tensor multiplet is quotiented out. Hence

$$\begin{align}
Z_{1}^{\mathrm{grav}}(\beta,\alpha) & =\sum _{N=0}^{\infty}q^{3+N}\sum _{J=2}^{N+2}\chi_{J}(y) \\
 & =\dfrac{q^{3}\chi_{2}(y)-q^{4}\chi_{1}(y)}{(1-q)(1-qy)(1-qy^{-1})}.
\end{align}$$

The Fock-space partition function is

$$\begin{align}
Z^{\mathrm{grav}}(\beta,\alpha) & =\prod _{N=0}^{\infty}\prod _{J=2}^{N+2}\prod _{M=-J}^{J}\dfrac{1}{1-e^{-\beta(3+N)+i\alpha M}}.
\end{align}$$

Equivalently,

$$\begin{align}
\log Z^{\mathrm{grav}}(\beta,\alpha) & =\sum _{n=1}^{\infty}\dfrac{1}{n}\dfrac{q^{3n}\chi_{2}(y^{n})-q^{4n}\chi_{1}(y^{n})}{(1-q^{n})(1-q^{n}y^{n})(1-q^{n}y^{-n})}.
\end{align}$$

## summary

Let $\displaystyle{\mathcal{V}(\Delta,S)}$ denote the positive-energy highest-weight $\displaystyle{\mathfrak{so}(2,3)}$ module generated by a spin-$S$ primary with energy $\displaystyle{\Delta}$. The common denominator and spin character are

$$\begin{align}
D(q,y) & =(1-q)(1-qy)(1-qy^{-1}), & \chi_{S}(y) & =\sum _{M=-S}^{S}y^{M}.
\end{align}$$

The AdS$_4$ field theories discussed above are organized as follows.

| theory | $\mathfrak{so}(2,3)$ module | physical one-particle content | one-particle trace |
|---|---|---|---|
| massive scalar | $\mathcal{V}(\Delta,0)$ | $\bigoplus_{p,\ell\geq0}V_{\ell}$, $H=\Delta+\ell+2p$ | $\dfrac{q^{\Delta}}{D(q,y)}$ |
| massive vector | $\mathcal{V}(\Delta,1)$ | $\bigoplus_{p,\ell\geq0}(V_{1}\otimes V_{\ell})$, $H=\Delta+\ell+2p$ | $\dfrac{q^{\Delta}\chi_{1}(y)}{D(q,y)}$ |
| Maxwell | $\mathcal{V}(2,1)/\mathcal{V}(3,0)$ | $\bigoplus_{N\geq0}(V_{N+1}\oplus V_{N}\oplus\cdots\oplus V_{1})$, $H=2+N$ | $\dfrac{q^{2}\chi_{1}(y)-q^{3}}{D(q,y)}$ |
| massive TT tensor | $\mathcal{V}(\Delta,2)$ | $\bigoplus_{p,\ell\geq0}(V_{2}\otimes V_{\ell})$, $H=\Delta+\ell+2p$ | $\dfrac{q^{\Delta}\chi_{2}(y)}{D(q,y)}$ |
| massless graviton | $\mathcal{V}(3,2)/\mathcal{V}(4,1)$ | $\bigoplus_{N\geq0}(V_{N+2}\oplus V_{N+1}\oplus\cdots\oplus V_{2})$, $H=3+N$ | $\dfrac{q^{3}\chi_{2}(y)-q^{4}\chi_{1}(y)}{D(q,y)}$ |

For the two gauge theories, the quotient removes the longitudinal gauge module as a submodule of descendants. It does not remove part of the primary multiplet: the Maxwell primary remains the full $\displaystyle{V_{1}}$ at $\displaystyle{N=0}$, and the graviton primary remains the full $\displaystyle{V_{2}}$ at $\displaystyle{N=0}$.

In all five cases, the explicit mode functions are obtained by starting from the primary mode and acting with the lowering operators $\displaystyle{\mathcal{L}_{E^{-}_{m}}}$. The symplectic norm fixes the normalization constants and determines which branches are normalizable physical modes. Once the physical one-particle module is fixed, the normal-ordered bosonic Fock-space partition function is

$$\begin{align}
\log Z(\beta,\alpha) & =\sum _{n=1}^{\infty}\dfrac{1}{n}Z_{1}(n\beta,n\alpha).
\end{align}$$

## general spin-s case

The same representation-theoretic construction applies to an integer-spin field whose normalizable primary is a spin-$s$ multiplet under the spatial rotation group,

$$\begin{align}
\mathcal{H}_{0}^{(s)} & =V_{s}, & s & =0,1,2,\ldots .
\end{align}$$

For a massive field, the primary energy is denoted by $\displaystyle{\Delta}$. The relation between $\displaystyle{\Delta}$ and the bulk mass depends on the field equation convention, but the partition function only uses the highest-weight energy and the spin of the primary. The lowering operators $\displaystyle{\mathcal{L}_{E^{-}_{m}}}$ transform as a spin-one triplet, so at descendant level $\displaystyle{N}$,

$$\begin{align}
\mathcal{H}_{N}^{(s),\mathrm{massive}} & =V_{s}\otimes\mathrm{Sym}^{N}(V_{1}) \\
 & =V_{s}\otimes\left(V_{N}\oplus V_{N-2}\oplus V_{N-4}\oplus\cdots\right).
\end{align}$$

Equivalently, writing $\displaystyle{N=\ell+2p}$ with $\displaystyle{p,\ell\geq0}$,

$$\begin{align}
V_{s}\otimes V_{\ell} & =V_{|s-\ell|}\oplus V_{|s-\ell|+1}\oplus\cdots\oplus V_{s+\ell}.
\end{align}$$

Thus the massive one-particle Hilbert space is organized as

$$\begin{align}
\mathcal{H}_{\mathrm{1p}}^{(s),\mathrm{massive}} & =\bigoplus _{p=0}^{\infty}\bigoplus _{\ell=0}^{\infty}\left(V_{s}\otimes V_{\ell}\right), & H|_{(p,\ell)} & =\Delta+\ell+2p.
\end{align}$$

The refined one-particle trace is

$$\begin{align}
Z_{1}^{(s),\mathrm{massive}}(\beta,\alpha) & =q^{\Delta}\left(\sum _{p=0}^{\infty}q^{2p}\right)\left(\sum _{\ell=0}^{\infty}q^{\ell}\chi_{s}(y)\chi_{\ell}(y)\right) \\
 & =\dfrac{q^{\Delta}\chi_{s}(y)}{D(q,y)}.
\end{align}$$

The normal-ordered Fock-space partition function is

$$\begin{align}
Z^{(s),\mathrm{massive}}(\beta,\alpha) & =\prod _{p=0}^{\infty}\prod _{\ell=0}^{\infty}\prod _{J=|s-\ell|}^{s+\ell}\prod _{M=-J}^{J}\dfrac{1}{1-e^{-\beta(\Delta+\ell+2p)+i\alpha M}}.
\end{align}$$

or equivalently

$$\begin{align}
\log Z^{(s),\mathrm{massive}}(\beta,\alpha) & =\sum _{n=1}^{\infty}\dfrac{1}{n}\dfrac{q^{n\Delta}\chi_{s}(y^{n})}{D(q^{n},y^{n})}.
\end{align}$$

For a massless integer-spin field with $\displaystyle{s\geq1}$, the normalizable primary has energy $\displaystyle{s+1}$ and spin $\displaystyle{s}$. The physical module is the short module

$$\begin{align}
\mathcal{H}_{\mathrm{massless}}^{(s)} & =\mathcal{V}(s+1,s)/\mathcal{V}(s+2,s-1).
\end{align}$$

The quotient removes the spin-$(s-1)$ gauge submodule. It does not remove part of the spin-$s$ primary multiplet. At level $\displaystyle{N}$ the physical one-particle space is

$$\begin{align}
\mathcal{H}_{N}^{(s),\mathrm{massless}} & =V_{N+s}\oplus V_{N+s-1}\oplus\cdots\oplus V_{s}, & H|_{N} & =s+1+N.
\end{align}$$

In particular, $\displaystyle{\mathcal{H}_{0}^{(s),\mathrm{massless}}=V_{s}}$. The refined one-particle trace is therefore

$$\begin{align}
Z_{1}^{(s),\mathrm{massless}}(\beta,\alpha) & =\sum _{N=0}^{\infty}q^{s+1+N}\sum _{J=s}^{N+s}\chi_{J}(y) \\
 & =\dfrac{q^{s+1}\chi_{s}(y)-q^{s+2}\chi_{s-1}(y)}{D(q,y)}.
\end{align}$$

The normal-ordered Fock-space partition function is

$$\begin{align}
Z^{(s),\mathrm{massless}}(\beta,\alpha) & =\prod _{N=0}^{\infty}\prod _{J=s}^{N+s}\prod _{M=-J}^{J}\dfrac{1}{1-e^{-\beta(s+1+N)+i\alpha M}}.
\end{align}$$

or equivalently

$$\begin{align}
\log Z^{(s),\mathrm{massless}}(\beta,\alpha) & =\sum _{n=1}^{\infty}\dfrac{1}{n}\dfrac{q^{n(s+1)}\chi_{s}(y^{n})-q^{n(s+2)}\chi_{s-1}(y^{n})}{D(q^{n},y^{n})}.
\end{align}$$

At zero angular potential, these reduce to

$$\begin{align}
Z_{1}^{(s),\mathrm{massive}}(\beta,0) & =\dfrac{(2s+1)q^{\Delta}}{(1-q)^{3}}, \\
Z_{1}^{(s),\mathrm{massless}}(\beta,0) & =\dfrac{q^{s+1}\left((2s+1)-(2s-1)q\right)}{(1-q)^{3}}.
\end{align}$$

The cases $\displaystyle{s=1}$ and $\displaystyle{s=2}$ reproduce the Proca/massive TT formulas and the Maxwell/graviton short-module formulas above.

module-character matching with the heat-kernel / Harish-Chandra character formula in general dimension is presented in [[Articles/Quantization in AdS/ads4 linearized gravity/heat kernel|heat kernel]]
