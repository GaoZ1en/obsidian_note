# references

- 1806.06840
- 2407.19387

why study quantum chaos?
1. non-perturbative effects in QG
2. ER=EPR
3. blackhole information paradox, blackhole singularity
4. early cosmology
5. ...

lec. 1-lec. 2.5, universal aspects of blackholes, chaos and wormholes
lec. 2.5-lec. 4 $\displaystyle{\mathcal{N}=4}$ SYM, BPS states

# BH in $\mathrm{AdS}$ and 2-pt function

holography. the idea is that to describe the dynamics of quantum gravity in the bulk, we need dofs on the boundary. some important examples...

duality in high temperature? consider a CFT put on $\displaystyle{S^{d-1}\times S^{1}_{\beta}}$, where $\displaystyle{\beta=\frac{1}{T}}$. the partition function is

$$\tag{.}
\begin{align}
Z[\beta] & =\mathrm{Tr}e^{-\beta H}
\end{align}$$

dictionary

$$\tag{.}
\begin{align}
Z_{\text{ boundary CFT }}[\beta]=Z_{\text{ bulk gravity }}[\beta]
\end{align}$$

in the bulk, the partition function is

$$\tag{.}
\begin{align}
Z_{\text{ bulk gravity }}[\beta] & =\int _{\text{ boundary }S^{d-1}\times S^{1}_{\beta}}\mathcal{D}g\mathcal{D}\phi e^{-S_{\mathrm{EH}}[g]-S_{\text{matter}}[g,\phi]-\dots} \\
S_{\mathrm{EH}}[g] & =\frac{1}{16\pi G}\int _{\text{ bulk }}d^{d+1}x\sqrt{-g}\left(R-2\Lambda \right) \\
\Lambda & =-\frac{(D-1)(D-2)}{2}, & \ell _{\mathrm{AdS}} & =1
\end{align}$$

if we do a saddle point approximation, we have

$$\tag{.}
\begin{align}
Z_{\text{ bulk gravity }}[\beta] & \approx \sum _{\text{ saddle points }}(\text{ 1-loop correction }+\dots)e^{-S_{\mathrm{cl}}[\text{ saddle points }]} \\
\end{align}$$

the question is that **which saddle points to include?** Kontsevich-Segal, Wilson...

**de Sitter spacetime**? Polchinski points out that $\displaystyle{Z_{\mathrm{grav}}\propto i^{D+2}}$, which is generally not a real positive number.... what does this mean?

what are the saddles?

1. thermal AdS, with metric $\displaystyle{\mathrm{d}s^{2}=\mathrm{d}\tau ^{2}+\mathrm{d}r^{2}}$