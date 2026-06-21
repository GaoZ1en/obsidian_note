# references

- 1806.06840
- 2407.19387

why study quantum chaos?
1. non-perturbative effects in QG
1. ER=EPR
1. blackhole information paradox, blackhole singularity
1. early cosmology
1. ...

lec. 1-lec. 2.5, universal aspects of blackholes, chaos and wormholes
lec. 2.5-lec. 4 $\displaystyle{\mathcal{N}=4}$ SYM, BPS states

# BH in $\mathrm{AdS}$ and 2-pt function

holography. the idea is that to describe the dynamics of quantum gravity in the bulk, we need dofs on the boundary. some important examples...

duality in high temperature? consider a CFT put on $\displaystyle{S^{d-1}\times S^{1}_{\beta}}$, where $\displaystyle{\beta=\frac{1}{T}}$. the partition function is

$$
\tag{.}
\begin{align}
Z[\beta] & =\mathrm{Tr}e^{-\beta H}
\end{align}
$$

dictionary

$$
\tag{.}
\begin{align}
Z_{\text{ boundary CFT }}[\beta]=Z_{\text{ bulk gravity }}[\beta]
\end{align}
$$

in the bulk, the partition function is

$$
\tag{.}
\begin{align}
Z_{\text{ bulk gravity }}[\beta] & =\int _{\text{ boundary }S^{d-1}\times S^{1}_{\beta}}\mathcal{D}g\mathcal{D}\phi e^{-S_{\mathrm{EH}}[g]-S_{\text{matter}}[g,\phi]-\dots} \\
S_{\mathrm{EH}}[g] & =\frac{1}{16\pi G}\int _{\text{ bulk }}d^{d+1}x\sqrt{-g}\left(R-2\Lambda \right) \\
\Lambda & =-\frac{(D-1)(D-2)}{2}, & \ell _{\mathrm{AdS}} & =1
\end{align}
$$

if we do a saddle point approximation, we have

$$
\tag{.}
\begin{align}
Z_{\text{ bulk gravity }}[\beta] & \approx \sum _{\text{ saddle points }}(\text{ 1-loop correction }+\dots)e^{-S_{\mathrm{cl}}[\text{ saddle points }]} \\
\end{align}
$$

the question is that **which saddle points to include?** Kontsevich-Segal, Wilson...

**de Sitter spacetime**? Polchinski points out that $\displaystyle{Z_{\mathrm{grav}}\propto i^{D+2}}$, which is generally not a real positive number.... what does this mean?

what are the saddles?

1. thermal AdS, with metric $\displaystyle{\mathrm{d}s^{2}=(1+r^{2})\mathrm{d}\tau ^{2}+\frac{\mathrm{d}r^{2}}{1+r^{2}}+r^{2}\mathrm{d}\Omega _{d-1}^{2}}$, where $\displaystyle{\tau=\tau+\beta}$. the partition function can be well approximated by $\displaystyle{Z_{\text{ bulk-grav }}\approx e^{-\beta E_{0}}Z_{\text{ 1-loop }}}$, where $\displaystyle{E_{0}}$ is somewhat Casimir energy, and 1-loop correction describes particles propagating in the background metric $\displaystyle{g_{\mu \nu }}$.
1. Schwarzschild-AdS, with metric $\displaystyle{\mathrm{d}s^{2}=f(r)\mathrm{d}\tau ^{2}+\frac{\mathrm{d}r^{2}}{f(r)}+r^{2}\mathrm{d}\Omega ^{2}}$, with $\displaystyle{f(r)=1+r^{2}-\frac{\mu}{r^{D-3}}}$.

define the thermal field double state as

$$
\tag{.}
\begin{align}
\ket{\mathrm{TFD}} & =\sum _{n} e^{-\beta E_{n}/2}\ket{n}_{L}\otimes  \ket{n} _{R}
\end{align}
$$

thus the partition function can be expressed as

$$
\tag{.}
\begin{align}
Z[\beta]=\mathrm{Tr}e^{-\beta H} & = \braket{ \mathrm{TFD}|\mathrm{TFD} }
\end{align}
$$

---
thermal 2pt function, Maldacena's information puzzle, spectrual form factor
