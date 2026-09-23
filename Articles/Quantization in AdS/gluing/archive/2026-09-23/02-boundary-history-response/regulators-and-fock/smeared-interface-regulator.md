# Smeared Interface Observable

> Status: an explicit centered spatial smearing gives a well-defined canonical pair and removes the point-field divergence at every fixed width. The small-width covariance asymptotics are analytic for the declared tent profile, with finite-mode checks in `numerics/smearing_regulator_checks.wl`. This note does not define a regional product state or a collar split.

## 1. Verdict

Replace the point interface field only at the level of quantum observables:

$$\begin{align}
q(t)=\phi(t,0)
\quad\longrightarrow\quad
q_\epsilon(t)=\int_{-L}^{L}dx\,f_\epsilon(x)\phi(t,x).
\end{align}$$

For every fixed $\epsilon>0$, $q_\epsilon$ and a correspondingly smeared momentum form an exact Darboux pair. In the connected vacuum,

$$\begin{align}
\langle q_\epsilon^2\rangle
&=\frac1{2\pi}\log\frac L\epsilon+O(1),
&
\langle p_\epsilon^2\rangle
&\longrightarrow \frac{9\log2}{2\pi}.
\end{align}$$

Thus smearing makes the observable well defined at fixed width but does not produce a nondegenerate one-oscillator limit as $\epsilon\to0$. The centered smeared pair becomes increasingly mixed with the complementary bulk modes. Smearing the single port observable also does not by itself repair the full sharp-cut regional-to-global Bogoliubov map; that would require a spatially smeared gluing transformation, not merely replacing one output operator.

## 2. Declared Smearing Profile

Use the compactly supported tent profile

$$\begin{align}
f(s)&=(1-|s|)_+,
&
f_\epsilon(x)&=\frac1\epsilon f\left(\frac x\epsilon\right),
&
0<\epsilon<L.
\end{align}$$

It obeys

$$\begin{align}
\int_{-1}^{1}ds\,f(s)&=1,
&
c_0:=\int_{-1}^{1}ds\,f(s)^2&=\frac23,
&
\|f_\epsilon\|_{L^2}^2&=\frac{c_0}{\epsilon}.
\end{align}$$

Its Fourier transform is

$$\begin{align}
\widehat f(u)
&=\int_{-1}^{1}ds\,f(s)e^{ius}
=\frac{2(1-\cos u)}{u^2}
=\operatorname{sinc}^2\frac u2.
\end{align}$$

The tent is piecewise linear rather than $C_c^\infty$, but it lies in $H^1$ and has enough ultraviolet decay for both covariance integrals below. A normalized $C_c^\infty$ mollifier gives the same logarithmic field coefficient, with a different finite momentum constant.

## 3. Exact Canonical Pair

At a fixed time write $\pi=\dot\phi$ and define

$$\begin{align}
q_\epsilon&:=\phi(f_\epsilon),
&
p_\epsilon&:=
\frac{\pi(f_\epsilon)}{\|f_\epsilon\|_{L^2}^2}
=\frac{3\epsilon}{2}\pi(f_\epsilon).
\end{align}$$

The equal-time field commutator gives the exact relation

$$\begin{align}
[q_\epsilon,p_\epsilon]
&=
\frac{i\langle f_\epsilon,f_\epsilon\rangle}
{\|f_\epsilon\|_{L^2}^2}
=i.
\end{align}$$

Equivalently, set

$$\begin{align}
e_\epsilon&:=\frac{f_\epsilon}{\|f_\epsilon\|_{L^2}},
&
Q_\epsilon&:=\phi(e_\epsilon)
=\sqrt{\frac\epsilon{c_0}}q_\epsilon,
&
P_\epsilon&:=\pi(e_\epsilon)
=\sqrt{\frac{c_0}\epsilon}p_\epsilon.
\end{align}$$

Then $(Q_\epsilon,P_\epsilon)$ is the canonical pair associated with the one-dimensional subspace $\mathbb Re_\epsilon\subset L^2([-L,L])$. The $L^2$ orthogonal decomposition

$$\begin{align}
L^2([-L,L])
&=\mathbb Re_\epsilon\oplus e_\epsilon^\perp
\end{align}$$

is an exact kinematical symplectic decomposition of the equal-time Cauchy data. It is not a Hamiltonian tensor decomposition: $e_\epsilon$ is not an eigenfunction of $-\partial_x^2+m^2$, so the quadratic Hamiltonian couples this pair to $e_\epsilon^\perp$.

## 4. Connected-Mode Formula

Use the connected Dirichlet modes

$$\begin{align}
e_r(x)&=\frac1{\sqrt L}
\sin\frac{r\pi(x+L)}{2L},
&
k_r&=\frac{r\pi}{2L},
&
\Omega_r&=\sqrt{m^2+k_r^2}.
\end{align}$$

Because $f_\epsilon$ is even, only the nonzero-interface odd tower contributes:

$$\begin{align}
F_{2p,\epsilon}&:=\langle e_{2p},f_\epsilon\rangle=0,
\\
F_{2p+1,\epsilon}
&:=\langle e_{2p+1},f_\epsilon\rangle
=\frac{(-1)^p}{\sqrt L}
\widehat f(k_{2p+1}\epsilon).
\end{align}$$

The vacuum covariances are therefore

$$\begin{align}
V_q(\epsilon)
:=\langle q_\epsilon^2\rangle
&=
\sum_{p=0}^{\infty}
\frac{\widehat f(k_{2p+1}\epsilon)^2}
{2L\Omega_{2p+1}},
\\
V_p(\epsilon)
:=\langle p_\epsilon^2\rangle
&=
\left(\frac\epsilon{c_0}\right)^2
\sum_{p=0}^{\infty}
\frac{\Omega_{2p+1}}{2L}
\widehat f(k_{2p+1}\epsilon)^2,
\\
\frac12\langle q_\epsilon p_\epsilon
+p_\epsilon q_\epsilon\rangle&=0.
\end{align}$$

The last equality follows from time-reversal invariance of the connected vacuum.

## 5. Small-Width Limit

The mode spacing in the odd tower is $\pi/L$. Since $\widehat f(0)=1$ and $\widehat f(u)=O(u^{-2})$, comparison with the corresponding integral gives

$$\begin{align}
V_q(\epsilon)
&=\frac1{2\pi}\log\frac L\epsilon
+C_q(mL,f)+o(1).
\end{align}$$

The coefficient $1/(2\pi)$ is independent of the declared profile as long as the profile is point-normalized and has sufficient ultraviolet decay. The constant $C_q$ is regulator dependent.

For the canonical momentum,

$$\begin{align}
\lim_{\epsilon\to0}V_p(\epsilon)
&=
\frac1{2\pi c_0^2}
\int_0^\infty du\,u|\widehat f(u)|^2.
\end{align}$$

For the tent profile,

$$\begin{align}
\int_0^\infty du\,u|\widehat f(u)|^2
&=4\int_0^\infty du\,
\frac{(1-\cos u)^2}{u^3}
\\
&=4\int_0^\infty du\,
\frac{\cos u-\cos2u}{u}
=4\log2,
\end{align}$$

where the second line follows by two integrations by parts and the Frullani integral. Hence

$$\begin{align}
\boxed{
\lim_{\epsilon\to0}V_p(\epsilon)
=\frac{9\log2}{2\pi}
}.
\end{align}$$

The one-pair symplectic eigenvalue is

$$\begin{align}
\nu_\epsilon
&=\sqrt{V_q(\epsilon)V_p(\epsilon)}
\\
&\sim
\frac3{2\pi}
\sqrt{\log2\,\log\frac L\epsilon},
\end{align}$$

so it diverges rather than tending to the pure one-oscillator value $1/2$. In the $L^2$-normalized pair,

$$\begin{align}
\langle Q_\epsilon^2\rangle
&=\frac\epsilon{c_0}V_q(\epsilon)\longrightarrow0,
&
\langle P_\epsilon^2\rangle
&=\frac{c_0}\epsilon V_p(\epsilon)\longrightarrow\infty.
\end{align}$$

This is the continuum analogue of the squeezing found for the mass-normalized port pair in `../port-canonical-normal-form.md`.

## 6. Numerical Check at $L=m=1$

The script sums connected modes up to $k\epsilon\simeq200$.

| $\epsilon$ | $V_q$ | $V_q-(2\pi)^{-1}\log(1/\epsilon)$ | $V_p$ | $\nu_\epsilon$ | doubling slope |
|---:|---:|---:|---:|---:|---:|
| $1/8$ | $0.501396$ | $0.170442$ | $1.004381$ | $0.709642$ | $0.157540$ |
| $1/16$ | $0.611326$ | $0.170055$ | $0.996203$ | $0.780387$ | $0.158596$ |
| $1/32$ | $0.721520$ | $0.169931$ | $0.993797$ | $0.846785$ | $0.158976$ |
| $1/64$ | $0.831800$ | $0.169893$ | $0.993105$ | $0.908881$ | $0.159101$ |
| $1/128$ | $0.942107$ | $0.169882$ | $0.992909$ | $0.967174$ | $0.159139$ |

The targets are

$$\begin{align}
\frac1{2\pi}&=0.159155\ldots,
&
\frac{9\log2}{2\pi}&=0.992860\ldots.
\end{align}$$

At $\epsilon=1/128$, the momentum-variance residual is $4.88\times10^{-5}$ and the truncated completeness check for $[q_\epsilon,p_\epsilon]=i$ has residual $1.18\times10^{-7}$.

## 7. What Smearing Does and Does Not Supply

Smearing supplies:

1. a well-defined interface observable at every $\epsilon>0$;
2. an exact canonical partner determined by the same test function;
3. a controlled logarithmic point limit;
4. a standard Weyl observable inside the connected theory.

Smearing does not supply:

1. a tensor factorization into left and right regional Hilbert spaces;
2. a factorizing regional Gaussian reference state;
3. a modification of the classical continuity and flux-matching equations;
4. Hilbert--Schmidt implementability of the complete sharp-cut Bogoliubov map.

The correct use of this route is therefore to formulate finite-width interface correlators and Weyl operators. `smooth-interface-gaussian-regulator.md` carries out the distinct full-Hamiltonian comparison by adding a normalized smooth lower-order interface potential. That construction is Fock-controlled at finite coupling, but it remains connected and does not turn observable smearing into a regional factorization.

## Verified

- The normalization, $L^2$ norm, and Fourier transform of the tent profile.
- The exact canonical commutator $[q_\epsilon,p_\epsilon]=i$.
- The connected-mode covariance formulas and parity selection.
- The logarithmic coefficient $1/(2\pi)$ of $V_q$.
- The exact tent-profile limit $V_p\to9\log2/(2\pi)$.
- `numerics/smearing_regulator_checks.wl` returns exit code zero and `AllChecksPassed -> True`.

## Assumptions

- $L>0$, $m>0$, connected-vacuum Dirichlet scalar on $[-L,L]$.
- The smearing is performed after classical gluing; it regularizes the quantum interface observable rather than changing the interface condition.
- The tent profile is used for the displayed finite constants. Profile-independent claims are limited to the logarithmic coefficient and fixed-width well-definedness under the stated regularity.
- Equal-time smeared fields are interpreted through the vacuum covariance completion of the canonical test-function space.

## Not Verified

- A regional product representation induced solely by smearing.
- A regional-to-global factorizing map induced solely by observable smearing; the verified smooth-Hamiltonian map is a different connected construction.
- Regulator independence of the finite covariance constant or canonical-momentum limit.
- Entropy, modular Hamiltonian, or split-property statements; those belong to the positive-collar construction.
