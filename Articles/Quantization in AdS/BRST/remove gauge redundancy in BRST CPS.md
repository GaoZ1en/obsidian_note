---
title: Remove Gauge Redundancy in BRST CPS
date: 2026-05-05
summary: "Records a working idea for combining BRST quantization with covariant phase space quantization by replacing presymplectic gauge quotients with BRST cohomology."
---

# Remove Gauge Redundancy in BRST CPS

The goal is to combine BRST quantization with the covariant phase space quantization. The guiding idea is that the BRST complex should remove the null directions of the presymplectic form, instead of performing the quotient by gauge transformations by hand.

For Maxwell theory, the original covariant phase space has a presymplectic form. Gauge variations

$$\begin{align}
\delta _{\lambda}A_{\mu} & =\nabla _{\mu}\lambda
\end{align}$$

are null directions of the presymplectic form when the gauge parameter obeys the appropriate boundary condition. The usual reduced phase space is obtained by quotienting these directions. In the BRST-CPS viewpoint, one instead extends the field space to

$$\begin{align}
(A_{\mu},c,\bar{c},B)
\end{align}$$

and uses the BRST differential

$$\begin{align}
sA_{\mu} & =\nabla _{\mu}c, & sc & =0, & s\bar{c} & =B, & sB & =0.
\end{align}$$

Then gauge directions are represented as BRST-exact directions. The physical phase space should be recovered as the BRST cohomology, rather than as a direct quotient of the original presymplectic space.

## Working Picture

Start with the BRST gauge-fixed action and compute its covariant phase space data:

$$\begin{align}
\delta S_{\mathrm{BRST}} & =\int _M \sqrt{-g}\,E_I\delta \Phi ^I+\theta|_{\Sigma_f}-\theta|_{\Sigma_i}, \\
\omega & =\delta \theta.
\end{align}$$

Here $\displaystyle{\Phi ^I}$ denotes all fields in the BRST complex. The extended symplectic form is no longer just the Maxwell presymplectic form; it also contains ghost and gauge-fixing contributions. The expectation is:

- the transverse Maxwell modes give nontrivial BRST cohomology;
- the longitudinal Maxwell modes pair with ghost modes and become BRST-exact;
- the antighost and $\displaystyle{B}$ sector implements the gauge-fixing condition and completes the BRST doublet;
- after quantization, physical states are the ghost-number-zero BRST cohomology.

Schematically,

$$\begin{align}
\mathcal{H}_{\mathrm{phys}} & =H^{0}(Q_{\mathrm{BRST}},\mathcal{H}_{\mathrm{CPS,ext}}).
\end{align}$$

This should replace the ordinary reduced phase space quantization

$$\begin{align}
\mathcal{P}_{\mathrm{red}} & =\mathcal{P}_{\mathrm{pre}}/\ker \Omega.
\end{align}$$

## Mode-Level Interpretation

In Feynman gauge, the equations are

$$\begin{align}
E_{\mu} & = (\nabla ^2+2)A_{\mu}=0, \\
E_c & =-\nabla ^2 c=0, \\
E_{\bar c} & =-\nabla ^2\bar c=0.
\end{align}$$

The vector solutions split into a transverse branch and a longitudinal branch:

$$\begin{align}
A_{\mu} & =A_{\mu}^{\mathrm{T}}+A_{\mu}^{\mathrm{L}}, & A_{\mu}^{\mathrm{L}} & =\nabla _{\mu}\lambda, & \nabla ^2\lambda & =0.
\end{align}$$

The transverse branch is the physical $\displaystyle{(1,1)}$ tower. The longitudinal branch is generated from the same scalar harmonic tower as the ghosts. Since

$$\begin{align}
sA_{\mu} & =\nabla _{\mu}c,
\end{align}$$

a longitudinal mode $\displaystyle{\nabla _{\mu}\lambda}$ is the BRST image of the ghost mode with the same scalar profile. Thus it should not contribute to the physical cohomology.

At the level of modes, one expects a BRST quartet structure:

$$\begin{align}
\lambda \quad\longleftrightarrow\quad A_{\mu}^{\mathrm{L}}=\nabla _{\mu}\lambda,
\qquad
\bar c \quad\longleftrightarrow\quad B.
\end{align}$$

The surviving states are represented by the transverse $\displaystyle{(1,1)}$ Maxwell modes, modulo possible boundary subtleties.

## Boundary Subtlety

The statement that BRST kills gauge directions is cleanest for small gauge transformations, whose parameters vanish sufficiently fast at the AdS boundary. Large gauge transformations are different. If $\displaystyle{\lambda}$ approaches a nonzero boundary function, then $\displaystyle{\nabla _{\mu}\lambda}$ may represent an edge mode rather than a pure redundancy.

Therefore the BRST treatment depends on the boundary condition imposed on the ghost field:

- if ghosts are required to vanish at the boundary, BRST removes only small gauge transformations;
- if ghosts are allowed to have the same boundary behavior as large gauge parameters, BRST may also remove the edge sector;
- if large gauge transformations are interpreted as physical boundary symmetries, they should not be put in the BRST-exact sector.

This is the main point where BRST quantization and covariant phase space quantization must be matched carefully.

## Off-Shell Versus On-Shell BRST

If the $\displaystyle{B}$ field is integrated out, then

$$\begin{align}
s\bar c & =-\frac{1}{\xi}\nabla _{\mu}A^{\mu},
\end{align}$$

and BRST nilpotency on $\displaystyle{\bar c}$ holds only after using the ghost equation of motion. For a clean covariant phase space construction, it is probably better to keep $\displaystyle{B}$ and use the off-shell nilpotent complex.

This suggests two possible routes:

1. Work with the off-shell BRST action including $\displaystyle{B}$, compute the CPS symplectic form on the extended field space, then impose BRST cohomology.
2. Work with the $\displaystyle{B}$-integrated action, but accept that BRST nilpotency and the cohomological interpretation are on-shell statements.

The first route is conceptually cleaner for combining BRST with CPS.

## Things to Check

- Derive the BRST charge $\displaystyle{Q_{\mathrm{BRST}}}$ from the CPS symplectic form by solving $\displaystyle{\iota _s\omega=\delta Q_{\mathrm{BRST}}}$.
- Verify explicitly that longitudinal modes have zero norm or cancel against ghost contributions in the extended symplectic form.
- Decide the correct boundary condition for $\displaystyle{c}$ and $\displaystyle{\bar c}$ in global $\displaystyle{\mathrm{AdS}_3}$.
- Check whether the chiral large-gauge branches $\displaystyle{(1,0)}$ and $\displaystyle{(0,1)}$ should survive as edge modes or be removed by BRST.
- Compare the resulting BRST cohomology with the reduced CPS quantization of the transverse $\displaystyle{(1,1)}$ tower.
