---
paper id: 2606.30723v1
title: Ryu-Takayanagi area from Virasoro modular data
authors:
  - Jennifer Lin
publication date: 2026-06-29T18:00:02
abstract: |-
  The paper rewrites several holographic 2d CFT entanglement entropies by applying crossing symmetry to replica manifolds. The rewritten formulas look like algebraic entanglement entropies for the Virasoro algebra restricted to the region, with center labels obtained by coarse-graining heavy BCFT primaries into Liouville-momentum bins. At large central charge the dominant bin supplies an O(c) Cardy-density contribution, identified with the Ryu-Takayanagi area.
comments: "28 pages, 6 figures"
url: https://arxiv.org/abs/2606.30723v1
summary: "A Virasoro modular-data derivation of the RT area supplies a useful algebraic-center model for entangling-cut entropy in AdS3/CFT2."
tags: []
---

Back to [[2026_07_01_overview]].

This is a medium-priority technical note. It is not a CPS or charge paper, but it gives a concrete AdS3/CFT2 mechanism in which an area term is reorganized as sector multiplicity for a boundary algebra.

# Replica channels and Virasoro momenta

The source studies three cases: one interval in the vacuum, two intervals in the vacuum, and one interval in a light excited state. In each case the replica geometry is moved to a cross channel by modular and fusion moves. The channel label is a Liouville momentum $P$ or a tuple $\vec P$ of such momenta.

The organizing entropy formula is the schematic form of source Eq. (1.2):

$$
\begin{align}
S(A,|\psi\rangle)
=\min_{\rm channels}\int d\vec P\,
p_{\vec P}\left(
-\log p_{\vec P}
+\sum_i \log S_{P_i1}
+S_{IR}(\vec P)
\right).
\end{align}
$$

Here $S_{P1}$ is the Virasoro modular $S$-matrix element connecting the intermediate Liouville momentum $P$ to the identity. The term $S_{IR}(\vec P)$ is the source's residual infrared/von-Neumann entropy term in the chosen Virasoro TQFT channel.

# Cross-channel entropy formula

The derivation proceeds by crossing the replica partition function before taking $n\to 1$. In the two-interval case, the relevant form includes two Liouville momenta and an $S/T$ channel choice:

$$
\begin{align}
S
=\min_{S,T}\int dP_1\,dP_2\,
p_{P_1P_2}^{(S/T)}
\left(
-\log p_{P_1P_2}^{(S/T)}
+\log S_{P_11}
+\log S_{P_21}
-\left(
\frac{\partial_n\mathcal F_{P_1P_2}^{L(S/T)}(n)|_{n\to 1}}
{\mathcal F_{P_1P_2}^{L(S/T)}(1)}
-\log\mathcal F_{P_1P_2}^{L(S/T)}(1)
\right)
\right).
\end{align}
$$

The source flags two assumptions that matter for local use:

- sparse large-$c$ or vacuum-block dominance assumptions enter beyond the simplest single-interval case;
- the analytic continuation in $n$ is defined through twist insertions and Virasoro blocks, not by treating all noninteger replica geometries as literal smooth manifolds.

# Boundary algebra interpretation

The candidate algebra is the Virasoro algebra associated with the regulated region $A$. The center labels are not exact microscopic primaries one by one; they are coarse-grained heavy-primary bins labeled by Liouville momenta. With that coarse-graining, the entropy formula has the same shape as algebraic entanglement entropy with center sectors:

$$
\begin{align}
S_{\rm alg}
\sim \sum_{\vec P} p_{\vec P}
\left(-\log p_{\vec P}+\log \dim \mathcal H_{\vec P}+S_{\vec P}\right),
\end{align}
$$

where the Virasoro modular factors $\prod_i S_{P_i1}$ play the role of the large sector multiplicity.

# RT area term

At large $c$, the $\vec P$ integral is saddle dominated. The $O(c)$ contribution comes from the Cardy density in the dominant bin:

$$
\begin{align}
S_{\rm RT\ area}
\longleftrightarrow
\left.\sum_i \log S_{P_i1}\right|_{\vec P=\vec P_*}.
\end{align}
$$

The paper's local value is this dictionary: the RT area can be read as the logarithm of coarse-grained Virasoro intertwiners across the cut, rather than as an unexplained geometric add-on. This is useful for AdS3 entangling-surface notes because it gives a precise center-sector analogue of an area term.

# Verification note

No independent Virasoro-block or saddle-point computation was performed for this medium note. The formulas and assumptions above are source-derived from the official arXiv HTML. The key unverified technical input is the source's large-$c$ control of the block ratios and the positivity/coarse-graining conditions for the sector probabilities.
