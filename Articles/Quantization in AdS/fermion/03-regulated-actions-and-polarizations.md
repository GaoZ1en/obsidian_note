# 03. Regulated actions and polarizations

## 1. Symmetric Lorentzian action

At finite $R$, start from

$$
S_{D,R}=\frac{i}{2}\int_{M_R}d^4x\sqrt{-g}
\left[
\bar\psi\gamma^\mu\nabla_\mu\psi
-(\nabla_\mu\bar\psi)\gamma^\mu\psi
-2m\bar\psi\psi
\right].
$$

Variations are written with the order displayed; $\psi$ is differentiated from the right and $\bar\psi$ from the left. The variation parameter is Grassmann-even. No equation of motion is used in the following decomposition:

$$
\begin{aligned}
\delta S_{D,R}
={}&i\int_{M_R}\sqrt{-g}\left[
\delta\bar\psi(\not\!\nabla-m)\psi
-\bar\psi(\overleftarrow{\not\!\nabla}+m)\delta\psi
\right]\\
&+B_R[\delta\psi]
+\theta_R|_{\Sigma_f}-\theta_R|_{\Sigma_i},
\end{aligned}
$$

where

$$
B_R=\frac{i}{2}\int_{\Gamma_R}\sqrt{-\gamma}\,
n_\mu\left(\bar\psi\gamma^\mu\delta\psi-\delta\bar\psi\gamma^\mu\psi\right),
$$

and

$$
\theta_R=\frac{i}{2}\int_{\Sigma_R}\sqrt\sigma\,
\tau_\mu\left(\bar\psi\gamma^\mu\delta\psi-\delta\bar\psi\gamma^\mu\psi\right).
$$

The initial surface has the opposite induced orientation. No corner was discarded: the bulk first-order integration produces only the three hypersurface terms above. A derivative-free radial boundary Lagrangian has no additional field-variation corner, although it does contribute to the Noether time-slice corner in Section 05.

## 2. Radial boundary form

At $r=R$, write

$$
\psi=\alpha+\beta,
\qquad
P_+\alpha=\alpha,
\qquad
P_-\beta=\beta,
$$

where the powers of $R$ are suppressed. Conjugation reverses the projector:

$$
\bar\alpha=\bar\alpha P_-,
\qquad
\bar\beta=\bar\beta P_+.
$$

The finite limiting radial variation is

$$
B_\infty
=\frac{i}{2}\int_{\mathcal I}d^3x\sqrt{-g_{(0)}}
\left(
\bar\beta\,\delta\alpha
+\delta\bar\alpha\,\beta
-\bar\alpha\,\delta\beta
-\delta\bar\beta\,\alpha
\right).
$$

The cross-pairing, rather than a scalar slow/fast momentum, is the boundary super-phase-space structure.

## 3. Boundary-complete standard and alternative actions

Define at finite cutoff

$$
C_R=\frac{i}{2}\int_{\Gamma_R}d^3x\sqrt{-\gamma}\,\bar\psi\psi.
$$

Because equal radial chiralities do not pair, its finite limit is the $\bar\alpha\beta+\bar\beta\alpha$ cross term. The two complete actions are

$$
S_R^{\rm std}=S_{D,R}+C_R,
\qquad
S_R^{\rm alt}=S_{D,R}-C_R.
$$

Their limiting radial variations are

$$
\boxed{
\delta S^{\rm std}|_{\mathcal I}
=i\int_{\mathcal I}\sqrt{-g_{(0)}}
\left(\bar\beta\,\delta\alpha+\delta\bar\alpha\,\beta\right),
}
$$

and

$$
\boxed{
\delta S^{\rm alt}|_{\mathcal I}
=-i\int_{\mathcal I}\sqrt{-g_{(0)}}
\left(\bar\alpha\,\delta\beta+\delta\bar\beta\,\alpha\right).
}
$$

Hence standard quantization fixes $\alpha,\bar\alpha$, while alternative quantization fixes $\beta,\bar\beta$. The source-free pre-phase spaces use $\alpha=0$ and $\beta=0$, respectively.

## 4. Finiteness and the absence of an extra counterterm

Set $\Omega\sim r^{-1}$ and $\psi=\Omega^{3/2}\chi$. The slow and fast pieces of $\chi$ are $\Omega^{-m}\alpha$ and $\Omega^{m}\beta$. The leading radial/mass terms cancel by the indicial equation. The most singular remaining slow-slow tangential density scales as

$$
d\Omega\,\Omega^{-2m},
$$

which is integrable exactly for $m<1/2$. The fast-fast term scales as $d\Omega\,\Omega^{2m}$, and cross terms are finite. The boundary term $C_R$ is finite because

$$
\sqrt{-\gamma}\,\bar\alpha\beta
\sim R^3R^{-\Delta_-}R^{-\Delta_+}=O(1).
$$

Therefore no separate divergence counterterm is needed in the open interval. The term $\pm C_R$ is required by the polarization and variational principle, not inserted by guessing a scalar counterterm. At $m=1/2$, the slow-slow integral becomes logarithmic, so this conclusion does not extend to the endpoint.

## 5. Pre-phase spaces

Stationarity gives the bulk Dirac equations and one of the source-free conditions:

$$
\widetilde{\mathcal P}_{\rm std}
=\{\psi:(\not\!\nabla-m)\psi=0,\ \alpha=0,\ \text{regular at }r=0\},
$$

$$
\widetilde{\mathcal P}_{\rm alt}
=\{\psi:(\not\!\nabla-m)\psi=0,\ \beta=0,\ \text{regular at }r=0\}.
$$

There is no gauge quotient for a free Dirac field on a fixed background, so after choosing the Lorentzian real slice these are the physical linear phase spaces.

## Verification

- **Verified:** `verification/polarization-and-car.wl` checks the four ordered coefficients in $B_\infty\pm\delta C_\infty$; the standard and alternative variations select exactly the claimed data.
- **Assumptions:** the power-law off-shell field space of Section 02; fixed regulator geometry; $0<m<1/2$.
- **Not verified:** endpoint counterterms and general mixed boundary functionals are not classified here.
