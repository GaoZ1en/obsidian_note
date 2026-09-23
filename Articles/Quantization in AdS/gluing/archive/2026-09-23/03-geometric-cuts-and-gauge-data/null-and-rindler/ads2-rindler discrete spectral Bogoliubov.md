# AdS$_2$--Rindler Spectral Bogoliubov Audits at $\Delta=2$

## 1. Scope and Conventions

This note numerically checks the global--right/left-Rindler kernels of `ads2-rindler global reconstruction.md` Section 8 at

$$\begin{align}
\Delta=2,\qquad m^2L^2=2,
\end{align}$$

using two deliberately separated numerical realizations of the absolutely continuous boost spectrum. The first is the boost-Jacobi Gaussian DVR, retained only as an exact finite consistency regression. The second uses independently prescribed normalized top-hat bins and Gauss--Legendre integration and supplies the actual discretization/truncation audit. The main cutoffs are

$$\begin{align}
N_G=\text{number of retained global modes},\qquad
M_{\rm DVR}=\text{dimension of the boost Jacobi regression},\qquad
M_{\rm bin}=\text{number of independent spectral bins}.
\end{align}$$

The independent calculation also varies $\omega_{\min}$, $\omega_{\max}$, the within-bin quadrature order and working precision. Neither its nodes nor its weights are fitted to the overlap kernel or thermal relation. Both calculations use the same $\Delta=2$ finite-sum kernel. A separate Abel-damped spatial integration audits that reduction.

The phase convention is the real, left--right phase-locked standing-wave convention of (8.6). At $t=0$,

$$\begin{align}
\cos\rho=\tanh x,\qquad \sin\rho=\operatorname{sech}x,\qquad
d\rho=-\operatorname{sech}x\,dx.
\end{align}$$

The elementary $\delta$-normalized radial mode is

$$\begin{align}
\boxed{ \psi_\omega(x)=\sqrt{\frac2\pi}\, \frac{\coth x\sin\omega x-\omega\cos\omega x}{\sqrt{1+\omega^2}} .} \tag{1.1}
\end{align}$$

It has the standard $x^2$ falloff at the AdS endpoint and asymptotic standing-wave amplitude $\sqrt{2/\pi}$.

## 2. Semi-Analytic Overlap Kernel

Write

$$\begin{align}
C_n^2(y)=\sum_{p=0}^n c_{np}y^p,qquad
N_{n,2}=\sqrt{\frac{4}{\pi(n+1)(n+2)(n+3)}},qquad
\omega_n=n+2.
\end{align}$$

Define the Abel boundary values

$$\begin{align}
I_p(\omega)=\int_0^\infty \operatorname{sech}^p x\cos\omega x\,dx =\frac{2^{p-2}}{\Gamma(p)} \Gamma\!\left(\frac{p+i\omega}{2}\right)
\Gamma\!\left(\frac{p-i\omega}{2}\right),\qquad p>0, \tag{2.1}
\end{align}$$

with $I_0(\omega)=0$ for $\omega>0$, and

$$
S_p(\omega)=\int_0^\infty\tanh x\operatorname{sech}^p x\sin\omega x\,dx
=\begin{cases}
\dfrac{\pi}{2\sinh(\pi\omega/2)},&p=0,\\[4pt]
\dfrac{\omega}{p}I_p(\omega),&p>0,
\end{cases}
\tag{2.2}
$$

$$\begin{align}
T_p(\omega)=\int_0^\infty\tanh^2x\operatorname{sech}^p x\cos\omega x\,dx =I_p(\omega)-I_{p+2}(\omega). \tag{2.3}
\end{align}$$

Equations (8.10)--(8.11) then become the finite sums

$$\begin{align}
\alpha^R_{\omega n}=\frac{N_{n,2}}{\sqrt{\pi\omega(1+\omega^2)}}
\sum_{p=0}^n c_{np} \left[\omega_nS_{p+1}-\omega\omega_nT_{p+1} +\omega S_p-\omega^2T_p\right], \tag{2.4}
\end{align}$$

$$\begin{align}
\beta^R_{\omega n}=\frac{N_{n,2}}{\sqrt{\pi\omega(1+\omega^2)}}
\sum_{p=0}^n c_{np} \left[\omega_nS_{p+1}-\omega\omega_nT_{p+1} -\omega S_p+\omega^2T_p\right]. \tag{2.5}
\end{align}$$

The executed arbitrary-precision residuals give

$$\begin{align}
\boxed{ \beta^R_{\omega n}=-(-1)^n e^{-\pi\omega}\alpha^R_{\omega n}.} \tag{2.6}
\end{align}$$

Reflection and the future-directed left time give

$$\begin{align}
\alpha^L_{\omega n}=(-1)^n\alpha^R_{\omega n},\qquad
\beta^L_{\omega n}=(-1)^n\beta^R_{\omega n}=-e^{-\pi\omega}\alpha^R_{\omega n}. \tag{2.7}
\end{align}$$

Thus the reflection phase is retained through the phase-locked parity factors rather than discarded.

## 3. Exact Finite Spectral-DVR/Jacobi Regression

In the normalized global basis the boost generator is the Jacobi matrix

$$\begin{align}
(K_1)_{n,n+1}=(K_1)_{n+1,n} =\frac12\sqrt{(n+1)(n+4)},\qquad n\geq0. \tag{3.1}
\end{align}$$

The overlap kernel satisfies

$$\begin{align}
\omega\alpha^R_{\omega n} =\frac12\sqrt{n(n+3)}\alpha^R_{\omega,n-1} +\frac12\sqrt{(n+1)(n+4)}\alpha^R_{\omega,n+1}. \tag{3.2}
\end{align}$$

Take the positive Ritz values $\omega_k$ of the $M_\omega\times M_\omega$ truncation of (3.1). Their Christoffel weights for $d\omega$ are

$$\begin{align}
\boxed{ \Delta\omega_k= \left[(1-e^{-2\pi\omega_k})
\sum_{n=0}^{M_\omega-1}|\alpha^R_{\omega_kn}|^2\right]^{-1}.} \tag{3.3}
\end{align}$$

Define

$$\begin{align}
A^{R,L}_{kn}=\sqrt{\Delta\omega_k}\,\alpha^{R,L}_{\omega_kn},qquad
B^{R,L}_{kn}=\sqrt{\Delta\omega_k}\,\beta^{R,L}_{\omega_kn}. \tag{3.4}
\end{align}$$

This construction is a useful **exact finite spectral-DVR/Jacobi consistency regression**, but it is not an independent continuum discretization. At matched cutoff $N_G=M_\omega$, the rows of $\alpha^R_{\omega_kn}$ are eigenvectors of the same truncated matrix whose Ritz values define the nodes. If $P_{nn}=(-1)^n$ and $D_{kk}=e^{-\pi\omega_k}$, (2.6) gives $B=-DAP$, while $PK_1P=-K_1$. Ritz-vector orthogonality supplies the off-diagonal closure, and (3.3) fixes the diagonal normalization:

$$\begin{align}
(AA^\dagger-BB^\dagger)_{kk}
=\Delta\omega_k(1-e^{-2\pi\omega_k})\sum_n|\alpha^R_{\omega_kn}|^2=1. \tag{3.5}
\end{align}$$

Consequently the matched-cutoff CCR, anomalous, Planck and finite-mode KMS residuals are algebraically forced by the common DVR construction. Their $10^{-50}$--$10^{-65}$ values measure arbitrary-precision evaluation of this finite identity. They are not independent numerical evidence for continuum completeness, thermal occupation or KMS.

## 4. DVR Regression Diagnostics

The diagnostics in this section belong only to the exact finite regression of Section 3. They must not be interpreted as independent discretization errors.

All forward errors below are evaluated on the nodes $0.2\leq\omega_k\leq4$. With $m$ retained core nodes, define

$$\begin{align}
E_{\mathrm{CCR}}=\max\left\{ \frac{\|A^RA^{R\dagger}-B^RB^{R\dagger}-I_m\|_F}{\sqrt m}, \frac{\|A^RB^{RT}-B^RA^{RT}\|_F}{\sqrt m} \right\}, \tag{4.1}
\end{align}$$

$$\begin{align}
E_{\mathrm{anomalous}}=\frac{\|A^RB^{RT}\|_F}{\sqrt m}, \tag{4.2}
\end{align}$$

$$\begin{align}
E_{\mathrm{Planck}}= \frac{\|B^RB^{R\dagger}-\operatorname{diag}n_B(\omega_k)\|_F} {\|\operatorname{diag}n_B(\omega_k)\|_F},qquad
n_B(\omega)=\frac1{e^{2\pi\omega}-1}. \tag{4.3}
\end{align}$$

The code separately reports the off-diagonal occupation and

$$\begin{align}
\frac{N_{kk}}{1+N_{kk}}\stackrel{?}{=}e^{-2\pi\omega_k} \tag{4.4}
\end{align}$$

for detailed balance.

For inverse completeness, both wedges are included:

$$\begin{align}
A^{R\dagger}A^R+A^{L\dagger}A^L -B^{RT}B^R-B^{LT}B^L\stackrel{?}{=}I, \tag{4.5}
\end{align}$$

$$\begin{align}
A^{R\dagger}B^R+A^{L\dagger}B^L -B^{RT}A^R-B^{LT}A^L\stackrel{?}{=}0. \tag{4.6}
\end{align}$$

The reported $E_{\mathrm{inverse}}^{R+L}$ is the maximum normalized Frobenius residual of (4.5)--(4.6) on the first 12 global modes. The same calculation with only $R$ is retained as a negative control.

For KMS, let

$$\begin{align}
\mathcal O_f=\sum_k(f_kb_k+\bar f_kb_k^\dagger),\qquad
b_k(z)=e^{-i\omega_kz}b_k,
\end{align}$$

with two Gaussian spectral labels centered at $0.85$ and $1.30$. The covariance is constructed from $A^R,B^R$, not inserted from the Planck formula. On $s\in\{-0.7,0,0.9\}$ and 17 equally spaced strip heights,

$$\begin{align}
E_{\mathrm{KMS}}= \frac{\max_{s,y}|F_{fg}(s+iy)-F_{gf}(-s+i(2\pi-y))|} {\max_{s,y}\{|F_{fg}(s+iy)|,|F_{gf}(-s+i(2\pi-y))|\}}. \tag{4.7}
\end{align}$$

This includes the requested upper-boundary identity at $y=2\pi$ and scans the full closed strip.

## 5. Exact DVR Regression Results

### 5.1 Exact matched-cutoff DVR consistency regression

Here $N_G=M_\omega$ and $\omega_{\max}$ is increased with the quadrature size.

| $N_G$ | $M_\omega$ | $\omega_{\max}$ | precision | $E_{\mathrm{CCR}}$ | $E_{\mathrm{anomalous}}$ | $E_{\mathrm{Planck}}$ | $E_{\mathrm{KMS}}$ | $E_{\mathrm{inverse}}^{R+L}$ | right-only control |
|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|
| 32 | 32 | 16 | 70 | $<10^{-50}$ | $<10^{-50}$ | $<10^{-50}$ | $<10^{-50}$ | $6.76\times10^{-5}$ | $6.98\times10^{-1}$ |
| 64 | 64 | 32 | 90 | $<10^{-60}$ | $<10^{-60}$ | $<10^{-60}$ | $<10^{-60}$ | $1.77\times10^{-19}$ | $6.98\times10^{-1}$ |
| 128 | 128 | 64 | 120 | $<10^{-65}$ | $<10^{-65}$ | $<10^{-65}$ | $<10^{-65}$ | $1.23\times10^{-55}$ | $6.97\times10^{-1}$ |
| 256 | 256 | 128 | 170 | $<10^{-65}$ | $<10^{-65}$ | $<10^{-65}$ | $<10^{-65}$ | $<10^{-65}$ | $6.97\times10^{-1}$ |

At matched cutoffs the forward, thermal, anomalous and KMS identities are finite Gaussian-quadrature identities. Their residuals therefore measure arbitrary-precision evaluation, not a fitted continuum error. The nontrivial cutoff trend in this table is inverse completeness under $\omega_{\max}$; the right-only control does not converge to zero.

### 5.2 Unmatched cutoffs inside the same DVR construction

| $N_G$ | $M_\omega$ | $E_{\mathrm{CCR}}$ | $E_{\mathrm{anomalous}}$ | $E_{\mathrm{Planck}}$ | off-diagonal | detailed balance | $E_{\mathrm{KMS}}$ |
|---:|---:|---:|---:|---:|---:|---:|---:|
| 16 | 32 | $3.58\times10^{-1}$ | $3.51\times10^{-2}$ | $1.71\times10^{-1}$ | $1.56\times10^{-2}$ | $1.60\times10^{-1}$ | $8.38\times10^{-1}$ |
| 24 | 32 | $1.65\times10^{-1}$ | $1.99\times10^{-2}$ | $7.18\times10^{-2}$ | $6.76\times10^{-3}$ | $6.66\times10^{-2}$ | $7.74\times10^{-1}$ |
| 32 | 32 | $<10^{-50}$ | $<10^{-50}$ | $<10^{-50}$ | $<10^{-50}$ | $<10^{-50}$ | $<10^{-50}$ |
| 32 | 64 | $3.33\times10^{-1}$ | $3.77\times10^{-2}$ | $1.51\times10^{-1}$ | $2.06\times10^{-2}$ | $1.36\times10^{-1}$ | $1.18$ |
| 48 | 64 | $1.57\times10^{-1}$ | $2.16\times10^{-2}$ | $6.33\times10^{-2}$ | $8.87\times10^{-3}$ | $5.62\times10^{-2}$ | $1.21$ |
| 64 | 64 | $<10^{-60}$ | $<10^{-60}$ | $<10^{-60}$ | $<10^{-60}$ | $<10^{-60}$ | $<10^{-60}$ |

These unmatched-cutoff residuals diagnose consistency inside the same boost-Jacobi realization. The strip metric is much more sensitive to an unmatched global cutoff because the upper strip boundary exponentially amplifies the high-frequency tail; exact closure at the matched point is still a DVR identity, not independent continuum evidence.

### 5.3 DVR node-retention scan

For $(N_G,M_\omega)=(32,32)$:

| $\omega_{\max}$ | retained positive nodes | $E_{\mathrm{inverse}}^{R+L}$ | right-only control |
|---:|---:|---:|---:|
| 4 | 4 | $6.98\times10^{-1}$ | $8.61\times10^{-1}$ |
| 8 | 7 | $4.21\times10^{-1}$ | $7.64\times10^{-1}$ |
| 16 | 12 | $6.76\times10^{-5}$ | $6.98\times10^{-1}$ |
| all 16 positive nodes | 16 | $<10^{-60}$ | $6.98\times10^{-1}$ |

Within this DVR regression, retaining more positive Ritz nodes closes the finite inverse identity once $N_G=M_\omega$. This does not measure the error of an independently chosen continuum quadrature.

### 5.4 Independent spatial-overlap audit

The independent Abel-damped direct integration uses $\epsilon=(0.2,0.1,0.05,0.025)$ and a cubic $\epsilon\downarrow0$ extrapolation.

| $(n,\omega)$ | extrapolated $(\alpha,\beta)$ | semi-analytic $(\alpha,\beta)$ | relative error |
|---:|---:|---:|---:|
| $(0,1)$ | $(0.4809727584,-0.02078308315)$ | $(0.4809755117,-0.02078483645)$ | $6.78\times10^{-6}$ |
| $(1,0.7)$ | $(0.3936033988,0.04365359036)$ | $(0.3936111426,0.04365197889)$ | $2.00\times10^{-5}$ |
| $(2,1.4)$ | $(0.2238681306,-0.002754791264)$ | $(0.2238709387,-0.002753409616)$ | $1.40\times10^{-5}$ |
| $(3,2.2)$ | $(0.1623808349,0.0001620655798)$ | $(0.1623827118,0.0001617751501)$ | $1.17\times10^{-5}$ |

Repeating this audit at 40 and 60 digits gives the same displayed values and errors. The error is therefore dominated by the finite Abel sequence and extrapolation, not working precision. In the main $(64,64,32)$ DVR run, raising precision from 50 to 70 digits lowers the boost-recurrence residual from below $10^{-23}$ to below $10^{-43}$ and the KMS residual from below $10^{-21}$ to below $10^{-41}$. This is precision stability of the exact finite regression, not an independent continuum rate.

## 6. Independent Spectral-Bin Discretization

### 6.1 Basis and quadrature

Fix an interval $[\omega_{\min},\omega_{\max}]$ and choose its uniform bins $I_k=[a_k,b_k]$, independently of the overlap kernels. The normalized top-hat basis and its Bogoliubov matrices are

$$\begin{align}
h_k(\omega)&=\frac{\mathbf 1_{I_k}(\omega)}{\sqrt{\Delta_k}},\qquad \Delta_k=b_k-a_k,\\
A^R_{kn}&=\frac1{\sqrt{\Delta_k}}\int_{I_k}\alpha^R_{\omega n}\,d\omega,
\qquad
B^R_{kn}=\frac1{\sqrt{\Delta_k}}\int_{I_k}\beta^R_{\omega n}\,d\omega. \tag{6.1}
\end{align}$$

Each integral is evaluated by a preassigned Gauss--Legendre rule inside the bin. Its nodes and weights depend only on $I_k$ and the requested quadrature order: they do not use $\alpha$, $\beta$, $e^{-\pi\omega}$ or the boost Jacobi matrix. The code verifies the Legendre moments through degree $2q-1$ before using the rule. The left matrices retain the phase locks $A^L=A^RP$ and $B^L=B^RP$.

### 6.2 Independent error definitions

On the core bins whose centers lie in $[0.2,4]$, define

$$\begin{align}
E_{\rm CCR,1}&=\frac{\|AA^\dagger-BB^\dagger-I\|_F}{\sqrt{M_{\rm core}}},\\
E_{\rm CCR,2}&=\frac{\|AB^T-BA^T\|_F}{\sqrt{M_{\rm core}}}. \tag{6.2}
\end{align}$$

The joint inverse errors are the analogous normalized Frobenius residuals of (4.5)--(4.6), using every bin in $[\omega_{\min},\omega_{\max}]$. The right-only residual remains a negative control.

The thermal target is integrated directly rather than evaluated at a bin center:

$$\begin{align}
(N_{\rm th})_{kl}&=\delta_{kl}\frac1{\Delta_k}
\int_{I_k}\frac{d\omega}{e^{2\pi\omega}-1},\\
(C_{\rm th})_{kl}&=\delta_{kl}+(N_{\rm th})_{kl}. \tag{6.3}
\end{align}$$

The calculated covariances are $N=BB^\dagger$, $C=AA^\dagger$ and $M=-AB^T$. The reported occupation and $bb^\dagger$ errors compare $N,C$ with (6.3); detailed balance is the maximum of this directly compressed thermal pair. Off-diagonal $N$ and anomalous $M$ are reported separately. No $N_{kk}/(1+N_{kk})=e^{-2\pi\omega_k}$ bin-center surrogate is used.

For complex boost time the exact top-hat compression of multiplication is

$$\begin{align}
U_{kl}(z)=\delta_{kl}\frac1{\Delta_k}\int_{I_k}e^{-i\omega z}d\omega
=\delta_{kl}e^{-i\bar\omega_kz}
\operatorname{sinc}\!\left(\frac{\Delta_kz}{2}\right). \tag{6.4}
\end{align}$$

With $F_{fg}(z)=\langle\mathcal O_f(0)\mathcal O_g(z)\rangle$ constructed from $C,N,M$ and $U(\pm z)$, the code checks

$$\begin{align}
F_{fg}(s+iy)=F_{gf}(-s+i(2\pi-y)),\qquad 0\leq y\leq2\pi, \tag{6.5}
\end{align}$$

including $F_{fg}(s+2\pi i)=F_{gf}(-s)$. A separate `target projection defect` repeats (6.5) with the exact compressed thermal pair (6.3). It isolates the error caused by replacing continuum multiplication and covariance products by their finite top-hat compressions.

### 6.3 Independent spectral-bin convergence

The first table fixes four bins on $[0.2,4]$ and raises the global cutoff. The entries are genuine truncation errors, not identities fixed by a weight definition.

| $N_G$ | bins | $q$ | precision | $E_{\rm CCR,1}$ | $E_{\rm CCR,2}$ | occupation | anomalous | full-strip KMS | target projection defect |
|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|
| 24 | 4 | 16 | 60 | $3.51\times10^{-1}$ | $5.11\times10^{-3}$ | $4.94\times10^{-1}$ | $4.69\times10^{-3}$ | $9.71\times10^{-1}$ | $7.53\times10^{-1}$ |
| 64 | 4 | 16 | 80 | $1.91\times10^{-1}$ | $4.60\times10^{-3}$ | $4.17\times10^{-1}$ | $7.38\times10^{-3}$ | $9.52\times10^{-1}$ | $7.53\times10^{-1}$ |
| 128 | 4 | 24 | 200 | $1.38\times10^{-1}$ | $3.37\times10^{-3}$ | $3.75\times10^{-1}$ | $5.68\times10^{-3}$ | $1.04$ | $7.53\times10^{-1}$ |

The forward commutator and occupation show slow $N_G$ improvement, whereas the coarse-bin full-strip KMS test has not converged. Increasing spectral resolution without a sufficiently larger global cutoff exposes the independent double-cutoff requirement:

| $N_G$ | bins on $[0.2,4]$ | $E_{\rm CCR,1}$ | occupation-pair maximum | full-strip KMS | target projection defect |
|---:|---:|---:|---:|---:|---:|
| 64 | 8 | $6.12\times10^{-1}$ | $6.09\times10^{-1}$ | $1.10$ | $3.20\times10^{-1}$ |
| 128 | 8 | $5.36\times10^{-1}$ | $5.33\times10^{-1}$ | $7.40\times10^{-1}$ | $3.20\times10^{-1}$ |

The smaller projection defect at eight bins shows that (6.4) resolves continuum multiplication better, but the simultaneous global-mode truncation is still far from closure.

For inverse completeness, the following scan keeps the bin width near $0.49$ while extending the interval. It also displays the separate low-frequency sensitivity.

| $N_G$ | bins | $[\omega_{\min},\omega_{\max}]$ | $E_{\rm inverse}^{R+L}$ | right-only control |
|---:|---:|---:|---:|---:|
| 24 | 8 | $[0.2,4]$ | $5.64\times10^{-1}$ | $8.09\times10^{-1}$ |
| 24 | 16 | $[0.2,8]$ | $1.49\times10^{-1}$ | $7.07\times10^{-1}$ |
| 24 | 32 | $[0.2,16]$ | $1.19\times10^{-1}$ | $7.01\times10^{-1}$ |
| 24 | 32 | $[0.05,16]$ | $3.46\times10^{-2}$ | $6.95\times10^{-1}$ |

The joint $R+L$ residual improves with ultraviolet coverage and with the lower infrared floor; the right-only control remains order one. This supports the need for both wedges, but the remaining $3.5\times10^{-2}$ is still a finite interval/bin error, not a continuum inverse theorem.

Finally, the $(N_G,M)=(64,4)$ result is unchanged in the displayed digits when $(q,\mathrm{precision})$ is raised from $(16,80)$ to $(24,110)$: $E_{\rm CCR,1}=0.191051915936$, occupation error $0.416684557450$, and full-strip KMS error $0.951857022377$. These errors are therefore controlled by global/bin truncation rather than the inner $\omega$ quadrature or working precision.

## 7. Running the Checks

From the `gluing/` directory:

```sh
wolframscript -file numerics/ads2_rindler_discrete_spectral.wl 64 64 32 90 12
wolframscript -file numerics/ads2_rindler_discrete_spectral.wl 128 128 64 120 12
wolframscript -file numerics/ads2_rindler_independent_spectral_bins.wl 64 4 0.2 4 16 80 8
wolframscript -file numerics/ads2_rindler_independent_spectral_bins.wl 128 8 0.2 4 24 200 8
wolframscript -file numerics/ads2_rindler_overlap_quadrature_audit.wl 60
```

The positional arguments of the exact DVR regression are

```text
N_global  M_omega  omega_max  working_precision  inverse_test_modes
```

The independent-bin arguments are

```text
N_global  M_bins  omega_min  omega_max  Gauss_Legendre_order  working_precision  inverse_test_modes
```

## 8. Verified, Assumptions, and Non-Conclusions

**Verified exactly or as a finite consistency regression:**

1. the elementary $\Delta=2$ standing wave and the semi-analytic overlap reduction;
2. the boost Jacobi recurrence and the phase-locked thermal relation (2.6);
3. the $10^{-50}$--$10^{-65}$ matched-cutoff values as exact finite spectral-DVR/Jacobi consistency identities, algebraically forced by Ritz orthogonality, (2.6), and (3.3);
4. independent Abel-damped spatial-overlap agreement for four $(n,\omega)$ samples at the $0.7\times10^{-5}$--$2.0\times10^{-5}$ level;
5. independence of the new top-hat bin edges and Gauss--Legendre nodes/weights from the kernels, thermal factor and boost Jacobi eigenvectors;
6. the recorded independent-bin residuals and their stability under the displayed inner-quadrature/precision scan.

**Independent continuum numerical evidence, at the present cutoff only:** the four-bin forward CCR and occupation errors decrease as $N_G$ rises; joint $R+L$ inverse completeness improves under the displayed ultraviolet and infrared interval scans while the right-only control remains order one. These are convergence observations for the stated finite ranges, not proofs.

**Assumptions:** universal-cover AdS$_2$, standard/Friedrichs falloff, the phase-locked real standing-wave convention, $\omega>0$, top-hat smearing for the independent audit, and smooth Gaussian test labels for KMS. Sharp horizon fields are not used.

**Not concluded:** the independent spectral-bin calculation has not established continuum CCR, thermal covariance or complex-strip KMS. In particular, the displayed full-strip KMS residuals are $O(1)$ or $O(10^{-1})$ and are sensitive to both the global cutoff and the finite-bin projection; they must not be reported as a successful KMS verification. The calculation also does not prove a distributional completeness theorem, a sharp global-to-Fulling-Fock unitary, tensor factorization, entropy, general $\Delta$, or hypergeometric Jost evaluation. General $\Delta$ remains a separate extension after this $\Delta=2$ benchmark.
