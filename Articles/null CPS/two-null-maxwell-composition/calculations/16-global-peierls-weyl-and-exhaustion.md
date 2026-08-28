# Global Peierls, Weyl, and Exhaustion

## 1. Direct verdict

- **G-E1 Peierls:** `proved` for compact gauge-invariant radiative
  field-strength smearings.
- **G-E2 Poisson composition:** `proved` on the classical symplectic core and
  compatible with finite exhaustion.
- **G-F-Weyl:** `proved` algebraically from G-C; it is not gated by G-D.
- **G-F-dyn:** `proved` for the global automorphism groups generated on the
  G-D domains.
- **G-G finite exhaustion/local-to-global compatibility:** `proved` on the
  globally extendable fixed-point subspace.

Sharp endpoint/memory observables and charged asymptotic frames remain
`conditional`.

## 2. Peierls convention and master inverse

For one master let

$$
K_\lambda=\partial_t^2-\partial_z^2+\lambda,
\qquad
E_{\rm P}=G_{\rm adv}-G_{\rm ret}.
\tag{2.1}
$$

With $\iota_{X_F}\Omega=-\delta F$, Green's identity gives

$$
\Omega_{X_\infty}(E_{\rm P}h,s)
=-\int d^2x\,h(x)s(x)
\tag{2.2}
$$

for compact $h$ and every homogeneous energy solution $s$ in the dense
domain. Thus the inverse of the complete characteristic form equals the bulk
Peierls bracket. The explicit kernel is

$$
E_{{\rm P},\lambda}(\tau,\xi)
=-\frac12\operatorname{sgn}(\tau)\theta(\tau^2-\xi^2)
J_0(\sqrt\lambda\sqrt{\tau^2-\xi^2}).
\tag{2.3}
$$

The analytic Fourier--Bessel and Green proof is the read-only result of
`../../null-characteristic-cps/calculations/10-peierls-and-propagator-check.md`.

## 3. Lift to gauge-invariant Maxwell smearings

Let $\mathcal D^P_{\ell m}$ be the full field-strength differential map (2.1)
of calculation 13. For a compact two-form test field $\eta$, integration by
parts produces

$$
h^P_{\ell m}=\mathcal D^{P\dagger}_{\ell m}\eta.
\tag{3.1}
$$

Consequently

$$
\boxed{
\{F(\eta),F(\eta')\}_{X_\infty}
=\sum_{P,\ell\geq1,m}
\langle \mathcal D^{P\dagger}_{\ell m}\eta,
E_{{\rm P},\lambda_\ell}
\mathcal D^{P\dagger}_{\ell m}\eta'\rangle.}
\tag{3.2}
$$

By (2.2), (3.2) is simultaneously the inverse of the intrinsic complete
Maxwell characteristic form and the bulk Maxwell Peierls bracket in the fixed
radiative sector. No gauge-potential propagator is used. This proves G-E1.

## 4. Poisson and Weyl composition

For adjacent finite cells inside $X_T$, L-F gives a symplectic isomorphism

$$
G_N:\mathcal P(D_1)\star_N\mathcal P(D_2)
\xrightarrow{\simeq}\mathcal P(D_1\cup_ND_2).
\tag{4.1}
$$

Hence $G_N$ is Poisson on differentiable gauge-invariant observables. On
compact field-strength smearings, (3.2) restricted to the finite union agrees
with this inverse. Internal interface terms cancel because both $i^*F$ and
$i^*(*F)$ match; the distributional proof of calculation 07 excludes electric
surface current and magnetic defect. This proves G-E2.

For any real symplectic space $(V,\Omega)$, define

$$
W(x)W(y)=e^{-i\Omega(x,y)/2}W(x+y),
\qquad W(x)^*=W(-x).
\tag{4.2}
$$

G-C immediately gives

$$
\boxed{\mathfrak W(R_\infty):W(c)\longmapsto W(R_\infty c)}
\tag{4.3}
$$

as a global characteristic Weyl $*$-isomorphism, and (4.1) gives the finite
composition isomorphism. These are G-F-Weyl. They use only symplecticity, not
translation Hamiltonians.

The global symplectic groups $e^{sA_X}$ of G-D induce

$$
\alpha_s^X(W(x))=W(e^{sA_X}x),
\tag{4.4}
$$

which proves G-F-dyn. A stationary Fock representation can be pulled back as a
secondary corollary of the established product-benchmark representation; it
is not part of the B1 proof and supplies no sheetwise tensor factorization.

## 5. Finite exhaustion and local-to-global theorem

Let

$$
\rho_T:\mathcal X_\infty^{\rm Max}\longrightarrow
\mathcal X_T^{\rm Max}
\tag{5.1}
$$

be literal restriction of $(r,p;E_0,b^0)$. The following points are
essential.

1. $\rho_T$ is defined for every global energy datum, but it is not onto all
   local matched-$H^1$ pairs; global data obey the nonlocal fixed-point
   condition of calculation 12.
2. Every subdivision of $X_T$ into finite cells is governed by L-A--L-G. The
   complete interface trace of two adjacent restrictions agrees because both
   are restrictions of the same global $F$.
3. Goursat uniqueness and the literal Maxwell dictionary make restriction
   commute with finite gluing.
4. Calculation 14 proves

   $$
   \Omega_{X_\infty}(x_1,x_2)
   =\lim_{T\to\infty}\Omega_{X_T}(\rho_Tx_1,\rho_Tx_2).
   \tag{5.2}
   $$

5. Applying (5.2) after either order of internal reduction gives the same
   limit by L-G and dominated convergence.

The commutative structure is

$$
\begin{CD}
\operatorname{Sol}_{\rm Max,E}^{\rm rad}
@>{R_\infty}>>\mathcal X_\infty^{\rm Max}\\
@V{\operatorname{res}_{D_T}}VV @VV{\rho_T}V\\
\operatorname{Sol}(D_T)
@>{R_T}>>\mathcal X_T^{\rm Max}
@<G_N<<
\mathcal X_{T,1}^{\rm Max}\star_N\mathcal X_{T,2}^{\rm Max}.
\end{CD}
\tag{5.3}
$$

The two horizontal $R$ maps are isomorphisms onto their declared global and
local restriction spaces. Both paths in (5.3) are literal restriction of the
same $F$. Taking
$T\to\infty$ in their symplectic forms gives (5.2). This proves G-G on the
globally extendable subspace.

## 6. Recovery of translations only in the limit

At finite $T$,

$$
\mathcal L_{\delta_X}\Omega_{X_T}
=\int_{\partial\Sigma_T^{\rm int}}i_X\omega
\tag{6.1}
$$

is generically nonzero for $X=\partial_t,\partial_z$. For global data on the
G-D domains, calculation 15 proves that the two outer bilinears separately
tend to zero. Therefore

$$
\mathcal L_{\delta_X}\Omega_{X_\infty}=0
\tag{6.2}
$$

and the Hamiltonian representation is recovered only after completing the
future cross. This is the precise connection between L-H-trans and G-D.

## 7. Evidence boundary

**Proved:** G-E1, G-E2, G-F-Weyl, G-F-dyn, and G-G under the displayed
sector/domain conditions.

**Checked by regression:** finite-to-global symplectic exhaustion, algebraic
Weyl exponent preservation, and independence from the finite translation
gate.

**Conditional/outside scope:** sharp endpoint/memory observables, charged
large-gauge algebra, Hilbert tensor factorization, partial trace, Fock
implementability, and B2 cross covariance.
