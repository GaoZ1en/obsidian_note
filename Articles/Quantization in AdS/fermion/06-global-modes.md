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

## 2. Rotated first-order system and its square

Use the unitary rotation

$$
\binom{\widehat f_\kappa^+}{\widehat f_\kappa^-}
=U(\rho)\binom{F_\kappa}{G_\kappa},
\qquad
U(\rho)=
\begin{pmatrix}
\cos\frac{\rho}{2}&\sin\frac{\rho}{2}\\
-\sin\frac{\rho}{2}&\cos\frac{\rho}{2}
\end{pmatrix}.
$$

Define

$$
\varepsilon=E-\frac12,
\qquad
\nu_\kappa=m+\kappa,
\qquad
W_\kappa(\rho)=\kappa\cot\rho-m\tan\rho.
$$

The rotated equation is still a first-order equation:

$$
\boxed{
\begin{pmatrix}
\nu_\kappa&\partial_\rho+W_\kappa\\
-\partial_\rho+W_\kappa&-\nu_\kappa
\end{pmatrix}
\binom{\widehat f_\kappa^+}{\widehat f_\kappa^-}
=\varepsilon
\binom{\widehat f_\kappa^+}{\widehat f_\kappa^-}.
}
$$

Equivalently, the two intertwining relations are

$$
(\partial_\rho+W_\kappa)\widehat f_\kappa^-
=(\varepsilon-\nu_\kappa)\widehat f_\kappa^+,
\qquad
(-\partial_\rho+W_\kappa)\widehat f_\kappa^+
=(\varepsilon+\nu_\kappa)\widehat f_\kappa^-.
$$

Only after retaining these relations may one square the system. They imply

$$
\left[-\frac{d^2}{d\rho^2}
+\frac{m(m\mp1)}{\cos^2\rho}
+\frac{\kappa(\kappa\mp1)}{\sin^2\rho}
\right]\widehat f_\kappa^\pm
=(E-\tfrac12)^2\widehat f_\kappa^\pm.
$$

Regularity at the origin selects the positive powers of $\sin\rho$. For $\kappa>0$, the standard energy below gives

$$
\varepsilon=2n+m+\kappa,
$$

so the first-order equations become

$$
\boxed{
(\partial_\rho+W_\kappa)\widehat f^-_{n\kappa}
=2n\widehat f^+_{n\kappa},
\qquad
(-\partial_\rho+W_\kappa)\widehat f^+_{n\kappa}
=2(n+m+\kappa)\widehat f^-_{n\kappa}.
}
$$

The standard solutions with the relative coefficient already fixed by this pair are

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

with the second line understood as zero for $n=0$. This convention uses the same overall $\mathcal N_{n\kappa}(m)$ in both lines. At $n=0$ the first equation is $0=0$, while

$$
(-\partial_\rho+W_\kappa)
\left[(\sin\rho)^\kappa(\cos\rho)^m\right]=0,
$$

so the absent component is required by, and not merely compatible with, the first-order Dirac equation.

For $\kappa<0$, write $k=|\kappa|$. Now

$$
\varepsilon=2n+m+k+1,
\qquad
\nu_{-k}=m-k,
\qquad
W_{-k}=-k\cot\rho-m\tan\rho,
$$

and hence

$$
\boxed{
(\partial_\rho+W_{-k})\widehat f^-_{n,-k}
=2\left(n+k+\frac12\right)\widehat f^+_{n,-k},
}
$$

$$
\boxed{
(-\partial_\rho+W_{-k})\widehat f^+_{n,-k}
=2\left(n+m+\frac12\right)\widehat f^-_{n,-k}.
}
$$

A convenient pair with exactly these relative coefficients is

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

The inverse unitary rotation reconstructs $(F,G)$, and the angular ansatz reconstructs the four-component spinor in the tetrad of Section 01. Thus the displayed Jacobi pairs solve the original first-order Dirac system; the partner equations are consequences, not the defining check.

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

In four dimensions $\gamma_5$ anticommutes with $\not\!\nabla$. Let $U_I^{\rm reg}(\mu)$ denote the four-component mode reconstructed from the Jacobi pair above with the mass parameter everywhere replaced by $\mu$. The physical mass-$m$ alternative mode is defined by

$$
\boxed{
U_I^{\rm alt}(m)=\gamma_5U_I^{\rm reg}(-m).
}
$$

Indeed,

$$
(\not\!\nabla-m)U_I^{\rm alt}(m)
=-\gamma_5(\not\!\nabla+m)U_I^{\rm reg}(-m)=0.
$$

The $\gamma_5$ action exchanges the radial chiral data and relabels the parity harmonic; it does not change the norm. Before that algebraic map, the Jacobi pair with $\mu=-m$ obeys the same two first-order intertwining equations with $m$ replaced by $-m$. Consequently the alternative spectrum is

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

- **Verified:** `verification/modes-and-representation.wl` substitutes exact Jacobi pairs with $n=0,1,2$, both signs of $\kappa$, and both $m$ and $-m$ directly into the two first-order intertwining relations and obtains zero residual. It separately retains the squared-ODE checks as regressions and checks the algebraic rewriting of both branch spectra as $E=\Delta_\pm+N$. The $\gamma_5$ anticommutator used in the alternative map is checked in `verification/noether-time-translation.wl`.
- **Assumptions:** the first-order radial coupling and standard regular spin structure; completeness of the resulting eigenbasis uses the positive self-adjoint extension result cited in the literature notes.
- **Not verified:** no mixed boundary condition or endpoint logarithmic mode is included.
