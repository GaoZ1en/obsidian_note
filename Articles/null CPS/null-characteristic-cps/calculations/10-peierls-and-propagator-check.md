# Peierls Bracket and Causal-Propagator Check

## 1. Direct Verdict

For every \(\ell\geq1\) electric or magnetic master sector, the inverse of the reduced characteristic symplectic form agrees with the Peierls bracket. The mode commutator equals the causal propagator with the sign fixed by the project's Lee--Wald convention. Applying the master-to-field-strength differential maps gives the corresponding gauge-independent Maxwell theorem.

The final statement is made for compactly supported master smearings, or compactly supported field-strength smearings projected to the masters. No gauge-dependent potential propagator is needed.

## 2. Operator and Sign Convention

For one sector set

$$
K_\lambda:=\partial_t^2-\partial_z^2+\lambda,
\qquad \lambda>0.
\tag{2.1}
$$

The reduced action is

$$
S=-\frac12\int dtdz\,\Phi K_\lambda\Phi
$$

after integration by parts. Let \(G_{\mathrm{ret}}\) and \(G_{\mathrm{adv}}\) satisfy

$$
K_\lambda G_{\mathrm{ret/adv}}=\delta^{(2)}
$$

with retarded/advanced support. In \(1+1\) dimensions,

$$
G_{\mathrm{ret}}(\tau,\xi)
=\frac12\theta(\tau)\theta(\tau^2-\xi^2)
J_0\!\left(\sqrt\lambda\sqrt{\tau^2-\xi^2}\right),
\tag{2.2}
$$

and \(G_{\mathrm{adv}}(\tau,\xi)=G_{\mathrm{ret}}(-\tau,-\xi)\).

For compatibility with \(\Omega=\delta\pi\wedge\delta q\), define the Peierls kernel

$$
E_{\mathrm P}:=G_{\mathrm{adv}}-G_{\mathrm{ret}}.
\tag{2.3}
$$

Thus

$$
\boxed{
E_{\mathrm P}(\tau,\xi)
=-\frac12\operatorname{sgn}(\tau)
\theta(\tau^2-\xi^2)
J_0\!\left(\sqrt\lambda\sqrt{\tau^2-\xi^2}\right).}
\tag{2.4}
$$

The opposite convention \(G_{\mathrm{ret}}-G_{\mathrm{adv}}\) changes every displayed Peierls sign but no physical commutator.

## 3. Mode Sum

The normalized stationary modes give

$$
\begin{aligned}
C_\lambda(x,x')
&:=\int_{-\infty}^{\infty}dk
[U_k(x)U_k^*(x')-U_k^*(x)U_k(x')]\\
&=-i\int_{-\infty}^{\infty}\frac{dk}{2\pi\omega_k}
\sin(\omega_k\tau)e^{ik\xi},
\end{aligned}
\tag{3.1}
$$

with \(\omega_k=\sqrt{k^2+\lambda}\). The standard Fourier--Bessel identity is

$$
\int_{-\infty}^{\infty}\frac{dk}{2\pi\omega_k}
\sin(\omega_k\tau)e^{ik\xi}
=\frac12\operatorname{sgn}(\tau)
\theta(\tau^2-\xi^2)
J_0\!\left(\sqrt\lambda\sqrt{\tau^2-\xi^2}\right).
\tag{3.2}
$$

Therefore

$$
\boxed{C_\lambda(x,x')=iE_{\mathrm P}(x,x').}
\tag{3.3}
$$

In particular,

$$
[\widehat\Phi(x),\widehat\Phi(x')]
=iE_{\mathrm P}(x,x').
\tag{3.4}
$$

If the symbol \(\Delta\) is defined directly by the mode difference in (3.1), then \(\Delta=iE_{\mathrm P}\) in the present convention. Calling both objects \(\Delta\) without this factor of \(i\) would be a sign/type error: the Peierls kernel is real, while the quantum commutator kernel is imaginary.

## 4. Characteristic Symplectic Inverse

For \(h,j\in C_c^\infty(\mathbb R^{1,1})\), define

$$
F_h[\Phi]=\int d^2x\,h(x)\Phi(x).
$$

The Peierls bracket is

$$
\{F_h,F_j\}_{\mathrm P}
=\int d^2x\,d^2x'\,h(x)E_{\mathrm P}(x,x')j(x').
\tag{4.1}
$$

Expand \(E_{\mathrm P}h\) and \(E_{\mathrm P}j\) in the modes of `08-symplectic-mode-normalization.md`. Since the characteristic projection extracts exactly the same coefficients,

$$
a_k[E_{\mathrm P}h]
=-i\Omega_X(U_k^*,E_{\mathrm P}h),
$$

and \(\{a_k,a_{k'}^*\}=-i\delta(k-k')\), direct substitution gives (4.1). Equivalently, Green's identity gives

$$
\Omega_X(E_{\mathrm P}h,s)
=-\int d^2x\,h(x)s(x)
\tag{4.2}
$$

for every homogeneous solution \(s\) in the dense endpoint domain. Equation (4.2) is exactly the inverse relation for the convention \(\iota_{X_F}\Omega=-\delta F\).

Thus

$$
\boxed{\{\ ,\ \}_{X}=\{\ ,\ \}_{\mathrm P}}
\tag{4.3}
$$

on compactly supported master smearings.

## 5. Maxwell Field-Strength Smearings

For each \((\ell,m,P)\), let \(\mathcal D^P_{\ell m}\) denote the differential map from the master to \(F\) in (5.3)--(5.4) of `06-s2-harmonic-master-reduction.md`:

$$
F^P_{\ell m}=\mathcal D^P_{\ell m}\Phi^P_{\ell m}.
$$

Given a compactly supported two-form test field \(\eta\), integration by parts gives a master source

$$
h^P_{\ell m}=\mathcal D^{P\dagger}_{\ell m}\eta.
$$

Hence the gauge-invariant Maxwell bracket is

$$
\boxed{
\{F(\eta),F(\eta')\}
=\sum_{P,\ell\geq1,m}
\left\langle
\mathcal D^{P\dagger}_{\ell m}\eta,
E_{{\mathrm P},\lambda_\ell}
\mathcal D^{P\dagger}_{\ell m}\eta'
\right\rangle.}
\tag{5.1}
$$

This is simultaneously:

- the inverse of the characteristic Maxwell two-form after proper gauge reduction;
- the Maxwell Peierls bracket projected to the fixed bundle and radiative sectors;
- the mode-sum commutator divided by \(i\).

No gauge-potential Green function appears. A Lorenz-gauge potential propagator would differ by pure-gauge terms, while (5.1) is gauge independent.

## 6. Equal-Time and Causal Checks

Let

$$
D_\lambda:=-E_{\mathrm P}.
$$

Then

$$
D_\lambda(0,\xi)=0,
\qquad
\partial_\tau D_\lambda(0,\xi)=\delta(\xi).
\tag{6.1}
$$

Therefore

$$
\{\Phi(t,z),\partial_t\Phi(t,z')\}=\delta(z-z'),
\tag{6.2}
$$

with the ordering implied by (2.3). Outside the light cone, (2.4) vanishes, so the master and field-strength commutators are causal.

The Wolfram regression checks:

1. the Bessel kernel solves the massive equation away from the cone;
2. the Fourier integrand has the correct equal-time derivative;
3. truncated symmetric \(k\)-integrals converge to (3.2) at selected timelike-separated points;
4. spacelike-separated samples converge to zero in the regulated/truncated test.

The numerical truncation is a regression check, not the proof; the analytic Fourier--Bessel identity and Green relation are the proof.

## 7. Zero Modes and Topology

Equation (5.1) concerns \(\ell\geq1\). The \(\ell=0\) electric sector has no normally hyperbolic local oscillator and therefore no kernel (2.4) in the radiative sum. Its fixed flux is a superselection/background parameter. The magnetic Chern class is discrete. If an extended electric frame is retained, its finite-dimensional canonical bracket is added separately and is not generated by \(E_{{\mathrm P},\lambda_\ell}\).

## 8. Status

**Proved:** characteristic inverse equals the Peierls bracket for compactly supported master smearings; mode sum equals the causal kernel; field-strength bracket is gauge independent and sectorwise equal to the Maxwell Peierls bracket.

**Checked analytically and numerically:** Bessel PDE, equal-time normalization, timelike Fourier--Bessel values, and spacelike causal vanishing.

**Not claimed:** a gauge-independent propagator for \(A_\mu\) without gauge fixing, a sum over bundle sectors, or a Peierls inverse for an independently added \(\ell\geq1\) corner frame.
