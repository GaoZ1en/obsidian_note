---
title: Lecture 5
date: 2026-06-09
summary: "Notes on Seiberg duality in four-dimensional N=1 SQCD, including electric and magnetic descriptions, operator matching, and infrared phases."
---

SUSY-ph died.

---

non-renormalization theorem: the superpotential $\displaystyle{W}$ is not *perturbatively* renormalized (which means the mathematical form is unchanged, and does not mean non-renormalizability like gravity). however the Kähler potential may changes. equivalently, the F term is not renormalized, while the D term is. e.g. in WZ models. consider the following example

$$\begin{align}
W & =\dfrac{m}{2}\phi ^{2}+\dfrac{\lambda}{3}\phi ^{3}
\end{align}$$

lift $\displaystyle{m}$ and $\displaystyle{\lambda}$ to superfield. after renormalization, we have

$$\begin{align}
W_{\text{eff}} & =m\phi ^{2}h(\dfrac{\lambda \phi}{m}) \\
 & =\sum _{n} a_{n}\lambda ^{n}m^{1-n}\phi ^{2+n}
\end{align}$$

notice that
- in the weak-coupling limit $\displaystyle{\lambda\to 0}$, $\displaystyle{W_{eff}}$ cannot diverge, $\displaystyle{\implies n\geqslant 0}$.
- in the limit $\displaystyle{m\to 0}$, $\displaystyle{W_{eff}}$ can also not diverge, $\displaystyle{\implies n\leqslant 1}$.
thus

$$\begin{align}
W_{\text{eff}} & =a_{0}m\phi ^{2}+a_{1}\lambda \phi ^{3}
\end{align}$$

which means that the mathematical form of the superpotential $\displaystyle{W}$ is unchanged. this is the non-renormalization theorem. now consider SQCD. non-perturbative instanton-induced terms could appear in the superpotential. the classical result is obtained by Affleck, Dine, Seiberg (ADS) in 1984:

$$\begin{align}
W_{\text{ADS}} & =c\left(\dfrac{\Lambda^{3N_{c}-N_{f}}}{\det M}\right)^{1/(N_{c}-N_{f})}
\end{align}$$

## Seiberg duality

Seiberg duality is an infrared equivalence between two different four-dimensional $\mathcal{N}=1$ supersymmetric gauge theories. The two theories have different ultraviolet Lagrangians, different gauge groups, and different elementary fields, but they flow to the same low-energy fixed point or to the same low-energy effective theory.

The standard example is massless SQCD. The electric theory is

$$\begin{align}
G_e=SU(N_c),
\qquad
Q_j\in \mathbf{N_c},
\qquad
\widetilde Q^i\in \overline{\mathbf{N_c}},
\qquad
W_e=0,
\end{align}$$

with $i,j=1,\dots,N_f$. Its useful gauge-invariant chiral operators are the mesons (superfield)

$$\begin{align}
M^i{}_j=\widetilde Q^i Q_j,
\end{align}$$

and, for $N_f\geq N_c$, the baryons (superfield)

$$\begin{align}
B\sim Q^{N_c},
\qquad
\widetilde B\sim \widetilde Q^{N_c}.
\end{align}$$

---

consider the $\displaystyle{\mathrm{U}(1)_{A}}$ symmetry

$$\begin{align}
Q & \mapsto e^{i\alpha}Q \\
\widetilde{Q} & \mapsto e^{i\alpha}\widetilde{Q} \\
\theta _{\mathrm{YM}} & \mapsto \theta _{\mathrm{YM}}+2F\alpha \\
\Lambda ^{b} & \mapsto e^{i2F\alpha}\Lambda ^{b}
\end{align}$$

ADS stated that the superpotential may contains three parts: field strength squared, $\displaystyle{\Lambda ^{b}}$ and $\displaystyle{\det M}$. by similar argument as WZ model, we have

$$\begin{align}
W_{\text{eff}} & =c_{N_{c} ,N_{f}}\left(\dfrac{\Lambda ^{3N_{c} -N_{f}}}{\det M}\right)^{1/( N_{c} -N_{f})}
\end{align}$$

---

For $N_f>N_c+1$, the magnetic dual theory has gauge group

$$\begin{align}
G_m=SU(\widetilde N_c),
\qquad
\widetilde N_c=N_f-N_c.
\end{align}$$

It contains dual quarks $q,\widetilde q$ charged under $SU(\widetilde N_c)$, together with an elementary gauge-singlet meson field $M^i{}_j$ carrying the same flavor quantum numbers as the electric composite $\widetilde Q^iQ_j$. The magnetic superpotential is schematically

$$\begin{align}
W_m=\frac{1}{\mu}M^i{}_j q_i\widetilde q^j,
\end{align}$$

where $\mu$ is a matching scale used to give $M$ canonical engineering dimension in the magnetic Lagrangian.

The basic operator map is

$$\begin{align}
\widetilde Q^iQ_j\longleftrightarrow M^i{}_j,
\qquad
B\sim Q^{N_c}\longleftrightarrow b\sim q^{\widetilde N_c},
\qquad
\widetilde B\sim \widetilde Q^{N_c}\longleftrightarrow \widetilde b\sim \widetilde q^{\widetilde N_c}.
\end{align}$$

Thus the meson is composite in the electric theory but elementary in the magnetic theory, while electric baryons are mapped to magnetic baryons. The electric and magnetic strong-coupling scales obey a holomorphic matching relation of the form

$$\begin{align}
\Lambda_e^{3N_c-N_f}\Lambda_m^{3\widetilde N_c-N_f}\sim \mu^{N_f},
\end{align}$$

up to convention-dependent signs and normalization factors.

The non-anomalous global symmetry is the same in both descriptions:

$$\begin{align}
SU(N_f)_L\times SU(N_f)_R\times U(1)_B\times U(1)_R.
\end{align}$$

At the superconformal fixed point, the anomaly-free $R$-charges are

$$\begin{align}
R(Q)=R(\widetilde Q)=1-\frac{N_c}{N_f},
\qquad
R(M)=2\left(1-\frac{N_c}{N_f}\right),
\qquad
R(q)=R(\widetilde q)=\frac{N_c}{N_f}.
\end{align}$$

These values make the magnetic superpotential have $R(W_m)=2$, as required for an $\mathcal{N}=1$ superpotential.

Important checks of the duality include:

- The 't Hooft anomalies of the global symmetries agree in the electric and magnetic descriptions.
- The gauge-invariant chiral operators and classical moduli spaces match, with the appropriate quantum corrections.
- Relevant deformations match. For example, an electric quark mass $W=m^j{}_i\widetilde Q^iQ_j$ becomes a linear term for $M^i{}_j$ in the magnetic theory, and the magnetic F-term equations then Higgs the magnetic gauge group in the way needed to reproduce SQCD with fewer flavors.
- The duality is stable under flows obtained by giving masses or vacuum expectation values to flavors.

The infrared interpretation depends on $N_f$:

- For $\frac32N_c<N_f<3N_c$, the theory is in the non-Abelian Coulomb phase. Both electric and magnetic descriptions flow to the same interacting superconformal field theory.
- For $N_c+1<N_f\leq \frac32N_c$, the magnetic theory is infrared free. This is the free magnetic phase, where strongly coupled electric SQCD has a weakly coupled magnetic description in the deep IR.
- For $N_f=N_c+1$, the magnetic gauge group is trivial. The theory is described directly by mesons and baryons, with a dynamically generated superpotential.
- For $N_f\leq N_c$, the dynamics is instead described by quantum-deformed moduli spaces or Affleck-Dine-Seiberg superpotentials rather than by a nontrivial magnetic gauge group of the above form.

The main lesson is that the gauge group and elementary fields are not themselves invariant notions of the infrared theory. Seiberg duality identifies different microscopic gauge descriptions that give the same quantum physics at long distances.
