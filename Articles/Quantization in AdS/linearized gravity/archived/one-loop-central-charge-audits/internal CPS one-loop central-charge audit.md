# Internal CPS audit of the one-loop Virasoro central charge

> [!archive]
> Historical audit preserved as evidence for the active synthesis. Its intermediate obstruction was resolved by the later next-order and reduced-Hamiltonian checks; use the final claim boundaries in the active main and scheme notes.

## Verdict

**B. Not proven by the present CPS truncation.** The repository currently determines the classical Brown--Henneaux central charge

$$
c_{\mathrm{cl}}=\frac{24\pi}{\kappa ^2}=\frac{3}{2G},
\qquad \kappa ^2=16\pi G,
$$

and it determines enough of the nonlinear classical moment maps to recover the classical Virasoro algebra. It does **not** yet determine the $O(\kappa ^0)$ identity term in the quantum commutator. After removing the externally supplied answer, the internally justified statement is

$$
[\widehat H_m,\widehat H_n]
=(m-n)\widehat H_{m+n}
+\frac{c_{\mathrm{cl}}+\Delta c}{12}m(m^2-1)\delta_{m+n,0},
$$

with $\Delta c$ undetermined by the presently displayed data.

The decisive obstruction is precise: the note gives $\Omega_0$, $\Omega_1$, and the charge through a displayed cubic term, but it checks the Hamiltonian identity only through $O(\kappa ^0)$. The one-loop identity term requires the $O(\kappa)$ **linear quantum term** generated when the fully Darboux-transformed cubic charge is regularized and normal ordered. That term depends on the second Darboux map, hence on $\Omega_2$, which is absent.

This report uses only the metric Einstein--Hilbert/CPS route of the existing note. No coadjoint-orbit action, partition function, determinant, vacuum-energy formula, or known value of $\Delta c$ is used below.

## 1. Reconstructed conventions and scope

The calculation is one chiral half of the smooth global-AdS$_3$ Brown--Henneaux vacuum sector; the barred chirality is identical and Poisson-commutes with it. The conventions retained from the existing notes are:

1. The AdS radius is one and the spacetime signature is $(-,+,+)$.
2. The gravitational coupling is

   $$
   \kappa ^2=16\pi G.
   $$

3. The renormalized variational problem contains the Einstein--Hilbert bulk term, the Brown--Henneaux boundary terms, the AdS counterterm, and the corner term in the integrated Harlow--Wu symplectic potential. The explicit potential used in the target note is

   $$
   \theta=\frac{1}{\kappa ^2}\int_\Sigma\!\sqrt\sigma\,\tau_\mu
   \left(g^{\mu\alpha}\nabla^\nu\delta g_{\alpha\nu}
   -g^{\alpha\beta}\nabla^\mu\delta g_{\alpha\beta}\right)
   -\frac{1}{\kappa ^2}\int_{\partial\Sigma}\!\sqrt h\,
   \tau_\mu\gamma^{\mu\nu}n^\alpha\delta g_{\nu\alpha}.
   $$

4. The selected nonlinear continuation is

   $$
   g[a]=e^{\kappa\mathcal L_{\zeta[a]}}g^{(0)},
   \qquad
   \zeta[a]=\sum_{A=L,R}\sum_{N\geq2}
   \left(a_{A,N}\zeta_{A,N-2}+a_{A,N}^{\dagger}\zeta_{A,N-2}^{*}\right).
   $$

   It is the fixed-generator continuation of the selected linear Brown--Henneaux data, not a claim about every orbit sector or every nonlinear solution.

5. The physical labels are $N\geq2$. The modes $-1,0,1$ belong to the $PSL(2,\mathbb R)$ stabilizer and are not independent oscillators.
6. The normalization is

   $$
   \zeta_{L,N-2}=q_N\xi_{-N},
   \qquad
   q_N=-\frac{(-i)^{N-1}}{\sqrt{D_N}},
   \qquad
   D_N=2\pi N(N^2-1).
   $$

7. The leading reduced symplectic form and quantization convention are

   $$
   \Omega_0=i\sum_{A,N\geq2}\delta a_{A,N}^{\dagger}\wedge\delta a_{A,N},
   \qquad
   \{a_{A,N}^{\dagger},a_{B,M}\}=i\delta_{AB}\delta_{NM},
   \qquad
   [a_{A,N},a_{B,M}^{\dagger}]=\delta_{AB}\delta_{NM}.
   $$

8. Charges are vacuum-subtracted, $H_\xi[g^{(0)}]=0$, and satisfy $H_n^{\dagger}=H_{-n}$.

These conventions imply that the leading positive-mode charge has modulus

$$
H_{n,-1}=-iD_nq_n a_n,
\qquad
|H_{n,-1}|=\sqrt{D_n}\,|a_n|.
$$

In particular,

$$
[\widehat H_2^{\mathrm{lin}},\widehat H_{-2}^{\mathrm{lin}}]
=\frac{D_2}{\kappa ^2}\mathbf 1
=\frac{12\pi}{\kappa ^2}\mathbf 1
=\frac{c_{\mathrm{cl}}}{2}\mathbf 1,
$$

which exactly matches the classical central term at $m=2$.

## 2. Where the current project imports the one-loop answer

For this audit, all of the following are quarantined as external input rather than used as derivation:

- In `higher perturbations of linearized gravity modes.md`, the quantization section first postulates a quantum Virasoro algebra with an unspecified $c_q$ and then states $c_q=c_{\mathrm{cl}}+13$ before any canonical/Darboux computation (current lines 339--346).
- The subsequent Chern--Simons $\to$ WZW $\to$ reparameterization-action reduction and torus determinant (current lines 350--519) is a different derivational route. Its zeta-regularized mode sum is exactly where the numerical $13$ enters.
- `Articles/Quantization in AdS/linearized gravity/archived/verification-scripts/one_loop_effective_symplectic_form.wl` sets `cQ = C + 13` at line 12. Its six passing tests verify algebraic consequences of that substitution; they do not derive it.
- `Articles/Quantization in AdS/linearized gravity/archived/verification-scripts/quantum_higher_charge_reconstruction.wl` assumes the Virasoro commutator with a symbolic `cQ`; its line 112 zeta sum and line 133 output insert the shift from outside the oscillator/CPS calculation.
- `Articles/Quantization in AdS/linearized gravity/archived/verification-scripts/higher_charge_liouville_determinant.wl` obtains $13$ from a zeta-regularized determinant/zero-point sum. This is excluded by the present CPS-only question.
- The higher-mode presentation and vacuum-normal-symbol scripts take $c_q$ as the defining central parameter. Their passing Jacobi, Gram-matrix, and reconstruction tests prove consistency **for a chosen $c_q$**; Jacobi does not select its value.

Accordingly, the rest of this report replaces every occurrence of $13$ by an unknown $\Delta c$.

## 3. Strict order-counting ledger

Write the pullback of the renormalized CPS form and the classical charges as

$$
\Omega=\Omega_0+\kappa\Omega_1+\kappa^2\Omega_2+O(\kappa^3),
$$

$$
H_p=\kappa^{-1}H_{p,-1}+H_{p,0}+\kappa H_{p,1}+O(\kappa^2).
$$

Here $a,a^\dagger=O(1)$, and $H_{p,r}$ is homogeneous of oscillator degree $r+2$: $H_{p,-1}$ is linear, $H_{p,0}$ is quadratic, and $H_{p,1}$ is cubic.

The metric continuation must be retained as

$$
g=g^{(0)}+\kappa h^{[0]}+\kappa^2h^{[1]}+\kappa^3h^{[2]}+O(\kappa^4),
$$

with

$$
h^{[0]}=\mathcal L_\zeta g^{(0)},
\qquad
h^{[1]}=\frac12\mathcal L_\zeta^2g^{(0)},
\qquad
h^{[2]}=\frac16\mathcal L_\zeta^3g^{(0)}
$$

in the selected fixed-generator sector. Because the gravitational potential carries $\kappa^{-2}$ and each tangent variation of $g$ starts at $O(\kappa)$, the minimal classical data are:

| Desired quantum information | Metric/CPS data | Darboux data | Charge data |
|---|---|---|---|
| $O(\kappa^{-2})$ classical central term | $h^{[0]}$, $\Omega_0$ | none | $H_{p,-1}$ |
| $O(\kappa^{-1})$ Witt term | $h^{[1]}$, $\Omega_1$ | first map $F_1$ | $H_{p,0}$ |
| $O(\kappa^0)$ one-loop identity term | $h^{[2]}$, **$\Omega_2$** | **second map $F_2$** | $H_{p,1}$, including its regulated quantum linear contraction |

The last row is the minimal row relevant to this audit. The existing note displays $H_{p,1}$ but checks

$$
X_p\mathbin{\lrcorner}\Omega=-\delta H_p
$$

only through $O(\kappa^0)$. Since $X_p=\kappa^{-1}X_{p,-1}+X_{p,0}+\kappa X_{p,1}+\cdots$, the next identity needed to validate the cubic charge is

$$
X_{p,1}\mathbin{\lrcorner}\Omega_0
+X_{p,0}\mathbin{\lrcorner}\Omega_1
+X_{p,-1}\mathbin{\lrcorner}\Omega_2
=-\delta H_{p,1}.
$$

It contains $\Omega_2$ explicitly. Therefore the displayed cubic charge cannot by itself close the required order.

## 4. Perturbative Darboux transformation from the computed $\Omega_1$

The first Darboux step can be constructed without changing the user's oscillator normalization. Work one chirality at a time and let

$$
\mathcal E=\sum_{N\geq2}\left(
a_N\frac{\partial}{\partial a_N}
+a_N^\dagger\frac{\partial}{\partial a_N^\dagger}
\right)
$$

be the radial vector field on oscillator space. The displayed $\Omega_1$ is a closed two-form whose coefficients are homogeneous of degree one, so

$$
\mathcal L_{\mathcal E}\Omega_1=3\Omega_1,
\qquad
\alpha_1:=\frac13\,\mathcal E\mathbin{\lrcorner}\Omega_1,
\qquad
\delta\alpha_1=\Omega_1.
$$

For the explicit form in the note this primitive is

$$
\begin{aligned}
\alpha_1={}&-\frac{i}{12}\sum_{N,M\geq2}\lambda_{NM}a_{N+M}^\dagger
\left(a_N\delta a_M-a_M\delta a_N\right)\\
&+\frac{i}{12}\sum_{N,M\geq2}\lambda_{NM}a_{N+M}
\left(a_N^\dagger\delta a_M^\dagger-a_M^\dagger\delta a_N^\dagger\right)\\
&+\frac{i}{3}\sum_{\substack{N,M\geq2\\|N-M|\geq2}}
\mu_{NM}\mathfrak a_{M-N}
\left(a_N\delta a_M^\dagger-a_M^\dagger\delta a_N\right).
\end{aligned}
$$

Define the quadratic vector field $Y_1$ by

$$
Y_1\mathbin{\lrcorner}\Omega_0=-\alpha_1.
$$

Equivalently, if $\Pi_0=\Omega_0^{-1}$,

$$
Y_1=-\Pi_0^\sharp\alpha_1.
$$

Then

$$
a_N=b_N+\kappa Y_1^{a_N}(b,b^\dagger)+O(\kappa^2),
\qquad
a_N^\dagger=b_N^\dagger+\kappa Y_1^{a_N^\dagger}(b,b^\dagger)+O(\kappa^2)
$$

gives

$$
\Omega=i\sum_{N\geq2}\delta b_N^\dagger\wedge\delta b_N+O(\kappa^2).
$$

This is a constructive first-order Darboux map directly from the note's $\Omega_1$. Its remaining freedom is an $O(\kappa)$ canonical transformation; fixing the radial homotopy above removes that freedom for the present calculation.

At second order the transformed residual is schematically

$$
\widetilde\Omega_2
=\Omega_2+\mathcal L_{Y_1}\Omega_1
+\frac12\mathcal L_{Y_1}^2\Omega_0.
$$

The cubic vector field $Y_2$ must solve

$$
Y_2\mathbin{\lrcorner}\Omega_0=-\delta^{-1}\widetilde\Omega_2.
$$

Thus $Y_2$ cannot be found from $\Omega_0+\kappa\Omega_1$ alone.

After the coordinate change, the charge coefficients are

$$
\begin{aligned}
H_{p,-1}^{D}&=H_{p,-1},\\
H_{p,0}^{D}&=H_{p,0}+\mathrm dH_{p,-1}[Y_1],\\
H_{p,1}^{D}&=H_{p,1}+\mathrm dH_{p,0}[Y_1]+\mathrm dH_{p,-1}[Y_2].
\end{aligned}
$$

The last term is precisely the unknown $\Omega_2$-dependent contribution. It is cubic classically, but its normal ordering can contain a linear contraction and therefore affect the one-loop central term.

## 5. Quantization prescription that does not assume the answer

The prescription used for the internal test is:

1. First truncate to physical modes $2\leq N\leq N_{\max}$ in both creation and annihilation sectors.
2. Perform the radial-homotopy Darboux construction at that finite cutoff.
3. Quantize only the Darboux variables,

   $$
   [b_N,b_M^\dagger]=\delta_{NM}.
   $$

4. Use the linearized CPS vacuum $b_N|0\rangle=0$ and vacuum normal ordering, with all $b^\dagger$ to the left.
5. Impose $H_n^\dagger=H_{-n}$ and the vacuum subtraction $H_{-1}|0\rangle=H_0|0\rangle=H_1|0\rangle=0$.
6. Remove $N_{\max}$ only after displaying every divergent contraction. Allowed counterterms must be derived from the same renormalized action/CPS symmetry and must not be fixed by demanding a preselected $\Delta c$.

At finite cutoff this prescription is unambiguous. The continuum limit is not fixed by the current note: different finite subtractions of the linear quantum moment map are compatible with Hermiticity and Jacobi, because the Virasoro central coefficient itself is a free central parameter from the viewpoint of the abstract algebra.

## 6. Decisive computation of $[H_2,H_{-2}]$

It is convenient only for this computation to remove the harmless phase in $q_N$. Define

$$
\beta_N=i(-i)^{N-1}b_N,
\qquad
[\beta_N,\beta_M^\dagger]=\delta_{NM}.
$$

This is a unitary rephasing, not a change of normalization. It gives

$$
H_{N,-1}^{D}=\sqrt{D_N}\,\beta_N,
\qquad N\geq2.
$$

### 6.1 The completely determined part

The internally derived classical Witt term fixes the quadratic Darboux charge $H_{2,0}^{D}$ without using any quantum central charge. From

$$
[H_2,H_{-n}]=(n+2)H_{2-n},
\qquad n\geq4,
$$

one obtains

$$
H_{2,0}^{D}=Q_2
=\sum_{r=2}^{\infty}u_r\,\beta_r^\dagger\beta_{r+2},
\qquad
u_r=(r+4)\sqrt{\frac{D_r}{D_{r+2}}},
$$

and $Q_{-2}=Q_2^\dagger$. The missing $r=0,1$ oscillators are exactly the removed $PSL(2,\mathbb R)$ stabilizer directions.

At every finite cutoff,

$$
[Q_2,Q_{-2}]
=\sum_r u_r^2\left(\beta_r^\dagger\beta_r
-\beta_{r+2}^\dagger\beta_{r+2}\right)
+\text{cutoff-edge terms}.
$$

This contains number operators but **no identity operator**. Equivalently,

$$
\langle0|[Q_2,Q_{-2}]|0\rangle=0.
$$

Therefore the known linear and quadratic charges give

$$
[H_2,H_{-2}]_{\mathbf1}
=\frac{12\pi}{\kappa^2}+0+\text{unknown contribution from }H_{2,1}^{D}.
$$

This result is stronger than merely saying that the calculation was not attempted: the entire $[H_{2,0}^{D},H_{-2,0}^{D}]$ candidate for an $O(\kappa^0)$ c-number vanishes under the stated CPS-vacuum normal ordering.

### 6.2 The undetermined part

Write the regulated, normal-ordered cubic Darboux charge as

$$
\widehat H_{2,1}^{D}
=:\!C_2^{(3)}\!:+r_2\beta_2,
$$

where $:\!C_2^{(3)}\!:$ is genuinely cubic and $r_2\beta_2$ is the linear term produced by contractions and any allowed finite quantum-moment-map counterterm. Then

$$
\widehat H_2
=\frac{\sqrt{D_2}}{\kappa}\beta_2+Q_2
+\kappa\left(:\!C_2^{(3)}\!:+r_2\beta_2\right)+O(\kappa^2),
$$

and $\widehat H_{-2}=\widehat H_2^\dagger$. The identity part of the commutator through the required order is

$$
\boxed{
[\widehat H_2,\widehat H_{-2}]_{\mathbf1}
=\frac{D_2}{\kappa^2}
+2\sqrt{D_2}\,\operatorname{Re}r_2
+O(\kappa^2)
}
$$

with $D_2=12\pi$. With the vacuum condition $H_0|0\rangle=0$, comparison with

$$
[H_2,H_{-2}]=4H_0+\frac{c_{\mathrm{cl}}+\Delta c}{2}\mathbf1
$$

gives the exact diagnostic relation

$$
\boxed{
\Delta c=4\sqrt{12\pi}\,\operatorname{Re}r_2.
}
$$

The present repository does not determine $r_2$, because

$$
r_2=r_2\!\left[H_{2,1},Y_1,Y_2;\text{ regulator and finite subtraction}\right]
$$

and $Y_2$ depends on the missing $\Omega_2$.

### 6.3 Jacobi and additional modes

Checking $[H_3,H_{-3}]$, $[H_2,H_{-3}]$, and Jacobi triples relates the analogous linear coefficients $r_n$ to one common $\Delta c$ once a quantum moment map has been constructed. It does not determine the common number. Abstract Virasoro Jacobi is satisfied for every central charge. Therefore the existing higher-mode Jacobi scripts cannot close the missing calculation: they test consistency conditional on `cQ`.

## 7. Separation of the three kinds of correction

The calculation must keep the following sources separate.

### (a) Classical nonlinear moment-map corrections

These are the quadratic $H_{p,0}$ and cubic $H_{p,1}$ terms obtained by expanding the Brown--York/CPS surface charge on $g[a]$. They ensure the classical Witt action in nonlinear coordinates. By themselves they do not alter the classical central cocycle $24\pi/\kappa^2$.

### (b) Corrections from noncanonical coordinates

These are the $Y_1$ and $Y_2$ substitutions required because the original $a_N$ cease to be Darboux coordinates beyond $\Omega_0$. They modify the polynomial symbols of the charges:

$$
H_{p,0}\mapsto H_{p,0}^{D},
\qquad
H_{p,1}\mapsto H_{p,1}^{D}.
$$

They are classical coordinate effects. However, after quantization their cubic terms may contract to linear terms, so omitting $Y_2$ can change the apparent one-loop central term.

### (c) Genuine quantum terms

These are contractions produced by the chosen normal-ordering map, together with regulator-dependent finite quantum-moment-map/measure terms needed in the infinite-dimensional limit. The coefficient $r_2$ above belongs here. It is the only part of the decisive commutator that can supply the missing $O(\kappa^0)$ identity term after the known quadratic contribution has been shown to vanish.

## 8. Minimal missing CPS/quantum ingredients

To turn this result from B into A while staying on the user's route, the minimal continuation is:

1. Expand the selected metric through

   $$
   h^{[2]}=\frac16\mathcal L_\zeta^3g^{(0)}
   $$

   with all multimode cross terms and the same Brown--Henneaux/proper-gauge convention.
2. Pull the **renormalized bulk plus boundary plus corner** symplectic potential back to this family through $O(\kappa^2)$ and obtain $\Omega_2$. A bulk-only form is insufficient.
3. Independently recompute $H_{p,1}$ from the same renormalized charge and verify

   $$
   X_{p,1}\mathbin{\lrcorner}\Omega_0
   +X_{p,0}\mathbin{\lrcorner}\Omega_1
   +X_{p,-1}\mathbin{\lrcorner}\Omega_2
   =-\delta H_{p,1}
   $$

   for at least $p=\pm2,\pm3$.
4. Construct $Y_2$ with the same radial-homotopy convention used for $Y_1$ and form the full cubic Darboux charges $H_{p,1}^{D}$.
5. At finite $N_{\max}$, normal order $H_{2,1}^{D}$ and extract $r_2(N_{\max})$. Repeat for $p=3$ and mixed commutators.
6. Derive the subtraction/continuum prescription from the same action, symplectic measure, adjoint, and Brown--Henneaux Ward identities. Record divergent and finite pieces separately. Do not choose the finite part by matching a known central charge.
7. Only then evaluate

   $$
   \Delta c=4\sqrt{12\pi}\,\lim_{N_{\max}\to\infty}\operatorname{Re}r_2(N_{\max})
   $$

   and use $p=3$ plus Jacobi as consistency checks.

If no symmetry-preserving regulator and finite subtraction is fixed by the metric CPS construction, the remaining ambiguity is not an algebra mistake; it means the classical CPS data do not uniquely specify the quantum moment map. An additional quantum input would then be necessary, and the route would not be internally closed in the sense required here.

## 9. Verification record

### Verified

- Direct normalization check: $D_2=12\pi$, hence the leading commutator gives $12\pi/\kappa^2=c_{\mathrm{cl}}/2$.
- Finite-mode bosonic-bilinear check through $N_{\max}=12$: the matrix commutator representing $[Q_2,Q_{-2}]$ is diagonal in number operators, has zero identity coefficient, and has zero finite matrix trace. All four algebraic tests passed.
- The existing `Articles/Quantization in AdS/linearized gravity/archived/verification-scripts/one_loop_effective_symplectic_form.wl` ran with 6/6 tests passing, but inspection shows that it sets `cQ=C+13` before testing.
- The existing `Articles/Quantization in AdS/linearized gravity/archived/verification-scripts/quantum_higher_charge_reconstruction.wl` ran with 8/8 tests passing, but its central shift is supplied by a separate zeta sum and its Virasoro algebra is assumed.
- The existing `Articles/Quantization in AdS/linearized gravity/archived/verification-scripts/higher_mode_virasoro_presentation.wl` ran with 7/7 tests passing. These tests establish the consistency of the high-mode presentation conditional on the chosen central parameter.

### Assumptions

- Formal power-series manipulations are made on finite mode truncations before taking the infinite-mode limit.
- The displayed $\Omega_1$ is the complete renormalized pullback at that order, including the stated corner contribution.
- The vacuum-normal prescription is tied to the linearized CPS positive-frequency modes.
- The vacuum subtraction fixes $H_0|0\rangle=0$, so an identity shift is assigned to the central term rather than hidden in $H_0$.

### Not verified / presently missing

- The full $\Omega_2$ from the Einstein--Hilbert, boundary, counterterm, and corner variational data.
- The $O(\kappa)$ Hamiltonian identity validating the displayed cubic charge.
- The second Darboux vector field $Y_2$.
- The regulated contraction coefficient $r_2$ and its cutoff-independent finite part.
- Existence of a common dense operator domain and convergence of the infinite normal-ordered sums.

## Final statement

The present CPS calculation does **not** internally reproduce a numerical one-loop central-charge shift. What it does prove is sharper than a generic incompleteness claim:

$$
\text{known }\Omega_0,\Omega_1,H_{-1},H_0
\quad\Longrightarrow\quad
\left.[H_2,H_{-2}]_{\mathbf1}\right|_{O(\kappa^0),\,\mathrm{quadratic}}=0,
$$

while

$$
\left.[H_2,H_{-2}]_{\mathbf1}\right|_{O(\kappa^0)}
=2\sqrt{12\pi}\,\operatorname{Re}r_2
$$

depends on the missing $\Omega_2$-controlled second Darboux map and the continuum quantum-moment-map prescription. Therefore the current project meets success criterion **B**, not A.
