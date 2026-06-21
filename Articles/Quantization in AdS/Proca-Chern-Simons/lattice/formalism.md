---
title: "formalism"
date: 2026-04-13
summary: ""
---

in this folder we will discuss Proca theory in flat 1+1d spacetime, calculate its correlation function in path integral formalism and canonical formalism, write lattice simulation to verify the existence of the contact term.

we first consider the path integral formalism. the action of the Proca theory in 1+1d flat spacetime is given by

$$\begin{align}
S & =\int \mathrm{d}^{2}x\left(-\frac{1}{4}F_{\mu \nu}F^{\mu \nu}-\frac{1}{2}\mu ^{2}A_{\mu}A^{\mu}\right)
\end{align}$$

take a Wick rotation to Euclidean signature with $\displaystyle{t=-i\tau}$. the action becomes

$$\begin{align}
S_{\mathrm{E}} & =\int \mathrm{d}^{2}x\left(\frac{1}{4}F_{\mu \nu}F^{\mu \nu}+\frac{1}{2}\mu ^{2}A_{\mu}A^{\mu}\right)
\end{align}$$

the two-point correlation function satisfies the following Green function equation:

$$\begin{align}
[\delta _{\nu}^{\mu}(\nabla ^{2}-\mu ^{2})-\nabla _{\nu}\nabla ^{\mu}]G^{\nu \rho}(x_{1},x_{2}) & =-\delta ^{\mu\rho}\delta ^{2}(x_{1}-x_{2})
\end{align}$$

take a Fourier transform, we have

$$\begin{align}
[\delta _{\nu}^{\mu}(p^{2}+\mu ^{2})-p_{\nu}p^{\mu}]G^{\nu \rho}(p) & =\eta ^{\mu\rho} \\
\implies G^{\nu \rho}(p) & =\frac{1}{p^{2}+\mu ^{2}}\left(\eta ^{\nu \rho}+\frac{p^{\nu}p^{\rho}}{\mu ^{2}}\right)
\end{align}$$

change back to position space, we have

$$\begin{align}
G^{\mu \nu}(x_{1},x_{2}) & =\int \frac{\mathrm{d}^{2}p}{(2\pi)^{2}}e^{ip\cdot (x_{1}-x_{2})}\frac{1}{p^{2}+\mu ^{2}}\left(\delta ^{\mu \nu}+\frac{p^{\mu}p^{\nu}}{\mu ^{2}}\right) \\
 & =\left(\delta ^{\mu \nu}-\frac{1}{\mu ^{2}}\partial _{x_{1}}^{\mu}\partial _{x_{1}}^{\nu}\right)\int \frac{\mathrm{d}^{2}p}{(2\pi)^{2}}\frac{e^{ip\cdot (x_{1}-x_{2})}}{p^{2}+\mu ^{2}}
\end{align}$$

here $\displaystyle{ip\cdot(x_{1}-x_{2})=-p_{\tau}(\tau_{1}-\tau_{2})+ip_{x}(x_{1}-x_{2})}$.

---

the numerical code also contains a literal stochastic path-integral computation. this is different from the analytic Gaussian inversion above. the analytic calculation uses the fact that the free Proca action is quadratic and directly inverts the momentum-space kernel. the stochastic calculation instead samples field configurations $A_{\tau}(\tau,x)$ and $A_{x}(\tau,x)$ with probability weight $e^{-S_{\mathrm{E}}[A]}$.

on a periodic $N_{\tau}\times N_{x}$ lattice, with spacings $\Delta \tau$ and $\Delta x$, the sampled Euclidean action is

$$\begin{align}
S_{\mathrm{E}}[A]
=\sum_{\tau,x}\Delta \tau \Delta x\left[
\frac{1}{2}\left(D_{\tau}A_{x}(\tau,x)-D_{x}A_{\tau}(\tau,x)\right)^{2}
+\frac{1}{2}\mu ^{2}\left(A_{\tau}(\tau,x)^{2}+A_{x}(\tau,x)^{2}\right)
\right],
\end{align}$$

where $D_{\tau}$ and $D_{x}$ are forward lattice differences with periodic boundary conditions. because the Proca mass removes the gauge zero mode, no gauge fixing is needed for this free massive vector theory.

the Metropolis update is a single-site update. for each component and each lattice site, the code proposes

$$\begin{align}
A_{\mu}(\tau,x)\longrightarrow A_{\mu}(\tau,x)+\epsilon \eta,
\end{align}$$

where $\eta$ is a standard normal random variable and $\epsilon$ is controlled by `--mc-step-size`. the code computes the local action difference $\Delta S_{\mathrm{E}}$ from the mass term and the adjacent plaquettes touched by that variable, then accepts the proposal with probability

$$\begin{align}
P_{\mathrm{acc}}=\min(1,e^{-\Delta S_{\mathrm{E}}}).
\end{align}$$

after `--mc-thermalization` sweeps are discarded, the code saves one configuration every `--mc-sweeps-between` sweeps. the measured correlator is the translationally averaged estimator

$$\begin{align}
G^{\mathrm{MC}}_{\mu\nu}(r)
=\frac{1}{N_{\mathrm{cfg}}}\sum_{\mathrm{cfg}}
\frac{1}{N_{\tau}N_{x}}\sum_{y}
A_{\mu}^{(\mathrm{cfg})}(y+r)A_{\nu}^{(\mathrm{cfg})}(y).
\end{align}$$

in the implementation this spatial average is evaluated by FFT convolution for each saved configuration. since the sampled variables are the Euclidean path-integral fields themselves, $G^{\mathrm{MC}}_{\mu\nu}$ should be compared with $G_{\text{path}}^{\mu\nu}$, not with $G_{\text{canonical}}^{\mu\nu}$. in particular, the $\tau\tau$ component at the origin contains the same lattice contact term

$$\begin{align}
\frac{1}{\mu ^{2}\Delta \tau \Delta x}\delta_{\tau,0}\delta_{x,0},
\end{align}$$

which is subtracted in the canonical correlator. the local Metropolis algorithm is therefore a genuine path-integral sampling method, although it is much less efficient than direct Gaussian inversion for this free theory and thermalizes slowly at large $N$.

---

in canonical formalism, we expand the field in Fourier modes and quantize the theory. the mode expansion of the field in the Lorentzian signature is given by

$$\begin{align}
A^{\mu}(x) & =\int \frac{\mathrm{d}p}{2\pi \sqrt{ 2\omega _{p} }}\left(\varepsilon ^{\mu}a(p)e^{ip\cdot x}+\varepsilon^{*\mu}a^{\dagger}(p)e^{-ip\cdot x}\right)
\end{align}$$

a convenient choice of the polarization vector is

$$\begin{align}
\varepsilon ^{\mu} & =\left(\frac{p}{\mu},\frac{\omega _{p}}{\mu}\right)
\end{align}$$

which satisfies $\displaystyle{p^{\mu}\varepsilon _{\mu}=0}$ and

$$\begin{align}
\varepsilon ^{\mu}\varepsilon ^{*\nu} & =-\eta ^{\mu \nu}+\frac{p^{\mu}p^{\nu}}{\mu ^{2}}
\end{align}$$

after Wick rotation, the mode expansion becomes

$$\begin{align}
A^{\tau}(\tau,x) & =iA^{t}(t=-i\tau,x) \\
A^{x}(\tau,x) & =A^{x}(t=-i\tau,x)
\end{align}$$

and the polarization vector becomes

$$\begin{align}
\varepsilon ^{\mu} & =\left(\frac{ip}{\mu},\frac{\omega _{p}}{\mu}\right) \\
\implies \varepsilon ^{\mu}\varepsilon ^{*\nu} & =\eta ^{\mu \nu}+\frac{p^{\mu}p^{\nu}}{\mu ^{2}}
\end{align}$$

two-point correlation function is given by

$$\begin{align}
G_{E}^{\mu_{1},\mu_{2}}(x_{1},x_{2}) & = \braket{ 0|\mathcal{T} A^{\mu}(x_{1})A^{\nu}(x_{2})|0 } \\
 & =\theta(\tau_{1}-\tau_{2})\int \frac{\mathrm{d}p}{2\pi 2\omega _{p}}e^{-\omega _{p}(\tau_{1}-\tau_{2})+ip(x_{1}-x_{2})}\left(\eta ^{\mu \nu}+\frac{p^{\mu}p^{\nu}}{\mu ^{2}}\right) \\
 & +\theta(\tau_{2}-\tau_{1})\int \frac{\mathrm{d}p}{2\pi 2\omega _{p}}e^{-\omega _{p}(\tau_{2}-\tau_{1})+ip(x_{1}-x_{2})}\left(\eta ^{\mu \nu}+\frac{p^{\mu}p^{\nu}}{\mu ^{2}}\right) \\
 & =\left( \delta ^{\mu \nu}-\frac{1}{\mu ^{2}}\partial _{x_{1}}^{\mu}\partial _{x_{1}}^{\nu} \right)\int \frac{\mathrm{d}^{2}p}{(2\pi)^{2}} \frac{e^{ip\cdot (x_{1}-x_{2})}}{p^{2}+\mu ^{2}}-\frac{1}{\mu ^{2}}\delta ^{\mu_{1}\tau}\delta ^{\mu_{2}\tau}\delta(x_{1}-x_{2})
\end{align}$$

again, here $\displaystyle{ip\cdot(x_{1}-x_{2})=-\omega _{p}(\tau_{1}-\tau_{2})+ip(x_{1}-x_{2})}$. we have

$$\begin{align}
G^{\mu \nu}_{\text{path}}(x_{1},x_{2}) & =G^{\mu \nu}_{\text{canonical}}(x_{1},x_{2})+\frac{1}{\mu ^{2}}\delta ^{\mu \tau}\delta ^{\nu \tau}\delta ^{2}(x_{1}-x_{2})
\end{align}$$
