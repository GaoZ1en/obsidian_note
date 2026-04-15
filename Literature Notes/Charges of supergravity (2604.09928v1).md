---
paper id: 2604.09928v1
title: Charges of supergravity
authors: [Remigiusz Durka, Jerzy Kowalski-Glikman, Rene Payne]
publication date: 2026-04-10T22:03
abstract: "We study conserved charges of $\\mathcal{N}=1$ supergravity formulated as a constrained BF theory based on the $\\OSp(1|4)$ superalgebra. Using the covariant phase space formalism, we derive bulk and boundary contributions to the symplectic structure and construct charges associated with Lorentz transformations, supersymmetry, translations, and diffeomorphisms. We show that the algebra of boundary charges reproduces the expected superalgebra, while translational charges vanish on-shell due to the super-torsion constraint, leaving Lorentz and supersymmetry as the non-trivial generators."
comments: "26 pages"
pdf: "[[Attachments/Assets/Charges of supergravity (2604.09928v1).pdf]]"
url: https://arxiv.org/abs/2604.09928v1
tags: []
---

# definition of the theory

## connection, curvature

a gauge field $\displaystyle{\mathbb{A}}$ takes value in the $\displaystyle{\mathrm{Osp}(1|4)}$ superalgebra, which decomposes into the Lorentz connection $\displaystyle{\omega ^{ab}}$ associated with Lorentz generators, the tetrad $\displaystyle{e^{a}}$ associated with translations, and the gravitino $\displaystyle{\psi}$ associated with the S generators as

$$\begin{align}
\mathbb{A} & =\frac{1}{2}A^{IJ}M_{IJ}+\kappa \bar{\psi}^{\alpha}Q_{\alpha} \\
 & =\frac{1}{2}\omega ^{ab}M_{ab}+\frac{1}{\ell}e^{a}P_{a}+\kappa \bar{\psi}^{\alpha}Q_{\alpha}
\end{align}$$

where $\displaystyle{\kappa}$ is a coupling constant of dimension $\displaystyle{\left[ \frac{1}{2} \right]}$ defined by

$$\begin{align}
\kappa ^{2} & =\frac{4\pi G}{\ell}
\end{align}$$

and $\displaystyle{\ell}$ is the AdS radius related to the cosmological constant $\displaystyle{\Lambda}$ by

$$\begin{align}
\ell ^{2} & =-\frac{3}{\Lambda}
\end{align}$$

the supercurvature

$$\begin{align}
\mathbb{F} & =\mathrm{d}\mathbb{A}-\frac{i}{2}\left[\left[\mathbb{A}\overset{\wedge}{,}\mathbb{A}\right]\right] \\
 & =\frac{1}{2}F^{(s)IJ}M_{IJ}+\mathscr{\bar{F}}^{\alpha}Q_{\alpha} \\
  & =\frac{1}{2}F^{(s)ab}M_{ab}+F^{(s)a}P_{a}+\mathscr{\bar{F}}^{\alpha}Q_{\alpha}
\end{align}$$

where $\displaystyle{\left[\left[\star\overset{\wedge}{,}\star\right]\right]}$ is the bracket of the $\displaystyle{\mathrm{Osp}(1|4)}$ superalgebra. the bosonic components of the supercurvature are given by

$$\begin{align}
F^{(s)ab} & =F^{ab}-\frac{\kappa ^{2}}{2}\bar{\psi}\wedge \gamma ^{ab}\psi, \\
F^{(s)a} & \equiv F^{(s)a4} \\
 & =F^{a}+\frac{\kappa ^{2}}{2}\bar{\psi}\wedge \gamma ^{a}\psi
\end{align}$$

with the $\mathrm{AdS}$ curvature $\displaystyle{F^{ab}=R^{ab}+\frac{1}{\ell ^{2}}e^{a}\wedge e^{b}}$ and the torsion $\displaystyle{\ell F^{a}=D^{\omega}e^{a}}$, where the Lorentzian covariant differential

$$\begin{align}
D^{\omega}e^{a} & =\mathrm{d}e^{a}+\omega ^{a}_{~b}\wedge e^{b}
\end{align}$$

with the help of covariant differential

$$\begin{align}
\mathscr{D}^{A}\bar{\psi} & =\mathrm{d}\bar{\psi}-\frac{1}{4}\omega ^{ab}\wedge \bar{\psi}\gamma _{ab}-\frac{1}{2\ell}e^{a}\wedge \bar{\psi}\gamma _{a} \\
\mathscr{D}^{A}\psi & =\mathrm{d}\psi+\frac{1}{4}\omega ^{ab}\wedge \gamma _{ab}\psi+\frac{1}{2\ell}e^{a}\wedge \gamma _{a}\psi
\end{align}$$

where we identify

$$\begin{align}
\mathscr{D}^{\omega}\psi & =\mathrm{d}\psi+\frac{1}{4}\omega ^{ab}\wedge\gamma _{ab}\psi \\
\mathscr{D}^{\omega}\bar{\psi} & =\mathrm{d}\bar{\psi}-\frac{1}{4}\omega ^{ab}\wedge \bar{\psi}\gamma _{ab}
\end{align}$$

the fermionic component of the supercurvature is given by

$$\begin{align}
\mathscr{F} & =\kappa \mathscr{D}^{A}\psi \\
 & =\kappa\left(\mathscr{D}^{\omega}\psi+\frac{1}{2\ell}e^{a}\wedge \gamma _{a}\psi\right) \\
\mathscr{\bar{F}} & =\kappa \mathscr{D}^{A}\bar{\psi} \\
 & =\kappa\left(\mathscr{D}^{\omega}\bar{\psi}-\frac{1}{2\ell}e^{a}\wedge \bar{\psi}\gamma _{a}\right)
\end{align}$$
(what does the superscript $\displaystyle{4}$ in $\displaystyle{F^{(s)a4}}$ mean?)
it is convenient to introcude the complete covariant differential that acts on superalgebra-valued $\displaystyle{n}$-forms

$$\begin{align}
\mathbb{D}^{\mathbb{A}}(\cdot) & =\mathrm{d}(\cdot)-i\left[\left[\mathbb{A}\overset{\wedge}{,}\cdot\right]\right]
\end{align}$$

and the supercurvature can be compactly written as

$$\begin{align}
\mathbb{F} & =-i\left[\left[\mathbb{D^{A}}\overset{\wedge}{,}\mathbb{D^{A}}\right]\right]
\end{align}$$

then the variation of the supercurvature is given by

$$\begin{align}
\delta \mathbb{F} & =\mathrm{d}\delta\mathbb{A}-i[[\mathbb{A}\overset{\wedge}{,}\delta \mathbb{A}]] \\
 & =\mathbb{D}^{\mathbb{A}}\delta \mathbb{A}
\end{align}$$

the supercurvature satisfies the Bianchi identity

$$\begin{align}
\mathbb{D^{A}F} & =0 \\
\implies D^{A}F^{(s)IJ}+\kappa \bar{\psi}\wedge \gamma ^{IJ}\mathscr{F} & =0 \\
\mathscr{D}^{A}\mathscr{\bar{F}}+\kappa \bar{\psi}\wedge \gamma _{IJ}F^{(s)IJ} & =0 \\
\implies D^{\omega}F^{(s)ab}+\frac{1}{\ell}e^{a}\wedge F^{(s)b}-\frac{1}{\ell}e^{b}\wedge F^{(s)a}+\kappa \bar{\psi}\wedge \gamma ^{ab}\mathscr{F} & =0 \\
D^{\omega}F^{(s)a}-\frac{1}{\ell}e_{b}\wedge F^{(s)ab}-\kappa \bar{\psi}\wedge \gamma ^{b}\mathscr{F} & =0 \\
\mathscr{D}^{\omega}\mathscr{\bar{F}}-\frac{1}{2\ell}e^{a}\wedge \mathscr{\bar{F}}\gamma _{a}+\kappa \bar{\psi}\wedge \gamma _{ab}F^{(s)ab}+2\kappa \bar{\psi}\wedge \gamma _{a}F^{(s)a} & =0
\end{align}$$

a useful identity is

$$\begin{align}
\mathscr{D}^{\omega}\mathscr{D}^{\omega}\psi & =\frac{1}{4}R^{ab}(\omega)\wedge \gamma _{ab}\psi
\end{align}$$

## super BF theory

the bosonic constrained BF theory action is given by

$$\begin{align}
16\pi S(A,B) & =\int F^{IJ}\wedge B_{IJ}-\frac{\beta}{2}B^{IJ}\wedge B_{IJ}-\frac{\alpha}{4}\epsilon ^{abcd4}B_{ab}\wedge B_{cd}
\end{align}$$

where $\displaystyle{B_{IJ}}$ is the $\displaystyle{\mathfrak{so}(2,3)}$-algebra-valued $\displaystyle{2}$-form. solving the eom for $\displaystyle{B}$ field gives dimensionless parameters

$$\begin{align}
\alpha & =\frac{G\Lambda}{3(1+\gamma ^{2})} \\
\beta & =\frac{\gamma G\Lambda}{3(1+\gamma ^{2})} \\
\gamma & =\frac{\beta}{\alpha}, \quad \Lambda=-\frac{3}{\ell ^{2}}
\end{align}$$

integrating out the $\displaystyle{B}$ field gives the Einstein-Cartan action with cosmological tern appended by Holst, Euler, Pontryagin and Nieh-Yan terms

$$\begin{align}
32\pi GS & =\int R^{ab}\wedge e^{c}\wedge e^{d}\epsilon _{abcd}+\frac{1}{2\ell ^{2}}\int e^{a}\wedge e^{b}\wedge e^{c}\wedge e^{d}\epsilon _{abcd} \\
 & +\frac{2}{\gamma}\int R^{ab}\wedge e_{a}\wedge e_{b}+\frac{\ell^{2}}{2}\int R^{ab}\wedge R^{cd}\epsilon _{abcd} \\
 & -\ell ^{2}\gamma \int R^{ab}\wedge R_{ab}+\frac{\gamma ^{2}+1}{\gamma}\int 2(T^{a}\wedge T_{a}-R^{ab}\wedge e_{a}\wedge e_{b})
\end{align}$$

we consider the local supersymmetric extension of the above bosonic constrained BF theory, which is given by

$$\begin{align}
16\pi S(A,\psi,B,\mathscr{B}) & =\int \mathcal{L}_{\text{bosonic}}^{\text{sugra}}+\mathcal{L}_{\text{fermionic}}^{\text{sugra}} \\
 & =\int B^{(s)IJ}\wedge F^{(s)}_{IJ}-\frac{\beta}{2}B^{(s)IJ}\wedge B^{(s)}_{IJ}-\frac{\alpha}{4}\epsilon _{abcd}B^{(s)ab}\wedge B^{(s)cd} \\
 & +4\int \mathscr{\bar{B}}\wedge \mathscr{F}-\frac{\beta}{2}\mathscr{\bar{B}\wedge B}-\frac{\alpha}{4}\mathscr{\bar{B}\wedge \gamma ^{5}B}
\end{align}$$

introduce the superalgebra-valued $\displaystyle{2}$-form $\displaystyle{\mathbb{B}=(B^{(s)IJ},\mathscr{B})}$ and its dual $\displaystyle{\star \mathbb{B}=(\star B^{(s)ab},\star B^{(s)a},\star \mathscr{B})=(\epsilon ^{abcd}B_{cd}^{(s)},0,\gamma ^{5}\mathscr{B})}$, the action can be compactly written as

$$\begin{align}
16\pi S(\mathbb{A,B}) & =\int\braket{ \mathbb{B\wedge F} } -\frac{\beta}{2}\braket{ \mathbb{B\wedge B} }-\frac{\alpha}{4}\braket{ \mathbb{B\wedge \star \mathbb{B}} } 
\end{align}$$

with the inner product defined as

$$\begin{align}
\braket{ \mathbb{B\wedge F} }  & =B^{(s)IJ}\wedge F_{IJ}^{(s)}+4\mathscr{\bar{B}}\wedge \mathscr{F}
\end{align}$$

# formalism

take a variation of the action

$$\begin{align}
16\pi \delta S & =\int \delta \mathbb{B}\wedge\left(\mathbb{F}-\beta \mathbb{B-\frac{\alpha}{2}\star \mathbb{B}}\right)+\mathbb{B\wedge\left(\mathbb{D^{A}\delta A}\right)}
\end{align}$$

the eom for $\displaystyle{\mathbb{B}}$ can be decomposed into the bosonic and fermionic components as

$$\begin{align}
B^{(s)a} & =\frac{1}{\beta}F^{(s)a}=\frac{1}{\beta}\left( F^{a}+\frac{\kappa ^{2}}{2}\bar{\psi}\wedge \gamma ^{a}\psi \right) \\
B^{(s)ab} & =\frac{1}{2(\alpha ^{2}+\beta ^{2})}\left(\beta \delta ^{ab}_{cd}-\alpha \epsilon ^{ab}_{~~~~cd}\right)F^{(s)cd} \\
 & =\frac{1}{2(\alpha ^{2}+\beta ^{2})}(\beta \delta ^{ab}_{cd}-\alpha \varepsilon^{ab}_{~~~~cd})\left(F^{cd}-\frac{\kappa ^{2}}{2}\bar{\psi}\wedge \gamma ^{cd}\psi\right) \\
\mathscr{B} & =\frac{1}{\alpha ^{2}+\beta ^{2}}\left(\beta-\alpha \gamma ^{5}\right)\mathscr{F} \\
\mathscr{\bar{B}} & =\frac{1}{\alpha ^{2}+\beta ^{2}}\mathscr{\bar{F}}\left(\beta-\alpha \gamma ^{5}\right)
\end{align}$$

and the eom for $\displaystyle{\mathbb{A}}$ is given by

$$\begin{align}
\mathbb{D}^{\mathbb{A}}\mathbb{B} & =0 \\
\implies \mathscr{D}^{A}\mathscr{\bar{B}}+\kappa \bar{\psi}\wedge \gamma ^{IJ}B_{IJ}^{(s)} & =0 \\
D^{A}B^{(s)IJ}+\kappa \bar{\psi}\wedge \gamma ^{IJ}\mathscr{B} & =0
\end{align}$$

## symmetries

consider the gauge transformation of the superconnection $\displaystyle{\mathbb{A}}$ with the gauge parameter $\displaystyle{\Upsilon}$ taking value in the $\displaystyle{\mathrm{Osp}(1|4)}$ superalgebra

$$\begin{align}
\delta _{\Upsilon}\mathbb{A}_{\mu} & =\partial _{\mu}\Upsilon-i[\mathbb{A}_{\mu},\Upsilon]\equiv \mathbb{D}_{\mu}^{\mathbb{A}}\Upsilon
\end{align}$$

there the gauge parameter decomposes into parameters of local Lorentz, translation and supercharge symmetries as

$$\begin{align}
\Upsilon & =\frac{1}{2}\lambda ^{IJ}M_{IJ}+\bar{\epsilon}^{\alpha}Q_{\alpha} \\
 & =\frac{1}{2}\lambda ^{ab}M_{ab}+\zeta ^{a}P_{a}+\bar{\varepsilon}^{\alpha}Q_{\alpha}
\end{align}$$

### supersymmetry

$$\begin{align}
\delta _{\epsilon}e^{a} & =-\ell \kappa \bar{\epsilon}\gamma ^{a}\psi \\
\delta _{\epsilon}\omega ^{ab} & =\kappa \bar{\epsilon}\gamma ^{ab}\psi \\
\delta _{\epsilon}\bar{\psi} & =\frac{1}{\kappa}\left(\mathscr{D}^{\omega}\bar{\epsilon}-\frac{1}{2\ell}e^{a}\bar{\epsilon}\gamma _{a}\right)
\end{align}$$

where $\displaystyle{\mathscr{D}^{\omega}\bar{\epsilon}=\mathrm{d}\bar{\epsilon}-\frac{1}{4}\omega ^{ab}\bar{\epsilon}\gamma _{ab}}$. the supersymmetry transformation of the supercurvature is given by

$$\begin{align}
\delta _{\epsilon} \mathbb{F}_{\mu \nu} & =\mathbb{D}_{\mu}\delta _{\epsilon} \mathbb{A}_{\nu}-\mathbb{D}_{\nu}\delta _{\varepsilon}\mathbb{A}_{\mu} \\
 & =[\mathbb{D}_{\mu},\mathbb{D}_{\nu}]\Upsilon \\
  & =i[\Upsilon,\mathbb{F}_{\mu \nu}]
\end{align}$$

therefore

$$\begin{align}
\delta _{\epsilon}F^{(s)a} & =-\bar{\epsilon}\gamma ^{a}\mathscr{F} \\
\delta _{\epsilon}F^{(s)ab} & =\bar{\epsilon}\gamma ^{ab}\mathscr{F} \\
\delta _{\epsilon}\mathscr{\bar{F}} & =-\frac{1}{4}\bar{\epsilon}\gamma ^{ab}F^{(s)}_{ab}-\frac{1}{2}\bar{\epsilon}\gamma _{a}F^{(s)a}
\end{align}$$

one can further show that the first two terms of the action are invariant under the local supersymmetry if the components of the $\displaystyle{\mathbb{B}=(B^{(s)},\mathscr{B})}$ transform as

$$\begin{align}
\delta _{\epsilon}B^{a} & =-\bar{\epsilon}\gamma ^{a}\mathscr{B} \\
\delta _{\epsilon}B^{ab} & =\bar{\epsilon}\gamma ^{ab}\mathscr{B} \\
\delta _{\epsilon}\mathscr{\bar{B}} & =-\frac{1}{4}\bar{\epsilon}\gamma ^{ab}B^{(s)}_{ab}-\frac{1}{2}\bar{\epsilon}\gamma _{a}B^{(s)a}
\end{align}$$

however, the gauge breaking term

$$\begin{align}
-\frac{\alpha}{4}\epsilon _{abcd}B^{(s)ab}\wedge B^{(s)cd} & -\alpha \mathscr{\bar{B}}\wedge \gamma ^{5}\mathscr{B}
\end{align}$$

is not invariant under the above supersymmetry transformation. its variation is

$$\begin{align}
2\alpha B^{(s)a}\wedge \bar{\epsilon}\gamma _{a}\gamma ^{5}\mathscr{B}
\end{align}$$

and does not vanish offshell. however, notice that the gauge breaking term is proportional to supertorsion, which vanishes as a result of the field equation for the Lorentz connection $\displaystyle{\omega}$. so the action is invariant under the local supersymmetry transformation on-shell.

### translations and Lorentz transformations

Lorentz transformations and translations are as follows

$$\begin{align}
\delta _{\lambda}\omega ^{ab} & =D^{\omega}\lambda ^{ab}, & \frac{1}{\ell}\delta _{\lambda}e^{a} & =-\frac{1}{\ell}\lambda ^{a}_{~b}e^{b}, & \delta _{\lambda}\bar{\psi} & =-\frac{1}{4}\bar{\psi}\gamma _{ab}\lambda ^{ab} \\
\delta _{\zeta}\omega ^{ab} & =\frac{1}{\ell}(e^{a}\zeta ^{b}-e^{b}\zeta ^{a}), & \frac{1}{\ell}\delta _{\zeta}e^{a} & =D^{\omega}\zeta ^{a}, & \delta _{\zeta}\bar{\psi} & =-\frac{1}{2}\bar{\psi}\gamma _{a}\zeta ^{a}
\end{align}$$

and for the components of curvature

$$\begin{align}
\delta _{\lambda}F^{(s)ab} & =-[\lambda,F^{(s)}]^{ab}, & \frac{1}{\ell}\delta _{\lambda}F^{(s)a} & =-\frac{1}{\ell}\lambda ^{a}_{~b}F^{(s)b} \\
\delta _{\zeta}F^{(s)ab} & =-\frac{1}{\ell}[\zeta,T^{(s)}]^{ab}, & \frac{1}{\ell}\delta _{\zeta}F^{(s)a} & =-[\zeta,F^{(s)}]^{a}
\end{align}$$

and the transformations of the $\displaystyle{\mathbb{B}}$ field are

$$\begin{align}
\delta _{\lambda}B^{(s)ab} & =-[\lambda,B^{(s)}]^{ab}, & \delta _{\lambda}B^{(s)a} & =-\lambda ^{a}_{b}B^{(s)b}, & \delta _{\lambda}\mathscr{\bar{B}} & =\frac{1}{4}\bar{\mathscr{B}}\gamma _{ab}\lambda ^{ab} \\
\delta _{\zeta}B^{(s)ab} & =(B^{(s)a}\zeta ^{b}-B^{(s)b}\zeta ^{a}), & \delta _{\zeta}B^{(s)a} & =B^{(s)ab}\zeta _{b}, & \delta _{\zeta}\mathscr{\bar{B}} & =\frac{1}{2}\mathscr{\bar{B}}\gamma _{a}\zeta ^{a}
\end{align}$$

### diffeomorphsim

consider a diffeomorphism generated by a vector field $\displaystyle{\xi}$, the transformation of the superconnection is given by the Lie derivative

$$\begin{align}
\delta _{\xi}A_{\mu}^{IJ} & =\mathcal{L}_{\xi}A_{\mu}^{IJ} \\
\delta _{\xi}\psi _{\mu} & =\mathcal{L}_{\xi}\psi _{\mu} \\
\delta _{\xi}B_{\mu \nu}^{(s)IJ} & =\mathcal{L}_{\xi}B_{\mu \nu}^{(s)IJ}=\xi ^{\rho}\partial _{\rho}B_{\mu \nu}^{(s)IJ}+B_{\rho \nu}^{(s)IJ}\partial _{\mu}\xi ^{\rho}+B_{\mu \rho}^{(s)IJ}\partial _{\nu}\xi ^{\rho} \\
\delta _{\xi}\mathscr{B}_{\mu \nu} & =\mathcal{L}_{\xi}\mathscr{B}_{\mu \nu}=\xi ^{\rho}\partial _{\rho}\mathscr{B}_{\mu \nu}+\mathscr{B}_{\rho \nu}\partial _{\mu}\xi ^{\rho}+\mathscr{B}_{\mu \nu}\partial _{\nu}\xi ^{\rho}
\end{align}$$

the Lorentz connection, tetrad and gravitino transforms as

$$\begin{align}
\delta _{\xi}\omega _{\mu}^{ab} & =\xi ^{\nu}\partial _{\nu}\omega _{\mu}^{ab}+\omega _{\nu}^{ab}\partial _{\mu}\xi ^{\nu} \\
\delta _{\xi}e_{\mu}^{a} & =\xi ^{\nu}\partial _{\nu}e_{\mu}^{a}+e^{a}_{\nu}\partial _{\mu}\xi ^{\nu} \\
\delta _{\xi}\psi _{\mu} & =\xi ^{\nu}\partial _{\nu}\psi _{\mu}+\psi _{\nu}\partial _{\mu}\xi ^{\nu}
\end{align}$$

## symplectic form

we read out

$$\begin{align}
16\pi \theta & =\int _{\Sigma}\mathbb{B}\wedge \delta \mathbb{A} \\
 & =\int _{\Sigma}B_{IJ}^{(s)}\wedge \delta A^{IJ}+4\kappa \mathscr{\bar{B}}\wedge \delta \psi \\
 & \approx \frac{3}{G\Lambda}\int _{\Sigma}\left(R^{ab}-\frac{\Lambda}{3}e^{[a}\wedge e^{b]}-\frac{\kappa ^{2}}{2}\bar{\psi}\gamma ^{ab}\wedge \psi\right)\left( \gamma \delta ^{cd}_{ab}-\frac{1}{2}\epsilon ^{cd}_{~~~~ab} \right)\wedge \delta \omega _{cd} \\
 & +\frac{3}{G\Lambda}\int _{\Sigma}4\kappa ^{2}\left(\mathrm{d}\bar{\psi}-\frac{1}{4}\omega ^{ab}\wedge \bar{\psi}\gamma _{ab}-\frac{1}{2\ell}e^{a}\wedge \bar{\psi}\gamma _{a}\right)\left(\gamma-\gamma ^{5}\right)\wedge \delta \psi
\end{align}$$

and use the fact that supertorsion vanishes onshell, we can decompose $\displaystyle{\theta}$ into bulk and boundary contributions as

$$\begin{align}
\theta _{\Sigma} & \approx -\frac{1}{16\pi G}\int _{\Sigma}e^{a}\wedge e^{b}\left(\gamma \delta ^{cd}_{ab}-\frac{1}{2}\epsilon ^{cd}_{~~~~ab}\right)\wedge \delta \omega _{cd} \\
 & +\frac{3}{16\pi G\Lambda}\int _{\Sigma}\left(\omega ^{af}\wedge \omega _{f}^{~b}-\frac{\kappa ^{2}}{2}\bar{\psi}\gamma ^{ab}\wedge \psi\right)\left(\gamma \delta^{cd}_{ab}-\frac{1}{2}\epsilon ^{cd}_{~~~~ab}\right)\wedge \delta \omega _{cd} \\
 & +\frac{3}{G\Lambda} \frac{16\pi G}{\ell}\int _{\Sigma}\left(-\frac{1}{4}\omega ^{ab}\wedge \bar{\psi}\gamma _{ab}-\frac{1}{2\ell}e^{a}\wedge \bar{\psi}\gamma _{a}\right)\left(\gamma-\gamma ^{5}\right)\wedge \delta \psi \\
\theta _{\partial \Sigma} & \approx \frac{3}{16\pi G\Lambda}\int _{\partial \Sigma}\omega ^{ab}\left(\gamma \delta ^{cd}_{ab}-\frac{1}{2}\epsilon ^{cd}_{~~~~ab}\right)\wedge \delta \omega _{cd}+\frac{3}{\Lambda \ell}\int _{\partial \Sigma}\bar{\psi}(\gamma-\gamma ^{5})\wedge \delta \psi
\end{align}$$

the symplectic form is given by

$$\begin{align}
16\pi \omega & \equiv16\pi \delta \Theta \\
 & =\int _{\Sigma}\delta \mathbb{B}\wedge \delta \mathbb{A} \\
 & =\int _{\Sigma}\delta B_{IJ}^{(s)}\wedge \delta A^{IJ}+4\kappa \delta \mathscr{\bar{B}}\wedge \delta \psi
\end{align}$$

## charges

the corresponding Noether charge is defined by

$$\begin{align}
\delta \mathscr{H}[*] & =-\iota _{*}\Omega \\
 & =-\frac{1}{16\pi}\int _{\Sigma}\delta _{*}\mathbb{B}\wedge \delta \mathbb{A}+\delta \mathbb{B}\wedge \delta _{*}\mathbb{A}
\end{align}$$

### gauge charges

$$\begin{align}
\delta \mathscr{H}[\Upsilon] & =-\frac{1}{16\pi}\int _{\Sigma}\delta _{\Upsilon}\mathbb{B}\wedge \delta \mathbb{A}+\delta \mathbb{B}\wedge \delta _{\Upsilon}\mathbb{A} \\
 & =-\frac{1}{16\pi}\int _{\Sigma}-i[\Upsilon,\mathbb{B}]\wedge \delta \mathbb{A}+\delta \mathbb{B}\wedge \mathbb{D^{A}}\Upsilon \\
 & =-\frac{1}{16\pi}\int _{\Sigma}-i[\Upsilon,\mathbb{B}]\wedge \delta \mathbb{A}+\mathrm{d}(\delta \mathbb{B}\Upsilon)-\mathrm{d}(\delta \mathbb{B})\Upsilon-i\delta \mathbb{B}\wedge[\mathbb{A},\Upsilon] \\
 & =-\frac{1}{16\pi}\int _{\Sigma}\delta(\mathrm{d}(\mathbb{B}\Upsilon))-\delta(\mathrm{d}\mathbb{B}\Upsilon)-i[\Upsilon,\mathbb{B}]\wedge \delta \mathbb{A}-i\delta \mathbb{B\wedge[\mathbb{A},\Upsilon]} \\
 & =-\frac{1}{16\pi}\int _{\Sigma}\delta(\mathrm{d}(\mathbb{B}\Upsilon)-\mathbb{D^{A}B}\Upsilon) \\
\implies \mathscr{H}[\Upsilon] & =-\frac{1}{16\pi}\int _{\Sigma}\mathrm{d}(\mathbb{B}\Upsilon)-\mathbb{D^{A}B}\Upsilon \\
 & \approx -\frac{1}{16\pi}\int _{\partial\Sigma}\mathbb{B}\Upsilon
\end{align}$$

the second term in the last line vanishes on-shell as a result of the eom for $\displaystyle{\mathbb{A}}$. then we have

$$\begin{align}
\mathscr{H}_{L}[\lambda] & =-\frac{1}{16\pi}\int _{S}B_{ab}^{(s)}\lambda ^{ab} \\
\mathscr{H}_{T}[\zeta] & =-\frac{1}{8\pi}\int _{S}B_{a}^{(s)}\zeta ^{a} \\
\mathscr{H}_{S}[\epsilon] & =-\frac{1}{4\pi}\int _{S}\mathscr{\bar{B}}\epsilon
\end{align}$$

## diffeomorphism charges

here we assume the parameter $\displaystyle{\xi}$ is field-independent

$$\begin{align}
\delta\mathscr{H}[\xi] & =\frac{1}{16\pi G}\int \delta B_{IJ}^{(s)}\wedge \mathcal{L}_{\xi}A^{IJ}-\mathcal{L}_{\xi}B_{IJ}^{(s)}\wedge \delta A^{IJ}+4\kappa \delta \mathscr{\bar{B}}\wedge \mathcal{L}_{\xi}\psi-4\kappa \mathcal{L}_{\xi}\mathscr{\bar{B}}\wedge \delta \psi \\
 & =\frac{1}{16\pi}\delta\left(\int _{\Sigma}B_{IJ}^{(s)}\wedge \mathcal{L}_{\xi}A^{IJ}\right)-\frac{1}{16\pi}\int _{\partial \Sigma}\iota _{\xi}\left(B_{IJ}^{(s)}\wedge \mathcal{L}_{\xi}A^{IJ}\right) \\
 & +\frac{\kappa}{4\pi}\delta\left(\int _{\Sigma}\mathscr{\bar{B}}\wedge \mathcal{L}_{\xi}\psi\right)-\frac{\kappa}{4\pi}\int _{\partial \Sigma}\iota _{\xi}\left(\mathscr{\bar{B}}\wedge \mathcal{L}_{\xi}\psi\right)
\end{align}$$

and we assume the only non-vanishing components of the vector field $\displaystyle{\xi}$ at $\displaystyle{\partial \Sigma}$ are those tangent to $\displaystyle{\partial \Sigma}$, thus the second term in both lines vanishes identically. therefore we have

$$\begin{align}
\mathscr{H}[\xi] & =\frac{1}{16\pi}\int _{\Sigma}B_{IJ}^{(s)}\wedge \mathcal{L}_{\xi}A^{IJ}+\frac{\kappa}{4\pi}\int _{\Sigma}\mathscr{\bar{B}}\wedge \mathcal{L}_{\xi}\psi
\end{align}$$

applying the Cartan magic formula, we have

$$\begin{align}
\mathcal{L}_{\xi}\bar{\psi} & =\frac{1}{\kappa}\iota _{\xi}\mathscr{\bar{F}}(A)+\mathscr{D}^{A}(\iota _{\xi}\bar{\psi})+\bar{\psi}\gamma _{IJ}\iota _{\xi}A^{IJ} \\
\mathcal{L}_{\xi}A^{IJ} & =\iota _{\xi}F^{IJ}(A)+D^{A}(\iota _{\xi}A^{IJ})+\kappa ^{2}\bar{\psi}\gamma ^{IJ}\iota \psi
\end{align}$$

thus

$$\begin{align}
\mathscr{H}[\xi] & \approx \frac{1}{16\pi}\int _{\Sigma}B_{IJ}^{(s)}\wedge \iota _{\xi}F^{(s)IJ}+\mathrm{d}(B_{IJ}^{(s)}\iota _{\xi}A^{IJ}) \\
 & +\frac{\kappa}{4\pi}\int _{\Sigma}\mathscr{\bar{B}}\wedge \iota _{\xi}\mathscr{F}+\mathrm{d}(\mathscr{B}\iota _{\xi}\psi) \\
 & =\mathscr{H}_{\Sigma}[\xi]+\mathscr{H}_{\partial \Sigma}[\xi] \\
\mathscr{H}_{\Sigma}[\xi] & \approx \frac{1}{16\pi}\int _{\Sigma}B_{IJ}^{(s)}\wedge \iota _{\xi}F^{(s)IJ}+\frac{\kappa}{4\pi}\int _{\Sigma}\mathscr{\bar{B}}\wedge \iota _{\xi}\mathscr{F} \\
 & =\frac{1}{2}\int _{\Sigma}\iota _{\xi}\text{Lagrangian} \\
\mathscr{H}_{\partial \Sigma}[\xi] & =\frac{1}{16\pi}\int _{\partial \Sigma}B_{IJ}^{(s)}\iota _{\xi}A^{IJ}+\frac{\kappa}{4\pi}\int _{\partial \Sigma}\mathscr{\bar{B}}\iota _{\xi}\psi
\end{align}$$

in the case of $\displaystyle{\xi}$ being tangential to the $\displaystyle{\Sigma}$ the bulk contribution to the charge vanishes. 

## algebra of charges

the Poisson bracket of two charges is defined as

$$\begin{align}
\left\{\mathscr{H}[\Xi_{1}],\mathscr{H}[\Xi_{2}]\right\} & =\frac{1}{2}\left(\delta _{\Xi_{1}}\mathscr{H}[\Xi_{2}]-\delta _{\Xi_{2}}\mathscr{H}[\Xi_{1}]\right)
\end{align}$$

### gauge algebra

we will consider the algebra of charges associated with local gauge symmetries. 

$$\begin{align}
\mathscr{H}_{L}[\lambda] & =-\frac{1}{16\pi}\int _{\partial \Sigma}B_{ab}^{(s)}\lambda ^{ab} \\
\mathscr{H}_{T}[\zeta] & =-\frac{1}{8\pi}\int _{\partial \Sigma}B_{a}^{(s)}\zeta ^{a} \\
\mathscr{H}_{S}[\epsilon] & =-\frac{1}{4\pi}\int _{\partial \Sigma}\mathscr{\bar{B}}\epsilon
\end{align}$$

the results are summarized as follows

$$\begin{align}
\left\{\mathscr{H}_{L}[\lambda_{1}],\mathscr{H}_{L}[\lambda_{2}]\right\} & =\mathscr{H}_{L}[\lambda _{12}] \\
\left\{\mathscr{H}_{L}[\lambda_{1}],\mathscr{H}_{T}[\zeta _{2}]\right\} & =\mathscr{H}_{T}[\zeta _{12}] \\
\left\{\mathscr{H}_{L}[\lambda _{1}],\mathscr{H}_{S}[\epsilon _{2}]\right\} & =\mathscr{H}_{S}[\epsilon _{12}] \\
\left\{\mathscr{H}_{T}[\zeta _{1}],\mathscr{H}_{T}[\zeta _{2}]\right\} & =\mathscr{H}_{L}[\lambda _{12}] \\
\left\{\mathscr{H}_{T}[\zeta _{1}],\mathscr{H}_{S}[\epsilon _{2}]\right\} & =\mathscr{H}_{S}[\epsilon _{12}] \\
\left\{\mathscr{H}_{S}[\epsilon _{1}],\mathscr{H}_{S}[\epsilon _{2}]\right\} & =\mathscr{H}_{L}[\lambda _{12}]+\mathscr{H}_{T}[\zeta _{12}]
\end{align}$$

here

$$\begin{align}
\lambda _{12}^{ab} & =\lambda _{1~c}^{~~a}\lambda _{2}^{cd}-\lambda _{2~c}^{~~a}\lambda _{1}^{cb} \\
\zeta _{12}^{a} & =\lambda _{1~b}^{~~a}\zeta _{2}^{b} \\
\epsilon _{12} & =\frac{1}{4}\lambda _{1}^{ab}\gamma _{ab}\epsilon _{2}
\end{align}$$

in the first three lines, and for the next two lines we have

$$\begin{align}
\lambda _{12}^{ab} & =-(\zeta _{1}^{a}\zeta _{2}^{b}-\zeta _{2}^{a}\zeta _{1}^{b}) \\
\epsilon _{12} & =\frac{1}{2}\zeta _{1}^{a}\gamma _{a}\epsilon _{2}
\end{align}$$

and for the last line we have

$$\begin{align}
\lambda _{12}^{ab} & =\bar{\epsilon}_{1}\gamma ^{ab}\epsilon _{2} \\
\zeta _{12}^{a} & =\bar{\epsilon}_{1}\gamma ^{a}\epsilon _{2}
\end{align}$$

when onshell, the supertorsion

$$\begin{align}
B_{a}^{(s)} & =\frac{1}{\beta}F_{a}^{(s)}
\end{align}$$

vanishes. and the translation charge $\displaystyle{\mathscr{H}_{T}[\zeta]}$ vanishes identically. therefore the algebra of charges reduces to the $\displaystyle{\mathrm{Osp}(1|4)}$ superalgebra without central extension.

### diffeomorphism algebra

$$\begin{align}
\mathscr{H}_{D}[\xi] & =\frac{1}{16\pi}\int _{\partial \Sigma}B_{IJ}^{(s)}\iota _{\xi}A^{IJ}+\frac{\kappa}{4\pi}\int _{\partial \Sigma}\mathscr{\bar{B}}\iota _{\xi}\psi
\end{align}$$

the algebra of diffeomorphism charges is given by

$$\begin{align}
\left\{\mathscr{H}_{D}[\xi _{1}],\mathscr{H}_{D}[\xi _{2}]\right\} & =\mathscr{H}_{D}[\xi _{12}]
\end{align}$$

where

$$\begin{align}
\xi _{12} & =[\xi _{1},\xi _{2}]
\end{align}$$

as expected. and the algebra of diffeomorphism charges with gauge charges is given by

$$\begin{align}
\left\{\mathscr{H}_{D}[\xi],\mathscr{H}_{L}[\lambda]\right\} & =-\mathscr{H}_{L}[\mathcal{L}_{\xi}\lambda] \\
\left\{\mathscr{H}_{D}[\xi],\mathscr{H}_{T}[\zeta]\right\} & =\mathscr{H}_{T}[\mathcal{L}_{\xi}\zeta] \\
\left\{\mathscr{H}_{D}[\xi],\mathscr{H}_{S}[\epsilon]\right\} & =\mathscr{H}_{S}[\mathcal{L}_{\xi}\epsilon]
\end{align}$$

# $\displaystyle{\mathrm{Osp}(1|4)}$ super algebra

the bosonic subalgebra of $\displaystyle{\mathrm{Osp}(1|4)}$ is $\displaystyle{\mathrm{SO}(2,3)}$, which is the isometry group of $\displaystyle{\mathrm{AdS}_{4}}$. the generators of $\displaystyle{\mathrm{SO}(2,3)}$ are denoted by $\displaystyle{M_{IJ}}$ with $\displaystyle{I,J=0,1,2,3,4}$ and satisfy the following commutation relation

$$\begin{align}
[M_{IJ},M_{KL}] & =i\left(\eta _{IL}M_{JK}+\eta _{JK}M_{IL}-\eta _{IK}M_{JL}-\eta _{JL}M_{IK}\right) \\
\eta _{IJ} & =\mathrm{diag}(-,+,+,+,-)
\end{align}$$

it is convenient to decompose the $\mathrm{AdS}$ generators into Lorentz generators $\displaystyle{M_{ab}}$ and translations according to

$$\begin{align}
M_{a4}:= P_{a}, \quad a & =0,1,2,3
\end{align}$$

the bosonic subalgebra then takes the form

$$\begin{align}
[M_{ab},M_{cd}]= & i\left(\eta _{ad}M_{bc}+\eta _{bc}M_{ad}-\eta _{ac}M_{bd}-\eta _{bd}M_{ac}\right) \\
[M_{ab},P_{c}]= & i\left(\eta _{bc}P_{a}-\eta _{ac}P_{b}\right) \\
[P_{a},P_{b}]= & iM_{ab}
\end{align}$$

the $\displaystyle{\gamma}$ matrices satisft the Clifford algebra

$$\begin{align}
\left\{\gamma ^{a},\gamma ^{b}\right\}=2\eta ^{ab},\gamma _{ab}:=\frac{1}{2}[\gamma _{a},\gamma _{b}] \\
\eta _{ab} & =\mathrm{diag}(-,+,+,+)
\end{align}$$

the action of the bosonic generators on the supercharges is given by

$$\begin{align}
[M_{IJ},Q_{\alpha}] & =i(m_{IJ})_{\alpha}^{~\beta}Q_{\beta} \\
\implies [M_{ab},Q] & =\frac{i}{2}\gamma _{ab}Q \\
[P_{a},Q] & =\frac{i}{2}\gamma _{a}Q
\end{align}$$

the supersymmetry anticommutator closes on the bosonic generators as

$$\begin{align}
\left\{Q_{\alpha},Q_{\beta}\right\} & =-i(Cm^{IJ})_{\alpha \beta}M_{IJ} \\
 & =-\frac{i}{2}(C\gamma ^{ab})_{\alpha \beta}M_{ab}+i(C\gamma ^{a})_{\alpha \beta}P_{a}
\end{align}$$

here $\displaystyle{C}$ is the charge-conjugation matrix.

