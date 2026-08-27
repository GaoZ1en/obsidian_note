# Charges，matching and Ward-identity diagnostics

## 0. Verdict

There is no single answer called “the BMS charge” until the action domain，boundary polarization and endpoint sector have been fixed。For the constructions of Stages 0--7 the verdict is：

| Transformation | Domain on which it is defined | Canonical status | Endpoint verdict |
|---|---|---|---|
| Proper bulk diffeomorphism/$U(1)$ gauge | Any completed domain，parameter vanishes at all asymptotic faces | Degeneracy of full $\Omega_{\rm ren}$ | Zero charge for every tangent variation |
| Ordinary smooth BMS | Fixed round $q_{AB}$，massless matched sector | Wald--Zoupas symmetry with finite cut charge and flux | Finite for the $1/u$ tail |
| Large Maxwell $U(1)$ | Fixed round massless Maxwell sector | Integrable cut charge with radiative flux | Finite under Stage 7 falloffs |
| Smooth generalized BMS | Not the fixed-$q$ fiber | Canonical only after a nonlocal or edge completion | Known nonlocal completion excludes the generic endpoint tail used here |
| Meromorphic extended BMS | Punctured sphere，not the smooth sphere domain | Requires puncture/defect data | Pole and small-circle terms are additional boundaries |
| Superrotation on generic $1/u$ tails | Tail-enlarged endpoint sector | Renormalized only after choosing a scale/corner completion | Logarithmic finite-part ambiguity |

For ordinary BMS in the conditional massless matched sector，the complete classical chain works：

$$\begin{align}
\boxed{ S_{\rm ren} \longrightarrow
\Omega_{\rm ren} \longrightarrow
Q_\xi^{\rm WZ} \longrightarrow
\text{flux balance} \longrightarrow
i^0\text{ matching}.
}
\end{align}$$

For smooth generalized or punctured extended BMS，and for generic massive scattering，the chain stops before an unambiguous global Hamiltonian。

At the quantum level，sections 15--16 give an order-by-order BV--BFV identity in a specified BMS-compatible dressed prescription。Its zero-remainder branch is a theorem only in the conditional matched perturbative sectors where the quantum master equation、the Faddeev--Kulish limit and all face-gluing equations hold。For generic logarithmic superrotation tails、massive $i^\pm$ data or meromorphic punctures，the result is instead an exact Ward identity with separately displayed $i^0$、$i^\pm$ and defect remainders；the missing matching theorem is not replaced by the soft theorem。

---

## 1. The three phase spaces used in this note

### 1.1 Fixed-frame radiative space

Let

$$\begin{align}
\mathcal S_{\rm rad}^{q}
\end{align}$$

be the on-shell space obtained from the fixed-round，fixed-$\Omega$ action domain of Stages 3--6。Its radiative form is

$$\begin{aligned}
\Omega_{\mathscr I} = \int_{\mathscr I} du\,d^2x\sqrt q \bigg[ & \frac1{32\pi G} \delta N^{AB}\wedge\delta C_{AB}
\\
& +\delta\dot\varphi\wedge\delta\varphi
\\
& +\delta F_u^{A(0)}\wedge\delta a_A
\bigg] +\Omega_{\rm cut}.
\end{aligned}$$

The endpoint class is that of `spatial infinity and endpoints.md`，including memory and the $1/u$ tail。

### 1.2 Conditional matched space

Let

$$\begin{align}
\mathcal S_{\rm match}^{\rm massless} \subset \mathcal S_{\mathscr I^-}^{q} \times \mathcal S_{\mathscr I^+}^{q}
\end{align}$$

be the subspace obeying the Ashtekar--Hansen regularity and fluxless matching conditions of Stage 7。This is the domain on which ordinary BMS charges can be compared across $i^0$。

For the positive theorem below this sector also has no timelike massive data and vanishing endpoint mass aspect at $i^\pm$。A remnant black hole or massive particle belongs to the obstructed timelike completion，not to this conditional null-only sector。

### 1.3 Enlarged celestial spaces

There are at least two inequivalent enlargements：

$$\begin{align}
\mathcal S_{\rm CP}, \qquad \mathcal S_{\rm edge}.
\end{align}$$

$\mathcal S_{\rm CP}$ denotes the nonlocal Campiglia--Peraza generalized-BMS phase space；$\mathcal S_{\rm edge}$ denotes a formal cotangent/edge extension。Neither is identified with

$$\begin{align}
\mathcal S_{\rm match}^{\rm massless}
\end{align}$$

unless an explicit symplectic map and compatible endpoint conditions are supplied。

---

## 2. Charge variation from the renormalized action

For a diffeomorphism-covariant Lagrangian，

$$\begin{align}
\delta L_{\rm ren} = E\delta\Phi +d\theta_{\rm ren}(\Phi;\delta\Phi).
\end{align}$$

The Noether current is

$$\begin{align}
J_\xi = \theta_{\rm ren}(\Phi;\delta_\xi\Phi) -i_\xi L_{\rm ren}.
\end{align}$$

On shell，

$$\begin{align}
J_\xi=dQ_\xi.
\end{align}$$

For a possibly field-dependent generator，the Iyer--Wald surface form is

$$\begin{align}
\boxed{ k_\xi(\delta\Phi) = \delta Q_\xi -Q_{\delta\xi} -i_\xi\theta_{\rm ren}(\delta\Phi).
}
\end{align}$$

All boundary and corner contributions produced in Stages 1--7 are included in $\theta_{\rm ren}$。Using only the bare Einstein--Hilbert potential would answer a different variational problem。The covariant construction originates in [Iyer--Wald](https://arxiv.org/abs/gr-qc/9403028)。

At null infinity radiation makes the naive Hamiltonian equation nonintegrable。The Wald--Zoupas prescription adds the boundary symplectic potential selected by the radiative polarization，producing：

$$\begin{align}
\delta Q_\xi^{\rm WZ}[C]
\end{align}$$

on a cut $C$ and a flux

$$\begin{align}
\mathcal F_\xi[\Delta\mathscr I]
\end{align}$$

such that

$$\begin{align}
\boxed{ Q_\xi^{\rm WZ}[C_2] -Q_\xi^{\rm WZ}[C_1] = \mathcal F_\xi[\Delta\mathscr I].
}
\end{align}$$

This is a flux-balance law，not a time-independent Hamiltonian。Wald--Zoupas introduced precisely this modification for boundaries carrying symplectic radiation。[Wald--Zoupas](https://arxiv.org/abs/gr-qc/9911095)

---

## 3. Proper gauge is a statement about the full two-form

A gauge parameter $\epsilon$ is proper iff

$$\begin{align}
\boxed{ \Omega_{\rm ren} \left( \delta\Phi,\delta_\epsilon\Phi \right) =0 \quad \text{for every allowed }\delta\Phi.
}
\end{align}$$

This test includes：

- bulk constraints；
- null radiative terms；
- endpoint and corner terms；
- edge variables，if present；
- field-dependent-parameter corrections。

Sufficient conditions in the present relative problem are：

$$\begin{align}
\epsilon|_{\partial M}=0
\end{align}$$

together with enough vanishing normal jets to preserve the chosen boundary data。On shell the contraction then reduces to constraints and vanishes。

Three common shortcuts are invalid：

1. vanishing on Minkowski alone；
2. vanishing of the bare bulk $\Omega$ while omitting corners；
3. a zero numerical charge at one phase-space point。

An asymptotic transformation with nonzero boundary parameter is large whenever its contraction produces a nonzero cut variation somewhere in phase space。

---

## 4. Why ordinary BMS preserves fixed round $q_{AB}$

Let $Y^A$ be a conformal Killing field of the round sphere and set

$$\begin{align}
\alpha := \frac12D_AY^A.
\end{align}$$

The Bondi residual vector has leading components

$$
\boxed{
\begin{aligned}
\xi^u
&=
f
=
T(x)+u\alpha(x),
\\
\xi^A
&=
Y^A-\frac1rD^Af+O(r^{-2}L^K),
\\
\xi^r
&=
-r\alpha+\frac12\Delta f+O(r^{-1}L^K).
\end{aligned}
}
$$

The angular metric transforms as

$$\begin{align}
\delta_\xi q_{AB} = \mathcal L_Yq_{AB} -2\alpha q_{AB}.
\end{align}$$

For a conformal Killing vector，

$$\begin{align}
\mathcal L_Yq_{AB} = 2\alpha q_{AB},
\end{align}$$

so

$$\begin{align}
\boxed{\delta_\xi q_{AB}=0.}
\end{align}$$

The compensating radial rescaling $-r\alpha\partial_r$ is why a Lorentz transformation can act nontrivially while the chosen round representative remains fixed。

The shear transforms，in the active convention $\delta_\xi g=\mathcal L_\xi g$，as

$$\begin{align}
\boxed{ \delta_\xi C_{AB} = fN_{AB} +\mathcal L_YC_{AB} -\alpha C_{AB} -2D_{\langle A}D_{B\rangle}f.
}
\end{align}$$

For round-sphere CKVs，

$$\begin{align}
D_{\langle A}D_{B\rangle}\alpha=0.
\end{align}$$

Hence the $u\alpha$ part does not create an overleading shear。

The CKVs close under Lie bracket and the smooth functions $T(x)$ form a module。The algebra is

$$\begin{aligned}
Y_{12} &= [Y_1,Y_2], \\
T_{12} &= Y_1^AD_AT_2-\alpha_1T_2 -(1\leftrightarrow2).
\end{aligned}$$

Therefore ordinary BMS is closed on the fixed-round phase space。For arbitrary smooth $Y^A$，the cancellation of $\delta q_{AB}$ fails and the transformation leaves this fiber。

---

## 5. Supertranslation charge and flux

Use

$$\begin{align}
Y^A=0, \qquad f=T(x).
\end{align}$$

In the Bondi normalization of the preceding notes，the integrable cut charge is

$$\begin{align}
\boxed{ Q_T[C_u] = \frac1{4\pi G} \int_{C_u} d^2x\sqrt q\, T M.
}
\end{align}$$

The coupled mass-aspect equation is

$$\begin{align}
\dot M = \frac14D_AD_BN^{AB} -\frac18N_{AB}N^{AB} -4\pi G\,T_{uu}^{(2)},
\end{align}$$

with

$$\begin{align}
T_{uu}^{(2)} = \dot\varphi^2 +q^{AB}F_{uA}^{(0)}F_{uB}^{(0)}
\end{align}$$

for the Stage 6 matter normalization。Therefore

$$
\boxed{
\begin{aligned}
\dot Q_T
=
\int_{S^2}d^2x\sqrt q
\bigg[
&
\frac1{16\pi G}
N^{AB}D_AD_BT
\\
&
-\frac{T}{32\pi G}
N_{AB}N^{AB}
-T\,T_{uu}^{(2)}
\bigg].
\end{aligned}
}
$$

The first term is the soft flux and the remaining terms are hard radiative fluxes。

### 5.1 Finiteness

For

$$\begin{align}
N_{AB}=O(|u|^{-2}\log^K|u|),
\end{align}$$

all terms are integrable。The memory constants in $C_{AB}$ do not enter the hard flux。Thus ordinary supertranslation charge and flux are finite on the generic tail sector of Stage 7。

### 5.2 Integrability

$Q_T[C_u]$ is an integrable functional on every cut。The transformation is not generated by one conserved Hamiltonian on the radiative history space because symplectic flux crosses $\mathscr I$。This distinction is exactly what the Wald--Zoupas construction encodes。

---

## 6. Ordinary Lorentz transformations

For $T=0$ and a global CKV $Y^A$，

$$\begin{align}
f=u\alpha.
\end{align}$$

Let

$$\begin{align}
\mathcal J_A^{\rm WZ}
\end{align}$$

denote the action-derived angular-momentum aspect including the local shear improvement fixed by the chosen WZ potential。The cut charge is

$$\begin{align}
\boxed{ Q_Y[C_u] = \int_{C_u} d^2x\sqrt q\, Y^A\mathcal J_A^{\rm WZ}.
}
\end{align}$$

Writing the answer in terms of $\mathcal J_A^{\rm WZ}$ is intentional：the raw Bondi coefficient usually called $N_A$ changes under local improvement and origin conventions，whereas the variational definition above is unambiguous once $\theta_{\rm ren}$ is fixed。

### 6.1 Why the generic tail does not obstruct global Lorentz

The potentially dangerous soft-superrotation tensor is，up to sphere integration by parts，

$$\begin{align}
\mathcal D_Y^{AB} := D^{\langle A}D^{B\rangle} \left( D_CY^C \right).
\end{align}$$

For a global CKV，

$$\begin{align}
\mathcal D_Y^{AB}=0.
\end{align}$$

Therefore the moment

$$\begin{align}
\int du\,uN_{AB}\mathcal D_Y^{AB}
\end{align}$$

vanishes before any endpoint limit。The $1/u$ tail obstructs genuine superrotations but not the six global Lorentz generators。

Under the additional spatial-infinity conditions of Stage 7，the Lorentz charges match across $i^0$。Those conditions are part of the theorem，not consequences of the local null action。[Prabhu--Shehzad](https://arxiv.org/abs/2110.04900)

---

## 7. Large Maxwell gauge transformations

In radial gauge the residual parameter obeys

$$\begin{align}
\partial_r\epsilon=0.
\end{align}$$

Preserving the radiative gauge at leading order gives

$$\begin{align}
\partial_u\epsilon=0, \qquad \epsilon=\epsilon(x).
\end{align}$$

Its action is

$$\begin{align}
\delta_\epsilon a_A=D_A\epsilon, \qquad \delta_\epsilon F_{uA}^{(0)}=0.
\end{align}$$

Let

$$\begin{align}
F_{ur} = \frac{\mathcal Q(u,x)}{r^2}+\cdots.
\end{align}$$

The integrable cut charge is

$$\begin{align}
\boxed{ Q_\epsilon[C_u] = \int_{C_u} d^2x\sqrt q\, \epsilon\mathcal Q.
}
\end{align}$$

The leading Maxwell constraint gives

$$\begin{align}
\dot{\mathcal Q} = D_AF_u^{A(0)}.
\end{align}$$

Hence

$$\begin{align}
\boxed{ \dot Q_\epsilon = -\int_{S^2} d^2x\sqrt q\, D_A\epsilon\,F_u^{A(0)}.
}
\end{align}$$

For $F_{uA}^{(0)}=O(|u|^{-2}\log^K|u|)$ the flux is finite。A constant $\epsilon$ gives the ordinary electric charge and has no radiative soft flux。

The charge is zero for every phase-space point only when the allowed boundary parameter is zero or when one has separately quotient-fixed the corresponding global gauge action。Thus nonconstant $\epsilon(x)$ is large in the declared Maxwell phase space。

---

## 8. Classical algebra and matching

Let a generator be

$$\begin{align}
\chi=(T,Y,\epsilon).
\end{align}$$

For ordinary smooth BMS and large $U(1)$，

$$
\boxed{
\begin{aligned}
Y_{12}
&=
[Y_1,Y_2],
\\
T_{12}
&=
Y_1^AD_AT_2-\alpha_1T_2
-(1\leftrightarrow2),
\\
\epsilon_{12}
&=
Y_1^AD_A\epsilon_2
-Y_2^AD_A\epsilon_1.
\end{aligned}
}
$$

The WZ bracket represents this semidirect algebra。After normalizing all charges to vanish on Minkowski，the field-dependent extension familiar in enlarged superrotation algebras vanishes on the ordinary global BMS subalgebra。

### 8.1 Parameter matching

Across $i^0$ identify parameters by the antipodal map：

$$\begin{align}
T^+ = \mathcal A^*T^-, \qquad Y^+ = \mathcal A_*Y^-, \qquad \epsilon^+ = \mathcal A^*\epsilon^-.
\end{align}$$

With the Stage 7 regularity and fluxless hypotheses，

$$\begin{align}
\boxed{ Q_{\chi}^{\mathscr I^+_-} = Q_{\chi}^{\mathscr I^-_+}.
}
\end{align}$$

Combining this with the two null flux-balance laws gives a classical conservation relation between incoming and outgoing data。

For massive states one must add the $H^3_\pm$ hard charges。Omitting them is not a harmless convention；it violates the global balance law and misses the timelike logarithmic obstruction。

---

## 9. Smooth generalized BMS: exact decision tree

Take

$$\begin{align}
Y^A\in\operatorname{Vect}(S^2)
\end{align}$$

arbitrary and smooth。

### 9.1 Fixed-source fiber

Since

$$\begin{align}
\delta_Yq_{AB} = \mathcal L_Yq_{AB}
- (D_CY^C)q_{AB}
\end{align}$$

is generally nonzero，$Y$ maps

$$\begin{align}
\mathcal S_q \longrightarrow \mathcal S_{q+\delta_Yq}.
\end{align}$$

It is a covariance transformation of the source bundle，not a canonical symmetry in one fixed fiber。No functional

$$\begin{align}
H_Y:\mathcal S_q\to\mathbb R
\end{align}$$

can generate a vector field that is not tangent to $\mathcal S_q$。

### 9.2 Boundary-variable space

If $q_{AB}$ is made tangent，the physical Einstein symplectic current contains the local-covariant obstruction

$$\begin{align}
\Omega^{-1}
\delta q^{AB}\wedge\delta N_{AB}.
\end{align}$$

Stage 5 showed that a strict local-covariant ambiguity does not remove it。Thus varying $q$ is classically legitimate，but the standard radiative phase space is not thereby automatically enlarged。

### 9.3 Nonlocal completion

Campiglia--Peraza construct an extended phase space on which $\operatorname{Diff}(S^2)$ acts canonically and the charges reproduce the generalized BMS algebra。[Campiglia--Peraza](https://arxiv.org/abs/2002.06691)

This proves existence of one completion。It does not prove uniqueness，nor equality with the action-derived fixed-frame space。Moreover its stronger endpoint assumptions exclude the generic

$$\begin{align}
N_{AB}\sim u^{-2}
\end{align}$$

tail retained in Stage 7。

### 9.4 Edge completion

An added cotangent pair

$$\begin{align}
(q_{AB},\pi_q^{AB})
\end{align}$$

admits the canonical lift

$$\begin{align}
\Omega_{\rm edge} = \int\delta\pi_q^{AB}\wedge\delta q_{AB}.
\end{align}$$

This makes sphere diffeomorphisms Hamiltonian abstractly。`dynamical celestial metric.md` section 12 now supplies the missing finite-slab action：the bulk response、edge collar and interface multiplier give

$$\begin{align}
\pi_{q,\rm ren}^{AB} + p_{\rm grav}^{AB} =0,
\end{align}$$

while an edge Wess--Zumino transgression cancels the leading

$$\begin{align}
\Omega^{-1}
\delta q^{AB}\wedge\delta N_{AB}
\end{align}$$

class。This is a fixed-frame enlarged completion，not a contradiction of the original-field local-covariant no-go。Its generic endpoint-tail limit remains open。

### Verdict

$$\begin{align}
\boxed{ \text{Smooth generalized BMS is not an established canonical symmetry of the generic-tail action domain constructed here.}
}
\end{align}$$

It is canonical in specified enlarged spaces with different nonlocality，edge content or endpoint assumptions。

---

## 10. Meromorphic extended BMS and punctures

Extended BMS takes local conformal fields such as

$$\begin{align}
Y^z \sim \frac{1}{(z-z_i)^n}.
\end{align}$$

This changes the manifold：

$$\begin{align}
S^2 \longrightarrow
S^2\setminus\{z_i\}.
\end{align}$$

Every sphere integration by parts then contains additional circles

$$\begin{align}
\partial D_\varepsilon(z_i).
\end{align}$$

The consequences are：

1. the vector field and transformed metric are not smooth at $z_i$；
2. the soft tensor containing three derivatives of $Y$ is more singular；
3. charge integrals require a distributional prescription or pole subtraction；
4. integrations by parts acquire residue/small-circle terms；
5. the algebra may acquire defect-dependent cocycles；
6. the action needs boundary conditions and possibly edge modes at each puncture。

Therefore a meromorphic generator is an explicit diffeomorphism on the punctured manifold，but it is not a transformation of the smooth-sphere phase space。

`dynamical celestial metric.md` section 13 constructs the required conditional puncture sector。The precise domain is the direct limit of finite Laurent-polyhomogeneous pole strata。On every finite stratum：

- circular excision and the explicit Laurent primitive remove all power/log divergences；
- a small-circle inflow transgression makes the action differentiable；
- a Virasoro coadjoint-orbit edge action supplies defect momenta；
- charges take the finite form

$$\begin{align}
H_Y^{\rm ren} = \operatorname*{FP} H_{Y,\rm bulk} + \sum_i \operatorname{Res}_{z_i} \left( Y\mathcal T_i\,dz \right) + \text{c.c.}；
\end{align}$$

- their algebra contains the residue cocycle

$$\begin{align}
K_i(L_m,L_n) = \frac{c_i}{12} (m^3-m) \delta_{m+n,0}；
\end{align}$$

- orientation-reversed sewing matches Laurent jets and projective structures and imposes opposite defect momentum flow。

This does not produce a unique enlarged theory。There is no finite pole-order cap closed under the Witt bracket and no uniform finite counterterm list；the defect holonomy、coadjoint orbit、projective structure、central coefficient and finite-part scheme are additional data。In particular，the Nguyen--Salzer Alekseev--Shatashvili coefficient has not been derived from the Einstein--Hilbert action。

Compère--Fiorucci--Ruzziconi provide a different smooth $\operatorname{Diff}(S^2)$ super-Lorentz phase space with a renormalized symplectic structure，[arXiv:1810.00377](https://arxiv.org/abs/1810.00377)，again illustrating that the answer depends on the chosen completion rather than on a unique “largest BMS group”。

---

## 11. Generic tails and the superrotation anomaly

For a non-CKV smooth $Y^A$，the soft charge includes the tensor moment

$$\begin{align}
\int^Udu\, uN_{AB}\mathcal D_Y^{AB}.
\end{align}$$

With

$$\begin{align}
N_{AB} = -\frac{C_{AB}^{(1)}}{u^2}+\cdots,
\end{align}$$

this is

$$\begin{align}
-\log U
\int_{S^2}
d^2x\sqrt q\, C_{AB}^{(1)} \mathcal D_Y^{AB} +O(1).
\end{align}$$

Define

$$\begin{align}
\mathcal Q_Y^{\log} := -\int_{S^2} d^2x\sqrt q\, C_{AB}^{(1)} \mathcal D_Y^{AB}.
\end{align}$$

A minimal subtraction produces

$$\begin{align}
H_Y^{\rm ren}(\mu) = \lim_{U\to\infty} \left[ H_Y(U) -\mathcal Q_Y^{\log}\log(U\mu) \right].
\end{align}$$

Then

$$\begin{align}
\boxed{ H_Y^{\rm ren}(\mu') -H_Y^{\rm ren}(\mu) = -\mathcal Q_Y^{\log} \log\frac{\mu'}{\mu}.
}
\end{align}$$

The logarithmic coefficient is the classical tail observable。Thus subtraction restores finiteness but not a unique scale-independent Hamiltonian。Geiller--Laddha--Zwikel find precisely this logarithmic soft-superrotation structure in the nonpeeling solution space。[Geiller--Laddha--Zwikel](https://arxiv.org/abs/2407.07978)

---

## 12. From classical balance to a quantum Ward identity

### 12.1 What the classical result says

For a matched ordinary BMS or large-$U(1)$ generator，

$$\begin{align}
Q_\chi^+ = Q_\chi^-+\text{radiative flux}
\end{align}$$

is a classical identity on the conditional solution space。After splitting a charge into soft and hard parts，

$$\begin{align}
Q_\chi = Q_\chi^{\rm soft} +Q_\chi^{\rm hard},
\end{align}$$

one obtains the formal scattering relation

$$\begin{align}
Q_\chi^+\mathcal S -\mathcal S Q_\chi^- =0.
\end{align}$$

This is not yet a theorem about the quantum gravitational $S$-matrix。

### 12.2 Required gauge-fixed action

Choose a BRST differential $s$ and gauge-fixing fermion $\Psi$：

$$\begin{align}
S_{\rm gf} = S_{\rm ren} +s\Psi +S_{\rm ghost}.
\end{align}$$

One must prove：

1. $s$ is tangent to the off-shell polyhomogeneous action domain；
2. ghost and antighost falloffs preserve all boundary/corner conditions；
3. proper gauge transformations are BRST exact while asymptotic large transformations survive as boundary symmetries；
4. the $i^0/i^\pm$ gluing conditions are BRST stable；
5. the renormalized measure is invariant or has a computed anomaly。

None follows merely from the classical CPS degeneracy test。

### 12.3 Change-of-variables identity

For an insertion $\mathcal O$，a regulated asymptotic transformation gives

$$\begin{align}
\boxed{ \left\langle
\delta_\chi\mathcal O \right\rangle + i \left\langle \mathcal O\,\delta_\chi S_{\rm gf} \right\rangle + \left\langle \mathcal O\,\mathcal A_\chi \right\rangle =0, }
\end{align}$$

where $\mathcal A_\chi$ is the measure/Jacobian anomaly。Only if

$$\begin{align}
\delta_\chi S_{\rm gf}=0, \qquad \mathcal A_\chi=0
\end{align}$$

up to the asymptotic charge insertion does this become

$$\begin{align}
\boxed{ \left\langle{\rm out}\right| \left( Q_\chi^+\mathcal S -\mathcal S Q_\chi^- \right) \left|{\rm in}\right\rangle =0.
}
\end{align}$$

### 12.4 Infrared input

In four dimensions the undressed Fock-space gravitational $S$-matrix is infrared singular。A Ward identity must specify one of：

- dressed asymptotic states；
- an inclusive observable；
- a regulated amplitude together with an explicit infrared subtraction。

For massive matter，the $H^3_\pm$ hard charges and timelike drag sector must be included。For logarithmic soft theorems，the scale dependence of section 11 must appear in the anomalous Ward identity rather than be silently discarded。

### 12.5 Current benchmark

Isen--Kraus--Monten--Myers derive leading and subleading soft-graviton relations from a gravitational path integral with asymptotic boundary conditions at tree level，while explicitly retaining superrotation-pole and corner subtleties。[arXiv:2603.17045](https://arxiv.org/abs/2603.17045)

This is a benchmark for the last arrow。It does not supply the generic polyhomogeneous massive off-shell action missing in Stage 7。

---

## 13. Stage 8 theorem

### Theorem 13.1：classical conditional sector

On

$$\begin{align}
\mathcal S_{\rm match}^{\rm massless}
\end{align}$$

with fixed round $q_{AB}$，the full renormalized two-form gives：

1. proper compactly supported diffeomorphisms and Maxwell gauge transformations as degeneracies；
2. finite，integrable ordinary-BMS and large-$U(1)$ cut charges；
3. finite radiative fluxes for the $1/u$ endpoint tail；
4. the ordinary BMS $\ltimes$ large-$U(1)$ algebra；
5. antipodally matched charges across $i^0$ under the Stage 7 regularity/fluxless hypotheses。

The transformations are explicitly represented by residual diffeomorphisms/gauge transformations。No symmetry has been inferred only from a soft theorem。

### Obstruction 13.2：enlarged symmetries

On the generic-tail domain：

- arbitrary smooth $Y^A$ is not tangent to the fixed-$q$ fiber；
- allowing $\delta q$ activates the local-covariant symplectic obstruction；
- the known nonlocal generalized-BMS phase space uses stronger endpoint conditions；
- meromorphic $Y^A$ requires the nonunique puncture/defect completion of section 10；
- the $1/u$ tail gives a scale-dependent logarithmic superrotation charge；
- massive scattering requires an unconstructed coupled $i^\pm$ corner action。

Thus neither generalized nor extended BMS has a unique global Hamiltonian on the action domain constructed here。

### Conditional quantum statement 13.3

If，in addition，

1. the Stage 7 global action obstruction is solved；
2. BRST boundary conditions and the measure are anomaly controlled；
3. the infrared scattering prescription is specified；
4. all $i^0/i^\pm$ hard sectors are included；

then invariance of the gauge-fixed path integral implies

$$\begin{align}
\left\langle{\rm out}\right| \left( Q_\chi^+\mathcal S -\mathcal S Q_\chi^- \right) \left|{\rm in}\right\rangle =0.
\end{align}$$

Without these hypotheses the Ward identity is formal，not proved。

---

## 14. Machine checks

Mathematica verifies：

1. multiplying the mass-aspect equation by $1/(4\pi G)$ gives exactly

$$\begin{align}
\frac1{16\pi G}D_AD_BN^{AB}
   - \frac1{32\pi G}N_{AB}N^{AB}
   - T_{uu}^{(2)};
\end{align}$$

2. on the unit round sphere，for the representative boost

$$\begin{align}
\alpha=\cos\theta,
\end{align}$$

   the complete coordinate Hessian satisfies

$$\begin{align}
D_{\langle A}D_{B\rangle}\alpha=0;
\end{align}$$

   rotations have $\alpha=0$ and the other boosts follow by $SO(3)$ covariance；
3. the scale shift of the minimally subtracted superrotation moment is

$$\begin{align}
-\mathcal Q_Y^{\log}\log(\mu'/\mu).
\end{align}$$

The WZ existence，Ashtekar--Hansen matching and path-integral statements are source-derived。Section 15 gives the order-by-order BV--BFV/pAQFT completion and states explicitly which null-boundary analytic and anomaly conditions remain assumptions；no nonperturbative measure is claimed。

---

## 15. BRST/BV--BFV completion on the polyhomogeneous domain

### 15.1 Quantum category and verdict

There is no presently defined nonperturbative measure

$$\begin{align}
\mathcal Dg
\end{align}$$

on the full gravitational configuration space，and Einstein gravity does not admit a finite all-loop counterterm list。The meaningful construction is perturbative：

$$\begin{align}
\boxed{ \text{Lorentzian pAQFT/BV--BFV gravitational EFT at fixed loop and derivative order。}
}
\end{align}$$

Fix：

1. an actual background $g_0$ in one of the finite-slab polyhomogeneous solution classes；
2. a finite radial、endpoint and puncture regulator；
3. one finite radial/Laurent index window；
4. a loop order $L$ and EFT derivative order $D$；
5. anomaly-free matter content；
6. the edge、corner and puncture fields of sections 9--10 and `dynamical celestial metric.md` sections 12--13；
7. a Green-hyperbolic gauge-fixed bulk operator。

At fixed $(L,D)$ only finitely many local EFT counterterms occur。The word “measure” below means the corresponding renormalized time-ordered products and local $S$-matrices as a formal power series in $\hbar$ and EFT couplings。It does not mean a countably additive measure on metrics。

### 15.2 Proper ghosts versus asymptotic symmetries

Let

$$\begin{align}
\operatorname{lead}(c) = \left( f_c,Y_c^A \right)
\end{align}$$

be the supertranslation and sphere-vector leading data of an asymptotic diffeomorphism ghost。The gauge BRST complex uses the proper ideal

$$\begin{align}
\boxed{ \mathfrak g_{\rm pr} := \ker\operatorname{lead}.
}
\end{align}$$

Equivalently，one may require the proper ghost to be flat at $\mathscr I$，

$$\begin{align}
c_{\rm pr}^\mu = O(\Omega^\infty),
\end{align}$$

or use the weaker boundary-trivial polyhomogeneous representatives obtained by solving the gauge-preservation equations with

$$\begin{align}
f_c=0, \qquad Y_c^A=0.
\end{align}$$

Because the BMS bracket of two zero-leading generators again has zero leading data，

$$\begin{align}
\left[ \mathfrak g_{\rm pr}, \mathfrak g_{\rm pr} \right] \subset \mathfrak g_{\rm pr}.
\end{align}$$

Large BMS、smooth generalized-BMS and puncture transformations are not integrated over as proper gauge ghosts。They act on the BRST cohomology as boundary/global symmetries。This prevents a nonzero asymptotic charge from becoming BRST exact merely because the underlying transformation is a diffeomorphism。

### 15.3 BV fields and differential

Write

$$\begin{align}
g_{\mu\nu} = g_{0\mu\nu} + \kappa h_{\mu\nu}, \qquad \kappa^2=32\pi G.
\end{align}$$

The bulk nonminimal BV fields are

$$\begin{align}
\Phi_{\rm bulk} = \left( h_{\mu\nu}, c^\mu, \bar c_\mu, B_\mu； h^{*\mu\nu}, c^*_\mu, \bar c^{*\mu}, B^{*\mu} \right).
\end{align}$$

With the convention that $s$ acts from the left，

$$
\boxed{
\begin{aligned}
sg_{\mu\nu}
&=
\mathcal L_cg_{\mu\nu},
\\
sc^\mu
&=
c^\nu\nabla_\nu c^\mu,
\\
s\bar c_\mu
&=
B_\mu,
\\
sB_\mu
&=
0.
\end{aligned}
}
$$

The first two equations give

$$\begin{align}
s^2g_{\mu\nu}=0, \qquad s^2c^\mu=0
\end{align}$$

by the graded Jacobi identity。

For the fixed-area smooth edge sector introduce a boundary ghost $\gamma^A$ for the diagonal bulk--edge redundancy：

$$\begin{align}
s\gamma^A = \gamma^B\partial_B\gamma^A,
\end{align}$$

$$\begin{align}
\boxed{ sq_{AB} = \mathcal L_\gamma q_{AB}
- \left( D_C\gamma^C \right)
q_{AB}.
}
\end{align}$$

$P_{\rm ren}^{AB}$ transforms by the cotangent lift。The gluing constraint

$$\begin{align}
P_{\rm ren}^{AB} + p_{\rm grav}^{AB} =0
\end{align}$$

is BRST stable because the bulk and edge momenta transform in the same dual representation。

At puncture $i$，let $\eta_i(w_i)$ be the odd meromorphic ghost。The Virasoro BRST differential is

$$
\boxed{
\begin{aligned}
sf_i
&=
\eta_i f_i',
\\
s\eta_i
&=
\eta_i\eta_i',
\\
s\mathcal T_i
&=
\eta_i\mathcal T_i'
+
2\eta_i'\mathcal T_i
-
\frac{c_i}{12}
\eta_i'''.
\end{aligned}
}
$$

The central term is the coadjoint action associated with the Gelfand--Fuchs cocycle。Nilpotency is equivalent to its cocycle Jacobi identity。The sewing constraints are BRST stable when

$$\begin{align}
\eta_i = \varphi^*\eta_j
\end{align}$$

and the levels/projective structures obey section 10。

### 15.4 BRST-stable polyhomogeneous index family

Let

$$\begin{align}
\mathscr M_{\rm phg}
\end{align}$$

be the metric/matter index family constructed in the classical action analysis，and let

$$\begin{align}
\mathscr V_{\rm phg}
\end{align}$$

be the corresponding vector-field/ghost family。The required closure conditions are

$$\begin{align}
\boxed{ \mathcal L_{\mathscr V_{\rm phg}}
\mathscr M_{\rm phg} \subset \mathscr M_{\rm phg}, \qquad \left[ \mathscr V_{\rm phg}, \mathscr V_{\rm phg} \right]
\subset \mathscr V_{\rm phg}.
}
\end{align}$$

They are enforced by saturating the seed indices under：

- products and inverse-metric expansions；
- $\Omega\partial_\Omega$、$\partial_u$ and $D_A$；
- puncture $\,\rho_i\partial_{\rho_i}$ and $\partial_{\phi_i}$；
- Lie derivatives and graded Lie brackets；
- trace、pullback、restriction and corner incidence maps；
- two field variations。

At a finite radial/Laurent window the saturation is locally finite。For the full meromorphic algebra it is a direct limit，exactly as in the classical puncture sector。

Antighosts and $B$ fields use the dual falloffs selected by the gauge-fixing pairing。Antifields use the density-dual index family so that

$$\begin{align}
\int
\Phi^*s\Phi
\end{align}$$

has the same renormalized bulk/face/corner expansion as the classical action。This is the precise sense in which the boundary conditions are BRST stable；assigning every ghost the same naive falloff as the metric would not suffice。

### 15.5 Gauge fixing and the classical BV--BFV identity

Let

$$\begin{align}
F_\mu[h;g_0] = \nabla^\nu h_{\mu\nu}
- \frac12\nabla_\mu h
\end{align}$$

be background de Donder gauge in the interior。Near $\mathscr I$ it is smoothly interpolated to a boundary gauge that preserves the selected Bondi/polyhomogeneous representative。The interpolation must be chosen so that the linearized gauge-fixed operator remains Green hyperbolic；this is an analytic hypothesis，not a consequence of the falloffs。

Take

$$\begin{align}
\boxed{ \Psi = \int_{M_{\rm reg}} d^4x\sqrt{-g_0}\, \bar c^\mu \left( F_\mu + \frac\alpha2B_\mu \right) + \Psi_{\rm glue} + \Psi_{\rm punc}.
}
\end{align}$$

The regulated BV master action is

$$\begin{align}
\boxed{ S_{\rm BV,reg} = S_{\rm classical,reg}^{\rm total} + \left\langle \Phi^*,s\Phi \right\rangle_{ M,\partial M,\text{corners}
}, }
\end{align}$$

where

$$\begin{align}
S_{\rm classical,reg}^{\rm total}
\end{align}$$

contains the action、edge、tail and puncture transgressions already constructed。$\Psi_{\rm glue}$ fixes only the diagonal redundancies introduced by duplicated edge variables；it does not gauge away physical large transformations。

Gauge fixing is the BV canonical transformation generated by $\Psi$ followed by the antifield-zero Lagrangian submanifold：

$$\begin{align}
\boxed{ S_{\rm gf,reg} = \left. \exp \left[ \left( \Psi,\cdot \right) \right] S_{\rm BV,reg} \right|_{\Phi^*=0}.
}
\end{align}$$

Equivalently，after including the nonminimal $\bar c^*B$ term，its field-only representative is

$$\begin{align}
S_{\rm gf,reg} = S_{\rm classical,reg}^{\rm total} + s\Psi.
\end{align}$$

On a manifold with boundary the classical master equation is replaced by the BV--BFV identity

$$\begin{align}
\boxed{ \iota_Q\omega_{\rm BV} = \delta S_{\rm BV,reg} + \pi^*\alpha_{\rm BFV}^{\partial}, }
\end{align}$$

and hence schematically

$$\begin{align}
\boxed{ \frac12 \left( S_{\rm BV,reg}, S_{\rm BV,reg} \right) = \pi^*S_{\rm BFV}^{\partial}.
}
\end{align}$$

Oppositely oriented gluing faces have opposite BFV potentials。The edge momentum equations、antipodal ghost matching and puncture sewing therefore cancel the internal boundary BFV charges。Unsewn components retain the physical asymptotic charge rather than being declared gauge。

### 15.6 Renormalized quantum master equation

At fixed $(L,D)$，renormalize bulk、boundary、corner、edge and puncture time-ordered products simultaneously。The renormalized BV operator is

$$\begin{align}
\widehat s_{\rm ren} := \left( S_{\rm ren}, \cdot \right)
- i\hbar
\Delta_{\rm ren}.
\end{align}$$

The possible failure of the quantum master equation is

$$\begin{align}
\boxed{ \mathcal A_{\rm BV} := \frac12 \left( S_{\rm ren}, S_{\rm ren} \right)
- i\hbar
\Delta_{\rm ren}S_{\rm ren}
- S_{\rm BFV}^{\partial}.
}
\end{align}$$

It obeys the Wess--Zumino consistency condition

$$\begin{align}
s\mathcal A_{\rm BV}=0
\end{align}$$

and therefore defines a local relative BRST cohomology class

$$\begin{align}
\left[ \mathcal A_{\rm BV} \right] \in H_{\rm rel}^{1,4} \left( s\mid d \right),
\end{align}$$

including boundary/corner descendants。If this class vanishes，a local finite counterterm removes the representative and

$$\begin{align}
\widehat s_{\rm ren}^2=0
\end{align}$$

through the chosen perturbative order。

The four-dimensional bulk Einstein--matter candidate anomalies are controlled by the standard local BRST cohomology。This does not automatically remove：

- a boundary Weyl/diffeomorphism anomaly；
- the puncture Gelfand--Fuchs class；
- a mismatch of sewn levels or projective structures；
- an infrared anomaly，which is not a UV BV anomaly。

Those relative classes must cancel by inflow、sewing or an explicit choice of anomaly-free boundary matter。

### 15.7 What the renormalized measure means

Define the regulated generating functional only perturbatively：

$$\begin{align}
\boxed{ Z_{\rm ren}[J] \in \mathbb C \left[ \left[ \hbar,\kappa, \left\{ g_a^{\rm EFT} \right\} \right] \right].
}
\end{align}$$

Its coefficients are Epstein--Glaser/pAQFT time-ordered distributions extended across coincident points，with local ambiguities absorbed into all symmetry-compatible bulk and stratified boundary operators through order $(L,D)$。The anomalous Master Ward identity is

$$\begin{align}
\boxed{ \left\langle
\widehat s_{\rm ren}\mathcal O \right\rangle = \frac{i}{\hbar} \left\langle \mathcal O\, \mathcal A_{\rm BV} \right\rangle.
}
\end{align}$$

Thus “measure invariance” means

$$\begin{align}
\mathcal A_{\rm BV}=0
\end{align}$$

in the renormalized BRST cohomology。It is not a statement about a formal Jacobian of an undefined $\mathcal Dg$。

Because gravity is an EFT，raising $L$ or $D$ opens new invariant operators。Because full meromorphic extended BMS has unbounded pole order，raising the Laurent stratum opens new puncture counterterms。Therefore：

$$\begin{align}
\boxed{ \text{there is no uniform finite counterterm list and no nonperturbative measure theorem here。}
}
\end{align}$$

### 15.8 Matching stability

Let $\mathcal A:S^2\to S^2$ denote the antipodal map。A matching constraint

$$\begin{align}
\mathcal G_\Phi := \Phi_+^{i^0}
- \mathcal A^*\Phi_-^{i^0} =0
\end{align}$$

is BRST stable exactly when the ghosts obey

$$\begin{align}
c_+^{i^0} = \mathcal A^*c_-^{i^0}.
\end{align}$$

Then

$$\begin{align}
s\mathcal G_\Phi = \mathcal L_{c_+}\mathcal G_\Phi
\end{align}$$

for tensorial data，and hence the matching ideal is preserved。The same statement holds for the $i^\pm$ edge gluing constraints after the Dollard/tail fields and their ghosts are included。If matching is imposed only on physical fields but not on ghosts and antifields，the BV domain is not closed。

### Theorem 15.1

At fixed regulators，finite radial/Laurent window and perturbative EFT order $(L,D)$，assume：

1. the interpolating gauge-fixed operator is Green hyperbolic；
2. the saturated index families satisfy section 15.4；
3. all internal edge/corner/puncture BFV data are sewn with opposite orientation；
4. the relative anomaly class

$$\begin{align}
[\mathcal A_{\rm BV}]
\end{align}$$

   vanishes through that order。

Then the displayed BV action：

- has a nilpotent classical BRST differential tangent to the polyhomogeneous domain；
- obeys the classical BV--BFV master identity；
- admits renormalized time-ordered products and a nilpotent quantum BV differential through $(L,D)$；
- preserves the $i^0/i^\pm$ and puncture sewing ideals；
- leaves nonzero asymptotic symmetries as actions on BRST cohomology rather than proper gauge。

This is the strongest justified “BRST-stable renormalized measure” statement。It is order-by-order and conditional on Green hyperbolicity and relative anomaly cancellation；it is not a nonperturbative quantum-gravity construction。

### 15.9 Sources and verification boundary

Sources：

- Alberto Cattaneo and Michele Schiavina，[BV-BFV approach to General Relativity, Einstein-Hilbert action](https://arxiv.org/abs/1509.05762)。
- Glenn Barnich，Friedemann Brandt and Marc Henneaux，[Local BRST cohomology in Einstein--Yang--Mills theory](https://arxiv.org/abs/hep-th/9505173)。
- Kasia Rejzner，[Effective quantum gravity observables and locally covariant QFT](https://arxiv.org/abs/1603.06993)。
- Kasia Rejzner，[BV quantization in perturbative algebraic QFT](https://arxiv.org/abs/2004.14272)。

Source-derived：

- Einstein--Hilbert gravity admits compatible BV--BFV data for spacelike/timelike boundaries；
- local BRST cohomology classifies consistent deformations and candidate anomalies in Einstein--matter systems；
- perturbative quantum gravity can be treated as an effective theory in Lorentzian pAQFT/BV；
- anomalous Master Ward identities replace a naive invariant functional measure。

The cited BV--BFV gravity theorem does not cover a null conformal boundary or the present polyhomogeneous/punctured limit。Those ingredients are the regulated extension constructed here and retain the explicit analytic hypotheses above。

Verified：

- the bulk and smooth-edge nilpotency statements reduce to the graded Jacobi identity；
- Sage evaluated the puncture differential in the exterior algebra generated by

$$\begin{align}
\eta,\eta',\ldots,\eta^{(4)}
\end{align}$$

  and returned zero for both

$$\begin{align}
s^2f_i \qquad\text{and}\qquad s^2\mathcal T_i,
\end{align}$$

  including the $c_i\eta_i'''/12$ term；
- direct substitution verifies

$$\begin{align}
s \left( \Phi_+^{i^0}
  - \mathcal A^*\Phi_-^{i^0} \right) = \mathcal L_{c_+} \left( \Phi_+^{i^0}
  - \mathcal A^*\Phi_-^{i^0} \right)
\end{align}$$

  under antipodal ghost matching。

Assumptions：

- perturbative EFT rather than nonperturbative quantum gravity；
- anomaly-free bulk matter through the chosen order；
- Green-hyperbolic gauge fixing；
- uniform polyhomogeneous remainder estimates under the required field variations；
- all edge、tail and puncture fields are included in the BV complex。

Not verified：

- Green hyperbolicity and propagator estimates for the full generic-tail、null-boundary、punctured geometry；
- vanishing of every relative boundary/corner anomaly for a specified matter spectrum；
- a nonperturbative measure、all-loop convergence or a uniform infinite-pole renormalization。

---

## 16. Dressed global Ward identity and its exact matching remainder

### 16.1 Infrared prescription

The undressed gravitational Fock operator is not the object entering the Ward identity。Fix a soft-energy regulator $\lambda$ and one BMS superselection sector $\mathbf q$，and define

$$\begin{align}
\boxed{ \mathcal S_{\rm dr}^{\mathbf q} := \lim_{\lambda\to0} \mathscr W_+^\dagger \left( \lambda;\mathbf q \right) \mathcal S_\lambda \mathscr W_- \left( \lambda;\mathbf q \right).
}
\end{align}$$

Here $\mathscr W_\pm$ are BMS-compatible Faddeev--Kulish coherent dressings，including the Coulomb phase。The limit means an order-by-order limit of matrix elements in the perturbative sectors in which it exists；it is not asserted to exist as a nonperturbative operator on the original Fock space。Incoming and outgoing states must lie in the same total BMS-charge sector。If their sectors differ，the exclusive matrix element vanishes rather than furnishing a Ward identity between two different sectors。

The equivalent celestial factorization is

$$\begin{align}
\mathcal O_i(p_i) = \mathcal W_i(p_i) \widetilde{\mathcal O}_i(p_i), \qquad \mathcal M_n = \mathcal M_{\rm soft} \mathcal M_{\rm finite},
\end{align}$$

where $\widetilde{\mathcal O}_i$ creates a dressed particle。For a massless momentum

$$\begin{align}
p=\omega\widehat p
\end{align}$$

and a massive momentum

$$\begin{align}
p=m\widehat p,
\end{align}$$

one convenient Goldstone representation is

$$\begin{align}
\boxed{ \mathcal W(\omega\widehat p) = \exp \left[ i\omega C^{(0)}(\widehat p) \right], }
\end{align}$$

and

$$\begin{align}
\boxed{ \mathcal W(m\widehat p) = \exp \left[ \frac{im}{2} \int d^2\widehat q\, \mathcal G \left( \widehat p;\widehat q \right) C^{(0)}(\widehat q) \right], }
\end{align}$$

with

$$\begin{align}
\mathcal G \left( \widehat p;\widehat q \right) = \frac1\pi \left[ \frac{\rho} {1+\rho^2|z-w|^2} \right]^3.
\end{align}$$

This is the precise sense in which the hard fields used below are interacting or dressed fields。A free massive field inserted in the $i^\pm$ charge misses the long-range Newtonian contribution。

### 16.2 Total external charges and interface defects

For either sign，define the charge acting on the external dressed Hilbert space by

$$\begin{align}
\boxed{ \widehat Q_{\chi,\pm}^{\rm ren}(\mu) := Q_{\chi,\mathscr I^\pm}^{\rm soft,ren}(\mu) + Q_{\chi,\mathscr I^\pm}^{\rm hard,null} + Q_{\chi,i^\pm}^{\rm hard,dr} + \sum_{p\subset\mathscr I^\pm} Q_{\chi,p}^{\rm def}.
}
\end{align}$$

The $i^\pm$ term is absent in a purely massless sector。For a meromorphic sphere vector field $Y$，the puncture contribution in the defect completion of section 10 is

$$\begin{align}
Q_{Y,p_i}^{\rm def} = \operatorname*{Res}_{w_i=0} \left[ Y^{w_i}\mathcal T_i\,dw_i \right] + \mathrm{c.c.}
\end{align}$$

For a massive scalar，a source-derived representative of the future timelike superrotation charge is

$$\begin{align}
\boxed{ Q_Y^{i^+} = \lim_{\tau\to\infty} \frac{\tau^3}{8} \int_{\mathcal H} d^3\widehat p\, Y_{\mathcal H}^a T_{\tau a}.
}
\end{align}$$

The replacement

$$\begin{align}
b^\dagger(\widehat p)
\longmapsto
\widetilde b^\dagger(\widehat p) = \exp \left[ - \frac{im}{2} \int d^2\widehat q\, \mathcal G \left( \widehat p;\widehat q \right) C^{(0)}(\widehat q) \right] b^\dagger(\widehat p)
\end{align}$$

gives

$$\begin{align}
Q_Y^{i^+} = Q_Y^{i^+,\rm free}
- \Delta Q_Y^{i^+},
\end{align}$$

where

$$\begin{align}
\boxed{ \Delta Q_Y^{i^+} = \frac{m^3}{32(2\pi)^3} \int d^2\widehat q \int_{\mathcal H}d^3\widehat p\, Y_{\mathcal H}^a \partial_a\mathcal G \left( \widehat p;\widehat q \right) C^{(0)}(\widehat q) b^\dagger(\widehat p)b(\widehat p).
}
\end{align}$$

The past formula is its orientation-reversed analogue。This correction is the term responsible for

$$\begin{align}
S_n^{(1)J}\sigma_n
\end{align}$$

in the logarithmic soft factor。

The spatial and timelike faces are interfaces，not additional independent external charges。Their failures to glue are measured by

$$\begin{align}
\boxed{ \Delta_{\chi}^{i^0}(\mu) := Q_{\chi}^{\mathscr I^+_- ,\rm ren}(\mu)
- \mathcal A^* Q_{\chi}^{\mathscr I^-_+ ,\rm ren}(\mu), }
\end{align}$$

and

$$\begin{align}
\boxed{ \Delta_{\chi,\pm}^{i^\pm} := Q_{\chi}^{\mathscr I^\pm_\pm,\rm ren}
- Q_{\chi}^{i^\pm,\rm hard,dr}.
}
\end{align}$$

Here $\mathcal A$ is the antipodal map。The oriented timelike mismatch

$$\begin{align}
\Delta_\chi^{i^\pm}
\end{align}$$

is the signed sum of the two displayed quantities with the boundary orientations inherited from Stokes' theorem。Likewise，for an orientation-reversed puncture seam,

$$\begin{align}
\boxed{ \Delta_\chi^{\rm punc} := \sum_{\rm seams} \left( Q_{\chi,p,L}^{\rm def} + Q_{\chi,p,R}^{\rm def} \right).
}
\end{align}$$

It vanishes exactly when the Laurent/frame data、opposite momenta、levels、projective connections and finite counterterms obey the sewing conditions of section 10。

For a superrotation tail，the spatial mismatch is scale dependent：

$$\begin{align}
\mu\partial_\mu
\Delta_Y^{i^0}(\mu) = - \left[ \mathcal Q_Y^{\log,+}
- \mathcal A^* \mathcal Q_Y^{\log,-} \right].
\end{align}$$

Thus equality of the logarithmic coefficients is a necessary condition for a common subtraction scale to define a matched finite charge。A soft theorem fixes the coefficient $\mathcal Q_Y^{\log}$；it does not prove this matching relation。

### 16.3 Regulated change of variables

At finite radial、endpoint、puncture and infrared regulators，apply the large transformation to the BV--BFV functional integral of section 15 and retain every oriented face term。For a massive timelike sector this step uses the conditional Dollard/cotangent edge template of `spatial infinity and endpoints.md` section 14；without an explicit coupled drag one-form it remains a conditional regulated identity。Define

$$\begin{align}
\mathfrak A_\chi^{\rm BV} := \frac{i}{\hbar} \left\langle \mathcal I_\chi \left[ \mathcal A_{\rm BV} \right] \right\rangle_{\rm dr}
\end{align}$$

with $\mathcal I_\chi$ the descent pairing with the asymptotic parameter，and let

$$\begin{align}
\mathfrak A_\chi^{\rm IR,dr}
\end{align}$$

denote the uncancelled $\lambda$-boundary term left by the chosen dressings。The change-of-variables identity and stratified Stokes theorem give

$$
\boxed{
\begin{aligned}
\mathcal W_\chi
&:=
\left\langle{\rm out}\right|
\left[
\widehat Q_{\chi,+}^{\rm ren}(\mu)
\mathcal S_{\rm dr}^{\mathbf q}
-
\mathcal S_{\rm dr}^{\mathbf q}
\widehat Q_{\chi,-}^{\rm ren}(\mu)
\right]
\left|{\rm in}\right\rangle
\\
&=
\mathfrak A_\chi^{\rm BV}
+
\mathfrak A_\chi^{\rm IR,dr}
+
\left\langle
\Delta_\chi^{i^0}(\mu)
+
\Delta_\chi^{i^\pm}
+
\Delta_\chi^{\rm punc}
\right\rangle_{\rm dr}.
\end{aligned}
}
$$

This is the global Ward identity justified wherever the corresponding regulated stratified action and dressed limit are defined。In the generic massive sector it is an obstruction identity：the unevaluated

$$\begin{align}
\Delta_\chi^{i^\pm}
\end{align}$$

records precisely the missing action-derived gluing input。Its right-hand side is not one undifferentiated “anomaly”：

1. $\mathfrak A_\chi^{\rm BV}$ is a local UV/relative-BRST class；
2. $\mathfrak A_\chi^{\rm IR,dr}$ tests the asymptotic-state prescription and BMS superselection sector；
3. $\Delta_\chi^{i^0}$ is a classical/quantum spatial matching defect；
4. $\Delta_\chi^{i^\pm}$ is the timelike hard-charge and drag gluing defect；
5. $\Delta_\chi^{\rm punc}$ is a defect-sewing contribution。

They have different supports and cannot cancel one another by a change of notation。A Ward theorem valid for arbitrary states and independent stratified variations therefore requires the five classes to vanish separately；an accidental cancellation in one matrix element is not such a theorem。

### 16.4 Term-by-term soft expansion

The standard soft theorem is not an expansion of the cloud-stripped hard matrix element by itself。At finite resolution reconstruct the resolved matrix element

$$\begin{align}
\boxed{ \mathcal M_n^{\rm res}(\lambda) := \mathcal Z_n^{\rm soft}(\lambda,\mu) \mathcal M_n^{\rm dr}, \qquad \mathcal Z_n^{\rm soft} := \left\langle
\prod_{i=1}^n \mathcal W_i \right\rangle_\lambda.
}
\end{align}$$

The soft limit is taken in the ordered window

$$\begin{align}
\lambda\ll\omega\ll E_{\rm hard},
\end{align}$$

namely

$$\begin{align}
\lim_{\omega/E_{\rm hard}\to0}
\lim_{\lambda/\omega\to0}
\end{align}$$

with the universal soft subtraction/dressing performed in the inner limit。Applying the standard soft projector directly to $\mathcal M_n^{\rm dr}$ would double count or omit the cloud terms，depending on convention。

At the one-loop/first-logarithmic order treated by the cited theorem，write the resolved renormalized expansion as

$$
\boxed{
\begin{aligned}
\mathcal M_{n+1}^{\rm res,ren}
\left(
\omega,\widehat q
\right)
=
\Bigg[
&\frac1\omega
\widehat S_n^{(0)}
-
\frac{\kappa^2}{4}
\log\frac{\omega}{\mu}
S_n^{(\log)}
\\
&+
S_n^{(1),\rm fin}(\mu)
+
O
\left(
\omega\log\omega
\right)
\Bigg]
\mathcal M_n^{\rm res,ren}.
\end{aligned}
}
$$

The three coefficients are separated without assuming analyticity at $\omega=0$：

$$\begin{align}
\widehat S_n^{(0)} \mathcal M_n^{\rm res,ren} = \lim_{\omega\to0^+} \omega \mathcal M_{n+1}^{\rm res,ren},
\end{align}$$

$$\begin{align}
- \frac{\kappa^2}{4}
S_n^{(\log)} \mathcal M_n^{\rm res,ren} = \lim_{\omega\to0^+} \omega\partial_\omega \left[ \mathcal M_{n+1}^{\rm res,ren}
- \frac1\omega
\widehat S_n^{(0)} \mathcal M_n^{\rm res,ren} \right],
\end{align}$$

and

$$\begin{aligned}
S_n^{(1),\rm fin}(\mu) \mathcal M_n^{\rm res,ren} = \operatorname*{FP}_{\omega\to0^+} \Bigg[ & \mathcal M_{n+1}^{\rm res,ren} - \frac1\omega \widehat S_n^{(0)} \mathcal M_n^{\rm res,ren}
\\
&+ \frac{\kappa^2}{4}
\log\frac{\omega}{\mu}
S_n^{(\log)} \mathcal M_n^{\rm res,ren}
\Bigg].
\end{aligned}
\end{aligned}$$

Scale independence of the full amplitude requires

$$\begin{align}
\boxed{ \mu\partial_\mu
S_n^{(1),\rm fin}(\mu) = - \frac{\kappa^2}{4} S_n^{(\log)}.
}
\end{align}$$

The corresponding charge equation is

$$\begin{align}
\mu\partial_\mu
H_Y^{\rm ren}(\mu) = - \mathcal Q_Y^{\log}.
\end{align}$$

The relative normalization and helicity projection between

$$\begin{align}
\mathcal Q_Y^{\log}
\end{align}$$

and

$$\begin{align}
S_n^{(\log)}
\end{align}$$

are fixed by the soft-charge insertion。

For the conventions of Agrawal--Donnay--Nguyen--Ruzziconi，

$$\begin{align}
\boxed{ S_n^{(\log)}(\widehat q) = -8 \left[ \widehat\sigma'_{n+1}(\widehat q) \widehat S_n^{(0)}(\widehat q)
- S_n^{(1)J}(\widehat q)
\sigma_n \right].
}
\end{align}$$

The Ward identity reproduces the pieces as follows：

| Charge/flux insertion | Soft coefficient |
|---|---|
| linear supertranslation soft news $\mathcal N^{(0)}$ | $\widehat S_n^{(0)}$ |
| linear superrotation news $\mathcal N^{(1)}$ together with null and free timelike hard action | tree-level $S_n^{(1)}$ |
| nonlinear null flux $C^{(0)}\mathcal N^{(0)}$ | $\widehat\sigma'_{n+1}\widehat S_n^{(0)}$ |
| Goldstone-dressed $i^\pm$ massive charge | $S_n^{(1)J}\sigma_n$ |
| puncture residue $\operatorname{Res}(Y\mathcal T\,dw)$ | contour/Virasoro defect insertion |

The last row is not a universal bulk soft factor。It becomes a definite celestial Ward insertion only after a coadjoint orbit、central coefficient、projective structure and sewing prescription have been selected。

### 16.5 Positive branch and obstruction branch

### Theorem 16.1

Fix a loop/derivative order $(L,D)$ and a finite radial/endpoint/Laurent regulator window。Assume：

1. the hypotheses of Theorem 15.1 and

$$\begin{align}
[\mathcal A_{\rm BV}]=0;
\end{align}$$

2. the BMS-compatible dressed limit

$$\begin{align}
\mathcal S_{\rm dr}^{\mathbf q}
\end{align}$$

   exists between equal BMS-charge sectors and has

$$\begin{align}
\mathfrak A_\chi^{\rm IR,dr}=0;
\end{align}$$

3. the antipodal spatial matching equation gives

$$\begin{align}
\Delta_\chi^{i^0}=0;
\end{align}$$

4. every massive timelike face obeys

$$\begin{align}
\Delta_{\chi,\pm}^{i^\pm}=0;
\end{align}$$

5. every puncture seam obeys the conditions of section 10。

Then，through order $(L,D)$，

$$\begin{align}
\boxed{ \left\langle{\rm out}\right| \left[ \widehat Q_{\chi,+}^{\rm ren} \mathcal S_{\rm dr}^{\mathbf q}
- \mathcal S_{\rm dr}^{\mathbf q}
\widehat Q_{\chi,-}^{\rm ren} \right] \left|{\rm in}\right\rangle =0, }
\end{align}$$

and，in the first-logarithmic window，the leading、finite subleading and logarithmic soft coefficients are obtained by the three projectors of section 16.4。Here the projectors act on the resolved amplitude reconstructed from the dressed hard matrix element，not on the cloud-stripped matrix element alone。At higher loops，powers

$$\begin{align}
\left( \log\omega \right)^k
\end{align}$$

require the corresponding triangular family of logarithmic projectors；the displayed three-projector formula is not an all-loop claim。

There are three distinct applications：

1. **Ordinary supertranslations。** In the conditional massless matched sector，there is no $i^\pm$ massive term or puncture term，global-BMS matching is available，and BMS-compatible FK states carry the required supertranslation charge。Subject to Theorem 15.1，this is the positive zero-remainder branch。
2. **Massive or tail-free superrotations。** The identity is conditional on the timelike-corner equality and the angular-momentum-aspect matching。The displayed hard $i^\pm$ charge is essential；dropping it loses the

$$\begin{align}
S_n^{(1)J}\sigma_n
\end{align}$$

   term。
3. **Generic-tail or punctured superrotations。** No zero-remainder theorem follows。For news

$$\begin{align}
N_{AB}=O(|u|^{-2}),
\end{align}$$

   angular-momentum-aspect matching through $i^0$ has not been proved；the log-soft derivation in the cited source explicitly assumes it。For massive data，equality of the hyperboloid charge with the null top-corner charge is likewise assumed。For punctures，the defect theory is nonunique。The rigorous statement is therefore the anomaly-valued identity of section 16.3，not its zero right-hand side。

This resolves the literal “generic tails + $i^0/i^\pm$ + punctures” request negatively but precisely：in the stated perturbative scalar/gravitational sectors the displayed local Ward and soft-insertion terms are known，while the global matching hypotheses required to set the remainder to zero are independent open inputs。

### 16.6 Sources and verification boundary

Sources：

- John Ware，Ryo Saotome and Ratindranath Akhoury，[Construction of an asymptotic S matrix for perturbative quantum gravity](https://arxiv.org/abs/1308.6285)。
- Sangmin Choi，Uri Kol and Ratindranath Akhoury，[Asymptotic Dynamics in Perturbative Quantum Gravity and BMS Supertranslations](https://arxiv.org/abs/1708.05717)。
- Elizabeth Himwich，Sruthi A. Narayanan，Monica Pate，Nisarga Paul and Andrew Strominger，[The Soft $\mathcal S$-Matrix in Gravity](https://arxiv.org/abs/2005.13433)。
- Shreyansh Agrawal，Laura Donnay，Kevin Nguyen and Romain Ruzziconi，[Logarithmic soft graviton theorems from superrotation Ward identities](https://arxiv.org/abs/2309.11220)。
- Biswajit Sahoo and Ashoke Sen，[Classical and Quantum Results on Logarithmic Terms in the Soft Theorem in Four Dimensions](https://arxiv.org/abs/1808.03288)。

Source-derived：

- the FK asymptotic dynamics and the explicitly demonstrated perturbative IR cancellations；
- the characterization of FK states by BMS supertranslation superselection charges；
- factorization into Goldstone dressings and an IR-finite hard amplitude；
- the massless and massive Goldstone dressing kernels；
- the two logarithmic terms

$$\begin{align}
\widehat\sigma'_{n+1}\widehat S_n^{(0)} \qquad\text{and}\qquad S_n^{(1)J}\sigma_n;
\end{align}$$

- the explicit source statements that generic-tail superrotation matching at $i^0$ remains open and that the $i^\pm$ hyperboloid/null-corner equality is assumed。

Verified：

- Mathematica evaluated the model expansion

$$\begin{align}
\frac A\omega+B(\mu)+C\log\frac{\omega}{\mu} +D\omega\log\omega
\end{align}$$

  and returned

$$\begin{align}
\left( A,C,B(\mu) \right)
\end{align}$$

  for the three projectors；
- the same check returned zero for

$$\begin{align}
\mu\partial_\mu\mathcal M
\end{align}$$

  when

$$\begin{align}
\mu B'(\mu)=C;
\end{align}$$

- Mathematica returned

$$\begin{align}
\mu\partial_\mu H_Y^{\rm ren} = -\mathcal Q_Y^{\log}
\end{align}$$

  and

$$\begin{align}
H_Y^{\rm ren}(\mu')
  - H_Y^{\rm ren}(\mu) = -\mathcal Q_Y^{\log} \log\frac{\mu'}{\mu}.
\end{align}$$

Assumptions：

- the fixed-order pAQFT/BV--BFV category of section 15；
- existence of the chosen dressed limit for the external particle content；
- a common regulator/subtraction convention on the two scattering faces；
- the stated spatial、timelike and puncture gluing equations。

Not verified：

- a generic-tail superrotation matching theorem at $i^0$；
- an action-derived equality between the massive $H^3$ charge and the null top-corner charge in the fully coupled theory；
- a unique meromorphic puncture theory；
- a nonperturbative dressed gravitational $S$-matrix or an all-loop Ward theorem。
