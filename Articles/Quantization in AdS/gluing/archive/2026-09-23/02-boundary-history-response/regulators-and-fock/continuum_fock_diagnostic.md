# Continuum Fock-Space Diagnostic for Sharp Interval Gluing

## Scope

This note diagnoses the formal Bogoliubov transformation currently written in `../formalism.md` for the massive scalar on

$$\begin{align}
[-L,L]=[-L,0]\cup[0,L].
\end{align}$$

The regional reference quantization uses strict-Dirichlet oscillator frequencies

$$\begin{align}
\omega_n^2=m^2+\frac{n^2\pi^2}{L^2}, \qquad n\in\mathbb N^+,
\end{align}$$

while the connected interval has

$$\begin{align}
\Omega_r^2=m^2+\frac{r^2\pi^2}{4L^2}, \qquad r\in\mathbb N^+.
\end{align}$$

The purpose is narrow:

1. determine the ultraviolet behavior of the **formal overlap-induced Bogoliubov map** already written in the note;
2. apply the Shale--Stinespring Hilbert--Schmidt test to that map;
3. separately diagnose the coherent displacement between the fixed-source operators $d_{i,n}$ and the full-field projections $b_{i,n}$;
4. state precisely what this does and does not prove about the active boundary-feedback gluing construction.

The result is that the naive overlap-induced map fails the Hilbert--Schmidt condition. This does **not** by itself prove that the correctly reduced finite-cutoff gluing map has no continuum unitary limit. That stronger statement still requires constructing the reduced canonical map before taking $N\to\infty$.

---

## 1. Formal Overlap-Induced Map

The real normalized connected spatial modes are

$$\begin{align}
e_r(x)=\frac1{\sqrt L} \sin\left[\frac{r\pi(x+L)}{2L}\right].
\end{align}$$

Their restrictions to the two halves are expanded against

$$\begin{align}
u_n(y)=\sqrt{\frac2L}\sin\frac{n\pi y}{L}.
\end{align}$$

Write

$$\begin{align}
O_{r,in} = \int_0^Ldy\,e_r^{(i)}(y)u_n(y).
\end{align}$$

For the even connected modes,

$$\begin{align}
O_{2p,1n}=-O_{2p,2n} = \frac1{\sqrt2}\delta_{pn}, \qquad p\in\mathbb N^+.
\end{align}$$

For the odd connected modes,

$$\begin{align}
O_{2p+1,1n} = O_{2p+1,2n} = \frac{\sqrt2(-1)^{p+n}n} {\pi\left[\left(p+\frac12\right)^2-n^2\right]}, \qquad p\in\mathbb N.
\end{align}$$

The formal transformation in `../formalism.md` is

$$\begin{align}
a_r = \sum_{i=1}^2\sum_{n=1}^\infty O_{r,in} \left( A_{rn}b_{i,n}+B_{rn}b^\dagger_{i,n} \right),
\end{align}$$

with

$$\begin{align}
A_{rn} = \frac12 \left( \sqrt{\frac{\Omega_r}{\omega_n}} + \sqrt{\frac{\omega_n}{\Omega_r}} \right),
\end{align}$$

$$\begin{align}
B_{rn} = \frac12 \left( \sqrt{\frac{\Omega_r}{\omega_n}}
- \sqrt{\frac{\omega_n}{\Omega_r}} \right).
\end{align}$$

Thus the formal creation block is

$$\begin{align}
\beta_{r,in}=O_{r,in}B_{rn}.
\end{align}$$

A formal verification of the CCR is not sufficient for unitary implementability on Fock space. For a bosonic Bogoliubov transformation, the Shale--Stinespring criterion requires the creation block to be Hilbert--Schmidt:

$$\begin{align}
\|\beta\|_{\mathrm{HS}}^2 = \sum_{r=1}^\infty
\sum_{i=1}^2
\sum_{n=1}^\infty
|\beta_{r,in}|^2
<\infty.
\end{align}$$

In the present case the failure is already visible in a single fixed odd row.

---

## 2. Even Sector

For

$$\begin{align}
r=2p,
\end{align}$$

the overlap is nonzero only for $n=p$. Moreover

$$\begin{align}
\Omega_{2p} = \sqrt{m^2+\frac{p^2\pi^2}{L^2}} = \omega_p.
\end{align}$$

Therefore

$$\begin{align}
B_{2p,p}=0,
\end{align}$$

and hence

$$\begin{align}
\boxed{\beta_{2p,in}=0}
\end{align}$$

for the whole even sector.

This is consistent with the classical gluing result: the even connected modes are exactly the $q=0$ relative regional modes.

The ultraviolet obstruction is entirely in the nonzero-interface, odd connected sector of this formal transformation.

---

## 3. Odd-Sector Ultraviolet Asymptotic

Fix

$$\begin{align}
r=2p+1
\end{align}$$

and define

$$\begin{align}
a=p+\frac12.
\end{align}$$

Then

$$\begin{align}
O_{2p+1,in} = \frac{\sqrt2(-1)^{p+n}n}{\pi(a^2-n^2)}.
\end{align}$$

For fixed $p$ and $n\to\infty$,

$$\begin{align}
O_{2p+1,in} = -\frac{\sqrt2(-1)^{p+n}}{\pi n} \left( 1+\frac{a^2}{n^2}+O(n^{-4}) \right).
\end{align}$$

Also

$$\begin{align}
\omega_n = \sqrt{m^2+\frac{n^2\pi^2}{L^2}} = \frac{\pi n}{L}+O(n^{-1}),
\end{align}$$

so, for fixed connected frequency $\Omega_r$,

$$\begin{align}
B_{rn} = -\frac12\sqrt{\frac{\omega_n}{\Omega_r}} +O(n^{-1/2}) = -\frac12 \sqrt{\frac{\pi n}{L\Omega_r}} +O(n^{-1/2}).
\end{align}$$

Consequently, for either half interval,

$$\begin{align}
|\beta_{r,in}|^2 = |O_{r,in}B_{rn}|^2 = \frac{1}{2\pi L\Omega_r}\frac1n +O(n^{-2}).
\end{align}$$

Summing over the two halves gives

$$\begin{align}
\boxed{ \sum_{i=1}^2|\beta_{r,in}|^2 = \frac{1}{\pi L\Omega_r}\frac1n +O(n^{-2})
} \qquad (r\ {\rm odd}).
\end{align}$$

Therefore the cutoff row norm obeys

$$\begin{align}
S_r(N) := \sum_{i=1}^2\sum_{n=1}^N
|\beta_{r,in}|^2 = \frac{1}{\pi L\Omega_r}\log N+O(1).
\end{align}$$

Hence, for every fixed odd $r$,

$$\begin{align}
\boxed{ \sum_{i=1}^2\sum_{n=1}^\infty
|\beta_{r,in}|^2 =\infty.
}
\end{align}$$

A single divergent row is sufficient to conclude

$$\begin{align}
\boxed{ \beta\notin\mathcal L^2_{\rm HS}.
}
\end{align}$$

Thus the formal overlap-induced transformation is not unitarily implementable on the naive product regional Fock representation.

There is an even stronger operator-domain warning: for fixed odd $r$, the coefficient sequence multiplying $b_{i,n}^\dagger$ is not in $\ell^2$. Therefore the infinite creation part of the displayed $a_r$ is not the usual well-defined Fock-space creation operator obtained from a one-particle vector. The formula should be treated as a regulated/formal relation until a correct reduced continuum map is constructed.

---

## 4. Numerical Check of the Logarithmic Divergence

For the benchmark choice

$$\begin{align}
L=1,\qquad m=1,
\end{align}$$

the predicted logarithmic coefficient is

$$\begin{align}
c_r=\frac1{\pi\Omega_r}.
\end{align}$$

For $r=1$,

$$\begin{align}
\Omega_1=\sqrt{1+\frac{\pi^2}{4}}, \qquad c_1=0.170941726494\ldots.
\end{align}$$

Direct summation gives

| $N$ | $S_1(N)$ | $S_1(N)-c_1\log N$ |
|---:|---:|---:|
| $10^2$ | $0.6721493982$ | $-0.1150663442$ |
| $10^3$ | $1.0631831802$ | $-0.1176404334$ |
| $10^4$ | $1.4565319401$ | $-0.1178995447$ |
| $10^5$ | $1.8501138830$ | $-0.1179254730$ |

The residual approaches a constant, confirming

$$\begin{align}
S_1(N)=c_1\log N+O(1).
\end{align}$$

The same behavior occurs for every fixed odd connected mode.

---

## 5. Coherent Displacement Generated by a Prescribed Nonzero Boundary Value

Before gluing, for prescribed $q_i(t)$, the note defines

$$\begin{align}
b_{i,n} = d_{i,n} + \lambda_{i,n}\mathbf 1,
\end{align}$$

where

$$\begin{align}
\lambda_{i,n} = A_n \left( \sqrt{\frac{\omega_n}{2}}q_i(t_i) + \frac{i}{\sqrt{2\omega_n}}\dot q_i(t_i) \right),
\end{align}$$

and

$$\begin{align}
A_n = (-1)^{n+1}\frac{\sqrt{2L}}{n\pi}.
\end{align}$$

For real $q_i,\dot q_i$,

$$\begin{align}
|\lambda_{i,n}|^2 = \frac{A_n^2}{2} \left( \omega_n q_i^2 + \frac{\dot q_i^2}{\omega_n} \right).
\end{align}$$

Using

$$\begin{align}
A_n^2=\frac{2L}{n^2\pi^2}, \qquad \omega_n=\frac{\pi n}{L}+O(n^{-1}),
\end{align}$$

gives

$$\begin{align}
\boxed{ |\lambda_{i,n}|^2 = \frac{q_i(t_i)^2}{\pi n} +O(n^{-3})
}
\end{align}$$

when $q_i(t_i)\neq0$.

Hence

$$\begin{align}
\sum_n|\lambda_{i,n}|^2
\end{align}$$

diverges logarithmically whenever the prescribed boundary value at the reference time is nonzero.

Therefore the shift $d_{i,n}\mapsto b_{i,n}$ is not implemented by an ordinary Weyl displacement in the strict-Dirichlet regional Fock space when

$$\begin{align}
q_i(t_i)\neq0.
\end{align}$$

If

$$\begin{align}
q_i(t_i)=0
\end{align}$$

but

$$\begin{align}
\dot q_i(t_i)\neq0,
\end{align}$$

then

$$\begin{align}
|\lambda_{i,n}|^2=O(n^{-3}),
\end{align}$$

so this particular displacement obstruction is absent.

This is distinct from the Bogoliubov obstruction above. Both are ultraviolet effects associated with imposing a sharp interface and comparing it with the strict-Dirichlet regional reference representation.

---

## 6. Why This Is Not yet a No-Go Theorem for Boundary-Feedback Gluing

The formal $b$-operator transformation is **not** the canonical gluing theorem required by the active construction.

Before gluing, $q_i(t)$ is prescribed and fixed under the allowed regional variations. The commutators

$$\begin{align}
[C_{i,n},V_{j,m}] = i\delta_{ij}\delta_{nm}
\end{align}$$

are therefore fixed-source relations.

After gluing, the common history $q(t)$ is determined by the interface feedback equation and becomes operator-valued. One cannot simply reuse the fixed-source commutators and then infer the physical glued CCR.

The active construction instead requires, at a common finite regulator,

$$\begin{align}
(q,c_i) \longrightarrow
\phi_{\rm glued} \longrightarrow
(Q_r,P_r) \longrightarrow
(a_r,a_r^\dagger).
\end{align}$$

The correct logical sequence is:

1. use the conforming port Galerkin space with $N$ strict-Dirichlet functions on each half and an independent finite-$N$ interface coordinate $q$;
2. keep the flux relation as an equation of motion and isolate the residual port inertia $\rho_N\to0$;
3. compare regional and global descriptions on the same $(2N+1)$-dimensional Galerkin space, rather than with the first $2N+1$ exact continuum modes;
4. supply a compatible reference complex structure for the extra port canonical pair, or give a controlled symplectic reduction that removes it;
5. extract equal-dimensional reduced canonical coordinates and construct their finite-dimensional symplectic map $S_N$;
6. quantize $S_N$, which is metaplectically implementable at fixed finite dimension;
7. only then study whether the corresponding Bogoliubov creation block $\beta_N$ has a finite Hilbert--Schmidt limit in the stated quotient, energy, or graph topology.

Therefore the verified statement is

$$\begin{align}
\boxed{ \text{the naive overlap-induced Bogoliubov map fails Shale--Stinespring}.
}
\end{align}$$

The following stronger statement is **not yet verified**:

$$\begin{align}
\boxed{ \text{the correctly reduced boundary-feedback gluing map has no
continuum unitary Fock-space limit}.
}
\end{align}$$

The two claims must not be conflated.

---

## 7. The Finite-$N$ Test That Decides the Stronger Question

After the port reference structure or controlled reduction has been specified, let the resulting equal-dimensional real canonical map be

$$
\begin{pmatrix}
Q\\ P
\end{pmatrix}_{\!G}
=
S_N
\begin{pmatrix}
q\\ p
\end{pmatrix}_{\!R},
\qquad
S_N^{\mathrm T}J S_N=J.
$$

Write its blocks as

$$
S_N=
\begin{pmatrix}
X&Y\\
Z&W
\end{pmatrix}.
$$

Let

$$\begin{align}
\Omega_G=\operatorname{diag}(\Omega_{G,1},\ldots,\Omega_{G,d_N}),
\end{align}$$

be the positive frequency matrix of the chosen global Galerkin Hamiltonian, where $d_N$ is the common reduced dimension, and let

$$\begin{align}
\Omega_R
\end{align}$$

be the positive diagonal frequency matrix used to define the reduced regional reference complex structure.

Define

$$\begin{align}
a = \frac1{\sqrt2} \left( \Omega_G^{1/2}Q + i\Omega_G^{-1/2}P \right),
\end{align}$$

$$\begin{align}
b = \frac1{\sqrt2} \left( \Omega_R^{1/2}q + i\Omega_R^{-1/2}p \right).
\end{align}$$

Substitution gives

$$\begin{align}
a=\alpha_N b+\beta_N b^\dagger,
\end{align}$$

with

$$\begin{align}
\alpha_N = \frac12 \left[ \Omega_G^{1/2}X\Omega_R^{-1/2} + \Omega_G^{-1/2}W\Omega_R^{1/2} + i\left( \Omega_G^{-1/2}Z\Omega_R^{-1/2}
- \Omega_G^{1/2}Y\Omega_R^{1/2} \right) \right],
\end{align}$$

and

$$\begin{align}
\boxed{ \beta_N = \frac12 \left[ \Omega_G^{1/2}X\Omega_R^{-1/2}
- \Omega_G^{-1/2}W\Omega_R^{1/2} + i\left( \Omega_G^{-1/2}Z\Omega_R^{-1/2} + \Omega_G^{1/2}Y\Omega_R^{1/2} \right) \right].
}
\end{align}$$

The decisive continuum diagnostic is then

$$\begin{align}
\boxed{ \|\beta_N\|_{\mathrm{HS}}^2 = \operatorname{Tr}(\beta_N^\dagger\beta_N).
}
\end{align}$$

One should compute this quantity for increasing $N$ using the **same Galerkin regulator on both sides**. The first $2N+1$ exact continuum frequencies may be used only to test spectral convergence, not as the finite-$N$ Hamiltonian in an exact intertwining claim.

Possible outcomes must be distinguished:

- $\|\beta_N\|_{\mathrm{HS}}^2\to C<\infty$: compatible with continuum unitary implementability;
- $\|\beta_N\|_{\mathrm{HS}}^2\sim c\log N$: logarithmic failure of Shale--Stinespring;
- power-law growth: stronger ultraviolet inequivalence;
- unstable/nonconvergent $S_N$: the regulator or reduced canonical map itself has not yet been controlled.

The finite-$N$ vacuum overlap, regional particle number and regional energy provide additional diagnostics, but none should replace the Hilbert--Schmidt test.

---

## 8. Interpretation

The calculation shows that the following naive continuum picture is too strong:

$$\begin{align}
\mathcal F_{\rm global} \stackrel{?}{\simeq} \mathcal F_1^{\rm D}\otimes\mathcal F_2^{\rm D}
\end{align}$$

via the direct spatial-overlap Bogoliubov formula.

The sharp interface produces ultraviolet sensitivity precisely in the sector that carries a nonzero interface value.

This is consistent with the broader boundary-feedback logic:

- the regional theories are quantized with prescribed boundary histories;
- gluing promotes the common interface history to something determined by the coupled system;
- the physical global canonical variables must be reconstructed after imposing the feedback relation;
- continuum Fock-space factorization is a separate question, not a consequence of recovering the classical spectrum or the finite-cutoff CCR.

The interval scalar therefore provides a controlled setting in which one can separate

$$\begin{align}
\text{spectrum recovery}, \qquad \text{finite-regulator canonical equivalence}, \qquad \text{continuum Fock equivalence}.
\end{align}$$

They are logically distinct statements.

---

## Verified

- The even sector has exactly vanishing formal Bogoliubov creation coefficient.
- For every fixed odd connected mode,

$$\begin{align}
\sum_{i=1}^2|\beta_{r,in}|^2 = \frac{1}{\pi L\Omega_r}\frac1n+O(n^{-2}).
\end{align}$$

- Therefore the naive overlap-induced $\beta$ is not Hilbert--Schmidt.
- For $q_i(t_i)\neq0$, the c-number displacement $b_{i,n}-d_{i,n}$ is not square-summable:

$$\begin{align}
|b_{i,n}-d_{i,n}|^2 = \frac{q_i(t_i)^2}{\pi n}+O(n^{-3}).
\end{align}$$

- The numerical partial sums reproduce the predicted logarithmic coefficient.

## Assumptions

- $L>0$, $m>0$.
- The displayed overlap-induced formula is interpreted as a candidate Bogoliubov map from the product strict-Dirichlet regional reference representation to the connected representation.
- The sharp cut is kept; no spatial smoothing of the interface or lifting function is introduced.
- The Shale--Stinespring criterion is applied only after identifying the formal creation block of this candidate map.

## Not Verified

- The correctly reduced finite-$N$ boundary-feedback symplectic map $S_N$.
- A compatible reference complex structure or controlled reduction for the extra port canonical pair.
- The reduced commutators after $q(t)$ becomes operator-valued.
- The large-$N$ behavior of the physical $\beta_N$ extracted from $S_N$.
- Continuum unitary equivalence or inequivalence of the **active reduced gluing construction**.
- Regulator independence of any continuum Fock-space conclusion.
