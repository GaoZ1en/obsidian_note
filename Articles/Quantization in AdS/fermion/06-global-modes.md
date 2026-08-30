# 06. Global Dirac modes

## 1. Angular spinors and first-order radial equations

Let $r=\tan\rho$, $0\leq\rho<\pi/2$, and use normalized spinor spherical harmonics labelled by

$$
\kappa=\pm\left(j+\frac12\right),
\qquad
j=\frac12,\frac32,\ldots,
\qquad
m_j=-j,\ldots,j.
$$

In the two-component description the angular operator $K=1+\boldsymbol\sigma\cdot\mathbf L$ has eigenvalues $\kappa$, and $\boldsymbol\sigma\cdot\hat r$ exchanges the two parity harmonics. After the unitary radial rescaling

$$
\psi=r^{-1}f^{-1/4}\widetilde\psi,
$$

separation $e^{-iEt}$ reduces the Dirac equation to

$$
\frac{dF_\kappa}{d\rho}
=-E G_\kappa-\kappa\csc\rho\,F_\kappa-m\sec\rho\,G_\kappa,
$$

$$
\frac{dG_\kappa}{d\rho}
=E F_\kappa+\kappa\csc\rho\,G_\kappa-m\sec\rho\,F_\kappa.
$$

This is a first-order pair. Squaring before imposing this coupling would introduce spurious independent solutions.

## 2. Decoupled Pöschl--Teller equations

A $\rho/2$ unitary rotation produces $\widehat f_\kappa^\pm$ satisfying

$$
\left[-\frac{d^2}{d\rho^2}
+\frac{m(m\mp1)}{\cos^2\rho}
+\frac{\kappa(\kappa\mp1)}{\sin^2\rho}
\right]\widehat f_\kappa^\pm
=(E-\tfrac12)^2\widehat f_\kappa^\pm.
$$

Regularity at the origin selects the positive powers of $\sin\rho$. For $\kappa>0$, the standard solutions may be written

$$
\widehat f^+_{n\kappa}
=\mathcal N_{n\kappa}(m)
(\sin\rho)^\kappa(\cos\rho)^m
P_n^{(\kappa-1/2,m-1/2)}(\cos2\rho),
$$

$$
\widehat f^-_{n\kappa}
=\mathcal N_{n\kappa}(m)
(\sin\rho)^{\kappa+1}(\cos\rho)^{m+1}
P_{n-1}^{(\kappa+1/2,m+1/2)}(\cos2\rho),
$$

with the second line understood as zero for $n=0$. The first-order equation fixes their relative coefficient.

For $\kappa<0$, write $k=|\kappa|$. A convenient pair is

$$
\widehat f^+_{n,-k}
=\mathcal N_{nk}(m)
\sqrt{\frac{n+m+1/2}{n+k+1/2}}
(\sin\rho)^{k+1}(\cos\rho)^m
P_n^{(k+1/2,m-1/2)}(\cos2\rho),
$$

$$
\widehat f^-_{n,-k}
=-\mathcal N_{nk}(m)
\sqrt{\frac{n+k+1/2}{n+m+1/2}}
(\sin\rho)^k(\cos\rho)^{m+1}
P_n^{(k-1/2,m+1/2)}(\cos2\rho).
$$

The inverse unitary rotation reconstructs $(F,G)$, and the angular ansatz reconstructs the four-component spinor in the tetrad of Section 01.

## 3. Standard spectrum

Polynomial truncation and the first-order coupling give

$$
E^{\rm std}_{n\kappa}
=\begin{cases}
\Delta_++2n+\kappa-1,&\kappa>0,\\
\Delta_++2n+|\kappa|,&\kappa<0,
\end{cases}
\qquad n=0,1,2,\ldots
$$

Define

$$
N(n,\kappa)=\begin{cases}
2n+\kappa-1,&\kappa>0,\\
2n+|\kappa|,&\kappa<0.
\end{cases}
$$

Then

$$
E^{\rm std}=\Delta_++N,
\qquad N=0,1,2,\ldots
$$

The lowest state has $n=0,\kappa=1,j=1/2$ and $E_0=\Delta_+$.

## 4. Alternative spectrum

In four dimensions $\gamma_5$ anticommutes with $\not\!\nabla$. Multiplication by $\gamma_5$ maps a mass-$m$ solution to a mass-$(-m)$ solution and exchanges the radial chiral data. Consequently the alternative modes for $m>0$ are obtained from the regular formulas by $m\mapsto-m$, followed by a harmless relabelling of the parity sign $\kappa$. Their spectrum is

$$
E^{\rm alt}_{n\kappa}
=\begin{cases}
\Delta_-+2n+\kappa-1,&\kappa>0,\\
\Delta_-+2n+|\kappa|,&\kappa<0,
\end{cases}
$$

or simply

$$
E^{\rm alt}=\Delta_-+N.
$$

The lowest state again has spin $1/2$, now with energy $E_0=\Delta_-$. The slow factor $\cos^{3/2-m}\rho$ is normalizable exactly for $m<1/2$.

## 5. Antiparticle modes

If $U_I\propto e^{-iE_It}$ is a positive-frequency particle mode, charge conjugation produces a negative-frequency solution $V_I=U_I^c\propto e^{+iE_It}$. The complex Dirac field requires both sets. They have the same positive one-particle energy after the antiparticle creation operator is used.

## Verification

- **Verified:** `verification/modes-and-representation.wl` substitutes twelve exact Jacobi examples, covering both signs of $\kappa$ and $m\mapsto-m$, into both decoupled ODEs and obtains zero residual. It also checks both branch spectra against $E=\Delta_\pm+N$.
- **Assumptions:** the first-order radial coupling and standard regular spin structure; completeness of the resulting eigenbasis uses the positive self-adjoint extension result cited in the literature notes.
- **Not verified:** no mixed boundary condition or endpoint logarithmic mode is included.
