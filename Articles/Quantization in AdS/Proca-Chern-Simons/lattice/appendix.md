---
title: "Lattice check of the Proca contact term"
date: 2026-05-03
summary: "Appendix note explaining how the 1+1-dimensional Proca lattice calculation supports the continuum-limit relation between the path-integral and canonical two-point functions."
---

# Lattice check of the Proca contact term

This part records the lattice check used as numerical support for the continuum-limit relation between the Euclidean path-integral two-point function and the canonical time-ordered two-point function of the massive vector field. The lattice simulation is done in flat $1+1$ dimensions.

To see how the two continuum prescriptions are represented on the lattice, first consider the canonical calculation. One first chooses the Lorentzian time direction and quantizes the physical Proca mode. One may write

$$\begin{align}
A^{\mu}(x)=\int \frac{\mathrm{d}p}{2\pi\sqrt{2\omega_{p}}}\left(\varepsilon^{\mu}a(p)e^{ip\cdot x}+\varepsilon^{*\mu}a^{\dagger}(p)e^{-ip\cdot x}\right),
\end{align}$$

with a convenient polarization vector

$$\begin{align}
\varepsilon^{\mu}=\left(\frac{p}{\mu},\frac{\omega_{p}}{\mu}\right),\qquad\varepsilon^{\mu}\varepsilon^{*\nu}=-\eta^{\mu\nu}+\frac{p^{\mu}p^{\nu}}{\mu^{2}}.
\end{align}$$

After Wick rotation, the Euclidean polarization factor becomes

$$\begin{align}
\varepsilon^{\mu}\varepsilon^{*\nu}=\delta^{\mu\nu}+\frac{p^{\mu}p^{\nu}}{\mu^{2}}.
\end{align}$$

The Euclidean time-ordered correlator is then assembled from the two orderings of $\tau_{1}$ and $\tau_{2}$. For $\tau_{1}>\tau_{2}$, the integrand contains

$$\begin{align}
\int \frac{\mathrm{d}p}{2\pi\,2\omega_{p}}e^{-\omega_{p}(\tau_{1}-\tau_{2})+ip(x_{1}-x_{2})}\left(\delta^{\mu\nu}+\frac{p^{\mu}p^{\nu}}{\mu^{2}}\right),
\end{align}$$

with the analogous expression for $\tau_{2}>\tau_{1}$. In the lattice formulation, the periodic Euclidean time and space directions are discretized as

$$\begin{align}
\tau_{j}=j\Delta\tau,\qquad x_{\ell}=\ell\Delta x, \qquad
j=0,\dots,N_{\tau}-1,\qquad \ell=0,\dots,N_{x}-1.
\end{align}$$

The continuum momenta are replaced by lattice momenta

$$\begin{align}
\widehat{\omega}_{n} &=\frac{2}{\Delta\tau}\sin\frac{\omega_{n}}{2}, & \widehat{k}_{m} &=\frac{2}{\Delta x}\sin\frac{k_{m}}{2}, \\
\omega_{n} &=\frac{2\pi n}{N_{\tau}}, & k_{m} &=\frac{2\pi m}{N_{x}}.
\end{align}$$

The canonical correlator is then implemented in momentum space as

$$\begin{align}
\widetilde{G}_{\text{can}}^{\tau\tau}(n,m) &=-\frac{\widehat{k}_{m}^{2}}
{\mu^{2}\left(\mu^{2}+\widehat{\omega}_{n}^{2}+\widehat{k}_{m}^{2}\right)}, \\
\widetilde{G}_{\text{can}}^{\tau x}(n,m) &=\widetilde{G}_{\text{can}}^{x\tau}(n,m) =\frac{\widehat{\omega}_{n}\widehat{k}_{m}}
{\mu^{2}\left(\mu^{2}+\widehat{\omega}_{n}^{2}+\widehat{k}_{m}^{2}\right)}, \\
\widetilde{G}_{\text{can}}^{xx}(n,m)&=\frac{\mu^{2}+\widehat{k}_{m}^{2}}{\mu^{2}\left(\mu^{2}+\widehat{\omega}_{n}^{2}+\widehat{k}_{m}^{2}\right)}.
\end{align}$$

The coordinate-space lattice correlator is obtained by the discrete Fourier sum

$$\begin{align}
G_{\text{can}}^{\mu\nu}(j,\ell)&=\frac{1}{\beta L}\sum_{n=0}^{N_{\tau}-1}\sum_{m=0}^{N_{x}-1}e^{-\omega_{n}j+ik_{m}\ell}\widetilde{G}_{\text{can}}^{\mu\nu}(n,m).
\end{align}$$

The path-integral construction is implemented by sampling Euclidean field configurations directly. The stochastic computation treats the lattice fields $A_{\tau}(\tau,x)$ and $A_{x}(\tau,x)$ as integration variables and samples them with weight $e^{-S_{\mathrm{E}}[A]}$. The discretized Euclidean action is

$$\begin{align}
S_{\mathrm{E}}[A]=\sum_{\tau,x}\Delta \tau \Delta x\left[\frac{1}{2}\left(D_{\tau}A_{x}-D_{x}A_{\tau}\right)^{2}+\frac{1}{2}\mu ^{2}\left(A_{\tau}^{2}+A_{x}^{2}\right)\right],
\end{align}$$

with periodic boundary conditions in both directions. A Metropolis sweep updates each field component at each site by proposing a small Gaussian random shift and accepting it with probability $\min(1,e^{-\Delta S_{\mathrm{E}}})$. After thermalization, saved configurations are used to estimate

$$\begin{align}
G_{\text{path}}^{\mu \nu}(r)=\frac{1}{N_{\mathrm{cfg}}}\sum_{\mathrm{cfg}}\frac{1}{N_{\tau}N_{x}}\sum_{y}A_{\mu}^{(\mathrm{cfg})}(y+r)A_{\nu}^{(\mathrm{cfg})}(y).
\end{align}$$

This gives a direct numerical realization of the Euclidean path-integral correlator. The figure below shows a representative lattice correlator for $\mu=1$, $\beta=L=1$, and $N_{\tau}=N_{x}=32$. The left panel isolates the local difference $G_{\text{path}}-G_{\text{can}}$, and the right panel shows the equal-time slice. The path-integral and canonical curves coincide away from $x=0$, while the origin differs by the lattice delta-function contribution

$$\begin{align}
\frac{1}{\mu ^{2}\Delta \tau \Delta x}
\end{align}$$

![Proca lattice contact term and equal-time slice for N=32](Articles/Quantization%20in%20AdS/Proca-Chern-Simons/lattice/plots/proca_contact_slice_N32.png)
