# 06. Global Dirac Modes

## 1. Angular Spinors and First-Order Radial Equations

Let $r=\tan\rho$, $0\leq\rho<\pi/2$, and use normalized spinor spherical harmonics labelled by

$$\begin{align}
\kappa=\pm\left(j+\frac12\right), \qquad j=\frac12,\frac32,\ldots, \qquad m_j=-j,\ldots,j.
\end{align}$$

Fix the angular sign convention by

$$\begin{align}
K=1+\boldsymbol\sigma\cdot\mathbf L, \qquad K\Omega_{\kappa m_j}=\kappa\Omega_{\kappa m_j}, \qquad (\boldsymbol\sigma\cdot\hat r)\Omega_{\kappa m_j} =\Omega_{-\kappa,m_j}.
\end{align}$$

The last equality fixes the relative phase of the two parity harmonics. It is compatible with

$$\begin{align}
\{K,\boldsymbol\sigma\cdot\hat r\}=0,
\end{align}$$

so the exchanged harmonic has eigenvalue $-\kappa$, not $+\kappa$.

Section 01 uses the diagonal spherical tetrad, whereas the $K$ eigenstates are simplest in a Cartesian spin frame. Locally on a spherical-coordinate patch, choose the spatial Pauli axes as $(\hat r,\hat\vartheta,\hat\varphi)=(3,1,2)$ and set

$$\begin{align}
s(\vartheta,\varphi) =e^{-i\varphi\sigma^3/2}e^{-i\vartheta\sigma^2/2}, \qquad \mathscr S=\operatorname{diag}(s,s).
\end{align}$$

Thus $s\sigma^3s^{-1}=\boldsymbol\sigma\cdot\hat r$, with the other two Pauli matrices rotated into the $\hat\vartheta,\hat\varphi$ directions. If $\widetilde\psi_{\rm D}$ denotes diagonal-tetrad components and $\widetilde\psi_{\rm C}=\mathscr S\widetilde\psi_{\rm D}$ denotes Cartesian-gauge components, local Lorentz covariance gives

$$\begin{align}
\not\!\nabla_{\rm C}=\mathscr S\not\!\nabla_{\rm D}\mathscr S^{-1}.
\end{align}$$

In particular, the angular spin connection displayed in Section 01 is exactly what is needed for the two-component identity

$$\begin{align}
s\left[ \sigma ^{\hat{r}}\partial _{\rho}+\csc \rho\left\{\sigma ^{\hat{\vartheta}}\left( \partial _{\vartheta}+ \dfrac{1}{2}\cot \vartheta \right)+\dfrac{\sigma ^{\hat{\varphi}}}{\sin \vartheta}\partial _{\varphi}\right\} \right]s^{-1} & =(\sigma \cdot \hat{r})(\partial _{\rho}-K\csc \rho)
\end{align}$$

This $\mathscr S(\vartheta,\varphi)$ is the local spin-frame translation between the diagonal and Cartesian tetrad gauges; it is distinct from the radial $U(\rho)$ introduced below. The standard spin-structure patching supplies the corresponding relation on the second angular patch.

After the radial rescaling used in Section 01,

$$\begin{align}
\psi=r^{-1}f^{-1/4}\widetilde\psi,
\end{align}$$

the two radial connection terms cancel. With $r=\tan\rho$ and the common factor $\cos\rho$ divided out, its diagonal-frame equation is

$$\begin{align}
\left[ \gamma^{\hat0}\partial_t +\gamma^{\hat r}\partial_\rho +\csc\rho\left\{ \gamma^{\hat\vartheta}\left(\partial_\vartheta+\frac12\cot\vartheta\right) +\frac{\gamma^{\hat\varphi}}{\sin\vartheta}\partial_\varphi \right\} -m\sec\rho \right]\widetilde\psi_{\rm D}=0.
\end{align}$$

Now apply $\mathscr S$ and use the Cartesian-frame angular ansatz

$$
\widetilde\psi_{\rm C}
=e^{-iEt}
\begin{pmatrix}
iG_\kappa(\rho)\Omega_{-\kappa,m_j}\\
F_\kappa(\rho)\Omega_{\kappa m_j}
\end{pmatrix}.
$$

The upper/lower blocks of the Section 01 equation $(\not\!\nabla-m)\psi=0$ are then, using its explicit gamma matrices,

$$\begin{align}
0=(-E-m\sec\rho)iG_\kappa -i\left(F_\kappa'-\kappa\csc\rho\,F_\kappa\right),
\end{align}$$

$$\begin{align}
0=i\,i\left(G_\kappa'+\kappa\csc\rho\,G_\kappa\right) +(E-m\sec\rho)F_\kappa.
\end{align}$$

Therefore the unrotated first-order radial system is

$$\begin{align}
\boxed{ \frac{dF_\kappa}{d\rho} =+\kappa\csc\rho\,F_\kappa-(E+m\sec\rho)G_\kappa, }
\end{align}$$

$$\begin{align}
\boxed{ \frac{dG_\kappa}{d\rho} =(E-m\sec\rho)F_\kappa-\kappa\csc\rho\,G_\kappa.
}
\end{align}$$

Equivalently,

$$
H_\kappa
=\begin{pmatrix}
m\sec\rho&\partial_\rho+\kappa\csc\rho\\
-\partial_\rho+\kappa\csc\rho&-m\sec\rho
\end{pmatrix},
\qquad
H_\kappa\binom{F_\kappa}{G_\kappa}
=E\binom{F_\kappa}{G_\kappa}.
$$

This is Cotăescu's Cartesian-tetrad radial Hamiltonian after setting the AdS scale to one. Here it has been obtained from the diagonal-tetrad operator of Section 01 by the displayed local spin-frame rotation, together with the fixed Clifford-representation/component convention in the ansatz; it is not an independent imported equation. Squaring before imposing this first-order coupling would introduce spurious independent solutions.

## 2. Rotated First-Order System and Its Square

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

$$\begin{align}
\varepsilon=E-\frac12, \qquad \nu_\kappa=m+\kappa, \qquad W_\kappa(\rho)=\kappa\cot\rho-m\tan\rho.
\end{align}$$

To see the signs without inference from the squared equations, write the unrotated pair as

$$
\frac{d}{d\rho}\binom{F_\kappa}{G_\kappa}
=A_\kappa\binom{F_\kappa}{G_\kappa},
\qquad
A_\kappa=
\begin{pmatrix}
\kappa\csc\rho&-(E+m\sec\rho)\\
E-m\sec\rho&-\kappa\csc\rho
\end{pmatrix}.
$$

Since $U^{-1}=U^T$ and

$$
U'U^{-1}=\begin{pmatrix}0&1/2\\-1/2&0\end{pmatrix},
$$

exact matrix conjugation gives

$$
UA_\kappa U^{-1}+U'U^{-1}
=\begin{pmatrix}
W_\kappa&-(\varepsilon+\nu_\kappa)\\
\varepsilon-\nu_\kappa&-W_\kappa
\end{pmatrix}.
$$

Thus the rotated equation is still a first-order equation:

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

$$\begin{align}
(\partial_\rho+W_\kappa)\widehat f_\kappa^- =(\varepsilon-\nu_\kappa)\widehat f_\kappa^+, \qquad (-\partial_\rho+W_\kappa)\widehat f_\kappa^+ =(\varepsilon+\nu_\kappa)\widehat f_\kappa^-.
\end{align}$$

Only after retaining these relations may one square the system. They imply

$$\begin{align}
\left[-\frac{d^2}{d\rho^2} +\frac{m(m\mp1)}{\cos^2\rho} +\frac{\kappa(\kappa\mp1)}{\sin^2\rho} \right]\widehat f_\kappa^\pm =(E-\tfrac12)^2\widehat f_\kappa^\pm.
\end{align}$$

The convention just derived is the convention already used by all Jacobi pairs below: $\kappa>0$ and $\kappa<0$ retain their existing branch labels, and no $\kappa\mapsto-\kappa$ relabelling is made in the spectra.

Regularity at the origin selects the positive powers of $\sin\rho$. For $\kappa>0$, the standard energy below gives

$$\begin{align}
\varepsilon=2n+m+\kappa,
\end{align}$$

so the first-order equations become

$$\begin{align}
\boxed{ (\partial_\rho+W_\kappa)\widehat f^-_{n\kappa} =2n\widehat f^+_{n\kappa}, \qquad (-\partial_\rho+W_\kappa)\widehat f^+_{n\kappa} =2(n+m+\kappa)\widehat f^-_{n\kappa}.
}
\end{align}$$

The standard solutions with the relative coefficient already fixed by this pair are

$$\begin{align}
\widehat f^+_{n\kappa} =\mathcal N_{n\kappa}(m) (\sin\rho)^\kappa(\cos\rho)^m P_n^{(\kappa-1/2,m-1/2)}(\cos2\rho),
\end{align}$$

$$\begin{align}
\widehat f^-_{n\kappa} =\mathcal N_{n\kappa}(m) (\sin\rho)^{\kappa+1}(\cos\rho)^{m+1} P_{n-1}^{(\kappa+1/2,m+1/2)}(\cos2\rho),
\end{align}$$

with the second line understood as zero for $n=0$. This convention uses the same overall $\mathcal N_{n\kappa}(m)$ in both lines. At $n=0$ the first equation is $0=0$, while

$$\begin{align}
(-\partial_\rho+W_\kappa) \left[(\sin\rho)^\kappa(\cos\rho)^m\right]=0,
\end{align}$$

so the absent component is required by, and not merely compatible with, the first-order Dirac equation.

For $\kappa<0$, write $k=|\kappa|$. Now

$$\begin{align}
\varepsilon=2n+m+k+1, \qquad \nu_{-k}=m-k, \qquad W_{-k}=-k\cot\rho-m\tan\rho,
\end{align}$$

and hence

$$\begin{align}
\boxed{ (\partial_\rho+W_{-k})\widehat f^-_{n,-k} =2\left(n+k+\frac12\right)\widehat f^+_{n,-k}, }
\end{align}$$

$$\begin{align}
\boxed{ (-\partial_\rho+W_{-k})\widehat f^+_{n,-k} =2\left(n+m+\frac12\right)\widehat f^-_{n,-k}.
}
\end{align}$$

A convenient pair with exactly these relative coefficients is

$$\begin{align}
\widehat f^+_{n,-k} =\mathcal N_{nk}(m) \sqrt{\frac{n+m+1/2}{n+k+1/2}} (\sin\rho)^{k+1}(\cos\rho)^m P_n^{(k+1/2,m-1/2)}(\cos2\rho),
\end{align}$$

$$\begin{align}
\widehat f^-_{n,-k} =-\mathcal N_{nk}(m) \sqrt{\frac{n+k+1/2}{n+m+1/2}} (\sin\rho)^k(\cos\rho)^{m+1} P_n^{(k-1/2,m+1/2)}(\cos2\rho).
\end{align}$$

The inverse unitary rotation reconstructs $(F,G)$, and the angular ansatz reconstructs the four-component spinor in the tetrad of Section 01. Thus the displayed Jacobi pairs solve the original first-order Dirac system; the partner equations are consequences, not the defining check.

## 3. Standard Spectrum

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

$$\begin{align}
E^{\rm std}=\Delta_++N, \qquad N=0,1,2,\ldots
\end{align}$$

The lowest state has $n=0,\kappa=1,j=1/2$ and $E_0=\Delta_+$.

## 4. Alternative Spectrum

In four dimensions $\gamma_5$ anticommutes with $\not\!\nabla$. Let $U_I^{\rm reg}(\mu)$ denote the four-component mode reconstructed from the Jacobi pair above with the mass parameter everywhere replaced by $\mu$. The physical mass-$m$ alternative mode is defined by

$$\begin{align}
\boxed{ U_I^{\rm alt}(m)=\gamma_5U_I^{\rm reg}(-m).
}
\end{align}$$

Indeed,

$$\begin{align}
(\not\!\nabla-m)U_I^{\rm alt}(m) =-\gamma_5(\not\!\nabla+m)U_I^{\rm reg}(-m)=0.
\end{align}$$

The $\gamma_5$ action exchanges the radial chiral data and relabels the parity harmonic; it does not change the norm. Before that algebraic map, the Jacobi pair with $\mu=-m$ obeys the same two first-order intertwining equations with $m$ replaced by $-m$. Consequently the alternative spectrum is

$$
E^{\rm alt}_{n\kappa}
=\begin{cases}
\Delta_-+2n+\kappa-1,&\kappa>0,\\
\Delta_-+2n+|\kappa|,&\kappa<0,
\end{cases}
$$

or simply

$$\begin{align}
E^{\rm alt}=\Delta_-+N.
\end{align}$$

The lowest state again has spin $1/2$, now with energy $E_0=\Delta_-$. The slow factor $\cos^{3/2-m}\rho$ is normalizable exactly for $m<1/2$.

## 5. Antiparticle Modes

If $U_I\propto e^{-iE_It}$ is a positive-frequency particle mode, charge conjugation produces a negative-frequency solution $V_I=U_I^c\propto e^{+iE_It}$. The complex Dirac field requires both sets. They have the same positive one-particle energy after the antiparticle creation operator is used.

## Verification

- **Verified:** `verification/modes-and-representation.wl` encodes $K\Omega_\kappa=\kappa\Omega_\kappa$, $(\boldsymbol\sigma\cdot\hat r)\Omega_\kappa=\Omega_{-\kappa}$, and the separated Section 01 upper/lower equations; it checks the resulting unrotated radial matrix and the exact symbolic identity $UA_\kappa U^{-1}+U'U^{-1}$ for general $\kappa,m,E,\rho$. It also substitutes exact Jacobi pairs with $n=0,1,2$, both signs of $\kappa$, and both $m$ and $-m$ directly into the two first-order intertwining relations and obtains zero residual. The squared-ODE and spectrum-rewriting checks are retained as regressions. The $\gamma_5$ anticommutator used in the alternative map is checked in `verification/noether-time-translation.wl`.
- **Assumptions:** the first-order radial coupling and standard regular spin structure; completeness of the resulting eigenbasis uses the positive self-adjoint extension result cited in the literature notes.
- **Not verified:** no mixed boundary condition or endpoint logarithmic mode is included.
