---
title: "Lecture 6: Covariant and light-cone quantization of the bosonic string"
date: 2026-04-09
summary: "Covariant quantization of the bosonic string, including Virasoro constraints, negative-norm states, BRST cohomology, the no-ghost theorem, and light-cone gauge fixing with the critical spectrum."
---

before fixing light-cone gauge, it is useful to quantize the string covariantly in conformal gauge. in this approach all target-space coordinates $X^{\mu}$ are kept on equal footing, so lorentz covariance is manifest, but the fock space contains negative-norm states.

with the usual mode expansion from the previous lecture, the covariant virasoro generators are

$$\begin{align}
L_{n} & =\frac{1}{2}\sum _{m=-\infty}^{\infty}:\alpha _{n-m}^{\mu}\alpha _{m\mu}: \\
\tilde{L}_{n} & =\frac{1}{2}\sum _{m=-\infty}^{\infty}:\tilde{\alpha} _{n-m}^{\mu}\tilde{\alpha} _{m\mu}:
\end{align}$$

and their quantum algebra is

$$\begin{align}
[L_{m},L_{n}] & =(m-n)L_{m+n}+\frac{D}{12}m(m^{2}-1)\delta _{m+n,0} \\
[\tilde{L}_{m},\tilde{L}_{n}] & =(m-n)\tilde{L}_{m+n}+\frac{D}{12}m(m^{2}-1)\delta _{m+n,0} \\
[L_{m},\tilde{L}_{n}] & =0
\end{align}$$

the physical state conditions are imposed in the gupta-bleuler sense:

$$\begin{align}
L_{n}\ket{\mathrm{phys}} & =0,\qquad n>0 \\
(L_{0}-a)\ket{\mathrm{phys}} & =0
\end{align}$$

for open strings, and

$$\begin{align}
L_{n}\ket{\mathrm{phys}} & =\tilde{L}_{n}\ket{\mathrm{phys}}=0,\qquad n>0 \\
(L_{0}-a)\ket{\mathrm{phys}} & =(\tilde{L}_{0}-a)\ket{\mathrm{phys}}=0
\end{align}$$

together with level matching $L_{0}=\tilde{L}_{0}$ for closed strings.

the danger of the covariant approach is already visible from the time-like oscillators. since

$$\begin{align}
[\alpha _{m}^{0},\alpha _{n}^{0}] & =-m\delta _{m+n,0}
\end{align}$$

states such as $\alpha _{-n}^{0}\ket{0;p}$ have negative norm. the virasoro constraints remove these unphysical excitations, while the descendant states of the form $L_{-n}\ket{\chi}$ are spurious or null and decouple from the physical spectrum.

covariant quantization becomes fully consistent only in the critical bosonic string. the no-ghost theorem says that when

$$\begin{align}
D & =26,\qquad a=1
\end{align}$$

the physical hilbert space defined by the constraints is positive definite and isomorphic to the transverse light-cone spectrum. this is the covariant proof that the light-cone spectrum found later is the complete physical spectrum.

a modern way to implement the same idea is brst quantization. introducing the reparametrization ghosts $(b,c)$, the brst charge is

$$\begin{align}
Q_{\mathrm{BRST}} & =\sum _{n}c_{-n}(L_{n}-a\delta _{n,0})-\frac{1}{2}\sum _{m,n}(m-n):c_{-m}c_{-n}b_{m+n}:
\end{align}$$

nilpotency requires the vanishing of the total conformal anomaly. equivalently, the matter central charge $c=D$ must cancel the ghost contribution $c_{\mathrm{gh}}=-26$, so again one gets $D=26$ and $a=1$. physical states are then identified with the brst cohomology at the appropriate ghost number.

---

we start from flat target space and define the light-cone coordinates

$$\begin{align}
X^{\pm} & =\frac{1}{\sqrt{2}}\left(X^{0}\pm X^{D-1}\right) \\
\end{align}$$

where $i=1,\dots ,D-2$ labels the transverse directions.

with the worldsheet light-cone coordinates

$$\begin{align}
\tau ^{\pm} & =\tau \pm \sigma
\end{align}$$

in the conformal gauge, the equations of motion and the virasoro constraints are

$$\begin{align}
\partial _{+}\partial _{-}X^{\mu} & =0 \\
T_{++} & =\frac{1}{\alpha'}\partial _{+}X^{\mu}\partial _{+}X_{\mu}=0 \\
T_{--} & =\frac{1}{\alpha'}\partial _{-}X^{\mu}\partial _{-}X_{\mu}=0
\end{align}$$

the light-cone gauge fixes the residual reparameterization symmetry by choosing

$$\begin{align}
X^{+} & =x^{+}+2\alpha' p^{+}\tau
\end{align}$$

so that

$$\begin{align}
\partial _{+}X^{+} & =\partial _{-}X^{+}=\alpha' p^{+}
\end{align}$$

then the virasoro constraints can be solved for $X^{-}$:

$$\begin{align}
\partial _{\pm}X^{-} & =\frac{1}{2\alpha' p^{+}}\partial _{\pm}X^{i}\partial _{\pm}X^{i}
\end{align}$$

so $X^{-}$ is not an independent degree of freedom; it is determined by the transverse coordinates $X^{i}$. this is the main simplification of light-cone quantization: only the $D-2$ transverse modes are dynamical.

for the open string, the transverse solution can be written as

$$\begin{align}
X^{i} & =x^{i}+2\alpha' p^{i}\tau +i\sqrt{2\alpha'}\sum _{n\neq 0}\frac{\alpha _{n}^{i}}{n}e^{-i2n\pi \tau /\ell }\cos \left(\frac{2n\pi \sigma}{\ell }\right)
\end{align}$$

and the corresponding light-cone coordinate is fixed by the constraint above. it is convenient to define the transverse virasoro generators

$$\begin{align}
L_{n}^{\perp } & =\frac{1}{2}\sum _{m=-\infty}^{\infty}:\alpha _{n-m}^{i}\alpha _{m}^{i}:
\end{align}$$

then the constraints imply

$$\begin{align}
\alpha _{n}^{-} & =\frac{1}{p^{+}}L_{n}^{\perp }
\end{align}$$

so the non-transverse oscillators are completely expressed in terms of the physical transverse ones.

quantization is now straightforward. the canonical commutator for the transverse fields gives

$$\begin{align}
\left[X^{i}(\tau ,\sigma ),\Pi ^{j}(\tau ,\sigma ')\right] & =i\delta ^{ij}\delta (\sigma -\sigma ')
\end{align}$$

which implies the oscillator algebra

$$\begin{align}
\left[\alpha _{m}^{i},\alpha _{n}^{j}\right] & =m\delta _{m+n,0}\delta ^{ij}
\end{align}$$

the fock vacuum is defined by

$$\begin{align}
\alpha _{n}^{i}\ket{0;p} & =0,\qquad n>0
\end{align}$$

and all physical states are generated by acting with the negative modes $\alpha _{-n}^{i}$. because only transverse indices appear, the hilbert space has positive norm manifestly.

the mass shell condition comes from the zero mode constraint. with

$$\begin{align}
N & =\sum _{n>0}\alpha _{-n}^{i}\alpha _{n}^{i}
\end{align}$$

the open-string spectrum is

$$\begin{align}
M^{2} & =-\!p_{\mu }p^{\mu }=\frac{1}{\alpha'}\left(N-a\right)
\end{align}$$

where $a$ is the normal ordering constant. in particular, the ground state is tachyonic and the first excited state is massless when $a=1$.

---

for the closed string, the story is the same on the left- and right-moving sectors. one has

$$\begin{align}
X_{R}^{i} & =\frac{x^{i}}{2}+\frac{\pi \alpha'}{\ell }p^{i}(\tau -\sigma )+i\sqrt{ \frac{\alpha'}{2} }\sum _{n\neq 0}\frac{\alpha _{n}^{i}}{n}e^{-i2n\pi (\tau -\sigma )/\ell } \\
X_{L}^{i} & =\frac{x^{i}}{2}+\frac{\pi \alpha'}{\ell }p^{i}(\tau +\sigma )+i\sqrt{ \frac{\alpha'}{2} }\sum _{n\neq 0}\frac{\tilde{\alpha} _{n}^{i}}{n}e^{-i2n\pi (\tau +\sigma )/\ell }
\end{align}$$

so that $X^{i}=X_{R}^{i}+X_{L}^{i}$.

with

$$\begin{align}
\left[\alpha _{m}^{i},\alpha _{n}^{j}\right] & =m\delta _{m+n,0}\delta ^{ij} \\
\left[\tilde{\alpha} _{m}^{i},\tilde{\alpha} _{n}^{j}\right] & =m\delta _{m+n,0}\delta ^{ij} \\
\left[\alpha _{m}^{i},\tilde{\alpha} _{n}^{j}\right] & =0
\end{align}$$

the level matching condition is

$$\begin{align}
N_{L} & =N_{R}
\end{align}$$

and the mass spectrum is

$$\begin{align}
M^{2} & =\frac{4}{\alpha'}\left(N_{L}-a\right)=\frac{4}{\alpha'}\left(N_{R}-a\right)
\end{align}$$

the massless closed-string states at the first excited level decompose into the graviton, the kalb-ramond two-form, and the dilaton.

---

the remaining question is lorentz invariance. in light-cone gauge, the generators $J^{ij}$, $J^{+i}$ and $J^{+-}$ are manifestly realized, while $J^{-i}$ is reconstructed from the constraints. quantum mechanically, the potentially anomalous commutator is

$$\begin{align}
\left[J^{-i},J^{-j}\right]
\end{align}$$

and requiring the lorentz algebra to close fixes the critical dimension and intercept:

$$\begin{align}
D & =26,\qquad a=1
\end{align}$$

thus the light-cone quantization of the bosonic string gives a ghost-free spectrum, the correct mass formula, and the standard critical dimension. this is the final consistency check of bosonic string theory.
