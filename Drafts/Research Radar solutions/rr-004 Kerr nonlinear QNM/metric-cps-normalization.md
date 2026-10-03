# Normalized metric-CPS source projection in a selected DD channel

## Result and scope

**For a single separated angular channel of the chiral DD source, the curvature Green numerator is exactly a metric-source pairing with a fixed adjoint metric test.** The source-current boundary terms vanish under the endpoint conditions below. The Einstein--Hilbert coefficient and the signature translation are retained explicitly.

This result requires no infinite daughter angular sum. It therefore closes the normalization question for the selected-channel source projection. Existence and estimates for the full untruncated sourced metric remain a separate gate.

Use the $M=1$, $(+---)$ Kerr conventions of the [Hertz reconstruction](hertz-metric-reconstruction.md). Write $E=\delta G$, $Ek=F$, $\psi=T'k=\delta\Psi_4$, and
$$
S'E=O'T'.
$$
The source is the exact chiral DD tensor $F=-\tfrac12D^2G[h,h]$, not a fitted Teukolsky forcing.

## 1. The complete covariant-to-separated normalization

Let $\Gamma=r+iaz$, $\bar\Gamma=r-iaz$, $\Sigma=\Gamma\bar\Gamma$, and use the mode $e^{-i\Omega t+im_Q\varphi}$. For the angular branch $S_\ell(z;\Omega)$, normalize
$$
\int_{S^2}S_\ell(z)^2\,d\Omega_{\rm ang}=1
$$
after canceling the opposite azimuthal phases in a bilinear pairing. Thus $2\pi\int_{-1}^1S_\ell(z)^2dz=1$. No conjugation is inserted.

With $\psi=\bar\Gamma^{-4}Y(r)S_\ell(z)$ times the mode phase, the exact identity is
$$
\boxed{
O'\psi=-\frac{1}{\Sigma\bar\Gamma^4}
(L_{\Omega,\ell}Y)S_\ell,
}
$$
where
$$
L_{\Omega,\ell}Y
=\Delta Y''-\Delta'Y'+V_{-2}Y
$$
uses the potential and angular eigenvalue of the spin-two benchmark.

This factor was checked from the full covariant GHP operator, including its connection and potential terms, not just its radial principal symbol. The [saved xAct component calculation](verification/kerr-teukolsky-normalization.wl) leaves arbitrary radial and angular functions and compares the complete differential expressions; its residual is exactly zero.

Consequently the projected radial source is
$$
Q_\ell(r)=
-\int_{S^2}S_\ell(z)\,\Sigma\bar\Gamma^4 S'F\,d\Omega_{\rm ang},
$$
with the common source phase removed. This is the normalization of $Q_\ell$ in the independent source solve.

Let $u_\ell$ be the horizon-ingoing homogeneous radial solution at the same frequency, and define the dual curvature test
$$
\boxed{
\eta_\ell=
-\bar\Gamma^4\Delta^{-2}u_\ell(r)S_\ell(z)
e^{+i\Omega t-im_Q\varphi}.
}
$$
The natural spacetime pairing uses the Kerr density $\Sigma\,dt\,dr\,d\Omega_{\rm ang}$. The two minus signs then cancel:
$$
\int_{S^2}\Sigma\,\eta_\ell\,S'F\,d\Omega_{\rm ang}
=u_\ell\Delta^{-2}Q_\ell.
$$
Formal radial self-adjointness of $\Delta^{-2}L_{\Omega,\ell}$ and the bilinear angular eigenfunction relation imply
$$
O'^\dagger\eta_\ell=0.
$$
The opposite time and azimuthal phases, the factor $\bar\Gamma^4\Delta^{-2}$, and the sign are all required.

Set
$$
H_\ell=S'^\dagger\eta_\ell.
$$
The Wald adjoint identity gives $EH_\ell=0$. This test metric has the chirality dual to the source metric. It is not identified with an arbitrarily normalized reflection of the parent.

## 2. Keep the source current until its endpoints are controlled

For a second-order source operator written as
$$
SF=A^{ab\,cd}\nabla_a\nabla_bF_{cd}
+K^{b\,cd}\nabla_bF_{cd},
$$
one current with
$\nabla_a j_S^a=\eta\,SF-(S^\dagger\eta)^{cd}F_{cd}$ is
$$
\boxed{
j_S^a=
\eta A^{ab\,cd}\nabla_bF_{cd}
-\nabla_b(\eta A^{ba\,cd})F_{cd}
+\eta K^{a\,cd}F_{cd}.
}
$$
For $S'$, take
$A^{ab\,cd}=Z'^{bc}Z'^{da}$ and
$K^{b\,cd}=4B'_aA^{ab\,cd}$.
The products have zero total GHP weight, so the displayed ordinary covariant derivatives are appropriate.

The [generic tensor check](verification/tensor-source-current-corrected.wl) returns zero for this identity with arbitrary coefficient tensors. Its archived initial harness omitted parentheses around a multiline definition and did not implement the full current; that nonzero output is not mathematical evidence against the corrected identity.

For the present source, let $C=F_{\bar m\bar m}$ denote its Boyer--Lindquist mode amplitude. The [transport calculation](chiral-reconstruction-proof.md) gives
$$
S'F=-\frac{\Delta^2}{4\Sigma^2}D_\alpha D_\beta C,
$$
where
$$
D_\alpha=\partial_r+\alpha,\quad
\alpha=\frac{iK_Q}{\Delta}+\frac6{\bar\Gamma}-\frac1\Gamma,
\qquad
D_\beta=\partial_r+\beta,\quad
\beta=\frac{iK_Q}{\Delta}+\frac2{\bar\Gamma}-\frac1\Gamma.
$$
This is the Boyer--Lindquist form of the advanced-coordinate expression; the added $iK_Q/\Delta$ comes from the coordinate phase.

After multiplying by the dual test and the volume density, set
$$
w(r,z)=\frac{\bar\Gamma^4}{4\Sigma}\,u_\ell(r)S_\ell(z).
$$
The source-current radial flux, after angular integration, can be represented by
$$
\boxed{
\Phi_S(r)=\int_{S^2}
\left[w C'-w'C+(\alpha+\beta)wC\right]d\Omega_{\rm ang}.
}
$$
Indeed,
$$
\partial_r\{w C'-w'C+(\alpha+\beta)wC\}
=wD_\alpha D_\beta C-(D_\alpha D_\beta)^\dagger w\,C.
$$
Formal adjoint composition with the fixed chiral tensor embedding identifies the second term with the metric contraction $\Sigma H_\ell^{ab}F_{ab}$. The other two chiral source components are annihilated by $S'$ as differential operators, so they contribute no additional adjoint contraction. A separate symbolic check verifies the scalar factorized-current identity.

## 3. Why the radial source-current endpoints vanish

At infinity the exact DD source has an outgoing phase and finite algebraic powers. Its curvature source obeys
$$
Q(r,z)=e^{i\Omega r}r^{2+2i\Omega}\,[q_\infty(z)+O(r^{-1})].
$$
Since $\Omega\ne0$, the leading action of both $D_\alpha$ and $D_\beta$ on an outgoing amplitude is multiplication by $2i\Omega$. The relation above therefore implies
$$
C=O(e^{i\Omega r}r^{-4+2i\Omega}).
$$
If the leading coefficient vanishes at a particular angle or projection, the decay improves.

Decompose the radial test as
$$
u_\ell=C_{\rm out}e^{i\Omega r}r^{3+2i\Omega}(1+O(r^{-1}))
+C_{\rm in}e^{-i\Omega r}r^{-1-2i\Omega}(1+O(r^{-1})).
$$
Then $w=O(r^2u_\ell)$. The incoming-test contribution to the source current is $O(r^{-3})$, and the outgoing-test contribution is
$$
O(e^{2i\Omega r}r^{1+4i\Omega}).
$$
Both tend to zero along the vertical outgoing end when $\operatorname{Re}\Omega>0$. This explicitly controls the incoming branch; an exponential estimate alone would not do so.

At the horizon write $z_h=r-r_+$ and assume the finite-pole source form
$$
C=z_h^{p-i\sigma_Q}\times
\text{a holomorphic function with at most finitely many logarithms},
$$
for some finite integer $p$. This follows from the local differential construction of the parent source; its precise pole order is not needed. Since
$u_\ell\sim z_h^{2-i\sigma_Q}$, the source-current terms are bounded by
$z_h^{p+1-2i\sigma_Q}$ times logarithmic factors.

On $z_h=\rho e^{(1+i\kappa)s}$, $s\to-\infty$, impose the strict condition
$$
p+1+2\operatorname{Im}\sigma_Q
+2\kappa\operatorname{Re}\sigma_Q>0.
$$
For the selected corotating channel, $\operatorname{Re}\sigma_Q>0$, so one can choose a finite $\kappa$ satisfying this and the earlier curvature Green-integral bounds. Hence
$$
\boxed{[\Phi_S]_{\mathscr H}^{\infty}=0.}
$$
These are endpoint estimates on a fixed analytic covering and outgoing sector. They do not make $j_S$ vanish on an arbitrary interior spacelike slice.

## 4. Equality of the curvature and metric source numerators

Use the radial Wronskian
$$
W_\ell=\Delta^{-1}(u_\ell v_\ell'-v_\ell u_\ell')
$$
with $v_\ell$ normalized to unit outgoing leading coefficient. At $W_\ell\ne0$, the curvature Green formula gives
$$
E_\ell W_\ell=\int_{\mathcal C}u_\ell\Delta^{-2}Q_\ell\,dr.
$$
The source adjoint identity and the endpoint result now give
$$
\boxed{
E_\ell W_\ell=
\int_{\mathcal C}dr\int_{S^2}d\Omega_{\rm ang}\,
\Sigma\,H_\ell^{ab}F_{ab}.
}
$$
Thus the independently solved curvature amplitude has a fully specified metric-source representation. For this single-parameter DD expansion,
$F=-\tfrac12D^2G[h,h]$; replacing it by $-D^2G[h,h]$ would double the numerator.

The integral converges: its difference from the already controlled curvature integrand is $\Phi_S'$, whose incoming infinity term is $O(r^{-4})$ and whose other endpoint terms obey the same strict contour bounds. Angular smoothness is sufficient for a fixed projection on the compact sphere.

This formula defines and compares a selected source projection without constructing the full daughter angular sum. It is invariant under rescaling $u_\ell$, since $H_\ell$ and $W_\ell$ scale together.

## 5. The Einstein--Hilbert coefficient and signature translation

Keep the action normalization visible:
$$
L_{\rm EH}=\kappa_{\rm EH}R\,\epsilon,\qquad
\delta L_{\rm EH}=-\kappa_{\rm EH}G^{ab}\delta g_{ab}\,\epsilon+d\theta.
$$
With $\omega=\delta_H\theta(k)-\delta_k\theta(H)$ and $EH=0$, $Ek=F$,
$$
d\omega(H,k)=-\kappa_{\rm EH}H^{ab}F_{ab}\,\epsilon.
$$
Thus a Green current for $E=\delta G$ can be chosen as
$$
j_E=-\kappa_{\rm EH}^{-1}\omega
$$
up to a local superpotential.

The original gravitational-response note uses signature $(-+++)$ and
$\kappa_{\rm EH}=+1/(16\pi G)$. The present component calculations use $(+---)$. To translate the **same action**, negate the entire metric family: the covariant Einstein tensor is unchanged, whereas $R$ changes sign. Therefore the corresponding coefficient in these $(+---)$ calculations is
$$
\boxed{\kappa_{\rm EH}=-\frac1{16\pi G}.}
$$
Using $+R/(16\pi G)$ in both signatures would change the overall action normalization. The source and waveform ratios do not depend on that overall choice, but a reported CPS normalization does.

For opposite-frequency/azimuthal test and response, all bilinear products are stationary and axisymmetric. The local current relation is
$$
j_E(H_\ell,k)=j_{O'}(\eta_\ell,T'k)-j_{S'}(\eta_\ell,F)+dH_{\rm sup}.
$$
The angular integral of its radial superpotential flux vanishes at each radius: its time and azimuthal derivatives vanish, and its angular divergence integrates to zero for globally regular bundle pairings on $S^2$. This statement does not discard a source term.

The angularly integrated curvature radial current is
$$
J_\ell[u_\ell,Y_\ell]=
\Delta^{-1}(u_\ell Y_\ell'-Y_\ell u_\ell').
$$
Consequently,
$$
J_\ell=-\kappa_{\rm EH}^{-1}\Phi_\omega(H_\ell,k)+\Phi_S.
$$
At the outgoing end,
$$
\boxed{
E_\ell W_\ell=-\kappa_{\rm EH}^{-1}
\Phi_\omega(H_\ell,k)\big|_\infty.
}
$$
Here radial flux orientation is the outward orientation used in the divergence theorem. For the translated physical action this coefficient is $+16\pi G$.

If $k_\ell^{\rm out}$ is a homogeneous metric reconstruction with
$T'k_\ell^{\rm out}=\bar\Gamma^{-4}v_\ell S_\ell$, then
$$
\boxed{
E_\ell=
\frac{\Phi_\omega(H_\ell,k)|_\infty}
{\Phi_\omega(H_\ell,k_\ell^{\rm out})|_\infty}.
}
$$
This ratio makes the common action and test-metric normalization cancel explicitly. Its metric interpretation assumes that the outgoing sourced metric exists in the stated class; the source-integral formula in section 4 does not require assuming the full angular sum.

## 6. The corresponding simple-pole norm

At a simple separated pole $\omega_a$, take $u_a=v_a=R_a$ after fixing the radial normalization, and choose a homogeneous metric $h_a$ with
$T'h_a=\bar\Gamma^{-4}R_aS_a$. Keep the angular frequency derivative in the pencil:
$$
N_a=\int_{\mathcal C}R_a^2\,
\partial_\omega(\Delta^{-2}V_{-2})\,dr.
$$
Differentiating $S'E=O'T'$ and pairing with the adjoint test gives, before endpoint removal,
$$
N_a=
\int_{\mathcal C\times S^2}\Sigma\,H_a^{ab}E'_a h_{a\,ab}
+[\Phi_{S'}(\eta_a,E'_ah_a)]
-[\Phi_{O'}(\eta_a,T'_ah_a)].
$$
Primes in this equation mean frequency derivatives of the reduced differential operators, not GHP priming. The term containing $(S')'E_ah_a$ is zero on shell. The term with $O'T'_ah_a$ is a Green boundary term because the adjoint test is on shell.

For a common analytic mode domain on which these finite differential endpoint terms vanish, the metric pencil norm equals $N_a$. The phase products at infinity are outgoing and decay exponentially; at the horizon the finite pole orders can be accommodated by a sufficiently strong common spiral. Frequency derivatives add logarithms and must obey the same branch prescription. This is the same type of domain condition used in the earlier radial norm comparison, not a statement about the entire Hilbert-space QNM domain.

The temporal Green identity fixes the remaining factor. For an opposite-frequency test,
$$
\int_\Sigma j_E^t(H_a,h_a)=iN_a,
\qquad
\boxed{\Omega_{\rm EH}(H_a,h_a)=-i\kappa_{\rm EH}N_a.}
$$
With the translated $(+---)$ action, this is $iN_a/(16\pi G)$. The elementary $-\partial_t^2-\nu^2$ check in the saved algebra file verifies the Fourier sign. The general factor follows by differentiating the spacetime Green identity; it is not an additional numerical Kerr measurement.

A spectral residue still requires a simple pole and compatible source/observable maps. At $\Omega=2\omega_{220}$ the computed response is off resonance; the regular resolvent contribution cannot be replaced by one pole norm.

## Verification and remaining requirement

Evidence includes the exact covariant Teukolsky normalization, the corrected generic tensor source-current identity, and [the factorized-current and Fourier-sign check](verification/metric-pairing-algebra.wl), with adjacent outputs. The source-current endpoint estimates are analytic power estimates, not finite sampling.

**Verified:** the complete normalization of the source projection; the adjoint metric test; equality of the selected-channel metric and curvature source numerators; the explicit EH coefficient, signature translation, and conditional common-domain pole-norm factor.

**Assumptions:** the chosen DD chirality; on-shell parents; a fixed simple angular branch and bilinear normalization; the stated contour/phase conditions; $W_\ell\ne0$ for the off-resonant Green formula; regular angular bundle pairings; vanishing derivative endpoint terms where the pole norm is compared.

**Not verified here:** existence and uniform estimates for the full daughter angular sum, a numerical independent evaluation of the metric-source integral, certified pole/Wronskian enclosures, or a time-domain nonlinear ringdown simulation. The full untruncated metric construction remains open. The [selected completed observable](invariant-selected-coupling.md) uses this normalization without assuming that stronger existence result.

