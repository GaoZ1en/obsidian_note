# Independent second-order cubic renormalization on fixed global AdS3

## Result

For the action and free-vacuum normal ordering specified below, the order-\(\lambda_3^2\) one-body selfenergy is **ultraviolet finite**. Without a finite mass counterterm its mass and vacuum-subtracted gap shifts are

\[
\boxed{\delta m^2_{\rm loop}=-\frac{\lambda_3^2}{16\pi(\Delta-1)}
 [\psi(3\Delta/2-1)-\psi(\Delta/2)]},
\qquad
\boxed{\delta\Delta_{\rm loop}=-\frac{\lambda_3^2}{32\pi(\Delta-1)^2}
 [\psi(3\Delta/2-1)-\psi(\Delta/2)]}.
\]

Here \(\psi\) is the digamma function. Both shifts are strictly negative for \(\Delta>1\). At \(\Delta=2\),
\[
\delta m^2_{\rm loop}=-\frac{\lambda_3^2}{16\pi},\qquad
\delta\Delta_{\rm loop}=-\frac{\lambda_3^2}{32\pi}.
\]

There is one logarithmically UV-divergent connected vacuum graph despite normal ordering. Its divergent vacuum-action density is
\[
\rho_{\rm vac}^{(2)}(\epsilon)
=-\frac{\lambda_3^2}{192\pi^2}\log(1/\epsilon)+O(1).
\]
A local identity/vacuum-density counterterm, or explicit normalized vacuum-bubble subtraction, removes it. No additional UV-divergent mass, kinetic, linear, cubic, or quartic counterterm is required at this order. A **finite** mass counterterm fixes the physical gap and simultaneously fixes every descendant in the dressed one-particle module. It does not remove the finite residue or multiparticle dressing of the interpolating field.

The apparent special-integer global-energy resonances are decoupled zero matrix elements, not poles of this selfenergy. A sharp internal global-energy cutoff breaks descendant equality at finite cutoff; this is a regulator artifact, demonstrated explicitly below.

## 1. Conventions and source normalization

Set the AdS radius to one, with signature \((-++)\):
\[
ds^2=-(1+r^2)dt^2+\frac{dr^2}{1+r^2}+r^2d\theta^2,
\quad\theta\sim\theta+2\pi,\quad m^2=\Delta(\Delta-2),\quad\Delta>1.
\]
\[
S_0=-\frac12\int\sqrt{-g}\,[(\nabla\phi)^2+m^2\phi^2],\qquad
S_{\rm int}=-\frac{\lambda_3}{3!}\int\sqrt{-g}\,:\phi^3:.
\]
Use the standard fast reflecting branch and normal order with respect to the free global vacuum. The Hamiltonian vertex is \(V=+\lambda_3\int r\,dr\,d\theta\,:\phi^3:/6\). Modes have unit KG norm, \([a_I,a_J^\dagger]=\delta_{IJ}\), and
\[
\omega_{pq}=\Delta+p+q,\qquad
u_{00}=e^{-i\Delta t}(1+r^2)^{-\Delta/2}/\sqrt{2\pi}.
\]
The CPS conventions were read in [formalism.md](</Users/koishi/Documents/Note/Articles/Quantization in AdS/perturbation/formalism.md#L54-L159>). Its OFPT, vacuum-subtracted gap, and UV-versus-resonance distinctions are at [formalism.md:255–274](</Users/koishi/Documents/Note/Articles/Quantization in AdS/perturbation/formalism.md#L255-L274>). The normalization in the existing round-one [minimal-sector derivation:35–164](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/independent/minimal-sector/README.md#L35-L164>) was read and confirmed before using its kernel expansion. No parent round-two candidate was read.

The action-normalized Euclidean Green kernel on \(H^3\), at geodesic distance \(s>0\), is
\[
G_\delta(s)=\frac{e^{-(\delta-1)s}}{4\pi\sinh s}
 =\frac{1}{2\pi}\frac{w^\delta}{1-w^2},\qquad w=e^{-s}.
\]
It obeys \((-\nabla_E^2+\delta(\delta-2))G_\delta=\delta_g\), has the local singularity \(1/(4\pi s)\), and at the center has large-time coefficient \(e^{-\delta\tau}/(2\pi)\), agreeing with the normalized ground mode. Its positive-energy continuation is the Lorentzian \(W_\delta\) in the specified vacuum. Thus, directly by a geometric series,
\[
G_\Delta^2=\frac1{2\pi}\sum_{a=0}^\infty G_{2\Delta+2a},\qquad
G_\Delta^3=\frac1{4\pi^2}\sum_{a=0}^\infty(a+1)G_{3\Delta+2a}.
\]
These identities first hold at separated Euclidean points. The square is locally integrable and needs no extension ambiguity; the cube requires the vacuum extension described below.

## 2. Invariant selfenergy, its sign, and the mass pole

The one-loop background-field term is
\[
\tfrac12\operatorname{Tr}\log(K+\lambda_3\varphi)
=\text{constant}+\text{removed tadpole}
-\frac{\lambda_3^2}{4}\int\sqrt{g_x}\sqrt{g_y}\,
\varphi(x)G_\Delta(x,y)^2\varphi(y)+\cdots,
\quad K=-\nabla_E^2+m^2.
\]
Consequently the inverse two-point kernel is
\[
\Gamma^{(2)}=K-\frac{\lambda_3^2}{2}G_\Delta^2
=K-\frac{\lambda_3^2}{4\pi}\sum_{a\geq0}G_{\delta_a},
\qquad \delta_a=2\Delta+2a.
\]
Write \(M_a^2=\delta_a(\delta_a-2)\), and let \(z\) be the Lorentzian scalar-Casimir eigenvalue \(\Box\varphi=z\varphi\). Analytic continuation gives
\[
\Gamma^{(2)}(z)=m^2-z-\frac{\lambda_3^2}{4\pi}
 \sum_{a\geq0}\frac1{M_a^2-z}.
\]
The pole continuously connected to the elementary scalar therefore shifts by
\[
\delta m^2_{\rm loop}=-\frac{\lambda_3^2}{4\pi}\sum_{a\geq0}\frac1{D_a},
\qquad
D_a=M_a^2-m^2=(2a+\Delta)(2a+3\Delta-2)>0.
\]
The sum decays as \(a^{-2}\); it is not a divergent mass renormalization. Partial fractions yield
\[
\sum_{a\geq0}\frac1{D_a}
=\frac{\psi(3\Delta/2-1)-\psi(\Delta/2)}{4(\Delta-1)}.
\]
Since \(d m^2/d\Delta=2(\Delta-1)\), this proves the boxed results.

There is no resonance singularity anywhere in the specified open domain \(\Delta>1\). The off-shell selfenergy has poles at the two-particle scalar masses \(z=M_a^2\), but none equals \(m^2\). Global-energy coincidences among descendants do not equate these Casimirs. At the BF endpoint,
\[
\lim_{\Delta\downarrow1}\delta m^2_{\rm loop}=-\lambda_3^2\pi/32,
\qquad \delta\Delta_{\rm loop}\sim-\lambda_3^2\pi/[64(\Delta-1)].
\]
The second divergence is the failure of linearizing the mass-dimension relation at its double root, not a UV or intermediate-state resonance. Without a compensating finite mass counterterm one needs \(|\delta m^2|\ll(\Delta-1)^2\) to remain perturbatively away from the BF bound. At large \(\Delta\),
\[
\delta m^2_{\rm loop}\sim-\lambda_3^2\log3/(16\pi\Delta),
\]
matching the three-dimensional flat-space on-shell bubble in the large-radius/heavy-mass limit.

## 3. Independent OFPT normalization and descendant checks

After subtracting the vacuum energy with a compatible regulator, the connected one-body correction is
\[
\delta\omega_i=\frac{\lambda_3^2}{2}\sum_{j,k}
 \left|\int r\,dr\,d\theta\,u_i u_j^*u_k^*\right|^2
 \left[\frac1{\omega_i-\omega_j-\omega_k}
       -\frac1{\omega_i+\omega_j+\omega_k}\right].
\]
The sum is over ordered pairs. For the second term the pair spin is reversed relative to the first; reflection symmetry makes the squared spectral weights equal. The first denominator comes from \(1\to2\). The second is the **connected stimulated part of \(1\to4\)** that remains after subtracting the vacuum bubble. Keeping only \(1\to2\) is incorrect.

An independent single-oscillator check fixes this factor and sign. For
\(V=g:(a+a^\dagger)^3:/6\), direct normalized Fock matrix elements give
\[
\frac{\omega E_N^{(2)}}{g^2}=-\frac56N^2+\frac16N-\frac1{18},
\quad \frac{\omega(E_1^{(2)}-E_0^{(2)})}{g^2}=-\frac23.
\]
This equals \(\tfrac12[1/(1-2)-1/(1+2)]\) from the displayed pair formula.

For the ground external mode, the invariant decomposition converts the ordered-pair sum into
\[
\delta\Delta=\frac{\lambda_3^2}{4\pi}\sum_{a,n\geq0}I_{\delta_a,n}^2
 \left[\frac1{\Delta-\Omega_{a,n}}-\frac1{\Delta+\Omega_{a,n}}\right],
\quad \Omega_{a,n}=\delta_a+2n,
\]
where direct Jacobi integration gives
\[
I_{\delta,n}=\int r\,dr\,d\theta\,u_{\Delta,00}u_{\delta,nn}^*
=\frac{(1+(\delta-\Delta)/2)_n}{(\delta+\Delta-2)((\delta+\Delta)/2)_n}.
\]
At \(\Delta=2\), \(I_{4+2a,n}=1/[2(a+n+2)]=1/\Omega_{a,n}\). Grouping \(k=a+n\) then gives the elementary telescoping sum
\[
\delta\Delta=-\frac{\lambda_3^2}{16\pi}\sum_{k=0}^\infty
 \frac1{(k+2)(k+3)}=-\frac{\lambda_3^2}{32\pi}.
\]

For a general external mode the spatial resolvent identity yields
\[
\sum_A\frac{2\Omega_A|\int r\,dr\,d\theta\,u_i u_{M,A}^*|^2}
 {\Omega_A^2-\omega_i^2}
=\frac{\int r\,dr\,d\theta\,|u_i|^2}{M^2-m^2},
\qquad \int r\,dr\,d\theta\,|u_i|^2=\frac1{2(\Delta-1)}.
\]
This follows by applying the frequency-space radial KG operator to \(u_i/(M^2-m^2)\). If an internal frequency equals \(\omega_i\), the slice overlap is zero by the radial Wronskian identity. A possible homogeneous addition to the resonant inverse also drops out of this sandwich. Thus the zero-numerator channel is omitted, not assigned an arbitrary finite value. This establishes descendant independence analytically.

There is also a separate raw-mode check: for \(\Delta=2\), exact Sage Jacobi beta integrals were summed over all ordered pairs at fixed pair energy, without using the invariant kernel. If
\(A_i(\Omega)=\sum_{j,k:\omega_j+\omega_k=\Omega}|\int u_i u_j^*u_k^* r\,dr\,d\theta|^2\), the results are

| external \(i\) | pair energy \(\Omega\) | \(\pi A_i(\Omega)\) |
|---|---:|---:|
| \((0,0)\) | \(2k+4\) | \((k+1)/[8(k+2)^2]\) |
| \((1,0)\) | \(2k+5\) | \((k+1)/[6(k+2)(k+3)]\) |
| \((1,1)\) | \(2k+4\) | \(k(22+34k+9k^2)/[40(k+1)(k+2)^2(k+3)]\) |
| \((2,0)\) | \(2k+6\) | \((k+1)(25+8k)/[40(k+2)(k+3)(k+4)]\) |

The rational formulas follow by integrating the finite external Jacobi polynomial against the scalar-module modes and summing its squared overlap over \(a=0,\ldots,k\). The raw-pair calculation checked each formula for \(k=0,\ldots,8\). Mathematica independently summed all four rational OFPT series to \(-\lambda_3^2/(32\pi)\). For external \((1,1)\), \(k=0\) is the exact resonance with **zero weight**; it must be excluded before algebraically cancelling a factor \(k\) against the energy denominator.

## 4. Vacuum graph: local UV logarithm versus spatial volume

Normal ordering removes contractions within a single vertex, not contractions joining two vertices:
\[
\langle :\phi^3(x)::\phi^3(y):\rangle_0=6G_\Delta(x,y)^3.
\]
Hence
\[
\Gamma_{\rm vac}^{(2)}=-\frac{\lambda_3^2}{12}\int dV_xdV_y\,G_\Delta(x,y)^3.
\]
Equivalently, OFPT gives
\[
E_0^{(2)}=-\frac{\lambda_3^2}{6}\sum_{i,j,k}
 \frac{|\int r\,dr\,d\theta\,u_i^*u_j^*u_k^*|^2}{\omega_i+\omega_j+\omega_k}.
\]
The factor two difference is the two Euclidean time orderings.

Use an isometry-invariant geodesic cutoff \(s(x,y)>\epsilon\). Since \(dV_y=4\pi\sinh^2s\,ds\) about any fixed \(x\), the vacuum-action density is
\[
\rho_{\rm loop}(\epsilon)=-\frac{\lambda_3^2}{192\pi^2}
 \int_\epsilon^\infty\frac{e^{-3(\Delta-1)s}}{\sinh s}\,ds
\]
\[
=-\frac{\lambda_3^2}{192\pi^2}
 [\log(1/\epsilon)-\log2-\gamma_E-\psi((3\Delta-2)/2)+O(\epsilon)].
\]
At \(\Delta=2\) the integral is exactly
\(-e^{-2\epsilon}-\log(1-e^{-2\epsilon})\).
The integral at large geodesic separation converges for all \(\Delta>1\); the logarithm is a coincidence UV divergence, not an infrared divergence of this relative-coordinate integral.

There is separately an infinite total spacetime volume. With coordinate radial cutoff \(r\leq R\) and Euclidean-time length \(T\),
\[
\operatorname{Vol}/T=\int_0^R r\,dr\int_0^{2\pi}d\theta=\pi R^2.
\]
This is the lapse-weighted volume relevant to Killing energy, not the spatial proper volume \(2\pi(\sqrt{1+R^2}-1)\). An invariant bulk density times \(\pi R^2\) diverges as \(R\to\infty\) even after the local UV logarithm is subtracted. One must specify vacuum-energy normalization separately. The displayed volume regulator is for the homogeneous bulk density; a physical wall would introduce additional boundary-dependent terms and is not being imposed here.

A second invariant regulator is to truncate the scalar-primary expansion of \(G_\Delta^3\), retaining each entire descendant module. Since \(\delta=3\Delta+2a>2\),
\(\int dV_yG_\delta(x,y)=1/[\delta(\delta-2)]\). Thus
\[
\rho_A=-\frac{\lambda_3^2}{48\pi^2}
 \sum_{a=0}^A\frac{a+1}{(3\Delta+2a)(3\Delta+2a-2)}
=-\frac{\lambda_3^2}{192\pi^2}
 [\log A-\psi(3\Delta/2-1)-1+o(1)].
\]
With \(A=1/\epsilon\), its finite difference from the geodesic regulator is an explicitly \(\Delta\)-independent identity counterterm, proportional to \(\log2+\gamma_E-1\). These two raw finite parts are not required to coincide; the same physical vacuum condition makes them coincide after the corresponding local subtraction.

## 5. A precise invariant fixed-gap prescription

Take \(\Delta_R>1\) to denote the desired physical one-particle gap. Use its fast-branch free propagator and Wick ordering as the perturbative reference. Define the theory to contain no independent quartic coupling at order \(\lambda_3^2\). Then:

1. Regulate the vacuum graph invariantly, for example by the geodesic cutoff above. Define normalized correlators by dividing by the vacuum functional. If an unnormalized vacuum functional is wanted, impose \(\rho_R=0\) by adding
   \[
   S_{\rm ct,vac}=-\int\sqrt{-g}\,\delta\rho(\epsilon),\qquad
   \delta\rho(\epsilon)=+\frac{\lambda_3^2}{192\pi^2}
   \int_\epsilon^\infty\frac{e^{-3(\Delta_R-1)s}}{\sinh s}\,ds.
   \]
   A different finite vacuum density is a different convention for the absolute vacuum term, not a change in vacuum-subtracted gaps.
2. Keep the finite fish graph without a UV subtraction. Add the finite normal-ordered mass vertex
   \[
   S_{\rm ct,m}=-\frac{\delta m^2_{\rm ct}}2\int\sqrt{-g}\,:\phi^2:,
   \qquad
   \boxed{\delta m^2_{\rm ct}=+\frac{\lambda_3^2}{16\pi(\Delta_R-1)}
     [\psi(3\Delta_R/2-1)-\psi(\Delta_R/2)]}.
   \]
   This is the on-shell condition \(\Gamma^{(2)}(m_R^2)=0\), with \(m_R^2=\Delta_R(\Delta_R-2)\). Its one-body matrix element is \(\delta m^2_{\rm ct}/[2(\Delta_R-1)]\) on every normalized mode, so it cancels every connected one-body energy shift, not only the ground shift.
3. Keep the canonical short-distance field normalization. No UV wavefunction counterterm is needed. If desired, define a separately rescaled interpolating field with unit pole residue; that optional finite field normalization does not change energies.

A useful explicit check of the prescription follows from resolvent partial fractions. Set \(c=\lambda_3^2/(4\pi)\) and \(D_a=M_a^2-m_R^2\). The fixed-gap Euclidean two-point function is
\[
\boxed{G_{\rm ren}=\left(1-c\sum_a D_a^{-2}\right)G_{\Delta_R}
       +c\sum_a D_a^{-2}G_{2\Delta_R+2a}+O(\lambda_3^4).}
\]
The composite weights are positive, their sum is finite, and the total short-distance coefficient remains one. The elementary pole and all of its descendants stay at the chosen mass; its residue is reduced by a finite amount. At \(\Delta_R=2\),
\(\sum_aD_a^{-2}=(\pi^2/3-3)/16\). This formula does not assert that a mass counterterm removes off-shell selfenergy or the multiparticle component of the physical field.

If instead \(m^2=\Delta(\Delta-2)\) in the original action is held fixed without this finite counterterm, the negative shift in Section 2 is a real prediction of that parametrization. Calling both prescriptions “the same mass \(\Delta\)” without matching the physical gap would conflate two different parameter choices.

### Sharp truncation is not an invariant renormalization condition

A cutoff on internal global energy does not commute with the full AdS isometry representation. It gives mode-dependent finite-cutoff selfenergies. For example, at \(\Delta=2\) the raw, vacuum-subtracted pair formula with \(\Omega\leq12\) gives

| external mode | \(\pi\delta\omega_i/\lambda_3^2\) at cutoff | infinite-cutoff value |
|---|---:|---:|
| \((0,0)\) | \(-5/224\) | \(-1/32\) |
| \((1,0)\) | \(-19/1008\) | \(-1/32\) |
| \((1,1)\) | \(-221/13440\) | \(-1/32\) |
| \((2,0)\) | \(-79/4480\) | \(-1/32\) |

One mass counterterm cannot cancel all four **finite-cutoff** values. This does not imply several physical mass counterterms are required. Removing the cutoff restores the common value; retaining complete invariant scalar modules rather than partial frequency towers preserves the equality already at finite module cutoff. The finite-cutoff examples in the evidence are linked-diagram cutoffs. A naive cutoff on total intermediate Fock energy also treats a vacuum bubble and its spectator-shifted copy differently; disconnected pieces must first be subtracted with a common regulator, rather than mistaking their mismatch for a new mass divergence.

## 6. Counterterms and the connected two-body quantity

With two cubic vertices, the connected vacuum graph has \(L=2,I=3\), hence superficial degree \(3L-2I=0\). The two-point fish has \(L=1,I=2\), degree \(-1\). The four-point graph is tree exchange and has no loop UV integral. Equivalently, locally \(G\sim1/s\): \(G^2\) has scaling degree two below spacetime dimension three and admits a unique minimal extension, whereas \(G^3\) has scaling degree three and its local ambiguity is an identity counterterm. Curvature-dependent UV terms are subleading and finite at this order; on this fixed constant-curvature background finite background terms only affect the vacuum normalization.

There is **no new tadpole/linear counterterm at order \(\lambda_3^2\)**. Two cubic vertices provide six fields; an odd number of external fields leaves an odd number to contract. In particular the one-point function vanishes at this order. The divergent order-\(\lambda_3\) single-vertex tadpole was already removed by the specified Wick ordering. A finite linear term added by hand would change the stated theory and vacuum condition. No cubic or quartic UV counterterm is needed at order \(\lambda_3^2\).

For a two-body level, the connected combination subtracts the vacuum and the two physical one-body shifts. For the two-ground-particle state,
\[
\gamma_{2,\rm conn}=\delta E_2-2\delta E_1+\delta E_0.
\]
It is insensitive to the identity and finite mass conventions once the physical gap and cubic normalization are matched. Direct cubic oscillator combinatorics gives
\[
\gamma_{2,\rm conn}=\lambda_3^2\sum_{n\geq0}q_n^2
 \left[\frac{\omega_n}{4\Delta^2-\omega_n^2}-\frac2{\omega_n}\right],
\quad \omega_n=\Delta+2n,
\quad q_n=\frac{(1-\Delta/2)_n}{\sqrt{2\pi}(3\Delta-2)(3\Delta/2)_n}.
\]
The displayed \(q_n\) follows by direct integration of \(u_{\Delta,nn}^*u_{00}^2\). At a special even \(\Delta\), any resonant \(q_n\) vanishes by the Jacobi selection rule and is excluded, as above. At \(\Delta=2\), only \(q_0=1/(4\sqrt{2\pi})\) survives and
\[
\boxed{\gamma_{2,\rm conn}=-5\lambda_3^2/(192\pi).}
\]
Adding an independent finite normal-ordered quartic \(\lambda_4=c_4\lambda_3^2\) changes this coefficient by
\[
\delta\gamma_{2,\rm conn}=\frac{c_4\lambda_3^2}{8\pi(2\Delta-1)}.
\]
That is a physical additional interaction, not a UV-required scheme ambiguity of the fixed pure-cubic theory. Off-shell effective Hamiltonians may still differ by perturbative unitary changes of basis; “scheme independent” here refers to matched connected level shifts or a fixed resonant block's eigenvalues, not arbitrary off-shell matrix entries.

## 7. Evidence and limits

- [independent_checks.wl](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/independent/cubic-renormalization/independent_checks.wl>) and [wolfram_results.txt](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/independent/cubic-renormalization/wolfram_results.txt>): Green-function ODE; generic digamma sum; generic ground cubic overlaps for five radial modes; exact mass and gap at \(\Delta=2\); four distinct exact infinite OFPT descendant sums; BF and heavy-mass limits; finite residue sum; exact vacuum integral at \(\Delta=2\); generic vacuum finite-part numerical checks at four dimensions; vacuum spectral partial fractions. All residuals vanish as specified, all four sums agree, numerical residuals are of the predicted \(O(\epsilon^2)\) size, and the final Mathematica run reported no messages.
- [independent_checks.sage.py](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/independent/cubic-renormalization/independent_checks.sage.py>) and [sage_results.json](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/independent/cubic-renormalization/sage_results.json>): exact raw Jacobi pair integrals at nine levels for four external modes, 16 KG/slice norms, direct normal-ordered single-oscillator Fock combinatorics, exact zero resonant weights, and sharp-cutoff values at 12, 20, and 28 for five external modes. All assertions passed. A first execution wrapper suffered a path-variable collision after completing the calculation; isolating its execution namespace fixed the wrapper, and the full evidence was rerun successfully.

**Verified:** the invariant all-\(\Delta>1\) mass/gap formula, one local mass condition for the whole one-particle representation, vacuum logarithm and explicit invariant subtraction, direct OFPT sign/factor and exact special-value descendants, and a concrete connected two-body coefficient.

**Assumptions:** fixed global AdS3 with unit radius; standard fast boundary condition; free global vacuum Wick ordering; perturbation theory about that vacuum; matched regulator in vacuum subtraction; no independent order-\(\lambda_3^2\) quartic term. In dimensionful units the expansion parameter is \(\lambda_3L^{3/2}\), and the displayed energy shifts are in units of \(L^{-1}\).

**Not established here:** a nonperturbatively stable vacuum for an unbounded real cubic potential; arbitrary two-body primary spectra or full higher-particle degenerate blocks; physical-wall boundary counterterms; a uniform perturbation expansion near the BF endpoint or at arbitrarily high excitation. No downstream fresh subagent was available at this delegation depth. Mathematica and Sage provided independent computational checks, and the parent independently reported agreement with the connected ground-pair result after it had been derived here.
