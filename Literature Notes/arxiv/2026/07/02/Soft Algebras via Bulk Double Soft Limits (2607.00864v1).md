---
paper id: 2607.00864v1
title: Soft Algebras via Bulk Double Soft Limits
authors:
  - Sruthi A. Narayanan
publication date: 2026-07-01T12:30:58
abstract: |-
  The paper compares celestial soft-operator algebras with bulk gravitational double-soft and collinear limits. It shows that the boundary recursion suggesting that the first three soft gravitons generate the full soft tower does not translate straightforwardly into a bulk relation among generic gravitational amplitudes. The obstruction comes from the noncommuting order of soft and collinear limits, ordering dependence of consecutive double-soft factors, and derivative structures that fail to reproduce the expected higher soft terms.
comments: "17 pages, 2 appendices"
url: https://arxiv.org/abs/2607.00864v1
summary: "A useful negative result clarifying that celestial soft algebras do not directly generate the generic bulk gravitational soft expansion from the first three universal soft factors."
tags: []
---

# Bulk double-soft limits versus celestial soft algebras

Back to [[2026_07_02_overview]].

The paper asks whether the infinite tower of celestial soft operators has a direct bulk-amplitude realization in which the first three universal gravitational soft factors generate the rest of the bulk soft expansion. The answer is negative in the form tested here. The boundary algebra correctly organizes celestial OPEs, but a direct bulk construction using consecutive double-soft limits plus collinear limits does not reproduce the expected tower beyond the universal leading, subleading, and sub-subleading data.

This is high-priority for the screening profile because it is a concrete soft/asymptotic-symmetry paper. It is also a cautionary result: celestial algebraic closure is not automatically a bulk Ward identity for the full generic gravitational soft expansion.

## Source route through the paper

The introduction reviews the celestial-holography motivation and explains the puzzle: in celestial CFT, soft graviton operators of dimensions $k=1,0,-1,\ldots$ obey algebras where a small set recursively generates the action of the tower. In generic bulk gravity, only the first three soft terms have universal factorized forms.

Section 2 reviews gravitational soft theorems, collinear limits, Mellin transforms, and celestial OPEs. Section 3 defines the consecutive double-soft limits used in the bulk computation. Section 4 explains why naive power matching and schematic double-soft factors already signal trouble. Section 5 gives explicit double-soft factors and their collinear limits. Section 6 studies commutator and anticommutator prescriptions. Section 7 concludes that the first three bulk soft factors do not generate the generic higher soft expansion. Appendix A computes derivatives of soft factors, and Appendix B lists the double-soft-limit algebra used in the main text.

The official TeX source contains additional material after the first `\end{document}`. I used the first document, ending at the acknowledgments after the two appendices, as the paper body.

## Single-soft and celestial notation

For a graviton taken soft as $k_1\to \epsilon q_1$, the universal gravitational soft expansion is

$$\begin{align}
\lim_{\epsilon\to0}\mathcal M_{n+1}(\epsilon q_1,\cdots)
=\left(\frac{1}{\epsilon}S_1^{(0)}+S_1^{(1)}+\epsilon S_1^{(2)}\right)\mathcal M_n+\mathcal O(\epsilon^2).
\end{align}$$

The first three soft factors are

$$\begin{align}
S_1^{(0)}
&=\sum_{a=2}^{n+1}\frac{(\varepsilon_1\cdot k_a)^2}{q_1\cdot k_a},\\
S_1^{(1)}
&=-i\sum_{a=2}^{n+1}
\frac{(\varepsilon_1\cdot k_a)\varepsilon_{1,\nu}k_{a,\mu}J_a^{\mu\nu}}
{q_1\cdot k_a},\\
S_1^{(2)}
&=-\frac12\sum_{a=2}^{n+1}
\frac{(\varepsilon_{1,\nu}k_{a,\mu}J_a^{\mu\nu})^2}
{q_1\cdot k_a}.
\end{align}$$

The angular momentum operator is

$$\begin{align}
J_a^{\mu\nu}
=i(k_a^\mu\partial_a^\nu-k_a^\nu\partial_a^\mu)
+i(\varepsilon_a^\mu\tilde\partial_a^\nu-\varepsilon_a^\nu\tilde\partial_a^\mu),
\end{align}$$

with Lorentz algebra

$$\begin{align}
[J^{\mu\nu},J^{\rho\sigma}]
=i(\eta^{\mu\rho}J^{\nu\sigma}-\eta^{\mu\sigma}J^{\nu\rho}
-\eta^{\nu\rho}J^{\mu\sigma}+\eta^{\nu\sigma}J^{\mu\rho}).
\end{align}$$

Celestial momenta are parametrized by

$$\begin{align}
q^\mu=\omega(1+z\bar z,z+\bar z,-i(z-\bar z),1-z\bar z)
=\omega\hat q^\mu,
\end{align}$$

and positive-helicity conformally soft gravitons are

$$\begin{align}
H^k(z,\bar z)=\lim_{\varepsilon\to0}\varepsilon G^+_{k+\varepsilon}(z,\bar z),
\qquad k=2,1,0,-1,\ldots.
\end{align}$$

Here $k=1,0,-1$ correspond to the leading, subleading, and sub-subleading soft gravitons. The paper's target question is what $k<-1$ means in bulk gravity if generic soft factorization fails beyond sub-subleading order.

## Consecutive double-soft limits

The consecutive double-soft limit is

$$\begin{align}
\mathtt{CSL}(1^{h_1},2^{h_2})\mathcal M_n
&=\lim_{\epsilon_1\to0}\lim_{\epsilon_2\to0}
\mathcal M_{n+2}(\epsilon_1q_1^{h_1},\epsilon_2q_2^{h_2},3,\ldots,n+2)\\
&=\left[\frac{1}{\epsilon_2}S^{(0)}(2^{h_2})+S^{(1)}(2^{h_2})+\epsilon_2S^{(2)}(2^{h_2})+\cdots\right]\\
&\quad\times
\left[\frac{1}{\epsilon_1}S^{(0)}(1^{h_1})+S^{(1)}(1^{h_1})+\epsilon_1S^{(2)}(1^{h_1})+\cdots\right]\mathcal M_n.
\end{align}$$

The paper then sets $\epsilon_1=\epsilon_2=\epsilon$ and organizes terms by total powers of $\epsilon$. It uses

$$\begin{align}
S^{(m)}(1^+)S^{(n)}(2^+)\equiv \mathbb S_{12}^{(m,n)},\qquad
\mathbb S_{21}^{(m,n)}=\mathbb S_{12}^{(m,n)}(1\leftrightarrow2).
\end{align}$$

The important structural point is that in $\mathbb S_{12}^{(m,n)}$, $S^{(m)}(1^+)$ can contain particle 2 in its hard-particle sum and therefore can act on the second soft factor. This makes ordering physically meaningful, not just notational.

For leading collinear data, the singular term comes from the summand where the first soft factor treats the other soft leg as hard:

$$\begin{align}
S_\ell^{(i)}S_{\ell'}^{(j)}\mathcal M_n
=\left(\frac{S_{\ell,\ell'}^{(i)}}{q_\ell\cdot q_{\ell'}}\right)
\left[\sum_{b\ne\ell,\ell'}\frac{S_{\ell',b}^{(j)}}{q_{\ell'}\cdot k_b}\right]\mathcal M_n+\cdots.
\end{align}$$

This explains why the derivative structure tends to follow the second soft factor rather than the celestial expectation.

## Explicit double-soft obstruction

The simplest bulk power-matching guess expands

$$\begin{align}
\lim_{\epsilon_1,\epsilon_2\to0}\mathcal M_{n+2}
&=\left(\frac{1}{\epsilon_1}S_1^{(0)}+S_1^{(1)}+\epsilon_1S_1^{(2)}\right)
\left(\frac{1}{\epsilon_2}S_2^{(0)}+S_2^{(1)}+\epsilon_2S_2^{(2)}\right)\mathcal M_n+\cdots.
\end{align}$$

If one instead takes the collinear limit first, one expects a single soft expansion in the collinear momentum $P$:

$$\begin{align}
\lim_{\epsilon\to0}\lim_{1\parallel2}\mathcal M_{n+2}
=\mathrm{Split}(t,q_1,q_2)
\left(\frac{1}{\epsilon}S_P^{(0)}+S_P^{(1)}+\epsilon S_P^{(2)}\right)\mathcal M_n+\cdots.
\end{align}$$

This heuristic reproduces some boundary OPE expectations by matching powers of $\epsilon$, but it mixes different pairs of soft factors and does not define an unambiguous bulk algebra.

The explicit double-leading result already shows the issue:

$$\begin{align}
\lim_{1\parallel2}\mathbb S_{12}^{(0,0)}
=\frac{1}{\epsilon^2}\frac{1}{t(1-t)}S_P^{(0)}S_P^{(0)}
-\frac{1}{\epsilon}\frac{2}{t}\frac{\bar z_{12}}{z_{12}}S_P^{(0)}.
\end{align}$$

The leading product term has no direct single-soft celestial-generator interpretation. For mixed leading/subleading order, the two orderings differ:

$$\begin{align}
\lim_{1\parallel2}\mathbb S_{12}^{(0,1)}
&=\frac{1}{\epsilon}\frac{1}{t}S_P^{(0)}S_P^{(1)}
-\frac{2(1-t)}{t}\frac{\bar z_{12}}{z_{12}}S_P^{(1)},\\
\lim_{1\parallel2}\mathbb S_{12}^{(1,0)}
&=\frac{1}{\epsilon}\frac{2}{1-t}\frac{\bar z_{12}}{z_{12}}S_P^{(0)}
+\frac{1}{\epsilon}\frac{1}{1-t}S_P^{(0)}S_P^{(1)}
-\frac{1}{\epsilon}\frac{\omega_P^2|z_{12}|^2}{1-t}\partial_{z_P}^2S_P^{(0)}.
\end{align}$$

Only one ordering has the expected leading-soft single-particle structure. Including the sub-subleading soft factor makes the mismatch sharper: $(0,2)$ and $(2,0)$ do not cleanly return the expected subleading soft factor.

When the full consecutive soft limit is organized by $\epsilon$, the leading collinear singular terms become

$$\begin{align}
\lim_{1\parallel2}\mathtt{CSL}_{12}
=&\frac{1}{\epsilon}
\left(\frac{4t-2}{t(1-t)}\right)
\frac{\bar z_{12}}{z_{12}}S_P^{(0)}
-\frac{2(2t-1)^2}{t(1-t)}
\frac{\bar z_{12}}{z_{12}}S_P^{(1)}\\
&-\epsilon\left(\frac{14t^2-10t+2}{t}\right)
\frac{\bar z_{12}}{z_{12}}S_P^{(2)}+\cdots.
\end{align}$$

This does form a single-soft-like expansion in $P$, but the $t$-dependence is not simply a splitting function times the soft tower, and no higher-than-sub-subleading soft term is generated from the first three factors.

## Commutators do not repair the mismatch

The paper defines a physically meaningful ordering commutator

$$\begin{align}
\mathtt{commSL}^{(m,n)}(1^+,2^+)
=\lim_{1\parallel2}\left(\mathbb S_{12}^{(m,n)}-\mathbb S_{21}^{(n,m)}\right).
\end{align}$$

For $(0,0)$ the leading product cancels and

$$\begin{align}
\mathtt{commSL}^{(0,0)}
=\frac{1}{\epsilon}\left(\frac{2}{1-t}-\frac{2}{t}\right)
\frac{\bar z_{12}}{z_{12}}S_P^{(0)}.
\end{align}$$

For $(0,1)$ the leading single-particle term has the expected leading-soft factor,

$$\begin{align}
\mathtt{commSL}^{(0,1)}
=-\frac{1}{\epsilon}\frac{2}{t}\frac{\bar z_{12}}{z_{12}}S_P^{(0)}
+\frac{1}{\epsilon}\frac{1}{t}\omega_P^2|z_{12}|^2\partial_{z_P}^2S_P^{(0)}
-\frac{2(1-t)}{t}\frac{\bar z_{12}}{z_{12}}S_P^{(1)}.
\end{align}$$

But the pattern fails once $S^{(2)}$ enters. For example

$$\begin{align}
\mathtt{commSL}^{(1,1)}=-4\omega_P\bar z_{12}\partial_{z_P}S_P^{(1)},
\end{align}$$

not the expected closed subalgebra result. The conclusion is that neither the direct double-soft factors nor this ordering commutator gives a bulk realization of the celestial recursive tower.

For the full consecutive limit, antisymmetrizing or symmetrizing the two orderings gives

$$\begin{align}
{}^{[\, ,\, ]}\mathtt{CSL}_{12}\mathcal M_n
&=\frac{2}{\epsilon}\left(\frac{4t-2}{t(1-t)}\right)
\frac{\bar z_{12}}{z_{12}}S_P^{(0)}\mathcal M_n\\
&\quad+\epsilon\left(\frac{2(2t-1)(7t^2-7t+1)}{(1-t)t}\right)
\frac{\bar z_{12}}{z_{12}}S_P^{(2)}\mathcal M_n+\cdots,
\end{align}$$

and

$$\begin{align}
{}^{\{\, ,\,\}}\mathtt{CSL}_{12}\mathcal M_n
&=-\frac{4(2t-1)^2}{t(1-t)}
\frac{\bar z_{12}}{z_{12}}S_P^{(1)}\mathcal M_n\\
&\quad-\epsilon\left(\frac{2(3t^2-3t+1)}{(1-t)t}\right)
\frac{\bar z_{12}}{z_{12}}S_P^{(2)}\mathcal M_n+\cdots.
\end{align}$$

These are algebraically neat but each cancels part of the first three soft data, so they are not the desired bulk counterpart of the celestial soft algebra.

## Translation to local vault conventions

- Soft charge relevance: the paper concerns soft graviton operators and celestial OPEs, but it is not a direct construction of asymptotic charges or a Wald/CPS charge algebra.
- Boundary algebra caution: a boundary OPE algebra can encode conformal-soft operations without defining a simple bulk operation that generates the full generic soft expansion.
- Bulk limit ordering: the difference between soft-first and collinear-first limits is the operational obstruction. This is a useful warning for any local note that tries to infer bulk charge algebra from celestial OPEs alone.
- Useful reusable object: the formulas for $\mathbb S_{12}^{(m,n)}$, $\mathtt{CSL}_{12}$, and $\mathtt{commSL}^{(m,n)}$ give a concrete testbed for checking proposed soft-algebra interpretations.

## Verification log

### Checked

- Mathematica checked the algebraic recombination of the full consecutive-soft coefficient
  $c_0=(4t-2)/(t(1-t))$, $c_1=-2(2t-1)^2/(t(1-t))$, and $c_2=-(14t^2-10t+2)/t$ under $t\mapsto1-t$. The commutator and anticommutator coefficients displayed in the paper simplify exactly to the quoted expressions.
- The source structure, main double-soft definitions, soft factors, and explicit leading formulas above were checked against the official arXiv TeX source.

### Blocked

- I did not independently rederive every double-soft factor from the angular-momentum differential operators acting on a general amplitude. That would require implementing the soft-factor differential operators and their action on the hard-particle sums in symbolic tensor/spinor-helicity variables.
- I did not verify the appendix table line by line. The current independent check verifies the coefficient recombination once the paper's displayed collinear coefficients are accepted.

### Failed

- No failed algebraic check was found in the coefficient recombination tested here.
