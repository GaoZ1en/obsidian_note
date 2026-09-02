---
paper id: 2608.28755v1
title: A Quasi-local Entropy for Black Hole Space-times
authors:
  - Raymond Isichei
publication date: 2026-08-28T18:01:00Z
abstract: The paper reinterprets angular components of the Brown--York tensor on finite-radius boundaries as Tolman--Ehrenfest temperature times a quasi-local entropy density. In several static spherical examples the proposed density reaches one quarter at a horizon and is compared with area bounds.
comments: 5 pages
url: https://arxiv.org/abs/2608.28755v1
summary: The boundary scalar is a calculable thermodynamic ansatz and has the advertised Schwarzschild and outer-RN endpoint behavior, but it does not constitute a verification of the covariant entropy bound.
tags: []
---

# Verdict

**Incorrect.** The paper's headline statement that its quasi-local boundary entropy “provides explicit verification of the covariant entropy conjecture” is not established.

**The statement should be rewritten as:** under the postulate that a finite-radius timelike boundary is itself a thermal system obeying an Euler relation, the Brown--York angular pressure defines

\[
s:=\frac{p_T}{T_{TE}}.
\]

For Schwarzschild and for the exterior of a nonextremal Reissner--Nordström black hole, this boundary scalar vanishes at infinity, grows inward, and reaches $1/4$ at the outer horizon. These facts give screen-by-screen area-density inequalities and, after an additional monotonicity check, an area-difference inequality for the proposed boundary functional. They do **not** identify that functional with the entropy flux through a null light-sheet, and therefore do not verify the Bousso bound.

There are also concrete errors in the displayed argument:

1. $s(r_1),s(r_2)<1/4$ alone does not imply the claimed two-surface area-difference bound; one needs monotonicity of the area deficit $A(r)/4-S(r)$.
2. The RN light-sheet expression uses $4\pi r_2^2s(r_1)$ where dimensional/geometric consistency requires $4\pi r_1^2s(r_1)$.
3. The AdS$_5$ metric is printed with $-r^2/l^2$, while every subsequent square root and the stated temperature use the Schwarzschild--AdS sign $+r^2/l^2$.
4. The displayed AdS$_5$ density tends to zero as $r_c^{-3}$, not to a nonzero constant. Its extensive entropy tends to a constant.
5. The printed inequality $S<\pi^2r_H^3/2$ for all $r>r_H$ is false for sufficiently small AdS black holes; for example, its own formula with $r_H=1,l=10$ has an asymptotic entropy larger than $\pi^2r_H^3/2$.

# Source map

- Official metadata and abstract: https://arxiv.org/abs/2608.28755v1
- Official PDF: all 5 pages inspected; the equations quoted below were visually confirmed.
- Official TeX source: one 404-line file, read in full including footnotes and bibliography notes.
- Independent Wolfram Language checks: Schwarzschild endpoints and monotonicity, RN exterior endpoints and sampled monotonicity, AdS$_5$ horizon/asymptotic limits, and an explicit counterexample to the printed horizon-area inequality.
- Daily context: [[2026_09_01_overview]].

# Definitions and assumptions

The Euclidean static spherical metric is

\[
ds^2=f(r)d\tau^2+f(r)^{-1}dr^2+r^2d\Omega_{d-2}^2.
\]

A finite-radius hypersurface $\partial M$ is placed at $r=r_c$. In units $\hbar=c=G=1$, the regularized Brown--York tensor is defined as

\[
\bar\Pi_{ij}
=\frac{2}{\sqrt\gamma}\frac{\delta(-I^E)}{\delta\gamma^{ij}}
=\frac1{8\pi}\left(k_{ij}-k\gamma_{ij}
+\frac{\delta(-I^E_{ct})}{\delta\gamma^{ij}}ight).
\]

The Tolman--Ehrenfest temperature is

\[
T_{TE}(r_c)=\frac{T_H}{\sqrt{f(r_c)}},
\qquad
T_H=\frac{f'(r_H)}{4\pi}.
\]

The central, nonstandard premise is that the boundary alone is a thermodynamic system satisfying the intensive Euler relation

\[
f_{\mathrm{therm}}=\rho-Ts+\mu_IQ_I.
\]

After decomposing the Brown--York tensor, the transverse pressure $p_T=\bar\Pi^\theta{}_\theta$ is assigned to the $Ts$ term:

\[
p_T=T_{TE}s.
\]

This equation **defines** the proposed $s$. It is not derived from a statistical entropy, an entropy current, a Noether charge, an entanglement functional, or a light-sheet flux.

# Schwarzschild calculation

For

\[
f(r)=1-\frac{r_0}{r},
\]

Euclidean reference subtraction gives

\[
\bar\Pi^\tau{}_\tau
=-\frac1{4\pi r_c}left(1-\sqrt{1-\frac{r_0}{r_c}}\right),
\]

\[
\bar\Pi^\theta{}_\theta
=\frac1{8\pi r_c}left(
\frac{1-r_0/(2r_c)}{\sqrt{1-r_0/r_c}}-1
\right).
\]

Dividing the second expression by

\[
T_{TE}=\frac1{4\pi r_0\sqrt{1-r_0/r_c}}
\]

gives

\[
s_{Sch}(r_c)=\frac{r_0}{2r_c}left(
1-\frac{r_0}{2r_c}-\sqrt{1-\frac{r_0}{r_c}}
\right).
\]

Writing $x=r_c/r_0>1$, symbolic checks give

\[
s_{Sch}(1)=\frac14,
\qquad
\lim_{x\to\infty}s_{Sch}(x)=0,
\qquad
\frac{ds_{Sch}}{dx}<0.
\]

Thus the density increases when moving inward. The extensive boundary functional is

\[
S_{Sch}(r)=4\pi r^2s_{Sch}(r).
\]

The single-screen inequality $s<1/4$ implies

\[
S_{Sch}(r)<\frac{A(r)}4=\pi r^2.
\]

That is an area inequality for the proposed boundary scalar. It is not yet the covariant entropy bound.

# The two-screen logical gap

For $r_2>r_1>r_0$, the paper defines

\[
S_L:=S(r_2)-S(r_1)
\]

and asserts

\[
S_L<\frac{A(r_2)-A(r_1)}4.
\]

The asserted inference from $S(r_i)<A(r_i)/4$ at each endpoint is invalid in general: subtracting the two inequalities does not preserve the desired ordering because the second terms are subtracted.

For the specific Schwarzschild formula the difference inequality nevertheless holds because the area deficit

\[
D(r):=\frac{A(r)}4-S(r)
\]

is monotonically increasing outward. This stronger property was checked symbolically. The paper did not supply this missing step.

More fundamentally, the authors explicitly interpret $S_L$ as the entropy difference of two disconnected boundaries, “rather than the entropy of the intervening geometry.” The Bousso quantity is instead entropy flux through a null light-sheet. Equality of these two objects is neither assumed in the standard conjecture nor proved here.

# Reissner--Nordström exterior

Let

\[
f(r)=\frac{(r-r_+)(r-r_-)}{r^2},
\qquad
0\leq r_-<r_+\leq r_c.
\]

The proposed outer-region density is

\[
s_{RN,+}(r_c)
=\frac{r_+^2}{4r_c^2(r_+-r_-)}
\left[
2r_c-r_+-r_-
-2\sqrt{(r_c-r_+)(r_c-r_-)}
\right].
\]

Algebraically,

\[
s_{RN,+}(r_+)=\frac14,
\qquad
\lim_{r_c\to\infty}s_{RN,+}(r_c)=0.
\]

A parameter/radius grid check found the density decreasing outward and the corresponding area deficit increasing outward throughout the sampled nonextremal exterior. This is a symbolic diagnostic plus sampling, not a proof for every $(r_-,r_+,r_c)$.

The printed two-boundary equation contains

\[
4\pi r_2^2s_{RN,+}(r_2)-4\pi r_2^2s_{RN,+}(r_1),
\]

but the entropy assigned to the inner screen by the paper's own definition is

\[
4\pi r_1^2s_{RN,+}(r_1).
\]

The first expression is therefore a direct radius-factor error.

# RN interior and negative temperature

Between the horizons $f<0$, the Euclidean construction becomes complex and the paper correctly suspends its thermal interpretation. For $r_c<r_-$, it assigns the inner horizon a negative temperature and defines a positive density using the negative pressure/tension. The density diverges toward the singularity and violates the area-density inequality.

This is not an allowed “verification with an exception.” It shows that the proposed interpretation is region- and sign-choice-dependent. The paper's decision to attribute the violation to negative temperature does not establish the hypotheses or conclusion of the covariant entropy conjecture in that region.

# AdS$_5$ example

The source first prints

\[
f(r)=1-\left(\frac{r_0}{r}\right)^2-\left(\frac r l\right)^2,
\]

but every later formula uses

\[
f(r)=1-\left(\frac{r_0}{r}\right)^2+\left(\frac r l\right)^2,
\]

the usual Schwarzschild--AdS$_5$ sign. The latter is required for the displayed square roots and

\[
T_H=\frac1{2\pi}\left(\frac{r_0^2}{r_H^3}+\frac{r_H}{l^2}\right).
\]

Using the plus-sign metric and the horizon relation

\[
r_0^2=r_H^2\left(1+\frac{r_H^2}{l^2}\right),
\]

the displayed density does satisfy

\[
s_{AdS}(r_H)=\frac14.
\]

Its large-radius expansion is, however,

\[
s_{AdS}(r_c)
=\frac{r_H(l^2+2r_H^2)}{32r_c^3}
+O(r_c^{-5}),
\]

so the density tends to zero. The extensive quantity tends to

\[
S_{AdS}(\infty)
=2\pi^2r_c^3s_{AdS}(r_c)
\longrightarrow
\frac{\pi^2r_H(l^2+2r_H^2)}{16}.
\]

The paper instead says the density approaches a nonzero constant. Its printed stronger inequality

\[
S<\frac{\pi^2r_H^3}{2}
\]

would require $l^2<6r_H^2$ in the asymptotic limit. It therefore fails, for example, at $r_H=1,l=10$. The actual screen-area expression would be $A(r_c)/4=\pi^2r_c^3/2$, not the horizon area used in that line.

The counterterm dependence is also decisive. The paper says the finite-radius covariant counterterms are not necessary but includes them “for illustrative purposes”; their contribution changes $\bar\Pi^\theta{}_\theta$ and hence changes $s=p_T/T_{TE}$. No scheme-independent entropy has been isolated.

# Why this is not a Bousso-bound verification

The covariant entropy bound requires a codimension-two surface, a nonexpanding null congruence, its light-sheet, and an entropy flux through that light-sheet. Depending on the theorem version, local entropy-current and energy/focusing hypotheses are also needed.

This paper instead supplies:

- a Euclidean finite-radius timelike boundary;
- a scheme-dependent Brown--York stress tensor;
- a postulated boundary Euler relation;
- a scalar defined by $s=p_T/T_{TE}$;
- endpoint differences between disconnected screens.

It does not supply an entropy current $s^ak_a$, a null-flux integral, a proof that the boundary difference equals that flux, or the required local hypotheses. A numerical agreement with an area expression at a horizon does not close these gaps.

# Relevance to current projects

- **Useful:** a sharp example of how finite-radius boundary stress tensors and counterterms can be reorganized into thermodynamic-looking quantities.
- **Useful caution:** boundary/counterterm scheme dependence must be separated from invariant entropy or charge data.
- **Not established:** a covariant light-sheet theorem, a Wald/Noether entropy derivation, a CPS flux identity, or a generalized-entropy statement.
- **Action-first lesson:** the missing bridge is an identity connecting an action-derived boundary quantity to a null entropy flux, with all joint, orientation, counterterm, and energy-condition assumptions explicit.

# Verification ledger

## Checked:

- The full TeX source and all five rendered PDF pages were inspected.
- Wolfram Language verified the Schwarzschild horizon/infinity limits, inward monotonicity, and the stronger area-deficit monotonicity needed for the two-screen inequality.
- It verified the RN exterior endpoints; a finite parameter/radius grid supported, but did not prove, RN exterior monotonicity.
- It verified $s_{AdS}(r_H)=1/4$, derived the $r_c^{-3}$ AdS$_5$ asymptotics, and produced the $r_H=1,l=10$ counterexample to the printed horizon-area inequality.

## Source-derived:

- The Brown--York components and finite-radius free-energy decompositions were taken from the paper's stated reference-subtraction/counterterm schemes.
- The identification of the boundary alone as a thermodynamic system and the Euler relation are explicit postulates of the paper.
- The inner-RN negative-temperature interpretation is the author's proposal, not an independently established thermodynamic theorem.

## Failed:

- The inference from two separate $s<1/4$ inequalities to the area-difference inequality is logically insufficient.
- The RN entropy-difference formula contains the wrong radius in its second area factor.
- The AdS$_5$ metric sign is inconsistent with its subsequent formulas.
- The claimed nonzero asymptotic AdS$_5$ density contradicts equation (17).
- The universal printed AdS$_5$ inequality against the horizon area has explicit counterexamples.
- The claimed verification of the covariant entropy conjecture fails because no null entropy flux is identified or calculated.

## Blocked:

- No scheme-independent statistical, Wald, entanglement, or hydrodynamic entropy underlying $s=p_T/T_{TE}$ is provided.
- No light-sheet entropy current or equality between its flux and a boundary-entropy difference is provided.
- The tensor formulas were algebraically inspected but not independently rederived with xAct; the available check addressed their stated consequences.

# Bottom line

Keep the Schwarzschild formula as an interesting finite-boundary diagnostic, but do not cite this paper as a verification of the covariant entropy bound. Its strongest defensible result is conditional and local to a chosen boundary thermodynamic ansatz; the headline theorem claim is false as stated.
