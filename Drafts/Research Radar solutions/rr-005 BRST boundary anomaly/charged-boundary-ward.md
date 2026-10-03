# Nonzero boundary charges and the one-loop current-source hierarchy

## Result

**There is a charged boundary benchmark with zero anomaly: an interacting open Abelian gauge--matter chain has nonzero endpoint charges, an exact nilpotent BRST charge, and a boundary Ward algebra with no central extension.** Its collar-profile independence follows directly from the Gauss constraints.

Separately, the continuum Dirichlet scalar determinant extends to arbitrarily many BRST-current source insertions at one loop. The full Ward remainder, including contact terms, is zero at every collar and ultraviolet cutoff. This establishes the zero anomaly class for that sourced matter functional; it does not construct a continuum interacting Hilbert space by taking a limit of the lattice Hamiltonians.

The finite charge result and the continuum one-loop statement are proved separately below. Their coexistence does not by itself prove convergence of their individual charge operators.

## 1. An action with endpoint charges

Use dimensionless lattice variables and set $\hbar=1$. There are $N$ links, labelled $j=0,\ldots,N-1$, and $N-1$ interior scalar sites. Let
$$
\theta_j\in\mathbb R/2\pi\mathbb Z,\quad E_j\in\mathbb R,\qquad
\phi_i=x_i+iy_i,\quad
q_i=x_i p_{y_i}-y_i p_{x_i}.
$$
At the two endpoints set $\phi_0=\phi_N=0$. Define the positive Hamiltonian
$$
H=\frac{g_E^2}{2}\sum_{j=0}^{N-1}E_j^2
+\frac12\sum_{i=1}^{N-1}
\left(p_{x_i}^2+p_{y_i}^2+m^2|\phi_i|^2\right)
+\frac{\kappa}{2}\sum_{j=0}^{N-1}
|\phi_{j+1}-e^{i\theta_j}\phi_j|^2,
$$
with $g_E,m,\kappa>0$. The hopping term is an actual gauge--matter interaction. This is a finite spatial regulator with continuous time, not a zero-dimensional determinant example.

For arbitrary site parameters $\alpha_0,\ldots,\alpha_N$, take
$$
\delta_\alpha\theta_j=\alpha_{j+1}-\alpha_j,\qquad
\delta_\alpha\phi_i=i\alpha_i\phi_i.
$$
With the standard brackets $\{\theta_j,E_k\}=\delta_{jk}$ and
$\{x_i,p_{x_k}\}=\{y_i,p_{y_k}\}=\delta_{ik}$, their generator is
$$
\mathcal G[\alpha]
=\sum_j E_j(\alpha_{j+1}-\alpha_j)+\sum_i\alpha_i q_i
=\alpha_0Q_L+\alpha_NQ_R+\sum_i\alpha_iG_i,
$$
where
$$
G_i=E_{i-1}-E_i+q_i,\qquad
\boxed{Q_L=-E_0,\quad Q_R=E_{N-1}.}
$$
Only $G_i=0$ are constraints. Endpoint transformations are physical symmetries, rather than further constraints.

The canonical action is
$$
S=\int dt\left[
\sum_jE_j\dot\theta_j
+\sum_i(p_{x_i}\dot x_i+p_{y_i}\dot y_i)
-H-\sum_i a_iG_i-\mu_LQ_L-\mu_RQ_R
\right].
$$
The temporal sources transform as
$\delta a_i=\dot\alpha_i$ and
$\delta\mu_{L,R}=\dot\alpha_{0,N}$.
With parameters zero at initial and final time, the variation of the canonical term cancels that of the source terms.

Every hopping difference transforms by the phase at its receiving site. Consequently,
$$
\{G_i,H\}=0,\quad \{G_i,G_k\}=0,\quad
\{Q_A,G_i\}=0,\quad\{Q_A,H\}=0,\quad
\{Q_L,Q_R\}=0.
$$
The last conservation statement also follows directly: the endpoint hopping terms reduce to $|\phi_1|^2$ and $|\phi_{N-1}|^2$, so $H$ is independent of $\theta_0,\theta_{N-1}$.

This differs from imposing $F_{na}=0$ at a continuum wall. Fixing the boundary electric potential, rather than its electric flux, permits nonzero $Q_L,Q_R$. In the continuum action, fixed tangential $A_t$ makes the Maxwell boundary variation vanish without imposing $F_{nt}=0$; time-dependent boundary gauge transformations then act on that fixed-potential source.

## 2. Quantum algebra and BRST charge

Use
$$
\mathcal H=
L^2\!\left((S^1)^N\times\mathbb R^{2(N-1)}\right),\qquad
\widehat E_j=-i\partial_{\theta_j},\qquad
\widehat q_i=-i(x_i\partial_{y_i}-y_i\partial_{x_i}).
$$
The smooth periodic functions with compact support in the scalar coordinates form a common invariant core. The positive quadratic form of $H$ defines its Friedrichs extension. The compact gauge group acts unitarily by rotations and angle translations, preserves this form, and therefore commutes with its Hamiltonian. Group averaging defines the closed proper-gauge invariant subspace.

The displayed commutators are exact differential-operator identities:
$$
[\widehat G_i,\widehat G_k]=0,\qquad
[\widehat G_i,\widehat H]=0,\qquad
[\widehat Q_A,\widehat H]=[\widehat Q_A,\widehat G_i]
=[\widehat Q_L,\widehat Q_R]=0.
$$
No ordering correction is hidden: the rotation vector field has zero divergence and differentiates variables distinct from its own coefficient.

Introduce exterior generators $c_i$ for the proper constraints:
$$
\widehat Q_{\rm BRST}=\sum_i c_i\widehat G_i,\qquad
\widehat Q_{\rm BRST}^2
=\frac12\sum_{i,k}c_ic_k[\widehat G_i,\widehat G_k]=0.
$$
The endpoint charges commute with $\widehat Q_{\rm BRST}$ and descend to the physical space. One may introduce external endpoint ghosts for their Ward identities, but imposing their vanishing as BRST constraints would remove the physical charge sectors and is not done here.

These sectors are nonempty. For any integer $n$, the normalizable state
$$
\Psi_n=\exp\!\left(in\sum_j\theta_j\right)
\exp\!\left[-\frac{\nu}{2}\sum_i|\phi_i|^2\right],\qquad \nu>0,
$$
satisfies
$$
\widehat G_i\Psi_n=0,\qquad
(Q_L,Q_R)\Psi_n=(-n,n)\Psi_n.
$$
It need not be an energy eigenstate. Evolution preserves its endpoint charges. More generally, Gauss's law gives
$$
Q_L+Q_R=\sum_i q_i
$$
on the physical subspace.

The Mathematica check with three links and two scalars returns zero for all classical brackets and for $[\widehat G_i,\widehat H]f$, $[\widehat G_1,\widehat G_2]f$ with arbitrary smooth $f$ of all seven configuration variables. The all-$N$ proof is the local symmetry argument above; the finite check does not replace it.

## 3. Boundary source Ward identity and collar profiles

Couple arbitrary smooth temporal sources to $Q_L,Q_R$ as in the action. Their conservation implies, on the common domain,
$$
\partial_t\langle T\,Q_A(t)\mathcal O_1(t_1)\cdots\mathcal O_r(t_r)\rangle
=
\sum_{k=1}^r\delta(t-t_k)
\langle T\,\mathcal O_1\cdots[Q_A,\mathcal O_k]\cdots\mathcal O_r\rangle.
$$
This convention writes the commutator directly, so no factor of $i$ is suppressed in the definition of a gauge variation. Inserting another endpoint charge contributes no contact term because $[Q_A,Q_B]=0$. This fixes the multi-charge Ward algebra, including its possible central term: that term is zero.

A collar choice is an extension of specified endpoint values $\alpha_0,\alpha_N$ into the interior. If $\alpha$ and $\widetilde\alpha$ have the same endpoints, then
$$
\mathcal G[\alpha]-\mathcal G[\widetilde\alpha]
=\sum_i(\alpha_i-\widetilde\alpha_i)G_i.
$$
It vanishes exactly on physical states and is a proper-gauge generator before reduction. Therefore the boundary generator, its algebra and its Ward identity are independent of that extension, including extensions concentrated close to the endpoints. This holds at every finite lattice size and does not require setting the endpoint charges to zero.

This finite-dimensional reduction statement is distinct from a continuum limit of unbounded operators.

## 4. All current-source orders in the continuum one-loop determinant

Return to the massive complex scalar on the smooth Euclidean cylinder and its Dirichlet Hessian
$$
P_A=-(\partial-ieA)^2+m^2,\qquad m>0.
$$
Allow arbitrary smooth tangential boundary values of the background $A$; they are external potential sources. Dirichlet scalar data are preserved by every smooth, single-valued gauge multiplication $e^{ie\lambda}$, including parameters nonzero at the walls. A transformation with time-dependent boundary values changes those potential sources. It is not a symmetry at fixed sources, but it is a Ward transformation of their generating functional.

Let $\eta_\mu$ be an external odd source of ghost number $-1$, with $s\eta=0$, and let $c$ be the Abelian background ghost. The current convention in [source-current.md](source-current.md) gives the exact local identity
$$
S_{\rm matter}[A-\eta c,\phi]
=S_{\rm matter}[A,\phi]
+\int\eta_\mu c\,j^\mu.
$$
It is exact, not just linear in $\eta$, because
$$
(\eta_\mu c)(\eta_\nu c)=0
$$
at the same point. Products $c(x)c(y)$ at distinct points do not vanish. Hence the determinant still generates nonzero higher source insertions:
$$
\boxed{\Gamma_1[A,\eta,c]=\operatorname{Tr}\log P_{A-\eta c}}
$$
up to source-independent free gauge/ghost terms, at zero scalar background.

The local nilpotent identity was verified in a Sage exterior algebra. It does not license deleting derivative or separated-point contacts.

At zero scalar background the Abelian gauge and ghost Hessians have no $A$ dependence. Current-source vertices in this free sector can contain a ghost fluctuation but no antighost fluctuation. A closed ghost loop involving such a vertex is impossible; terms containing the background ghost and one gauge or multiplier fluctuation are linear vertices. Thus that sector adds no field-dependent one-loop determinant to the formula. This counting is restricted to this background and this BRST-current source.

For finite ultraviolet cutoff the nilpotent-source determinant is defined by the Taylor/Duhamel expansion about the positive real-body operator. No positivity is asserted for a Grassmann-valued connection. Set
$$
\mathcal A=A-\eta c,\qquad s\mathcal A=dc.
$$
The same domain covariance holds:
$$
P_{\mathcal A+d\lambda}
=U_\lambda P_{\mathcal A}U_\lambda^{-1}.
$$
Since the odd-source shift is neutral, ordinary background gauge transformations and the BRST Ward operation both preserve this identity.

With any scalar collar weight $\chi_\epsilon$ commuting with $U_\lambda$,
$$
s\left[-\int_{\delta^2}^\infty\frac{dt}{t}
\operatorname{Tr}\!\left(\chi_\epsilon e^{-tP_{\mathcal A}}\right)\right]=0.
$$
Expanding in $\eta$ proves the Ward hierarchy at every source order, including contact terms inherited by differentiating the connection-dependent current. Each anomalous Ward remainder is identically zero at finite $\delta,\epsilon$.

For fixed smooth sources, the ultraviolet divergences in two dimensions are particularly simple. In the convention
$\operatorname{Tr}e^{-tP}\sim\sum_k a_k t^{(k-2)/2}$,
only $a_0,a_1,a_2$ can diverge in the logarithmic determinant. The Dirichlet coefficients in [Vassilevich, equations (5.17)--(5.19)](https://arxiv.org/html/hep-th/0306138) depend on the geometry, mass endomorphism and smearing weight, but not on this connection. Therefore the relative functional
$\Gamma_1[A-\eta c]-\Gamma_1[0]$ has no source-dependent ultraviolet divergence in this two-dimensional model. This is a heat-kernel statement for fixed smooth data, not a uniform bound for sources whose derivatives grow as a collar shrinks.

## 5. An explicit contact term that cannot be omitted

For a finite covariant scalar matrix $P$, a connection-source variation $P_z$, and an infinitesimal gauge generator $\Lambda$, set
$$
P_g=i[\Lambda,P],\qquad P_{gz}=i[\Lambda,P_z].
$$
Differentiating $\operatorname{Tr}\log P$ twice gives the mixed Ward identity
$$
\boxed{
\operatorname{Tr}(P^{-1}P_{gz})
-\operatorname{Tr}(P^{-1}P_zP^{-1}P_g)=0.
}
$$
The first term differentiates the current insertion itself. The second is the two-vertex contribution. Trace cyclicity proves their cancellation.

For the nontrivial six-site covariant matrix in the saved calculation, the two terms are
$$
-\frac{2305249}{14020188}
\quad\text{and}\quad
+\frac{2305249}{14020188}.
$$
Dropping the contact term produces a nonzero Ward remainder. Retaining it gives zero exactly. This is a direct computation of the normalization mechanism required by the current-source hierarchy.

## 6. Anomaly class and the boundary of the conclusion

Define the one-loop anomaly by the failure of the full sourced Ward identity, with all its current derivatives retained. In the continuum model just specified,
$$
\mathfrak a_1=0,\qquad s\mathfrak a_1=0,\qquad
[\mathfrak a_1]=0.
$$
Every finite-cutoff representative is zero, so its distributional collar-removal limit is zero for every collar profile. Allowed local changes of renormalization scheme shift the representative by $sB$, preserving the class. This proves independence of the anomaly class and its source Ward descendants; it does not claim that every individual current kernel has a uniform boundary limit.

The finite interacting Hamiltonian additionally realizes nonzero endpoint charges with the same zero central anomaly and exact collar-profile independence. Thus the vanishing class is not explained merely by eliminating all boundary charges.

**Verified:** exact quantum and classical finite-chain charge algebra; explicit nonzero physical charge sectors; all-$N$ symmetry and collar-extension arguments; exterior-algebra source identity; explicit nonzero contact/bubble cancellation; one-loop continuum sourced covariance and consistency.

**Assumptions:** non-chiral scalar matter, positive mass, Dirichlet scalar walls, fixed smooth potential/source data, proper interior constraints only, and the stated covariant source normalization. The Hamiltonian model uses a finite spatial regulator and its indicated self-adjoint realization.

**Not verified:** convergence of interacting finite-chain Hilbert spaces and unbounded endpoint charge operators to a continuum construction; the complete Lorentzian local boundary-current algebra beyond the one-loop source Ward hierarchy; a seam-removal theorem. The user's excluded sewing question has not been reinstated.

