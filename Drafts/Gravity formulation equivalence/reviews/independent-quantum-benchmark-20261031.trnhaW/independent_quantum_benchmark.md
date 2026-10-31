# Independent finite AdS3 vacuum-orbit quantum benchmark

## Result and claim level

**The finite positive-energy oscillator benchmark is unambiguous once the orientation is fixed, but its vacuum energy is not fixed until an ordering/lift and a subtraction convention are specified. A rotational character alone does not establish the full quantum Virasoro central charge.**

For one chiral sector, let

$$
\kappa_n=\frac{C}{12}n(n^2-1),\qquad n\geq2.
$$

Writing $f=x+u$, $u=\sum_n u_n e^{inx}$, the positive-energy annihilation variable is

$$
\boxed{a_n=\sqrt{\kappa_n}\,u_{-n},\quad
\Omega_0=i\sum_{n\geq2}\delta a_n^\dagger\wedge\delta a_n,
\quad H_1^{(2)}=\sum_{n\geq2}n\,a_n^\dagger a_n.}
$$

It is **not** $\sqrt{\kappa_n}u_n$ with these Fourier and time-orientation conventions.

For the finite tangent model with $2\leq n\leq N$, two fully specified prescriptions give

$$
\begin{aligned}
Z_{N,\mathrm{normal}}(q)
 &=q^{-C/24}\prod_{n=2}^{N}(1-q^n)^{-1},\\
Z_{N,\mathrm{Weyl}}(q)
 &=q^{-C/24+\frac12\sum_{n=2}^{N}n}
   \prod_{n=2}^{N}(1-q^n)^{-1}.
\end{aligned}
$$

Frequency-heat minimal subtraction and spectral zeta assign

$$
\frac12\sum_{n=2}^{\infty}n\ \rightsquigarrow\ -\frac{13}{24}.
$$

Thus **Weyl/metaplectic quantization plus that specified finite convention** gives

$$
Z_{\mathrm{Weyl,heat\text{-}minimal}}(q)
 =q^{-(C+13)/24}\prod_{n=2}^{\infty}(1-q^n)^{-1}.
$$

Normal ordering instead gives $q^{-C/24}$ times the same convergent product. A sharp cutoff with only its polynomial divergences removed gives $q^{-(C+12)/24}$ times that product. These are different vacuum-energy prescriptions, not three derived values of a full Virasoro anomaly.

The general nonlinear Fourier-truncated orbit is **not** the quadratic oscillator model in its original Fourier coordinates. The report establishes the tangent benchmark exactly, and also an exact nonlinear single-harmonic restricted-surface example. It does **not** prove an exact full-orbit character, localization/one-loop exactness, or an extension of either prescription to a complete PSL-equivariant Virasoro representation.

## 1. Inputs, conventions, and independence

Only the supplied classical data and the local convention authority were used. No parent research report, candidate quantum result, or Cotler–Jensen result was read. The relevant authority is [formalism:54–83](</Users/koishi/Documents/Note/Articles/Quantization in AdS/perturbation/formalism.md#L54-L83>) for mode normalization and [formalism:132–145](</Users/koishi/Documents/Note/Articles/Quantization in AdS/perturbation/formalism.md#L132-L145>) for quantization.

The assumptions are:

- One chiral smooth degree-one orbit $\mathrm{PSL}(2,\mathbb R)\backslash\mathrm{Diff}^+(S^1)$, not a product of two chiral sectors.
- $x\sim x+2\pi$, $f(x+2\pi)=f(x)+2\pi$, $f'>0$, $C>0$ dimensionless, $\hbar=1$.
- All perturbations are real, smooth, and periodic. Integration by parts has no endpoint term.
- The supplied moment map and form are
  $$
  T_f=\frac C{24}(1-f'^2)-\frac C{12}\{f,x\},\qquad
  H_\epsilon=\frac1{2\pi}\int_0^{2\pi}\epsilon T_f\,dx,
  $$
  $$
  \Omega_f=-\frac C{48\pi}\int_0^{2\pi}
  \left[\frac{\delta f'\wedge\delta f''}{f'^2}
          -\delta f\wedge\delta f'\right]dx,
  \quad \iota_{X_H}\Omega=-\delta H,
  \quad X_\epsilon f=f'\epsilon.
  $$
- $H_{\rm cyl}=H_1-C/24$, with $H_1$ denoting the constant smearing $\epsilon=1$. The notation $J_m=H_{e^{imx}}$, used later, has $J_0=H_1$.
- Quantization uses $[A,B]=i\{A,B\}$. In particular $\{a^\dagger,a\}=i$, so $[a,a^\dagger]=1$.
- For traces set $s=\beta-i\vartheta$, $\beta>0$, and $q=e^{-s}$. Fractional powers mean $q^E=e^{-sE}$ on this chosen logarithmic cover. The basic thermal calculation takes $\vartheta=0$; continuation to $\Re s>0$ is analytic.

The $0,\pm1$ Fourier directions are projective gauge directions **at the vacuum**. They are removed from physical tangent coordinates before quantization. This does not set the full global symmetry operators $L_0,L_{\pm1}$ to zero on every excited state: global PSL transformations can act nontrivially away from the vacuum.

## 2. Quadratic energy and Hessian

Write $f=x+u$ and $\langle g\rangle=(2\pi)^{-1}\int_0^{2\pi}g\,dx$. The Schwarzian expands as

$$
\{f,x\}=u'''-u'u'''-\frac32u''^2+O(u^3).
$$

Consequently

$$
T_f=-\frac C{12}(u'+u''')
+\frac C{12}u'u'''+\frac C8u''^2-\frac C{24}u'^2+O(u^3).
$$

The linear average vanishes. Since $\langle u'u'''\rangle=-\langle u''^2\rangle$,

$$
\boxed{H_1^{(2)}=\frac C{24}\langle u''^2-u'^2\rangle.}
$$

The actual Hessian, not just the quadratic Taylor coefficient, is

$$
D^2H_1\big|_{x}(v,w)
 =\frac C{12}\langle v''w''-v'w'\rangle
 =\frac C{12}\langle v(\partial_x^4+\partial_x^2)w\rangle.
$$

The differential operator has eigenvalues $n^2(n^2-1)$. Its integer-mode kernel is exactly $n=0,\pm1$; it is strictly positive on the remaining modes. This proves local linear stability after the quotient, not a separate global energy theorem.

An exact useful identity is

$$
\left\langle\{f,x\}\right\rangle
=-\frac12\left\langle\left(\frac{f''}{f'}\right)^2\right\rangle,
$$

hence

$$
\boxed{H_1=\frac C{24}\left\langle
\frac{u''^2}{(1+u')^2}-u'^2\right\rangle.}
$$

In particular,

$$
H_1^{(3)}=-\frac C{12}\langle u'u''^2\rangle,
\qquad H_1^{(4)}=\frac C8\langle u'^2u''^2\rangle.
$$

For the explicit physical two-mode perturbation $u=A\sin2x+B\sin4x$,

$$
H_1=\frac C4 A^2+5CB^2-4CA^2B+O((A,B)^4).
$$

Thus simply retaining finitely many Fourier coefficients in the *full* classical formula does not remove interactions. This exact cubic check is an immediate counterexample to identifying that nonlinear truncation with free Fourier oscillators without a further change of variables or a localization argument.

## 3. Symplectic orientation and positive-energy polarization

At $f=x$, for tangent vectors $v,w$, integration by parts gives

$$
\Omega_0(v,w)=\frac C{12}\langle v(w'''+w')\rangle.
$$

For $n>0$,

$$
\Omega_0(e^{inx},e^{-inx})=i\kappa_n,
\qquad \kappa_n=\frac C{12}n(n^2-1).
$$

With $u_{-n}=\overline{u_n}$, the physical form and quadratic energy are therefore

$$
\Omega_0=i\sum_{n\geq2}\kappa_n\,\delta u_n\wedge\delta u_{-n},
\qquad H_1^{(2)}=\sum_{n\geq2}n\kappa_n u_nu_{-n}.
$$

The vacuum is fixed by rotations only after quotienting: $X_1f=f'=1+u'$, and the constant target shift is projective gauge. The induced linear flow is

$$
\dot u=u',\qquad \dot u_{-n}=-in u_{-n}.
$$

Hence

$$
a_n=\sqrt{\kappa_n}u_{-n},\quad a_n^\dagger=\sqrt{\kappa_n}u_n,
\qquad \dot a_n=-in a_n.
$$

The positive-frequency modes can be written

$$
\Phi_n(t,x)=\frac{e^{-in(x+t)}}{\sqrt{\kappa_n}},
\qquad i\Omega_0(\Phi_n,\Phi_m^*)=\delta_{nm}.
$$

This precisely matches the CPS authority. Choosing $u_n$ as the annihilator while keeping the same time direction would instead give the opposite symplectic sign; forcing a positive canonical commutator would then conflict with either the supplied flow or positive energy.

For real Fourier coordinates

$$
u=\sum_{n=2}^{N}(A_n\cos nx+B_n\sin nx),
\quad u_n=(A_n-iB_n)/2,
$$

set

$$
Q_n=\sqrt{\kappa_n/2}\,A_n,\quad
P_n=\sqrt{\kappa_n/2}\,B_n,\quad
a_n=(Q_n+iP_n)/\sqrt2.
$$

Then

$$
\boxed{\Omega_0=\sum_{n=2}^{N}dP_n\wedge dQ_n,
\qquad H_1^{(2)}=\sum_{n=2}^{N}\frac n2(Q_n^2+P_n^2).}
$$

The convention $\iota_X\Omega=-dH$ gives $\dot Q_n=nP_n$, $\dot P_n=-nQ_n$, and $\{Q_n,P_m\}=\delta_{nm}$. The symplectic orientation is $(P_2,Q_2,P_3,Q_3,\ldots)$. Writing a positive measure in the opposite coordinate order means its absolute density, not a change of $\Omega$.

## 4. Finite measure and two complete quantization prescriptions

There are $d=N-1$ physical oscillators and $2d$ real dimensions. The positive Liouville density is

$$
\boxed{d\mu_N=\prod_{n=2}^{N}\frac{dQ_n\,dP_n}{2\pi}
=\prod_{n=2}^{N}\frac{d^2a_n}{\pi}
=\prod_{n=2}^{N}\frac{\kappa_n}{4\pi}\,dA_n\,dB_n.}
$$

Equivalently it is the oriented $\Omega_0^d/[d!(2\pi)^d]$. All factors of $C$ disappear after canonical normalization. No integration over projective zero modes is included. This is the reduced *quadratic* measure; a nonlinear Fourier slice generally has a field-dependent symplectic density and, if implemented through redundant variables, a nontrivial gauge-fixing prescription.

The classical Gaussian integral is only

$$
\int d\mu_N\,e^{-\beta H_1^{(2)}}=\prod_{n=2}^{N}(\beta n)^{-1}.
$$

It is not the quantum trace. The latter requires a quantization/symbol prescription.

### 4.1 Normal/Bargmann lift without half forms

Use the Bargmann Hilbert space of entire functions of $z_n=a_n^\dagger$, with

$$
\langle F,G\rangle=\int\prod_n\frac{d^2z_n}{\pi}
 e^{-\sum_n|z_n|^2}\overline{F(z)}G(z),
\quad \widehat a_n=\partial_{z_n},\quad
\widehat a_n^\dagger=z_n.
$$

The monomials $\prod_n z_n^{k_n}/\sqrt{k_n!}$ are orthonormal. Specify the rotation lift by

$$
\widehat H_{1,A}=\sum_n n z_n\partial_{z_n},
\qquad \widehat H_{{\rm cyl},A}=-C/24+\widehat H_{1,A}.
$$

There is no half-form factor and no added constant. The constant function has $H_1=0$. Consequently

$$
Z_{N,A}(q)=q^{-C/24}\prod_{n=2}^{N}\sum_{k_n=0}^{\infty}q^{nk_n}
=q^{-C/24}\prod_{n=2}^{N}(1-q^n)^{-1}.
$$

This defines a finite rotation-equivariant quantization. It does not, by itself, define the nonlinear Diff action or its anomaly.

### 4.2 Weyl quantization / standard metaplectic lift

On $L^2(\mathbb R^d,dQ)$, set $\widehat P_n=-i\partial_{Q_n}$ and Weyl-quantize the real quadratic Hamiltonian:

$$
\widehat H_{1,B}=\sum_n\frac n2(\widehat Q_n^2+\widehat P_n^2)
=\sum_n n(\widehat N_n+1/2).
$$

The equivalent Bargmann half-form prescription tensors sections with
$(dz_2\wedge\cdots\wedge dz_N)^{1/2}$ and uses the standard metaplectic rotation lift. Inverse rotation pullback multiplies that half form by
$\exp[-it\sum_n n/2]$. Its generator is therefore

$$
\sum_n n(z_n\partial_{z_n}+1/2).
$$

No extra constant is added in this second prescription. Thus

$$
Z_{N,B}(q)=q^{-C/24+E_N}\prod_{n=2}^{N}(1-q^n)^{-1},
\qquad E_N=\frac12\sum_{n=2}^{N}n=\frac{N^2+N-2}{4}.
$$

For real $\beta>0$, equivalently,

$$
Z_{N,B}(\beta)=e^{\beta C/24}\prod_{n=2}^{N}\frac1{2\sinh(\beta n/2)}.
$$

Both prescriptions use positive-energy polarization and the same canonical commutators. They differ by the identity operator $E_N\mathbf1$, so their gaps and Heisenberg equations agree but their fixed-reference traces do not. At fixed $N$, both have the high-temperature limit $e^{-\beta C/24}Z_N\sim\prod_{n=2}^{N}(\beta n)^{-1}$, agreeing with the Liouville Gaussian. At low temperature the distinct lowest energies give exactly the two leading powers displayed above. This fixed-$N$ high-temperature limit is not an exchange of the $N\to\infty$ and $\beta\to0$ limits.

There is also a genuine global-lift issue already at finite $N$:

$$
e^{-2\pi i\widehat H_{1,B}}=(-1)^{\sum_{n=2}^{N}n}\mathbf1,
\qquad e^{-2\pi i\widehat H_{1,A}}=\mathbf1.
$$

For example $N=3$ gives a minus sign in the metaplectic lift. The former is naturally a double-cover/projective lift unless compensated. An honest rotation/PSL lift is extra structure, not guaranteed by writing a local half form.

## 5. Actual time slicing and determinant comparison

For one mode, normalized coherent states satisfy

$$
\int\frac{d^2\alpha}{\pi}|\alpha\rangle\langle\alpha|=1,
$$

$$
\langle\alpha'|e^{-\delta n\widehat N}|\alpha\rangle
=\exp\left[-\frac{|\alpha'|^2+|\alpha|^2}{2}
+r\bar\alpha'\alpha\right],\qquad r=e^{-\delta n}.
$$

Insert this identity $M$ times with $\delta=\beta/M$, $\alpha_M=\alpha_0$. The trace is the finite-dimensional Gaussian

$$
Z_{n,A}=\int\prod_{j=0}^{M-1}\frac{d^2\alpha_j}{\pi}
\exp\left[-\sum_j|\alpha_j|^2
+r\sum_j\bar\alpha_{j+1}\alpha_j\right]
=\frac1{\det(1-rS_M)}.
$$

Here $S_M$ is the cyclic shift. Its eigenvalues are the $M$-th roots of unity, so

$$
\det(1-rS_M)=1-r^M=1-e^{-\beta n}.
$$

The Hermitian part is positive for $0<r<1$, making the complex Gaussian convergent. The formula is **exact at every $M$**, not just in a formal continuum limit. For prescription B every short-time kernel has the additional factor $e^{-\delta n/2}$; multiplying gives

$$
Z_{n,B}=\frac{e^{-\beta n/2}}{1-e^{-\beta n}}
=\frac1{2\sinh(\beta n/2)}.
$$

The complete finite trace follows by multiplying over $n$ and restoring the cylinder factor. The exact determinant was CAS-checked for $M=1,\ldots,8$, and the $M=2$ four-real-dimensional Gaussian was also evaluated via its two independent complex eigenmodes.

The same distinction appears in the periodic first-order operator $D_n=\partial_\tau+n$, $\tau\sim\tau+\beta$. Symmetric pairing of its frequencies gives

$$
\partial_n\log\det_{\rm sym}D_n
=\sum_{k\in\mathbb Z}^{\rm sym}\frac1{n+2\pi i k/\beta}
=\frac\beta2\coth(\beta n/2).
$$

Fixing the $n$-independent normalization by the finite oscillator trace,

$$
\det_{\rm sym}D_n=2\sinh(\beta n/2),\qquad
\det_{\rm normal}D_n=1-e^{-\beta n}
=e^{-\beta n/2}\det_{\rm sym}D_n.
$$

Thus an unspecified continuum expression $\det(\partial_\tau+n)^{-1}$ does not specify the zero-point energy. The time slicing/spectral asymmetry or equivalent local counterterm must be stated. A midpoint real phase-space prescription for $\frac n2(Q^2+P^2)$, with Euclidean exponent $\int(iP\dot Q-H)d\tau$, is the Weyl prescription and produces the symmetric result.

## 6. Exact nonlinear single-harmonic example

There is a useful stronger finite result that does not assume the whole orbit is free. Restrict the supplied classical form and energy to

$$
f(x)=x+r\cos(nx-\phi),\qquad n\geq2,\quad 0\leq r<1/n.
$$

This is a two-dimensional rotation-invariant representative surface; $f'>0$ is precisely the open disk condition. It also injects into the quotient: a PSL map relating two such representatives must commute with their common order-$n$ rigid rotation, hence must itself be a rigid rotation; the zero-mean condition on $u$ removes that remaining freedom. (The centralizer statement follows because a nontrivial elliptic PSL element has a unique fixed point in the hyperbolic disk.) Define $s=nr$. An exact integral is

$$
\left\langle\frac{s^2\cos^2y}{(1-s\sin y)^2}\right\rangle
=\frac1{\sqrt{1-s^2}}-1.
$$

For verification, use $z=e^{iy}$, $s=2t/(1+t^2)$, $0<t<1$. The contour integrand is
$- (z^2+1)^2/[z(z-it)^2(z-i/t)^2]$. The residues inside the unit circle are $-1$ at zero and $(1+t^2)/(1-t^2)$ at $it$. This was evaluated exactly in the kernel.

The restricted Hamiltonian is

$$
H_n(r)=\frac C{24}\left[n^2\left(\frac1{\sqrt{1-n^2r^2}}-1\right)
-\frac{n^2r^2}{2}\right].
$$

It obeys

$$
H_n'(r)=\frac{Cn^2r}{24}
\left[\frac{n^2}{(1-n^2r^2)^{3/2}}-1\right]>0
\quad (0<r<1/n).
$$

Rotation acts as $X=-n\partial_\phi$. The supplied moment-map identity then fixes the pullback form:

$$
\Omega_n=-\frac1n dH_n\wedge d\phi.
$$

With

$$
I=H_n/n,\qquad a=\sqrt I\,e^{i\phi},
$$

one has

$$
\Omega_n=-dI\wedge d\phi=i\,d\bar a\wedge da,
\qquad H_n=n|a|^2.
$$

The map is smooth at the origin, $I=\kappa_n r^2/4+O(r^4)$, and maps the entire open disk to the plane since $H_n\to+\infty$ as $r\to1/n$. Thus choosing the pulled-back oscillator polarization and ordering gives an **exact** oscillator quantization of this restricted nonlinear surface. Its positive measure is $dI\,d\phi/(2\pi)$.

This is not a proof that the original infinite-dimensional orbit polarization, a multi-mode nonlinear cutoff, or the full Virasoro action has that quantization. Even in finite dimensions, a local rotation-equivariant Darboux normal form near the fixed point does not prove a global Hilbert-space identification. The single-mode example works globally because the radial monotonicity and range have actually been proved.

## 7. Infinite limit: three logically different ingredients

Write

$$
Z_{\rm ren}(q)=q^{-C/24+\gamma}\,P(q),\qquad
P(q)=\prod_{n=2}^{\infty}(1-q^n)^{-1}.
$$

Here $\gamma$ is the renormalized oscillator vacuum energy. Its determination requires separating:

1. the divergent subtraction;
2. the remaining finite identity counterterm/vacuum-energy convention;
3. the convergent descendant product, which needs no such subtraction for $|q|<1$.

### 7.1 Descendant product

For $|q|=\rho<1$,

$$
\sum_{n>N}\left|\log(1-q^n)\right|
\leq\frac{\rho^{N+1}}{(1-\rho)(1-\rho^{N+1})}.
$$

This proves absolute convergence and local uniform convergence inside the unit disk. In particular,

$$
P(q)=1+q^2+q^3+2q^4+2q^5+4q^6+4q^7+7q^8+\cdots.
$$

At $\beta=0.7$, the actual log-product tail from $n=21$ through $200$ is approximately $8.2024820\times10^{-7}$; the proven bound for the entire tail after $20$ is $8.2024843\times10^{-7}$. These numerical checks supplement, not replace, the bound.

### 7.2 Frequency heat cutoff

Specify the regulator on the zero-point sum by

$$
E(\varepsilon)=\frac12\sum_{n=2}^{\infty}ne^{-\varepsilon n}
=\frac12\left[\frac{e^{-\varepsilon}}{(1-e^{-\varepsilon})^2}
-e^{-\varepsilon}\right].
$$

Its exact expansion is

$$
E(\varepsilon)=\frac1{2\varepsilon^2}-\frac{13}{24}
+\frac\varepsilon2-\frac{119\varepsilon^2}{480}
+\frac{\varepsilon^3}{12}+O(\varepsilon^4).
$$

Subtracting **only** $1/(2\varepsilon^2)$ gives $\gamma=-13/24$. Adding an allowed finite Hamiltonian counterterm $\delta_{\rm fin}\mathbf1$ gives

$$
\gamma=-13/24+\delta_{\rm fin}.
$$

Normal-ordering vacuum energy corresponds to $\delta_{\rm fin}=13/24$ relative to this convention.

A heat regulator of the squared frequency instead gives

$$
\frac12\sum_{n=2}^{\infty}ne^{-\varepsilon n^2}
\sim\frac1{4\varepsilon}-\frac{13}{24}+\frac{119}{240}\varepsilon+\cdots.
$$

The leading divergence differs but the finite constant agrees. Its stated expansion follows from the Mellin poles of $\Gamma(s)[\zeta(2s-1)-1]/2$. More generally, for a sufficiently smooth rapidly decaying scaling cutoff $R(\varepsilon n)$ with $R(0)=1$, Euler–Maclaurin gives the same finite constant before adding finite counterterms. This is useful regulator agreement, not proof of full Diff covariance.

### 7.3 Spectral zeta

For the physical positive frequencies,

$$
\zeta_{\rm phys}(z)=\sum_{n=2}^{\infty}n^{-z}=\zeta(z)-1.
$$

Analytic continuation assigns

$$
\gamma_\zeta=\frac12\zeta_{\rm phys}(-1)
=\frac12\left(-\frac1{12}-1\right)=-\frac{13}{24}.
$$

The $-1$ removes precisely the $n=1$ frequency. Spectral zeta encodes a subtraction prescription; it does not prohibit a subsequent finite identity counterterm or establish the symmetry of the regulator under all Virasoro transformations.

### 7.4 Sharp cutoff

The honest finite-mode Hilbert-space trace has

$$
E_N=\frac{N^2}{4}+\frac N4-\frac12.
$$

The bare Weyl trace tends to zero for real $\beta>0$, because $E_N\to+\infty$; the descendant product does not cause that divergence. The finite answers depend on what is removed:

| Prescription | Subtracted from the oscillator vacuum energy | Remaining $\gamma$ |
|---|---|---:|
| Normal ordering at finite $N$ | $E_N$ | $0$ |
| Sharp cutoff, divergent polynomial only | $N^2/4+N/4$ | $-1/2$ |
| Sharp cutoff matched to heat/zeta | $N^2/4+N/4+1/24$ | $-13/24$ |
| Frequency heat, divergent term only | $1/(2\varepsilon^2)$ | $-13/24$ |
| Spectral zeta | analytic-continuation convention | $-13/24$ |

The finite $1/24$ needed to match the sharp cutoff is not a divergent subtraction. It must not be hidden under the phrase “remove the divergence.”

A smoothly weighted log determinant, for example one weighting each mode's logarithm by $e^{-\varepsilon n}$, is a regulator, not in general the trace of a Hilbert space with fractional mode multiplicities. The finite sharp-cutoff traces above are honest traces; the other schemes define their renormalized infinite interpretation. All of the regulators used here privilege rotations. None has been proved Virasoro invariant.

## 8. What a rotational character can and cannot determine

The trace determines the energy multiplicities and, once the additive Hamiltonian convention is fixed, the lowest energy. It does not determine commutators of nonzero Fourier charges, their matrix elements, or an anomaly cocycle.

For standard plane Virasoro generators,

$$
[L_m,L_n]=(m-n)L_{m+n}
+\frac c{12}m(m^2-1)\delta_{m+n,0},
\quad L_n^\dagger=L_{-n}.
$$

The plane-to-cylinder convention change is explicitly

$$
\mathcal L_m=L_m-\frac c{24}\delta_{m,0},\qquad
[\mathcal L_m,\mathcal L_n]=(m-n)\mathcal L_{m+n}
+\frac c{12}m^3\delta_{m+n,0}.
$$

Identifying the quantized physical energy with $\mathcal L_0$ is additional quantum information; the supplied classical subtraction contains $C$, not an already determined $c$.

If one has **independently proved** all of the following:

- these operators act on the quantized Hilbert space with a well-defined common domain and the stated algebra;
- the vacuum is PSL invariant, $L_{0,\pm1}|0\rangle=0$, and is the lowest-energy state;
- the physical cylinder generator is precisely $L_0-c/24$, with no remaining finite identity shift;
- the oscillator state count agrees with the appropriate vacuum module, including any null-state quotient;

then comparing the lowest cylinder energy gives

$$
-C/24+\gamma=-c/24,
\qquad \boxed{c=C-24\gamma.}
$$

Under those additional hypotheses, the heat-minimal Weyl answer would imply $c=C+13$, while the normal answer would imply $c=C$. The benchmark itself does not prove that either complete set of hypotheses holds. Without the vacuum condition, the cylinder leading exponent determines only $h-c/24$, or $c-24h$; without the fixed cylinder identification, an arbitrary finite energy shift remains.

One can already see what data are missing. With $J_m=H_{e^{imx}}$, the leading classical charges are

$$
J_n^{(1)}=-i\sqrt{\kappa_n}\,a_n,
\qquad J_{-n}^{(1)}=i\sqrt{\kappa_n}\,a_n^\dagger.
$$

Their quantized commutator supplies the leading number
$\kappa_n=Cn(n^2-1)/12$. But the full $2nL_0$ term and possible order-one changes of the central coefficient require nonlinear terms in the charges and a consistent regulator. At fixed oscillator occupation, the usual large-$C$ scaling is $u\sim C^{-1/2}$; this explains why a leading classical central term does not settle an order-one quantum correction.

In a genuine vacuum representation, independent diagnostics include

$$
\|L_{-2}|0\rangle\|^2=c/2,\qquad
\|L_{-3}|0\rangle\|^2=2c.
$$

They are matrix-element tests, not state-counting tests.

## 9. Full symmetry, PSL equivariance, and half forms: missing proofs

The following work would be needed to turn the benchmark into a full quantum statement:

1. **Global quantization data.** Specify a prequantum line bundle/connection compatible with the supplied $\Omega$, its centrally extended Diff action, its stabilizer lift, and any flat/lift ambiguity. An additive constant is invisible to $\iota_X\Omega=-dH$, so the local moment-map relation alone cannot fix it.
2. **Polarization and Hilbert space.** Construct the positive-energy polarization globally on the quotient, its inner product, domains, and the complete symmetry action. The removal of three tangent coordinates is not a construction of the three global PSL generators.
3. **Half-form structure.** If invoked, construct the appropriate square root of the canonical/determinant line and its regularized equivariant action. The restriction of an infinite-dimensional determinant character to rotations is not the full Diff cocycle. Prove that its regularization and the prequantum lift combine consistently on PSL, including global rotation phases.
4. **Full operator algebra.** Construct all renormalized $L_m$, check their commutators and Jacobi identities on a common invariant domain, and verify the vacuum/adjoint conditions. In particular check $m=\pm1$ covariance as well as $[L_2,L_{-2}]$. The cubic central coefficient must be measured in this algebra; shifts of $L_0$ can alter the linear cocycle convention but not arbitrarily change that cubic coefficient.
5. **Exact character versus a local contribution.** To claim that the tangent result is the exact orbit character, prove a global index/localization or an explicit Hilbert-space construction, including convergence, noncompact-boundary contributions, gauge fixing, and possible null states. A local fixed-point determinant or a local Darboux theorem is insufficient.
6. **Equivalence of formulations.** Match the prequantum and half-form data, polarization, observables, quantum measure, counterterms, and regulator-removal procedure. Equality of the classical reduced symplectic form supplies none of these quantum identifications automatically.

A sharp finite-mode truncation cannot itself preserve the full Virasoro symmetry. In fact even the projected Witt bracket fails Jacobi. Keep modes $|m|\leq N$ and discard outputs outside that range. For $N\geq2$,

$$
[L_N,[L_1,L_{-1}]]+[L_1,[L_{-1},L_N]]
+[L_{-1},[L_N,L_1]]
=(N-1)(N+2)L_N\neq0.
$$

The missing intermediate $L_{N+1}$ term is exactly what cancels this in the full algebra. This failure persists even after one includes the projective generators in the cutoff. The finite physical oscillator cutoff is therefore a rotation benchmark, not a finite Virasoro representation or a regulator whose full symmetry can be presumed.

## 10. Explicit counterexamples to automatic quantum equivalence

### 10.1 Same classical symplectic system, distinct fixed-reference traces

Prescriptions A and B have identical classical $(\Omega_0,H_1^{(2)})$, commutators, and energy gaps, but

$$
Z_{N,B}/Z_{N,A}=q^{E_N}.
$$

They cannot be related by a unitary intertwiner preserving the fixed Hamiltonian, since their lowest energies differ. They become equivalent as gap/dynamics descriptions only if an additive energy redefinition is explicitly allowed. In gravity that redefinition must be matched to the boundary energy convention rather than silently discarded.

### 10.2 Same rotational grading, different Virasoro anomaly

The universal vacuum modules obtained by imposing $L_n|0\rangle=0$ for $n\geq-1$ have PBW descendants generated by $L_{-n}$, $n\geq2$. Their graded character is $P(q)$ independently of the central scalar $c$. For generic unitary $c>1$, no additional vacuum null-state quotient changes this character.

Nevertheless their norms and algebras differ. At level four, in the basis $L_{-4}|0\rangle,L_{-2}^2|0\rangle$,

$$
G_4=\begin{pmatrix}5c&3c\\3c&c(c+8)/2\end{pmatrix},
\qquad \det G_4=\frac{c^2(5c+22)}2.
$$

For example $c=2$ gives $G_4=\left(\begin{smallmatrix}10&6\\6&10\end{smallmatrix}\right)$, whereas $c=25$ gives $\left(\begin{smallmatrix}125&75\\75&825/2\end{smallmatrix}\right)$. Their normalized rotational grading is identical but their Virasoro matrix elements are not. With an adjustable cylinder identity shift, their cylinder traces can also be made identical. If instead one independently imposes $H_{\rm cyl}=L_0-c/24$ and a PSL vacuum, their leading cylinder powers distinguish $c$—precisely because of that extra information.

These are counterexamples to determination by rotational grading, not proofs that every $c$ quantizes the supplied orbit with the same global prequantum data.

### 10.3 Nonlinear classical observables do not admit automatic ordering equivalence

There is an elementary finite-dimensional obstruction already on one canonical plane. For Weyl quantization and $[Q,P]=i$,

$$
\frac{[\widehat{q^3},\widehat{p^3}]}{i}
=9\,\widehat{q^2p^2}_{W}-\frac32\mathbf1,
$$

$$
\frac{[\widehat{q^2p}_{W},\widehat{qp^2}_{W}]}{i}
=3\,\widehat{q^2p^2}_{W}+\frac12\mathbf1.
$$

But the classical brackets are respectively $9q^2p^2$ and $3q^2p^2$. Dividing the quantum identities by nine and three gives conflicting exact Dirac-rule assignments for the same classical observable, differing by $\mathbf1/3$. Both identities were checked as differential operators acting on an arbitrary test function, not just on a few numerical states. Restoring $\hbar$, the discrepancy is of order $\hbar^2$.

This is an obstruction to a universal claim that classical canonical equivalence fixes all operator orderings. It is not, on its own, an inequivalence theorem for two specifically constructed AdS3 quantizations.

### 10.4 Finite-cutoff symmetry and lift failures

The projected-Witt Jacobi failure and the finite metaplectic $2\pi$-rotation sign are further direct counterexamples to the inference that removing projective modes and adding a half form automatically produces a PSL-equivariant quantum orbit. The missing structure must actually be constructed.

## 11. Verification, evidence, and precise limitations

**Verified analytically:** the Hessian, its kernel and positivity, Fourier symplectic orientation, oscillator frequencies, reduced Liouville measure, two specified finite quantizations, exact coherent-state time slicing, determinant-normalization distinction, convergence of the descendant product, heat/zeta/sharp-cutoff comparison, an exact nonlinear single-harmonic Darboux model, and explicit algebra/ordering counterexamples.

**Actual CAS evidence:** two self-contained Wolfram 14.3 batches. All **27 expected checks** are exactly `True`, and both accepted outputs have `Messages -> {}`. The oscillator trace was also compared with explicitly summed occupations $0\leq k_n\leq25$ for $n=2,3,4,5$, $\beta=1.3$, at 80-digit precision; relative error was $4.38220836\times10^{-30}$, consistent with the omitted positive tail. The complete outputs, including expressions and precision, are saved rather than only pass/fail summaries.

In the first batch, the kernel-local symbol `c` (printed with a `Module` suffix) denotes the classical $C$. In the second batch, `C` denotes that classical coefficient and `c` denotes the independent Virasoro central scalar. Kernel-local suffixes are preserved in the complete outputs rather than rewritten after computation.

| Evidence | Content |
|---|---|
| [benchmark_checks.wl](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-quantum-benchmark-20261031.trnhaW/benchmark_checks.wl>) | Self-contained accepted 21-check source; Fourier/Hessian, Darboux, contour integral, time-slice Gaussian, regulator constants, trace, Groenewold checks. |
| [benchmark_verified_results.txt](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-quantum-benchmark-20261031.trnhaW/benchmark_verified_results.txt>) | Complete human-readable accepted output, not truncated. |
| [benchmark_verified_results.wxf](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-quantum-benchmark-20261031.trnhaW/benchmark_verified_results.wxf>) | Exact structured accepted output, retaining numeric precision and expressions. |
| [symmetry_and_cutoff_checks.wl](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-quantum-benchmark-20261031.trnhaW/symmetry_and_cutoff_checks.wl>) | Self-contained accepted six-check source; nonlinear cubic term, projected Jacobi failure, vacuum Gram matrix, descendant-tail comparison. |
| [symmetry_and_cutoff_results.txt](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-quantum-benchmark-20261031.trnhaW/symmetry_and_cutoff_results.txt>) | Complete human-readable symmetry/cutoff output. |
| [symmetry_and_cutoff_results.wxf](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-quantum-benchmark-20261031.trnhaW/symmetry_and_cutoff_results.wxf>) | Exact structured symmetry/cutoff output. |
| [kernel_attempt_log.txt](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-quantum-benchmark-20261031.trnhaW/kernel_attempt_log.txt>) | Honest record of an initial timeout and an incomplete diagnostic attempt, both rejected, with preserved source/output paths and the corrections. |

The rejected second attempt had an apparent `AllChecksPassed -> True` but only four recorded checks and messages; it was not accepted. The final source requires the expected check count as well as true values and an empty message list. The initial timeout was addressed by exact Laurent-coefficient integration and a rational contour-residue computation, not by dropping the difficult check.

**Not verified or claimed:** exact quantization of the full multi-mode nonlinear orbit; an invariant infinite-dimensional functional measure; one-loop exactness; a globally defined PSL-equivariant half-form/determinant line; a complete quantum Virasoro algebra or its central charge; or a unitary equivalence to any other gravitational formulation. No fresh subagent reviewer could be spawned at the current delegation-depth limit; this report is itself an independent analysis for the parent, not a claim of a second independent review. No unrelated classical suite was rerun and no pre-existing research note was modified.

The next decisive calculation is not another rotational determinant: it is a symmetry-sensitive construction/check of the renormalized nonzero-mode generators and their stabilizer lift, or a theorem supplying that structure together with the exact cylinder identification.
