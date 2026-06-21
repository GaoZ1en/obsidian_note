# problem

1. Use renormalized perturbation theory to discuss the one-loop renormalization of QED, adopting the dimensional regularization scheme.
	1. Introduce the renormalized fields and the wave-function renormalization constants of the fields. Write the QED Lagrangian as the sum of a renormalized part and a counterterm part, namely,

$$\begin{align}
\mathcal{L}_{QED}=\mathcal{L}^{R}_{QED}+\delta\mathcal{L}_{QED}.
\end{align}$$

	1. Based on the above form of the Lagrangian, write down the Feynman rules given by the renormalized part and by the counterterm part.
	1. In QED, there are only three types of divergent one-particle-irreducible diagrams: the electron self-energy diagram, the vacuum polarization diagram, and the vertex correction diagram. At every order in perturbation theory, these divergences can be canceled by choosing appropriate counterterm coefficients. Determine, at the one-loop level, the counterterm coefficients in the $\overline{MS}$ renormalization scheme.

$$\begin{aligned}
   i\Pi_{\mu\nu}(q)&=-(-ie)^2\int \frac{d^4k}{(2\pi)^4}\mathrm{tr}\left[\gamma_\mu\frac{i(\hat{k}+m)}{k^2-m^2}\gamma_\nu\frac{i(\hat{k}+\hat{q}+m)}{(k+q)^2-m^2}\right] \\
   &=-e^2\int_0^1 dx\int \frac{d^4k}{(2\pi)^4}\frac{\mathrm{tr}\left[\gamma_\mu(\hat{k}+m)\gamma_\nu(\hat{k}+\hat{q}+m)\right]}{[l^2-\Delta]^2}.
\end{aligned}$$

   Here,

$$\begin{align}
l=k+xq,\qquad \Delta=m^2-x(1-x)q^2.
\end{align}$$

   Make the change of integration variable

$$\begin{align}
k\to k=l-xq,
\end{align}$$

   and at the same time simplify the numerator $D_{\mu\nu}$:

$$\begin{aligned}
   D_{\mu\nu}&=\mathrm{tr}\left[\gamma_\mu(\hat{k}+m)\gamma_\nu(\hat{k}+\hat{q}+m)\right] \\
   &=2l_\mu l_\nu-g_{\mu\nu}l^2-2x(1-x)q_\mu q_\nu+g_{\mu\nu}\left(m^2+x(1-x)q^2\right).
\end{aligned}$$

   Notes:
	   a) In the $\overline{MS}$ scheme, the counterterm coefficients are used to cancel the divergent terms in loop diagrams, namely the terms proportional to $1/\epsilon$. Therefore, the counterterm coefficients should be proportional to $1/\epsilon$.
	   b) Hence, we only need to focus on the divergent part. The divergent part comes from the behavior of the loop-momentum integral as the upper limit of the loop momentum goes to infinity. In this limit, after Feynman parametrization, the external momenta and finite mass parameters may all be approximated as zero.
	   c) Therefore, a convenient way to extract the counterterm coefficients is as follows. First express the Lorentz structure of the loop integral — in QED, this means Lorentz tensors and Lorentz vectors — in terms of the external momenta, the $\gamma$ matrices, and the metric tensor $g_{\mu\nu}$, and separate it out. Then set the external momenta in the integrand and the mass parameters in the denominator to zero. In this way, the logarithmically divergent loop integral can be treated by the simple analogy

$$\begin{align}
\int \frac{d^4k}{(2\pi)^4}\frac{1}{k^4}\to\frac{i}{(4\pi)^2}\frac{1}{\epsilon}.
\end{align}$$

	   d) Then determine the counterterm coefficient that cancels this term.
1. Let the wave-function renormalization constant of the electron field be

$$\begin{align}
Z_2=1+\delta_1,
\end{align}$$

   and let the counterterm coefficient of the vertex be $\delta_2$. Verify that, at the one-loop level,

$$\begin{align}
\delta_1=\delta_2.
\end{align}$$

   This relation is in fact a necessary consequence of the Ward identity associated with electromagnetic current conservation. Its direct physical meaning is the universality of electric charge.

## solution

Use dimensional regularization with $d=4-2\epsilon$. Introduce renormalized fields and parameters by

$$\begin{align}
\psi _{0} & =Z_{2}^{1/2}\psi, & A_{0}^{\mu} & =Z_{3}^{1/2}A^{\mu}, \\
m_{0} & =Z_{m}m, & e_{0} & =\mu ^{\epsilon}Z_{e}e.
\end{align}$$

It is also useful to introduce the vertex renormalization constant $Z_{1}$ by

$$\begin{align}
Z_{1}e & =Z_{e}Z_{2}Z_{3}^{1/2}e.
\end{align}$$

Then the QED Lagrangian can be written as

$$\begin{align}
\mathcal{L}_{QED} & = \mathcal{L}_{QED}^{R}+\delta \mathcal{L}_{QED},
\end{align}$$

where, in a covariant gauge,

$$\begin{align}
\mathcal{L}_{QED}^{R} & = -\frac{1}{4}F_{\mu \nu}F^{\mu \nu} -\frac{1}{2\xi}(\partial _{\mu}A^{\mu})^{2} +\bar{\psi}(i\hat{\partial}-m)\psi -e\bar{\psi}\gamma ^{\mu}A_{\mu}\psi,
\end{align}$$

and

$$\begin{align}
\delta \mathcal{L}_{QED} & = -\frac{1}{4}\delta _{3}F_{\mu \nu}F^{\mu \nu} +\delta _{1}\bar{\psi}i\hat{\partial}\psi -\delta m\,\bar{\psi}\psi -e\delta _{2}\bar{\psi}\gamma ^{\mu}A_{\mu}\psi.
\end{align}$$

Here

$$\begin{align}
\delta _{1} & =Z_{2}-1, & \delta _{3} & =Z_{3}-1, & \delta _{2} & =Z_{1}-1, \\
\delta m & =(Z_{2}Z_{m}-1)m.
\end{align}$$

The renormalized Feynman rules are

$$\begin{align}
\text{electron propagator:}\qquad & \frac{i(\hat{p}+m)}{p^{2}-m^{2}+i\varepsilon}, \\
\text{photon propagator:}\qquad & \frac{-i}{k^{2}+i\varepsilon} \left[g_{\mu \nu}-(1-\xi)\frac{k_{\mu}k_{\nu}}{k^{2}}\right], \\
\text{photon-electron vertex:}\qquad & -ie\gamma ^{\mu}.
\end{align}$$

The counterterm Feynman rules are

$$\begin{align}
\text{electron two-point counterterm:}\qquad & i(\delta _{1}\hat{p}-\delta m), \\
\text{photon two-point counterterm:}\qquad & i\delta _{3}(q^{2}g_{\mu \nu}-q_{\mu}q_{\nu}), \\
\text{vertex counterterm:}\qquad & -ie\delta _{2}\gamma ^{\mu}.
\end{align}$$

Now determine the pole parts in the $\overline{MS}$ scheme. In Feynman gauge, the one-loop electron self-energy has divergent part

$$\begin{align}
-i\Sigma(\hat{p})_{\mathrm{div}} & = \frac{ie^{2}}{(4\pi )^{2}}\frac{1}{\epsilon}
(\hat{p}-4m).
\end{align}$$

The counterterm $i(\delta _{1}\hat{p}-\delta m)$ cancels this divergence, so

$$\begin{align}
\delta _{1} & = -\frac{e^{2}}{(4\pi )^{2}}\frac{1}{\epsilon}, & \delta m & = -\frac{4e^{2}m}{(4\pi )^{2}}\frac{1}{\epsilon}.
\end{align}$$

Equivalently, since $\delta m=(Z_{2}Z_{m}-1)m$,

$$\begin{align}
Z_{m}-1 & = -\frac{3e^{2}}{(4\pi )^{2}}\frac{1}{\epsilon}.
\end{align}$$

For the vacuum polarization, after the Feynman parametrization in the question and the shift $k=l-xq$, the divergent part is transverse:

$$\begin{align}
i\Pi _{\mu \nu}(q)_{\mathrm{div}} & = \frac{ie^{2}}{12\pi ^{2}}\frac{1}{\epsilon}
(q^{2}g_{\mu \nu}-q_{\mu}q_{\nu}).
\end{align}$$

This is canceled by the photon counterterm, hence

$$\begin{align}
\delta _{3} & = -\frac{e^{2}}{12\pi ^{2}}\frac{1}{\epsilon} =-\frac{e^{2}}{(4\pi )^{2}}\frac{4}{3}\frac{1}{\epsilon}.
\end{align}$$

For the one-loop vertex correction, the divergent part has the same Dirac structure as the tree vertex:

$$\begin{align}
i\Lambda ^{\mu}_{\mathrm{div}} & = -\frac{ie^{3}}{(4\pi )^{2}}\frac{1}{\epsilon}\gamma ^{\mu}.
\end{align}$$

The vertex counterterm $-ie\delta _{2}\gamma ^{\mu}$ cancels this pole, so

$$\begin{align}
\delta _{2} & = -\frac{e^{2}}{(4\pi )^{2}}\frac{1}{\epsilon}.
\end{align}$$

Collecting the one-loop $\overline{MS}$ counterterms in Feynman gauge,

$$\begin{align}
\delta _{1} & = -\frac{e^{2}}{(4\pi )^{2}}\frac{1}{\epsilon}, & \delta _{2} & = -\frac{e^{2}}{(4\pi )^{2}}\frac{1}{\epsilon}, \\
\delta _{3} & = -\frac{e^{2}}{(4\pi )^{2}}\frac{4}{3}\frac{1}{\epsilon}, & \delta m & = -\frac{4e^{2}m}{(4\pi )^{2}}\frac{1}{\epsilon}.
\end{align}$$

The equality

$$\begin{align}
\delta _{1} & =\delta _{2}
\end{align}$$

is the one-loop form of the Ward identity $Z_{1}=Z_{2}$. More explicitly, the Ward-Takahashi identity for the proper vertex and inverse full propagator is

$$\begin{align}
q_{\mu}\Gamma ^{\mu}(p+q,p) & = S^{-1}(p+q)-S^{-1}(p).
\end{align}$$

Taking the limit $q\to 0$ gives

$$\begin{align}
\Gamma ^{\mu}(p,p) & = \frac{\partial S^{-1}(p)}{\partial p_{\mu}}.
\end{align}$$

Thus the divergent coefficient multiplying $\gamma ^{\mu}$ in the vertex function is the same as the divergent coefficient multiplying $\hat{p}$ in the electron inverse propagator. This proves $\delta _{1}=\delta _{2}$ at one loop, and the same identity enforces $Z_{1}=Z_{2}$ to all orders.
