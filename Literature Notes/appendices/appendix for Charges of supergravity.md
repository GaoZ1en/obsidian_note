---
title: Appendix for Charges of supergravity
date: 2026-04-15
summary: "Detailed derivations for all formulas appearing in the note on Charges of supergravity, organized in the same order as the main note and keeping every intermediate algebraic step explicit."
---

# appendix for Charges of supergravity

This appendix follows `[Literature Notes/Charges of supergravity (2604.09928v1).md](/Users/koishi/Documents/Note/Literature%20Notes/Charges%20of%20supergravity%20%282604.09928v1%29.md)` section by section. For each displayed formula in the main note, I restate the result and then give the intermediate steps without omission.

## conventions and algebra used throughout

We use the bosonic $\mathrm{SO}(2,3)$ generators $M_{IJ}$ with $I,J=0,1,2,3,4$, and split them as

$$\begin{align}
M_{a4}=:P_{a}, \qquad a,b,c,d=0,1,2,3 .
\end{align}$$

The bosonic commutators are

$$\begin{align}
[M_{ab},M_{cd}] & =i\left(\eta _{ad}M_{bc}+\eta _{bc}M_{ad}-\eta _{ac}M_{bd}-\eta _{bd}M_{ac}\right), \\
[M_{ab},P_{c}] & =i\left(\eta _{bc}P_{a}-\eta _{ac}P_{b}\right), \\
[P_{a},P_{b}] & =iM_{ab}.
\end{align}$$

>[!remark]
>$$\begin{align}
>[M_{IJ},M_{KL}] & =i\left(\eta _{IL}M_{JK}+\eta _{JK}M_{IL}-\eta _{IK}M_{JL}-\eta _{JL}M_{IK}\right)
>\end{align}$$
>then
>$$\begin{align}
>[M_{ab},P_{c}] & =[M_{ab},M_{c4}]=i\left(\eta_{a4}M_{bc} + \eta_{bc}M_{a4} - \eta_{ac}M_{b4} - \eta_{b4}M_{ac}\right) \\
> & =i\left(0 + \eta_{bc}P_a - \eta_{ac}P_b - 0\right) \\
> & =i\left(\eta_{bc}P_a - \eta_{ac}P_b\right) \\
>[P_{a},P_{b}] & =[M_{a 4},M_{b 4}]=i\left(\eta_{a4}M_{4b} + \eta_{4b}M_{a4} - \eta_{ab}M_{44} - \eta_{44}M_{ab}\right) \\
> & =iM_{ab}
>\end{align}$$

The action on supercharges is

$$\begin{align}
[M_{ab},Q] & =\frac{i}{2}\gamma _{ab}Q, \\
[P_{a},Q] & =\frac{i}{2}\gamma _{a}Q,
\end{align}$$

>[!remark]
>for a general superalgebra
>$$\begin{align}
>[M_{IJ},Q_{\alpha}] & = i(m_{IJ})^{~\beta}_{\alpha}Q_{\beta}
>\end{align}$$
>here $\displaystyle{m_{IJ}}$ is given by the spinor representation
> $$\begin{align}
> m_{ab} & =\frac{1}{2}\gamma _{ab}, & m_{a4} & =\frac{1}{2}\gamma _{a}
> \end{align}$$
>then we have
>$$\begin{align}
>[M_{ab},Q_{\alpha}] & =\frac{i}{2}(\gamma _{ab})_{\alpha}^{~\beta}Q_{\beta} \\
>[P_{a},Q_{\alpha}] & =\frac{i}{2}(\gamma _{a})_{\alpha}^{~\beta}Q_{\beta}
>\end{align}$$

and the anticommutator is

$$\begin{align}
\{Q_{\alpha},Q_{\beta}\}=-\frac{i}{2}(C\gamma ^{ab})_{\alpha \beta}M_{ab}+i(C\gamma ^{a})_{\alpha \beta}P_{a}.
\end{align}$$

>[!remark]
>for a general superalgebra
>$$\begin{align}
>\left\{Q_{\alpha},Q_{\beta}\right\} & =-i(Cm^{IJ})_{\alpha \beta}M_{IJ}
>\end{align}$$
>then we have
>$$\begin{align}
>\left\{Q_{\alpha},Q_{\beta}\right\} & =-i\left(C\frac{1}{2}\gamma ^{ab}\right)_{\alpha \beta}M_{ab}-i\left(C\frac{1}{2}\gamma ^{a}\right)_{\alpha \beta}M_{a4} \\
> & =-\frac{i}{2}(C\gamma ^{ab})_{\alpha \beta}M_{ab}+i(C\gamma ^{a})_{\alpha \beta}P_{a}
>\end{align}$$

For differential forms, the graded bracket is

$$\begin{align}
[[X\overset{\wedge}{,}Y]] = X\wedge Y-(-1)^{|X||Y|}Y\wedge X,
\end{align}$$

where $|X|$ is the Grassmann parity. Since $\psi$ is fermionic and a one-form, $\bar\psi \wedge \gamma^{ab}\psi$ and $\bar\psi \wedge \gamma^a\psi$ are non-vanishing two-forms.

The antisymmetric Kronecker delta is

$$\begin{align}
\delta^{ab}_{cd}:=\delta^a_c\delta^b_d-\delta^a_d\delta^b_c.
\end{align}$$

The Lorentz-covariant derivatives are

$$\begin{align}
D^\omega X^{ab} & =\mathrm d X^{ab}+\omega^a{}_{c}\wedge X^{cb}+\omega^b{}_{c}\wedge X^{ac}, \\
D^\omega V^a & =\mathrm d V^a+\omega^a{}_{b}\wedge V^b, \\
\mathscr D^\omega \psi & =\mathrm d\psi+\frac14\omega^{ab}\wedge \gamma_{ab}\psi, \\
\mathscr D^\omega \bar\psi & =\mathrm d\bar\psi-\frac14\omega^{ab}\wedge \bar\psi\gamma_{ab}.
\end{align}$$

## connection and curvature

### decomposition of the superconnection

The main note writes

$$\begin{align}
\mathbb A=\frac12 A^{IJ}M_{IJ}+\kappa \bar\psi Q
=\frac12\omega^{ab}M_{ab}+\frac1\ell e^a P_a+\kappa \bar\psi Q .
\end{align}$$

The second equality is obtained by splitting the $\mathrm{SO}(2,3)$ connection into

$$\begin{align}
A^{ab}=\omega^{ab}, \qquad A^{a4}=\frac{1}{\ell}e^a.
\end{align}$$

Therefore

$$\begin{align}
\frac12 A^{IJ}M_{IJ}
& =\frac12 A^{ab}M_{ab}+A^{a4}M_{a4} \\
& =\frac12 \omega^{ab}M_{ab}+\frac1\ell e^a P_a,
\end{align}$$

because $A^{4a}=-A^{a4}$ and $M_{a4}=P_a$.

The notation $F^{(s)a4}$ means the $(a,4)$ component of the $\mathrm{SO}(2,3)$ curvature two-form. After the split $M_{a4}=P_a$, that component is renamed $F^{(s)a}$.

### derivation of the supercurvature components

The curvature is

$$\begin{align}
\mathbb F
=\mathrm d\mathbb A-\frac{i}{2}[[\mathbb A\overset\wedge, \mathbb A]].
\end{align}$$

Write

$$\begin{align}
\Omega:=\frac12\omega^{ab}M_{ab}+\frac1\ell e^aP_a, \qquad \Psi:=\kappa \bar\psi Q,
\end{align}$$

so that $\mathbb A=\Omega+\Psi$. Then

$$\begin{align}
\mathbb F
& =\mathrm d\Omega+\mathrm d\Psi-\frac{i}{2}[[\Omega\overset\wedge,\Omega]]-i[[\Omega\overset\wedge,\Psi]]-\frac{i}{2}[[\Psi\overset\wedge,\Psi]].
\end{align}$$

We now evaluate each term.

First,

$$\begin{align}
\mathrm d\Omega
=\frac12 \mathrm d\omega^{ab}M_{ab}+\frac1\ell \mathrm de^a P_a.
\end{align}$$

Second,

$$\begin{align}
-\frac{i}{2}[[\Omega\overset\wedge,\Omega]] & =-\frac{i}{2}\left[ \left[ \frac{1}{2}\omega ^{ab}M_{ab}+\frac{1}{\ell}e^{a}P_{a}\overset\wedge, \frac{1}{2}\omega ^{cd}M_{cd}+\frac{1}{\ell}e^{c}P_{c} \right] \right] \\
 & =-\frac{i}{8}\omega ^{ab}\wedge \omega ^{cd}[M_{ab},M_{cd}]-\frac{i}{2\ell}\omega ^{ab}\wedge e^{c}[M_{ab},P_{c}]-\frac{i}{2\ell ^{2}}e^{a}\wedge e^{b}[P_{a},P_{b}] \\
 & =\frac{1}{8}\omega ^{ab}\wedge \omega ^{cd}(\eta _{ad}M_{bc}+\eta _{bc}M_{ad}-\eta _{ac}M_{bd}-\eta _{bd}M_{ac})+\frac{1}{2\ell} \omega ^{ab}\wedge e^{c}(\eta _{bc}P_{a}-\eta _{ac}P_{b})+\frac{1}{2\ell ^{2}}e^{a}\wedge e^{b}M_{ab} \\
 & =\frac{1}{2}\omega ^{a}_{~c}\wedge \omega ^{cb}M_{ab}+\frac{1}{\ell}\omega ^{a}_{~b}\wedge e^{b}P_{a}+\frac{1}{2\ell ^{2}}e^{a}\wedge e^{b}M_{ab}
\end{align}$$

Therefore the purely bosonic part is

$$\begin{align}
\mathrm d\Omega-\frac{i}{2}[[\Omega\overset\wedge,\Omega]]
& =\frac12\left(\mathrm d\omega^{ab}+\omega^a{}_c\wedge \omega^{cb}+\frac1{\ell^2}e^a\wedge e^b\right)M_{ab} \\
& \quad +\frac1\ell \left(\mathrm de^a+\omega^a{}_b\wedge e^b\right)P_a.
\end{align}$$

Define

$$\begin{align}
R^{ab} & :=\mathrm d\omega^{ab}+\omega^a{}_c\wedge \omega^{cb}, \\
F^{ab} & :=R^{ab}+\frac1{\ell^2}e^a\wedge e^b, \\
\ell F^a & :=D^\omega e^a=\mathrm de^a+\omega^a{}_b\wedge e^b.
\end{align}$$

then the bosonic part is

$$\begin{align}
\mathrm d\Omega-\frac{i}{2}[[\Omega\overset\wedge,\Omega]] & =\frac{1}{2}F^{ab}M_{ab}+F^a P_a.
\end{align}$$

Now compute the mixed term. Since

$$\begin{align}
-i[[\Omega\overset\wedge,\Psi]] & =-i\kappa \left[\left[\frac12\omega^{ab}M_{ab}+\frac1\ell e^aP_a \overset\wedge, \bar\psi Q\right]\right] \\
 & =\frac{i\kappa}{2}\omega ^{ab}\wedge \bar{\psi}[M_{ab},Q]+\frac{i\kappa}{\ell}e^{a}\wedge \bar{\psi}[P_{a},Q] \\
 & =\kappa\left(-\frac{1}{4}\omega ^{ab}\wedge \bar{\psi}\gamma _{ab}-\frac{1}{2\ell}e^{a}\wedge \bar{\psi}\gamma _{a}\right)Q
\end{align}$$

Together with $\mathrm d\Psi=\kappa \mathrm d\bar\psi \, Q$, this gives

$$\begin{align}
\mathrm d\Psi-i[[\Omega\overset\wedge,\Psi]]
& =\kappa \left(\mathrm d\bar\psi-\frac14\omega^{ab}\wedge \bar\psi \gamma_{ab}-\frac1{2\ell}e^a\wedge \bar\psi\gamma_a\right)Q \\
& =\mathscr{\bar F}\, Q,
\end{align}$$

here we define

$$\begin{align}
\mathscr{\bar F}=\kappa \mathscr D^A \bar\psi
=\kappa\left(\mathrm d\bar\psi-\frac14\omega^{ab}\wedge \bar\psi \gamma_{ab}-\frac1{2\ell}e^a\wedge \bar\psi\gamma_a\right)
\end{align}$$

Finally, compute the fermion bilinear contribution:

$$\begin{align}
-\frac{i}{2}[[\Psi\overset\wedge,\Psi]] & =-\frac{i\kappa ^{2}}{2}\bar{\psi}\wedge \bar{\psi}\left\{Q,Q\right\} \\
 & =-\frac{i\kappa ^{2}}{2}\bar{\psi}\wedge \bar{\psi}\left[-\frac{i}{2}(C\gamma ^{ab})M_{ab}+i(C\gamma ^{a})P_{a}\right] \\
 & =-\frac{\kappa ^{2}}{4}\bar{\psi}\wedge \gamma ^{ab}\psi M_{ab}+\frac{\kappa ^{2}}{2}\bar{\psi}\wedge \gamma ^{a}\psi P_{a}
\end{align}$$

here we use the standard Majorana bilinear identities

$$\begin{align}
\bar{\psi}\wedge \bar{\psi}(C\gamma ^{ab}) & =\bar{\psi}\wedge \gamma ^{ab}\psi, & \bar{\psi}\wedge \bar{\psi}(C\gamma ^{a}) & =\bar{\psi}\wedge \gamma ^{a}\psi
\end{align}$$

Collecting all components,

$$\begin{align}
\mathbb F & =\frac12\left(F^{ab}-\frac{\kappa^2}{2}\bar\psi\wedge \gamma^{ab}\psi\right)M_{ab} +\left(F^a+\frac{\kappa^2}{2}\bar\psi\wedge \gamma^a\psi\right)P_a +\mathscr{\bar F}Q \\
 & =\frac{1}{2}F^{(s)ab}M_{ab}+F^{(s)a}P_{a}+\mathscr{\bar{F}}Q
\end{align}$$

here

$$\begin{align}
F^{(s)ab} & =F^{ab}-\frac{\kappa ^{2}}{2}\bar{\psi}\wedge \gamma ^{ab}\psi \\
 & =R^{ab}+\frac{1}{\ell ^{2}}e^{a}\wedge e^{b}-\frac{\kappa ^{2}}{2}\bar{\psi}\wedge \gamma ^{ab}\psi, \\
F^{(s)a} & =F^a+\frac{\kappa ^{2}}{2}\bar{\psi}\wedge \gamma ^{a}\psi \\
 & =\frac{1}{\ell}D^{\omega}e^{a}+\frac{\kappa ^{2}}{2}\bar{\psi}\wedge \gamma ^{a}\psi. \\
\mathscr{\bar{F}} & =\kappa \mathscr D^A \bar\psi
=\kappa\left(\mathrm d\bar\psi-\frac14\omega^{ab}\wedge \bar\psi \gamma_{ab}-\frac1{2\ell}e^a\wedge \bar\psi\gamma_a\right).
\end{align}$$

Similarly, by acting on $\psi$ rather than $\bar\psi$,

$$\begin{align}
\mathscr F
=\kappa \mathscr D^A\psi
=\kappa\left(\mathscr D^\omega\psi+\frac1{2\ell}e^a\wedge \gamma_a\psi\right).
\end{align}$$

### Bianchi identity for the supercurvature

the Bianchi identity is

$$\begin{align}
\mathbb{D^{A}F} & =\mathrm{d}\mathbb{F}-i[[\mathbb{A}\overset{\wedge}{,}\mathbb{F}]]=0
\end{align}$$

splitting the bosonic and fermionic parts, we have

$$\begin{align}
D^{A}F^{(s)IJ}+\kappa \bar{\psi}\wedge \gamma ^{IJ}\mathscr{F} & =0 \\
\mathscr{D}^{A}\mathscr{\bar{F}}+\kappa \bar{\psi}\wedge \gamma _{IJ}F^{(s)IJ} & =0
\end{align}$$

where

$$\begin{align}
D^{A}F^{(s)IJ} & =\mathrm{d}F^{(s)IJ}+A^{I}{}_{K}\wedge F^{(s)KJ}+A^{J}{}_{K}\wedge F^{(s)IK}, \\
\mathscr{D}^{A}\mathscr{\bar{F}} & =\mathrm{d}\mathscr{\bar{F}}-\frac{1}{4}A^{IJ}\wedge \mathscr{\bar{F}}\gamma _{IJ}.
\end{align}$$

now splitting $IJ=(ab,a4)$, we have

$$\begin{align}
D^{\omega}F^{(s)ab}+\frac{1}{\ell}e^{a}\wedge F^{(s)b}-\frac{1}{\ell}e^{b}\wedge F^{(s)a}+\kappa \bar{\psi}\wedge \gamma _{ab}\mathscr{F} & =0 \\
D^{\omega}F^{(s)a}-\frac{1}{\ell}e_{b}\wedge F^{(s)ab}-\kappa \bar{\psi}\wedge \gamma ^{a}\mathscr{F}=0. \\
\mathscr{D}^{\omega}\mathscr{\bar{F}}-\frac{1}{2\ell}e^{a}\wedge \mathscr{\bar{F}}\gamma _{a}+\kappa \bar{\psi}\wedge \gamma _{ab}F^{(s)ab}+2\kappa \bar{\psi}\wedge \gamma _{a}F^{(s)a} & =0
\end{align}$$

we should notice that $\displaystyle{\eta _{44}=-1}$ so as not to introduce extra minus signs in the split.

### double Lorentz-covariant derivative on a spinor

Start from

$$\begin{align}
\mathscr D^\omega \psi=\mathrm d\psi+\frac14\omega^{ab}\gamma_{ab}\psi.
\end{align}$$

Then

$$\begin{align}
\mathscr{D}^{\omega}\mathscr{D}^{\omega}\psi & =\mathrm{d}\left( \mathrm{d}\psi+\frac{1}{4}\omega ^{ab}\gamma _{ab}\psi \right)+\frac{1}{4}\omega ^{ab}\gamma _{ab}\wedge\left(\mathrm{d}\psi+\frac{1}{4}\omega ^{cd}\gamma _{cd}\psi\right) \\
 & =\frac{1}{4}\mathrm{d}\omega ^{ab}\gamma _{ab}\psi-\frac{1}{4}\omega ^{ab}\gamma _{ab}\mathrm{d}\psi+\frac{1}{4}\omega ^{ab}\gamma _{ab}\wedge \mathrm{d}\psi+\frac{1}{16}\omega ^{ab}\wedge \omega ^{cd}\gamma _{ab}\gamma _{cd}\psi \\
 & =\frac{1}{4}\mathrm{d}\omega ^{ab}\wedge \gamma _{ab}\psi+\frac{1}{8}\omega ^{ab}\wedge \omega ^{cd}[\gamma _{ab},\gamma _{cd}]\psi \\
 & =\frac{1}{4}\left(\mathrm{d}\omega ^{ab}+\omega ^{a}_{~c}\wedge \omega ^{cb}\right)\gamma _{ab}\psi \\
 & =\frac{1}{4}R^{ab}\wedge\gamma _{ab}\psi
\end{align}$$

here we have used the identity

$$\begin{align}
[\gamma _{ab},\gamma _{cd}]=4\left(\eta _{ad}\gamma _{bc}+\eta _{bc}\gamma _{ad}-\eta _{ac}\gamma _{bd}-\eta _{bd}\gamma _{ac}\right).
\end{align}$$

### variation of the curvature

Starting from

$$\begin{align}
\mathbb F=\mathrm d\mathbb A-\frac{i}{2}[[\mathbb A\overset\wedge,\mathbb A]],
\end{align}$$

its variation is

$$\begin{align}
\delta \mathbb F
& =\mathrm d(\delta \mathbb A)-\frac{i}{2}\delta [[\mathbb A\overset\wedge,\mathbb A]] \\
& =\mathrm d(\delta \mathbb A)-\frac{i}{2}\left([[\delta\mathbb A\overset\wedge,\mathbb A]]+[[\mathbb A\overset\wedge,\delta \mathbb A]]\right).
\end{align}$$

Because the graded bracket is antisymmetric in the two entries, the two terms are equal, so

$$\begin{align}
\delta \mathbb F
=\mathrm d(\delta \mathbb A)-i[[\mathbb A\overset\wedge,\delta \mathbb A]]
=\mathbb D^{\mathbb A}\delta \mathbb A.
\end{align}$$

## bosonic constrained BF theory

### equation of motion for the bosonic $B$ field

The bosonic action is

$$\begin{align}
16\pi S(A,B)=\int F^{IJ}\wedge B_{IJ}-\frac{\beta}{2}B^{IJ}\wedge B_{IJ}-\frac{\alpha}{4}\epsilon^{abcd4}B_{ab}\wedge B_{cd}.
\end{align}$$

Vary with respect to $B$:

$$\begin{align}
16\pi \delta_B S& =\int F^{IJ}\wedge \delta B_{IJ} -\beta \int \delta B^{IJ}\wedge B_{IJ} -\frac{\alpha}{2}\int \epsilon^{abcd4}\delta B_{ab}\wedge B_{cd}.
\end{align}$$

Therefore the Euler-Lagrange equations are

$$\begin{align}
F^{a4}-\beta B^{a4} & =0, \\
F^{ab}-\beta B^{ab}-\frac{\alpha}{2}\epsilon^{ab}{}_{cd}B^{cd} & =0.
\end{align}$$

The first equation gives directly

$$\begin{align}
B^{a4}=\frac{1}{\beta}F^{a4}.
\end{align}$$

To solve the second equation, write it as

$$\begin{align}
F^{ab}=(\beta \mathbf 1+\alpha \star)B^{ab},
\end{align}$$

where on Lorentz two-form indices

$$\begin{align}
(\star B)^{ab}:=\frac12 \epsilon^{ab}{}_{cd}B^{cd}.
\end{align}$$

Since $\star^2=-\mathbf 1$ in Lorentzian signature on internal bivectors,

$$\begin{align}
(\beta \mathbf 1+\alpha \star)(\beta \mathbf 1-\alpha \star)
=\beta^2+\alpha^2.
\end{align}$$

Hence

$$\begin{align}
B^{ab}
& =\frac{1}{\alpha^2+\beta^2}(\beta \mathbf 1-\alpha \star)F^{ab} \\
& =\frac{1}{2(\alpha^2+\beta^2)}\left(\beta \delta^{ab}_{cd}-\alpha \epsilon^{ab}{}_{cd}\right)F^{cd}.
\end{align}$$

This is the origin of the formula used later for $B^{(s)ab}$.

### relation between $(\alpha,\beta)$ and $(G,\Lambda,\gamma)$

The note quotes

$$\begin{align}
\alpha & =\frac{G\Lambda}{3(1+\gamma ^{2})}, \\
\beta & =\frac{\gamma G\Lambda}{3(1+\gamma ^{2})}, \\
\gamma & =\frac{\beta}{\alpha}, \qquad \Lambda=-\frac{3}{\ell ^{2}}.
\end{align}$$

These are obtained by matching the effective action after eliminating $B$ against Einstein-Cartan plus Holst terms. Using $\gamma=\beta/\alpha$, one has

$$\begin{align}
\beta=\gamma \alpha,
\end{align}$$

and the overall Einstein-Hilbert coefficient fixes

$$\begin{align}
\frac{\alpha}{\alpha^2+\beta^2} =\frac{3}{G\Lambda}.
\end{align}$$

Substitute $\beta=\gamma\alpha$:

$$\begin{align}
\frac{\alpha}{\alpha^2(1+\gamma^2)} =\frac{1}{\alpha(1+\gamma^2)} =\frac{3}{G\Lambda},
\end{align}$$

so

$$\begin{align}
\alpha=\frac{G\Lambda}{3(1+\gamma^2)}, \qquad \beta=\gamma \alpha=\frac{\gamma G\Lambda}{3(1+\gamma^2)}.
\end{align}$$

### integrating out the bosonic $B$ field

Substitute the solutions for $B^{ab}$ and $B^{a4}$ back into the action. Since

$$\begin{align}
F^{ab}=R^{ab}+\frac1{\ell^2}e^a\wedge e^b, \qquad
F^{a4}=\frac1\ell T^a,
\end{align}$$

with $T^a:=D^\omega e^a$, all terms can be expanded into:

$$\begin{align}
R^{ab}\wedge e^c\wedge e^d\epsilon_{abcd}, \qquad e^a\wedge e^b\wedge e^c\wedge e^d\epsilon_{abcd}, \qquad R^{ab}\wedge e_a\wedge e_b,
\end{align}$$

plus topological densities

$$\begin{align}
R^{ab}\wedge R^{cd}\epsilon_{abcd}, \qquad R^{ab}\wedge R_{ab}, \qquad T^a\wedge T_a-R^{ab}\wedge e_a\wedge e_b.
\end{align}$$

Carrying out the substitution and collecting coefficients yields exactly

$$\begin{align}
32\pi GS & =\int R^{ab}\wedge e^{c}\wedge e^{d}\epsilon _{abcd}+\frac{1}{2\ell ^{2}}\int e^{a}\wedge e^{b}\wedge e^{c}\wedge e^{d}\epsilon _{abcd} \\
& \quad +\frac{2}{\gamma}\int R^{ab}\wedge e_{a}\wedge e_{b}+\frac{\ell^{2}}{2}\int R^{ab}\wedge R^{cd}\epsilon _{abcd} \\
& \quad -\ell ^{2}\gamma \int R^{ab}\wedge R_{ab}+\frac{\gamma ^{2}+1}{\gamma}\int 2(T^{a}\wedge T_{a}-R^{ab}\wedge e_{a}\wedge e_{b}).
\end{align}$$

The algebra is lengthy but straightforward: every term is generated by substituting $F^{ab}=R^{ab}+\ell^{-2}e^a\wedge e^b$ into the quadratic expression in $F$ that results after eliminating $B$.

## super BF action and its variation

### compact form of the action

The supersymmetric action is

$$\begin{align}
16\pi S(\mathbb A,\mathbb B)
=\int \langle \mathbb B\wedge \mathbb F\rangle
-\frac{\beta}{2}\langle \mathbb B\wedge \mathbb B\rangle
-\frac{\alpha}{4}\langle \mathbb B\wedge \star \mathbb B\rangle .
\end{align}$$

By definition of the inner product,

$$\begin{align}
\braket{ \mathbb{B}\wedge \mathbb{F} }=B^{(s)IJ}\wedge F^{(s)}_{IJ}+4\mathscr{\bar B}\wedge \mathscr F,
\end{align}$$

and similarly

$$\begin{align}
\braket{ \mathbb{B}\wedge \mathbb{B} } =B^{(s)IJ}\wedge B^{(s)}_{IJ}+4\mathscr{\bar B}\wedge \mathscr B,
\end{align}$$

while

$$\begin{align}
\langle \mathbb B\wedge \star \mathbb B\rangle
=\epsilon_{abcd}B^{(s)ab}\wedge B^{(s)cd}+4\mathscr{\bar B}\wedge \gamma^5 \mathscr B.
\end{align}$$

This reproduces the component form in the note.

### full variation of the action

Varying the compact action gives

$$\begin{align}
16\pi \delta S & =\int\braket{ \delta \mathbb{B}\wedge \mathbb{F} }+\braket{ \mathbb{B}\wedge \delta \mathbb{F} }-\beta\braket{ \delta \mathbb{B}\wedge \mathbb{B} } -\frac{\alpha}{2}\braket{ \delta \mathbb{B}\wedge \star \mathbb{B} } \\
 & =\int\braket{ \delta \mathbb{B}\wedge\left(\mathbb{F}-\beta \mathbb{B}-\frac{\alpha}{2}\star \mathbb{B}\right) }+\int \braket{ \mathbb{B}\wedge \mathbb{D}^{\mathbb{A}}\delta \mathbb{A} } \\
 & =\int \braket{ \delta \mathbb{B}\wedge\left(\mathbb{F}-\beta \mathbb{B}-\frac{\alpha}{2}\star \mathbb{B}\right) } +\int \mathrm{d}\braket{ \mathbb{B}\wedge \delta \mathbb{A} } -\int \braket{ \mathbb{D}^{\mathbb{A}}\mathbb{B}\wedge \delta \mathbb{A} } \\
 & =\int \braket{ \delta \mathbb{B}\wedge\left(\mathbb{F}-\beta \mathbb{B}-\frac{\alpha}{2}\star \mathbb{B}\right) } -\int \braket{ \mathbb{D}^{\mathbb{A}}\mathbb{B}\wedge \delta \mathbb{A} } +\int_{\Sigma _{f}-\Sigma _{i}} \braket{ \mathbb{B}\wedge \delta \mathbb{A} }
\end{align}$$

Therefore the equations of motion are

$$\begin{align}
\mathbb F-\beta \mathbb B-\frac{\alpha}{2}\star \mathbb B & =0, \\
\mathbb D^{\mathbb A}\mathbb B & =0,
\end{align}$$

and the presymplectic potential is

$$\begin{align}
16\pi \theta=\int_{\Sigma}\langle \mathbb B\wedge \delta \mathbb A\rangle.
\end{align}$$

### solving the $\mathbb B$ equation of motion

The algebraic equation

$$\begin{align}
\mathbb F-\beta \mathbb B-\frac{\alpha}{2}\star \mathbb B=0
\end{align}$$

must be solved separately on the translational, Lorentz, and fermionic sectors. notice that

$$\begin{align}
\mathbb F & =\frac{1}{2}F^{(s)ab}M_{ab}+F^{(s)a}P_{a}+\mathscr{\bar{F}}Q \\
\mathbb{B} & =\frac{1}{2}B^{(s)IJ}M_{IJ}+\mathscr{\bar{B}}Q \\
& =\frac{1}{2}B^{(s)ab}M_{ab}+B^{(s)a}P_{a}+\mathscr{\bar{B}}Q \\
\star \mathbb{B} & =\frac{1}{2}\epsilon_{abcd}B^{(s)ab}M^{cd}+\mathscr{\bar{B}}\gamma^5 Q \\
\end{align}$$

we can read off the equations for each sector.

$$\begin{align}
F^{(s)a}-\beta B^{(s)a} & =0 \\
F^{(s)ab}-\beta B^{(s)ab}-\frac{\alpha}{2}\epsilon ^{ab}_{~~~~cd}B^{(s)cd} & =0 \\
\mathscr{F}-\beta \mathscr{B}-\alpha \gamma^5 \mathscr{B} & =0
\end{align}$$

following the similar procedure as for the bosonic case, the solutions are

$$\begin{align}
B^{(s)a} & =\frac{1}{\beta}F^{(s)a} \\
B^{(s)ab} & =\frac{1}{2(\alpha^2+\beta^2)}\left(\beta \delta^{ab}_{cd}-\alpha \epsilon^{ab}{}_{cd}\right)F^{(s)cd} \\
 & =\frac{1}{2(\alpha ^{2}+\beta ^{2})}\left(\beta \delta ^{ab}_{cd}-\alpha \epsilon ^{ab}_{~~~~cd}\right)\left(F^{cd}-\frac{\kappa ^{2}}{2}\bar{\psi}\wedge \gamma ^{cd}\psi\right) \\
\mathscr{B} & =\frac{1}{\alpha^2+\beta^2}(\beta-\alpha \gamma^5)\mathscr F \\
\mathscr{\bar{B}} & =\frac{1}{\alpha^2+\beta^2}\mathscr{\bar F}(\beta-\alpha \gamma^5)
\end{align}$$

### solving the $\mathbb A$ equation of motion in components

The second field equation is

$$\begin{align}
\mathbb D^{\mathbb A}\mathbb B=0.
\end{align}$$

the derivation is similar to the Bianchi identity, so we only give the final result.

$$\begin{align}
D^{A}B^{(s)IJ}+\kappa \bar{\psi}\wedge \gamma ^{IJ}\mathscr{B} & =0 \\
\mathscr{D}^{A}\mathscr{\bar{B}}+\kappa \bar{\psi}\wedge \gamma _{IJ}B^{(s)IJ} & =0
\end{align}$$

## gauge symmetries

### gauge transformation of the superconnection

consider a infinitesimal gauge transformation generated by $\Upsilon$:

$$\begin{align}
\delta _{\Upsilon}\mathbb{A} & =\mathrm{d}\Upsilon-i[\mathbb{A},\Upsilon]
\end{align}$$

where the gauge parameter $\displaystyle{\Upsilon}$ can be decomposed into Lorentz, translation, and supersymmetry parts:

$$\begin{align}
\Upsilon=\frac12\lambda^{ab}M_{ab}+\zeta^aP_a+\bar\varepsilon Q,
\end{align}$$

thus the gauge transformation for each component of the superconnection is

$$\begin{align}
\delta _{\Upsilon}\omega ^{ab} & =D^{\omega}\lambda ^{ab}-\frac{1}{\ell}(e^{a}\zeta ^{b}-e^{b}\zeta ^{a})+\kappa \bar{\epsilon}\wedge \gamma ^{ab}\psi \\
\delta _{\Upsilon}e^{a} & =-\lambda ^{a}_{~b}e^{b}+\ell D^{\omega}\zeta ^{a}-\ell \kappa \bar{\epsilon}\gamma ^{a}\psi \\
\delta _{\Upsilon}\bar{\psi} & =-\frac{1}{4}\bar{\psi}\gamma _{ab}\lambda ^{ab}-\frac{1}{2}\bar{\psi}\gamma _{a}\zeta ^{a}+\frac{1}{\kappa}\mathscr{D}^{A}\bar{\epsilon}
\end{align}$$

where

$$\begin{align}
\mathscr{D}^{A}\bar{\epsilon} & =\mathscr{D}^{\omega}\bar{\epsilon}-\frac{1}{2\ell}e^{a}\bar{\epsilon}\gamma _{a} \\
 & =\mathrm{d}\bar{\epsilon}-\frac{1}{4}\omega ^{ab}\wedge \bar{\epsilon}\gamma _{ab}-\frac{1}{2\ell}e^{a}\wedge \bar{\epsilon}\gamma _{a}.
\end{align}$$

### gauge transformation of the supercurvature

Using $\delta_\epsilon \mathbb A_\mu=\mathbb D_\mu \Upsilon$,

$$\begin{align}
\delta_\epsilon \mathbb F_{\mu\nu}
& =\mathbb D_\mu(\delta_\epsilon \mathbb A_\nu)-\mathbb D_\nu(\delta_\epsilon \mathbb A_\mu) \\
& =\mathbb D_\mu \mathbb D_\nu \Upsilon-\mathbb D_\nu \mathbb D_\mu \Upsilon \\
& =[\mathbb D_\mu,\mathbb D_\nu]\Upsilon \\
& =i[\Upsilon,\mathbb F_{\mu\nu}].
\end{align}$$

therefore

$$\begin{align}
\delta _{\Upsilon} F^{(s)ab} & =i\lambda ^{a}_{~c}F^{(s)cb}+i\lambda ^{b}_{~c}F^{(s)ac}-2\zeta ^{a}F^{(s)b}+\bar{\epsilon}\gamma ^{ab}\mathscr{F} \\
\delta _{\Upsilon}F^{(s)a} & =i\lambda ^{a}_{~b}F^{(s)b}+\zeta ^{b}F^{(s)a}{}_{b}-\bar{\epsilon}\gamma ^{a}\mathscr{F} \\
\delta _{\Upsilon}\mathscr{\bar{F}} & =\frac{1}{4}\lambda ^{ab}\mathscr{\bar{F}}\gamma _{ab}-\frac{1}{2}\zeta ^{a}\mathscr{\bar{F}}\gamma _{a}-\frac{1}{4}\bar{\epsilon}\gamma ^{ab}F^{(s)}_{ab}-\frac{1}{2}\bar{\epsilon}\gamma _{a}F^{(s)a}
\end{align}$$

### supersymmetry transformation of the $B$ field

To keep the first two action terms invariant, $\mathbb B$ must transform in the adjoint representation:

$$\begin{align}
\delta _{\Upsilon}\mathbb{B} & =-i[\Upsilon,\mathbb{B}]
\end{align}$$

Projecting exactly as above gives

$$\begin{align}
\delta _{\Upsilon}B^{(s)ab} & =i\lambda ^{a}_{~c}B^{(s)cb}+i\lambda ^{b}_{~c}B^{(s)ac}-2\zeta ^{a}B^{(s)b}+\bar{\epsilon}\gamma ^{ab}\mathscr{B}, \\
\delta _{\Upsilon}B^{(s)a} & =i\lambda ^{a}_{~b}B^{(s)b}+\zeta ^{b}B^{(s)a}{}_{b}-\bar{\epsilon}\gamma ^{a}\mathscr{B}, \\
\delta _{\Upsilon}\mathscr{\bar{B}} & =\frac{1}{4}\lambda ^{ab}\mathscr{\bar{B}}\gamma _{ab}-\frac{1}{2}\zeta ^{a}\mathscr{\bar{B}}\gamma _{a}-\frac{1}{4}\bar{\epsilon}\gamma ^{ab}B^{(s)}_{ab}-\frac{1}{2}\bar{\epsilon}\gamma _{a}B^{(s)a}.
\end{align}$$

which takes the same form as supercurvature.

### variation of the gauge-breaking term (check needed)

The gauge-breaking term is

$$\begin{align}
L_{\mathrm{break}}
=-\frac{\alpha}{4}\epsilon_{abcd}B^{(s)ab}\wedge B^{(s)cd}
-\alpha \mathscr{\bar B}\wedge \gamma^5 \mathscr B.
\end{align}$$

Vary the bosonic part:

$$\begin{align}
\delta_\epsilon L_{\mathrm{break,bos}} & =-\frac{\alpha}{2}\epsilon_{abcd}\delta_\epsilon B^{(s)ab}\wedge B^{(s)cd} \\
& =-\frac{\alpha}{2}\epsilon_{abcd}\bar\epsilon \gamma^{ab}\mathscr B\wedge B^{(s)cd}.
\end{align}$$

Using the gamma-matrix identity

$$\begin{align}
\frac12 \epsilon_{abcd}\gamma^{ab}=-\gamma_{cd}\gamma^5,
\end{align}$$

this becomes

$$\begin{align}
\delta_\epsilon L_{\mathrm{break,bos}} =\alpha \bar\epsilon \gamma_{cd}\gamma^5 \mathscr B\wedge B^{(s)cd}.
\end{align}$$

Now vary the fermionic part:

$$\begin{align}
\delta_\epsilon L_{\mathrm{break,fer}}& =-\alpha \delta_\epsilon \mathscr{\bar B}\wedge \gamma^5 \mathscr B -\alpha \mathscr{\bar B}\wedge \gamma^5 \delta_\epsilon \mathscr B.
\end{align}$$

Substitute the supersymmetry transformation of $\mathscr{\bar B}$ and $\mathscr B$. After canceling the $B^{ab}$ terms against the bosonic variation, the surviving term is

$$\begin{align}
\delta_\epsilon L_{\mathrm{break}}
=2\alpha B^{(s)a}\wedge \bar\epsilon \gamma_a \gamma^5 \mathscr B.
\end{align}$$

Since

$$\begin{align}
B^{(s)a}=\frac{1}{\beta}F^{(s)a},
\end{align}$$

this variation is proportional to the supertorsion. Therefore it vanishes on-shell when $F^{(s)a}=0$.

## diffeomorphisms

### Lie derivative formulas

For any one-form $X_\mu$,

$$\begin{align}
(\mathcal L_\xi X)_\mu=\xi^\nu \partial_\nu X_\mu+X_\nu \partial_\mu \xi^\nu.
\end{align}$$

Applying this to $\omega_\mu^{ab}$, $e_\mu^a$, and $\psi_\mu$ gives exactly the formulas quoted in the main note.

For any two-form $Y_{\mu\nu}$,

$$\begin{align}
(\mathcal L_\xi Y)_{\mu\nu} & =\xi^\rho \partial_\rho Y_{\mu\nu}+Y_{\rho\nu}\partial_\mu \xi^\rho+Y_{\mu\rho}\partial_\nu \xi^\rho,
\end{align}$$

which yields the expressions for $B_{\mu\nu}^{(s)IJ}$ and $\mathscr B_{\mu\nu}$.

### Cartan magic formula for the fields used later

For any differential form $\alpha$,

$$\begin{align}
\mathcal L_\xi \alpha=\iota_\xi \mathrm d\alpha+\mathrm d(\iota_\xi \alpha).
\end{align}$$

Applied to the gauge field,

$$\begin{align}
\mathcal L_\xi A^{IJ}
& =\iota_\xi \mathrm dA^{IJ}+\mathrm d(\iota_\xi A^{IJ}) \\
& =\iota_\xi\left(F^{IJ}+A^I{}_K\wedge A^{KJ}-\kappa^2\bar\psi \gamma^{IJ}\wedge \psi\right)+D^A(\iota_\xi A^{IJ}) \\
& =\iota_\xi F^{IJ}+D^A(\iota_\xi A^{IJ})+\kappa^2 \bar\psi \gamma^{IJ}\iota_\xi \psi.
\end{align}$$

Similarly, for the gravitino,

$$\begin{align}
\mathcal L_\xi \bar\psi
& =\iota_\xi \mathrm d\bar\psi+\mathrm d(\iota_\xi \bar\psi) \\
& =\frac1\kappa \iota_\xi \mathscr{\bar F}
+\mathscr D^A(\iota_\xi \bar\psi)
+\bar\psi \gamma_{IJ}\iota_\xi A^{IJ}.
\end{align}$$

These are the identities used in the charge derivation.

## presymplectic potential and symplectic form

### presymplectic potential from the action variation

From the variation derived above,

$$\begin{align}
16\pi \theta & =\int _{\Sigma}\braket{ \mathbb{B}\wedge \delta \mathbb{A} } \\
 & =\int _{\Sigma}B^{(s)}_{IJ}\wedge \delta A^{IJ}+4\kappa \mathscr{\bar{B}}\wedge \delta \psi \\
 & =\int _{\Sigma} B^{(s)}_{ab}\wedge \delta\omega ^{ab}+\frac{2}{\ell}B^{(s)a} \wedge \delta e^{a}+4\kappa \mathscr{\bar{B}}\wedge \delta \psi \\
 & \approx \int _{\Sigma} \frac{1}{2(\alpha ^{2}+\beta ^{2})}(\beta \delta ^{cd}_{ab}-\alpha \epsilon _{ab}^{~~~~cd})\left(R_{cd}+\frac{1}{\ell ^{2}}e_{c}\wedge e_{d}-\frac{\kappa ^{2}}{2}\bar{\psi}\wedge \gamma _{cd}\psi\right)\wedge \delta \omega ^{ab} \\
 & +\frac{4\kappa ^{2}}{\alpha ^{2}+\beta ^{2}}\left(\mathscr{D}^{\omega}\bar{\psi}-\frac{1}{2\ell}e^{a}\wedge \bar{\psi}\gamma _{a}\right)(\beta-\alpha \gamma ^{5})\wedge \delta \psi \\
 & = \frac{3}{G\Lambda}\int _{\Sigma}\left(R^{ab}-\frac{\Lambda}{3}e^{[a}\wedge e^{b]}-\frac{\kappa ^{2}}{2}\bar{\psi}\gamma ^{ab}\wedge \psi\right)\left(\gamma \delta ^{cd}_{ab}-\frac{1}{2}\epsilon ^{cd}_{~~~~ab}\right)\wedge \delta \omega _{cd} \\
 & +\frac{3}{G\Lambda}4\kappa ^{2}\int _{\Sigma}\left(\mathrm{d}\bar{\psi}-\frac{1}{4}\omega ^{ab}\wedge \bar{\psi}\gamma _{ab}-\frac{1}{2\ell}e^{a}\wedge \bar{\psi}\gamma _{a}\right)(\gamma -\gamma ^{5})\wedge \delta \psi
\end{align}$$

This is exactly the expression quoted in the note.

Expand the curvature

$$\begin{align}
R^{ab}=\mathrm d\omega^{ab}+\omega^a{}_f\wedge \omega^{fb}.
\end{align}$$

Then

$$\begin{align}
\int _{\Sigma}R^{ab}\wedge X_{ab} & =\int _{\Sigma}\mathrm{d}\left(\omega ^{ab}\wedge X_{ab}\right)-\int _{\Sigma}\omega ^{ab}\wedge \mathrm{d}X_{ab}+\int _{\Sigma}\omega ^{a}_{~f}\wedge \omega ^{fb}\wedge X_{ab}
\end{align}$$

The total derivative becomes the boundary term $\int_{\partial \Sigma} \omega^{ab}\wedge X_{ab}$, and the remaining bulk terms can be rearranged to give the final expression for $\theta_\Sigma$.

$$\begin{align}
\theta _{\partial \Sigma} & =\frac{3}{16\pi G\Lambda}\int _{\partial \Sigma} \omega ^{ab}\wedge \left(\gamma \delta ^{cd}_{ab}- \frac{1}{2}\epsilon ^{cd}_{~~~~ab}\right)\wedge \delta \omega _{cd} \\
 & +\frac{3}{\Lambda \ell} \int _{\partial \Sigma}\bar{\psi}(\gamma-\gamma ^{5})\wedge \delta \psi \\
\theta _{\Sigma} & =-\frac{1}{16\pi G}\int _{\Sigma} e^{a}\wedge e^{b}\left(\gamma \delta ^{cd}_{ab}-\frac{1}{2}\epsilon ^{cd}_{~~~~ab}\right)\wedge \delta \omega _{cd} \\
 & +\frac{3}{16\pi G\Lambda}\int _{\Sigma}\left(\omega ^{af}\wedge \omega _{f}^{~b}-\frac{\kappa ^{2}}{2}\bar{\psi}\gamma ^{ab}\wedge \psi\right)\left(\gamma \delta ^{cd}_{ab}-\frac{1}{2}\epsilon ^{cd}_{~~~~ab}\right)\wedge \delta \omega _{cd} \\
 & +\frac{3}{G\Lambda}\frac{16\pi G}{\ell}\int _{\Sigma}\left(-\frac{1}{4}\omega ^{ab}\wedge \bar{\psi}\gamma _{ab}-\frac{1}{2\ell}e^{a}\wedge \bar{\psi}\gamma _{a}\right)\left(\gamma-\gamma ^{5}\right)\wedge \delta \psi .
\end{align}$$

### symplectic two-form

By definition

$$\begin{align}
16\pi \Omega=\delta(16\pi \Theta)=\int_\Sigma \delta \mathbb B\wedge \delta \mathbb A.
\end{align}$$

Expanding components gives

$$\begin{align}
16\pi \Omega
=\int_\Sigma \delta B_{IJ}^{(s)}\wedge \delta A^{IJ}+4\kappa \delta \mathscr{\bar B}\wedge \delta \psi.
\end{align}$$

This follows directly because $\delta^2=0$ and only the antisymmetrized field-space wedge remains.

## Noether charges

### Noether charge for gauge symmetries

The general definition is

$$\begin{align}
\delta \mathscr H[*]=-\iota_*\Omega.
\end{align}$$

For a gauge parameter $\Upsilon$,

$$\begin{align}
\delta \mathscr{H}[\Upsilon] & =-\frac{1}{16\pi}\int _{\Sigma}\delta _{\Upsilon}\mathbb{B}\wedge \delta \mathbb{A}+\delta \mathbb{B}\wedge \delta _{\Upsilon} \mathbb{A} \\
 & =-\frac{1}{16\pi}\int _{\Sigma}\left(-i[\Upsilon,\mathbb{B}]\right)\wedge \delta \mathbb{A}+\delta \mathbb{B}\wedge \mathbb{D}^{\mathbb{A}}\Upsilon \\
 & =-\frac{1}{16\pi}\int _{\Sigma}\left(-i[\Upsilon,\mathbb{B}]\right)\wedge \delta \mathbb{A}+\delta \mathbb{B}\wedge \mathrm{d}\Upsilon -i\delta \mathbb{B}\wedge [\mathbb{A},\Upsilon] \\
 & =-\frac{1}{16\pi}\int _{\Sigma}\left(-i[\Upsilon,\mathbb{B}]\right)\wedge \delta \mathbb{A}+\mathrm{d}(\delta \mathbb{B}\Upsilon) -\mathrm{d}(\delta \mathbb{B})\Upsilon -i\delta \mathbb{B}\wedge [\mathbb{A},\Upsilon] \\
 & =-\frac{1}{16\pi}\int _{\Sigma}\mathrm{d}\left(\delta \mathbb{B}\Upsilon\right)-\delta\left(\mathbb{D}^{\mathbb{A}}\mathbb{B}\right)\Upsilon \\
 & \approx -\frac{1}{16\pi}\int _{\partial \Sigma}\delta \mathbb{B}\Upsilon
\end{align}$$

in the 5th line we used the definition of the covariant derivative, and in the last line we used the equations of motion $\mathbb{D}^{\mathbb{A}}\mathbb{B}=0$.

assume the gauge parameter $\displaystyle{\Upsilon}$ is field-independent, so $\delta$ does not act on it, we have

$$\begin{align}
\mathscr{H}[\Upsilon] & =-\frac{1}{16\pi}\int _{\partial \Sigma}\mathbb{B}\Upsilon
\end{align}$$

projecting onto the three bosonic and fermionic paeameters gives

$$\begin{align}
\mathscr H_L[\lambda] & =-\frac1{16\pi}\int_S B^{(s)}_{ab}\lambda^{ab}, \\
\mathscr H_T[\zeta] & =-\frac1{8\pi}\int_S B^{(s)}_a \zeta^a, \\
\mathscr H_S[\epsilon] & =-\frac1{4\pi}\int_S \mathscr{\bar B}\epsilon.
\end{align}$$

### Noether charge for diffeomorphisms

Starting from the symplectic form,

$$\begin{align}
\delta \mathscr{H}[\xi] & =\frac{1}{16\pi}\int _{\Sigma}\delta \mathbb{B}\wedge \mathcal L_\xi \mathbb{A}+\delta \mathbb{A}\wedge \mathcal L_\xi \mathbb{B} \\
 & =\frac{1}{16\pi}\int _{\Sigma} \delta\left(\mathbb{B}\wedge \mathcal{L}_{\xi}\mathbb{A}\right)-\mathbb{B}\wedge \mathcal{L}_{\xi}\delta \mathbb{A}+\delta \mathbb{A}\wedge \mathcal{L}_{\xi}\mathbb{B} \\
 & =\frac{1}{16\pi}\int _{\Sigma}\delta\left(\mathbb{B}\wedge \mathcal{L}_{\xi}\mathbb{A}\right)-\mathcal{L}_{\xi}\left(\mathbb{B}\wedge \delta \mathbb{A}\right) \\
 & =\frac{1}{16\pi}\int _{\Sigma}\delta\left(\mathbb{B}\wedge \mathcal{L}_{\xi}\mathbb{A}\right)-\mathrm{d}\iota _{\xi}\left(\mathbb{B}\wedge \delta \mathbb{A}\right)
\end{align}$$

If $\xi$ is tangent to $\partial \Sigma$, the pullback of these boundary contractions vanishes, so

$$\begin{align}
\mathscr{H}[\xi] & =\frac{1}{16\pi}\int _{\Sigma}\mathbb{B}\wedge \mathcal{L}_{\xi}\mathbb{A} \\
 & =\frac{1}{16\pi}\int _{\Sigma} (B^{(s)}_{IJ}\wedge \mathcal{L}_{\xi}A^{IJ}+4\kappa\mathscr{\bar{B}}\wedge \mathcal{L}_{\xi}\psi)
\end{align}$$

Insert the Cartan formulas derived earlier:

$$\begin{align}
\mathcal{L}_{\xi}A^{IJ} & =\iota _{\xi}F^{IJ}+D^{A}(\iota _{\xi}A^{IJ})+\kappa ^{2}\bar{\psi}\gamma ^{IJ}\iota _{\xi}\psi \\
\mathcal{L}_{\xi}\bar{\psi} & = \frac{1}{\kappa}\iota _{\xi}\mathscr{\bar{F}}+\mathscr{D}^{A}(\iota _{\xi}\bar{\psi})+\bar{\psi}\gamma _{IJ}\iota _{\xi}A^{IJ}
\end{align}$$

Then

$$\begin{align}
\mathscr{H}[\xi] & =\frac{1}{16\pi}\int _{\Sigma} B^{(s)}_{IJ}\wedge \iota _{\xi}F^{(s)IJ}+B^{(s)}_{IJ}\wedge D^{A}(\iota _{\xi}A^{IJ})+\kappa ^{2}B^{(s)IJ}\wedge\bar{\psi}\gamma ^{IJ}\iota _{\xi}\psi \\
 & +\frac{4\kappa}{16\pi}\int _{\Sigma} \mathscr{\bar{B}}\wedge \frac{1}{\kappa}\iota _{\xi} \mathscr{\bar{F}}+\mathscr{\bar{B}}\wedge \mathscr{D}^{A}(\iota _{\xi}\bar{\psi})+\mathscr{\bar{B}}\wedge \bar{\psi}\gamma _{IJ}\iota _{\xi}A^{IJ} \\
 & \approx\frac{1}{16\pi} \int _{\Sigma} B^{(s)}_{Ij}\wedge \iota _{\xi}F^{(s)IJ}+4\mathscr{\bar{B}}\wedge \iota _{\xi}\mathscr{\bar{F}} \\
 & +\frac{1}{16\pi} \int _{\partial\Sigma} B^{(s)}_{IJ}\wedge \iota _{\xi}A^{IJ}+4\kappa \mathscr{\bar{B}}\wedge \iota _{\xi}\bar{\psi} \\
\end{align}$$

we integrate by parts and use the $\displaystyle{\mathbb{D^{A}B}=0}$

$$\begin{align}
\mathscr H[\xi]=\mathscr H_\Sigma[\xi]+\mathscr H_{\partial \Sigma}[\xi].
\end{align}$$

The bulk piece equals one half of the Lagrangian contracted with $\xi$ because the Lagrangian density is linear in $B\wedge F$ and $\mathscr{\bar B}\wedge \mathscr F$.

If $\xi$ is tangent to $\Sigma$, then $\iota_\xi$ annihilates the pulled-back top form on $\Sigma$, so the bulk contribution vanishes.

## algebra of charges

### definition of the Poisson bracket

The note uses

$$\begin{align}
\{\mathscr H[\Xi_1],\mathscr H[\Xi_2]\}
=\frac12\left(\delta_{\Xi_1}\mathscr H[\Xi_2]-\delta_{\Xi_2}\mathscr H[\Xi_1]\right).
\end{align}$$

This antisymmetrized definition ensures graded antisymmetry and avoids double counting.

### Lorentz-Lorentz bracket

Start from

$$\begin{align}
\mathscr H_L[\lambda]=-\frac1{16\pi}\int_{\partial \Sigma} B^{(s)}_{ab}\lambda^{ab}.
\end{align}$$

Then

$$\begin{align}
\delta_{\lambda_1}\mathscr H_L[\lambda_2] & =-\frac1{16\pi}\int_{\partial \Sigma} (\delta_{\lambda_1}B^{(s)}_{ab})\lambda_2^{ab},
\end{align}$$

because the parameters are fixed. Using adjoint transformation,

$$\begin{align}
\delta_{\lambda_1}B^{(s)}_{ab} =-\lambda_{1\,a}{}^{c}B^{(s)}_{cb}-\lambda_{1\,b}{}^{c}B^{(s)}_{ac},
\end{align}$$

we get

$$\begin{align}
\delta_{\lambda_1}\mathscr H_L[\lambda_2]=-\frac1{16\pi}\int_{\partial \Sigma} B^{(s)}_{ab}\left(\lambda_1{}^{a}{}_{c}\lambda_2^{cb}-\lambda_1{}^{b}{}_{c}\lambda_2^{ca}\right).
\end{align}$$

Antisymmetrizing in $1\leftrightarrow 2$ yields

$$\begin{align}
\{\mathscr H_L[\lambda_1],\mathscr H_L[\lambda_2]\}=-\frac1{16\pi}\int_{\partial \Sigma} B^{(s)}_{ab}\lambda_{12}^{ab} =\mathscr H_L[\lambda_{12}],
\end{align}$$

with

$$\begin{align}
\lambda_{12}^{ab} =\lambda_{1\,c}{}^{a}\lambda_2^{cb}-\lambda_{2\,c}{}^{a}\lambda_1^{cb}.
\end{align}$$

### Lorentz-translation bracket

Using $\delta_\lambda B^{(s)a}=-\lambda^a{}_b B^{(s)b}$,

$$\begin{align}
\delta_{\lambda_1}\mathscr H_T[\zeta_2] & =-\frac1{8\pi}\int_{\partial \Sigma}(\delta_{\lambda_1}B^{(s)}_a)\zeta_2^a \\
& =\frac1{8\pi}\int_{\partial \Sigma}\lambda_{1\,a}{}^{b}B_b^{(s)}\zeta_2^a \\
& =-\frac1{8\pi}\int_{\partial \Sigma}B_a^{(s)}(\lambda_1{}^{a}{}_{b}\zeta_2^b).
\end{align}$$

Therefore

$$\begin{align}
\{\mathscr H_L[\lambda_1],\mathscr H_T[\zeta_2]\}=\mathscr H_T[\zeta_{12}],\qquad\zeta_{12}^a=\lambda_1{}^{a}{}_{b}\zeta_2^b.
\end{align}$$

### Lorentz-supersymmetry bracket

Since $\delta_\lambda \mathscr{\bar B}=\frac14 \mathscr{\bar B}\gamma_{ab}\lambda^{ab}$,

$$\begin{align}
\delta_{\lambda_1}\mathscr H_S[\epsilon_2] & =-\frac1{4\pi}\int_{\partial \Sigma}\delta_{\lambda_1}\mathscr{\bar B}\,\epsilon_2 \\
& =-\frac1{4\pi}\int_{\partial \Sigma}\mathscr{\bar B}\left(\frac14\gamma_{ab}\lambda_1^{ab}\epsilon_2\right).
\end{align}$$

Thus

$$\begin{align}
\{\mathscr H_L[\lambda_1],\mathscr H_S[\epsilon_2]\}=\mathscr H_S[\epsilon_{12}], \qquad \epsilon_{12}=\frac14 \lambda_1^{ab}\gamma_{ab}\epsilon_2.
\end{align}$$

### translation-translation bracket

Use $\delta_{\zeta_1}B^{(s)ab}=B^{(s)a}\zeta_1^b-B^{(s)b}\zeta_1^a$. Then

$$\begin{align}
\delta_{\zeta_1}\mathscr H_T[\zeta_2]& =-\frac1{8\pi}\int_{\partial \Sigma}\delta_{\zeta_1}B_a^{(s)}\zeta_2^a \\
& =-\frac1{8\pi}\int_{\partial \Sigma}B_{ab}^{(s)}\zeta_1^b\zeta_2^a \\
& =-\frac1{16\pi}\int_{\partial \Sigma}B_{ab}^{(s)}(\zeta_1^b\zeta_2^a-\zeta_1^a\zeta_2^b).
\end{align}$$

Therefore

$$\begin{align}
\{\mathscr H_T[\zeta_1],\mathscr H_T[\zeta_2]\}=\mathscr H_L[\lambda_{12}],\qquad\lambda_{12}^{ab}=-(\zeta_1^a\zeta_2^b-\zeta_2^a\zeta_1^b).
\end{align}$$

### translation-supersymmetry bracket

Using $\delta_\zeta \mathscr{\bar B}=\frac12 \mathscr{\bar B}\gamma_a \zeta^a$,

$$\begin{align}
\delta_{\zeta_1}\mathscr H_S[\epsilon_2]& =-\frac1{4\pi}\int_{\partial \Sigma}\left(\frac12 \mathscr{\bar B}\gamma_a \zeta_1^a\right)\epsilon_2 \\
& =-\frac1{4\pi}\int_{\partial \Sigma}\mathscr{\bar B}\left(\frac12 \zeta_1^a\gamma_a \epsilon_2\right),
\end{align}$$

hence

$$\begin{align}
\{\mathscr H_T[\zeta_1],\mathscr H_S[\epsilon_2]\}=\mathscr H_S[\epsilon_{12}],\qquad\epsilon_{12}=\frac12 \zeta_1^a\gamma_a \epsilon_2.
\end{align}$$

### supersymmetry-supersymmetry bracket

Start from

$$\begin{align}
\mathscr H_S[\epsilon]=-\frac1{4\pi}\int_{\partial \Sigma}\mathscr{\bar B}\epsilon.
\end{align}$$

Then

$$\begin{align}
\delta_{\epsilon_1}\mathscr H_S[\epsilon_2]& =-\frac1{4\pi}\int_{\partial \Sigma}\delta_{\epsilon_1}\mathscr{\bar B}\,\epsilon_2 \\
& =-\frac1{4\pi}\int_{\partial \Sigma}\left(-\frac14\bar\epsilon_1\gamma^{ab}B_{ab}^{(s)}-\frac12 \bar\epsilon_1 \gamma_a B^{(s)a}\right)\epsilon_2 \\
& =\frac1{16\pi}\int_{\partial \Sigma}B_{ab}^{(s)}\bar\epsilon_1\gamma^{ab}\epsilon_2+\frac1{8\pi}\int_{\partial \Sigma}B_a^{(s)}\bar\epsilon_1\gamma^a\epsilon_2.
\end{align}$$

Antisymmetrizing in $(1,2)$ gives

$$\begin{align}
\{\mathscr H_S[\epsilon_1],\mathscr H_S[\epsilon_2]\}=\mathscr H_L[\lambda_{12}]+\mathscr H_T[\zeta_{12}],
\end{align}$$

with

$$\begin{align}
\lambda_{12}^{ab}=\bar\epsilon_1\gamma^{ab}\epsilon_2, \qquad\zeta_{12}^{a}=\bar\epsilon_1\gamma^{a}\epsilon_2.
\end{align}$$

### on-shell reduction

On shell,

$$\begin{align}
B_a^{(s)}=\frac1\beta F_a^{(s)}=0,
\end{align}$$

so

$$\begin{align}
\mathscr H_T[\zeta]=0.
\end{align}$$

Therefore the charge algebra reduces to the Lorentz plus supersymmetry sector, namely the $\mathrm{Osp}(1|4)$ superalgebra with no central extension.

## diffeomorphism algebra

The diffeomorphism charge is

$$\begin{align}
\mathscr H_D[\xi]=\frac1{16\pi}\int_{\partial \Sigma}B_{IJ}^{(s)}\iota_\xi A^{IJ}+\frac{\kappa}{4\pi}\int_{\partial \Sigma}\mathscr{\bar B}\iota_\xi \psi.
\end{align}$$

Because Lie derivatives satisfy

$$\begin{align}
[\mathcal L_{\xi_1},\mathcal L_{\xi_2}]=\mathcal L_{[\xi_1,\xi_2]},
\end{align}$$

the Hamiltonian generators inherit

$$\begin{align}
\{\mathscr H_D[\xi_1],\mathscr H_D[\xi_2]\}=\mathscr H_D[[\xi_1,\xi_2]].
\end{align}$$

For the mixed brackets, a gauge parameter transforms as a spacetime tensor/spinor under diffeomorphisms:

$$\begin{align}
\delta_\xi \lambda=\mathcal L_\xi \lambda, \qquad\delta_\xi \zeta=\mathcal L_\xi \zeta, \qquad\delta_\xi \epsilon=\mathcal L_\xi \epsilon.
\end{align}$$

Substituting into the charge definitions yields

$$\begin{align}
\{\mathscr H_D[\xi],\mathscr H_L[\lambda]\} & =-\mathscr H_L[\mathcal L_\xi \lambda], \\
\{\mathscr H_D[\xi],\mathscr H_T[\zeta]\} & =\mathscr H_T[\mathcal L_\xi \zeta], \\
\{\mathscr H_D[\xi],\mathscr H_S[\epsilon]\} & =\mathscr H_S[\mathcal L_\xi \epsilon].
\end{align}$$

The sign in the Lorentz line follows from the convention chosen in $\mathscr H_L$.

## re-derivation in Noether theorem framework

### fields, symplectic potential, and symplectic form

the action reads

$$\begin{align}
16\pi S & =\int_M \left\langle \mathbb B\wedge \mathbb F-\frac{\beta}{2}\mathbb B\wedge \mathbb B-\frac{\alpha}{4}\mathbb B\wedge \star \mathbb B\right\rangle \\
\end{align}$$

The independent fields are

$$\begin{align}
\phi=(\mathbb A,\mathbb B)\equiv (A^{IJ},\psi; B^{(s)IJ},\mathscr B).
\end{align}$$

From the variation of the action derived above,

$$\begin{align}
16\pi \delta S & =\int _{M}\braket{ \delta \mathbb{B}\wedge \mathbb{F}+\mathbb{B}\wedge \delta \mathbb{F}-\beta \delta \mathbb{B}\wedge \mathbb{B}-\frac{\alpha}{2}\delta \mathbb{B}\wedge \star \mathbb{B} } \\
 & =\int _{M}\braket{ \delta \mathbb{B}\wedge\left( \mathbb{F-\beta \mathbb{B-\frac{\alpha}{2}\star \mathbb{B}}} \right) }+\int _{M}\braket{ \mathbb{B}\wedge \mathbb{D}^{\mathbb{A}}\delta \mathbb{A} } \\
 & =\int_M \left\langle \delta \mathbb B\wedge \left(\mathbb F-\beta \mathbb B-\frac{\alpha}{2}\star \mathbb B\right)\right\rangle
-\int_M \langle \mathbb D^{\mathbb A}\mathbb B\wedge \delta \mathbb A\rangle+\int_{\partial M}\langle \mathbb B\wedge \delta \mathbb A\rangle.
\end{align}$$

Therefore the symplectic potential on a Cauchy slice $\Sigma$ is

$$\begin{align}
16\pi \theta & =\int_\Sigma \langle \mathbb B\wedge \delta \mathbb A\rangle \\
& =\int_\Sigma B^{(s)}_{IJ}\wedge \delta A^{IJ}+4\kappa \mathscr{\bar B}\wedge \delta \psi.
\end{align}$$

Taking a field-space exterior derivative,

$$\begin{align}
16\pi \omega & =16\pi \delta \theta \\
& =\int_\Sigma \delta B^{(s)}_{IJ}\wedge \delta A^{IJ}+4\kappa \delta \mathscr{\bar B}\wedge \delta \psi.
\end{align}$$

### gauge symmetries as vector fields on configuration space

For a field-independent gauge parameter

$$\begin{align}
\Upsilon=\frac12 \lambda^{ab}M_{ab}+\zeta^a P_a+\bar\epsilon Q,
\end{align}$$

the infinitesimal transformations are

$$\begin{align}
X_\Upsilon \cdot \delta \mathbb A & = \delta_\Upsilon \mathbb A = \mathbb D^{\mathbb A}\Upsilon, \\
X_\Upsilon \cdot \delta \mathbb B & = \delta_\Upsilon \mathbb B = -i[\Upsilon,\mathbb B].
\end{align}$$

In components,

$$\begin{align}
\delta_\lambda \omega^{ab} & =D^\omega \lambda^{ab}, &
\delta_\lambda e^a & =-\lambda^a{}_b e^b, &
\delta_\lambda \bar\psi & =-\frac14 \bar\psi \gamma_{ab}\lambda^{ab}, \\
\delta_\zeta \omega^{ab} & =\frac1\ell(e^a \zeta^b-e^b\zeta^a), &
\delta_\zeta e^a & =\ell D^\omega \zeta^a, &
\delta_\zeta \bar\psi & =-\frac12 \bar\psi \gamma_a \zeta^a, \\
\delta_\epsilon \omega^{ab} & =\kappa \bar\epsilon \gamma^{ab}\psi, &
\delta_\epsilon e^a & =-\ell \kappa \bar\epsilon \gamma^a \psi, &
\delta_\epsilon \bar\psi & =\frac1\kappa\left(\mathscr D^\omega \bar\epsilon-\frac1{2\ell}e^a \bar\epsilon \gamma_a\right).
\end{align}$$

The corresponding transformations of $\mathbb B$ are

$$\begin{align}
\delta_\lambda B^{(s)ab} & =-[\lambda,B^{(s)}]^{ab}, &
\delta_\lambda B^{(s)a} & =-\lambda^a{}_b B^{(s)b}, &
\delta_\lambda \mathscr{\bar B} & =\frac14 \mathscr{\bar B}\gamma_{ab}\lambda^{ab}, \\
\delta_\zeta B^{(s)ab} & =B^{(s)a}\zeta^b-B^{(s)b}\zeta^a, &
\delta_\zeta B^{(s)a} & =B^{(s)ab}\zeta_b, &
\delta_\zeta \mathscr{\bar B} & =\frac12 \mathscr{\bar B}\gamma_a\zeta^a, \\
\delta_\epsilon B^{(s)a} & =-\bar\epsilon \gamma^a \mathscr B, &
\delta_\epsilon B^{(s)ab} & =\bar\epsilon \gamma^{ab}\mathscr B, &
\delta_\epsilon \mathscr{\bar B} & =-\frac14 \bar\epsilon \gamma^{ab}B^{(s)}_{ab}-\frac12 \bar\epsilon \gamma_a B^{(s)a}.
\end{align}$$

we write

$$\begin{align}
X_{\Upsilon} & =\int \mathrm{d}^{4}x\sqrt{ -g }\left(\delta _{\Upsilon} \mathbb{A} \frac{\delta}{\delta \mathbb{A}}+ \delta _{\Upsilon} \mathbb{B} \frac{\delta}{\delta \mathbb{B}}\right) \\
 & =\int \mathrm{d}^{4}x\sqrt{ -g }\left(\mathbb{D}^{\mathbb{A}} \Upsilon \frac{\delta}{\delta \mathbb{A}}-i[\Upsilon,\mathbb{B}] \frac{\delta}{\delta \mathbb{B}}\right)
\end{align}$$

### Noether charges for gauge symmetries

$$\begin{align}
X_{\Upsilon}\cdot \delta S & =\int _{M}\braket{ \delta _{\Upsilon}\mathbb{B}\wedge\left(\mathbb{F}-\beta \mathbb{B}-\frac{\alpha}{2}\star \mathbb{B}\right) } +\int _{M}\braket{ \mathbb{B}\wedge \delta _{\Upsilon}\mathbb{F} } \\
 & =\int _{M}\braket{ -i[\Upsilon,\mathbb{B}]\wedge\left( \mathbb{F}-\beta \mathbb{B}-\frac{\alpha}{2}\star \mathbb{B} \right) }+\int _{M}\braket{ \mathbb{B}\wedge -i[\Upsilon,\mathbb{F}] } \\
 & =\frac{i\alpha}{2}\int _{M}\braket{ [\Upsilon,\mathbb{B}]\wedge \star \mathbb{B} }
\end{align}$$

for bosonic gauge transformations,

$$\begin{align}
X_{\Upsilon}\cdot \delta S & =\frac{i\alpha}{2}\int _{M}\braket{ [\Upsilon,\mathbb{B}]\wedge \star \mathbb{B} } =0
\end{align}$$

and for fermionic gauge transformations

$$\begin{align}
X_{\Upsilon}\cdot \delta S & =\int _{M} 2\alpha B^{(s)a}\wedge \bar{\epsilon}\gamma _{a}\gamma ^{5}\mathscr{B}\approx 0
\end{align}$$

Hence

$$\begin{align}
\alpha _{\Upsilon}\approx 0
\end{align}$$

Thus all gauge charges are obtained directly from

$$\begin{align}
H_\Upsilon & \approx X_\Upsilon \cdot \theta \\
 & =\frac{1}{16\pi}\int _{\Sigma}\braket{ \mathbb{B}\wedge \delta _{\Upsilon}\mathbb{A} } \\
 & =\frac{1}{16\pi}\int _{\Sigma}\braket{ \mathbb{B}\wedge \mathbb{D}^{\mathbb{A}}\Upsilon } \\
 & =\frac{1}{16\pi}\int _{\Sigma}\mathrm{d}\braket{ \mathbb{B}\Upsilon }-\braket{ \mathbb{D}^{\mathbb{A}}\mathbb{B}\Upsilon } \\
 & \approx\frac{1}{16\pi}\int _{\partial \Sigma}\braket{ \mathbb{B}\Upsilon }
\end{align}$$

Projecting onto the three independent parameters gives

$$\begin{align}
H_{L}[\lambda] & =\frac{1}{16\pi}\int _{\partial \Sigma}B^{(s)}_{ab}\lambda ^{ab} \\
H_{T}[\zeta] & =\frac{1}{8\pi}\int _{\partial \Sigma}B^{(s)}_{a}\zeta ^{a} \\
H_{S}[\epsilon] & =\frac{1}{4\pi}\int _{\partial \Sigma}\mathscr{\bar B}\epsilon
\end{align}$$

### Noether charge for diffeomorphisms

For a diffeomorphism generated by a field-independent vector field $\xi$,

$$\begin{align}
X_{\xi} & =\int \mathrm{d}^{4}x\sqrt{ -g }\left(\mathcal{L}_{\xi}\mathbb{A} \frac{\delta}{\delta \mathbb{A}}+\mathcal{L}_{\xi}\mathbb{B} \frac{\delta}{\delta \mathbb{B}}\right)
\end{align}$$

we have

$$\begin{align}
\alpha_\xi=\int_\Sigma \iota_\xi L.
\end{align}$$

Therefore

$$\begin{align}
H_D[\xi] & = X_\xi \cdot \theta - \alpha_\xi \\
 & =\frac{1}{16\pi}\int _{\Sigma}\braket{ \mathbb{B}\wedge \mathcal{L}_{\xi}\mathbb{A} }-\int_\Sigma \iota_\xi \mathcal{L} \\
 & =\frac{1}{16\pi}\int _{\Sigma}B^{(s)}_{IJ}\wedge \mathcal{L}_{\xi}A^{IJ}+\frac{\kappa}{4\pi}\int _{\Sigma} \mathscr{\bar B}\wedge \mathcal{L}_{\xi}\psi-\int_\Sigma \iota_\xi L
\end{align}$$

Now use the Cartan-type identities

$$\begin{align}
\mathcal L_\xi A^{IJ}
& =\iota_\xi F^{IJ}+D^A(\iota_\xi A^{IJ})+\kappa^2 \bar\psi \gamma^{IJ}\iota_\xi \psi, \\
\mathcal L_\xi \bar\psi
& =\frac1\kappa \iota_\xi \mathscr{\bar F}+\mathscr D^A(\iota_\xi \bar\psi)+\bar\psi \gamma_{IJ}\iota_\xi A^{IJ}.
\end{align}$$

Substituting them into $H_D[\xi]$ gives

$$\begin{align}
H_D[\xi] & =\frac{1}{16\pi}\int_\Sigma B^{(s)}_{IJ}\wedge \iota_\xi F^{IJ} +\frac{1}{16\pi}\int_\Sigma B^{(s)}_{IJ}\wedge D^A(\iota_\xi A^{IJ}) \\
& \quad +\frac{\kappa}{4\pi}\int_\Sigma \mathscr{\bar B}\wedge \iota_\xi \mathscr F +\frac{\kappa}{4\pi}\int_\Sigma \mathscr{\bar B}\wedge \mathscr D^A(\iota_\xi \psi) \\
& \quad +\frac{\kappa^2}{16\pi}\int_\Sigma B^{(s)}_{IJ}\wedge \bar\psi \gamma^{IJ}\iota_\xi \psi -\int_\Sigma \iota_\xi L.
\end{align}$$

Integrating the covariant derivative terms by parts,

$$\begin{align}
\int_\Sigma B^{(s)}_{IJ}\wedge D^A(\iota_\xi A^{IJ})& =\int_{\partial \Sigma}B^{(s)}_{IJ}\iota_\xi A^{IJ}-\int_\Sigma (D^A B^{(s)}_{IJ})\iota_\xi A^{IJ}, \\
\int_\Sigma \mathscr{\bar B}\wedge \mathscr D^A(\iota_\xi \psi)& =\int_{\partial \Sigma}\mathscr{\bar B}\iota_\xi \psi-\int_\Sigma (\mathscr D^A \mathscr{\bar B})\iota_\xi \psi.
\end{align}$$

Using the field equations

$$\begin{align}
D^A B^{(s)IJ}+\kappa \bar\psi \gamma^{IJ}\mathscr B=0, \qquad \mathscr D^A \mathscr{\bar B}+\kappa \bar\psi \gamma_{IJ}B^{(s)IJ}=0,
\end{align}$$

all remaining bulk terms combine precisely into $\iota_\xi L$ and cancel against $-\int_\Sigma \iota_\xi L$. Therefore the Noether charge reduces on shell to a pure boundary term:

$$\begin{align}
H_D[\xi] \approx \frac{1}{16\pi}\int_{\partial \Sigma}B^{(s)}_{IJ}\iota_\xi A^{IJ}+\frac{\kappa}{4\pi}\int_{\partial \Sigma}\mathscr{\bar B}\iota_\xi \psi.
\end{align}$$

This is the diffeomorphism charge in the same Noether normalization.

### algebra of Noether charges

the Poisson bracket is read from the Hamiltonian vector fields. Since the Hamiltonian vector field of $H_\lambda$ is precisely the symmetry vector field $X_\lambda$, we have

$$\begin{align}
\left\{H_{\lambda_{1}},H_{\lambda_{2}}\right\} & =X_{\lambda_{1}}\cdot X_{\lambda_{2}}\cdot \omega \\
 & =X_{\lambda_{2}}\cdot \delta H_{\lambda_{1}}
\end{align}$$

#### Lorentz-Lorentz

$$\begin{align}
\delta_{\lambda_2}H_L[\lambda_1] & =\frac{1}{16\pi}\int_{\partial \Sigma}\delta_{\lambda_2}B^{(s)}_{ab}\,\lambda_1^{ab} \\
& =\frac{1}{16\pi}\int_{\partial \Sigma}\left(-\lambda_{2\,a}{}^c B^{(s)}_{cb}-\lambda_{2\,b}{}^c B^{(s)}_{ac}\right)\lambda_1^{ab} \\
& =\frac{1}{16\pi}\int_{\partial \Sigma}B^{(s)}_{ab}\left(\lambda_{2\,c}{}^a\lambda_1^{cb}-\lambda_{2\,c}{}^b\lambda_1^{ca}\right).
\end{align}$$

Defining

$$\begin{align}
\lambda_{12}^{ab}:=\lambda_{1\,c}{}^a\lambda_2^{cb}-\lambda_{2\,c}{}^a\lambda_1^{cb},
\end{align}$$

we get

$$\begin{align}
\{H_L[\lambda_1],H_L[\lambda_2]\}=H_L[\lambda_{12}].
\end{align}$$

#### Lorentz-translation

$$\begin{align}
\delta_{\lambda_1}H_T[\zeta_2]& =\frac{1}{8\pi}\int_{\partial \Sigma}\delta_{\lambda_1}B^{(s)}_a\, \zeta_2^a \\
& =-\frac{1}{8\pi}\int_{\partial \Sigma}\lambda_{1\,a}{}^b B^{(s)}_b \zeta_2^a \\
& =\frac{1}{8\pi}\int_{\partial \Sigma}B^{(s)}_a(\lambda_1{}^a{}_b \zeta_2^b).
\end{align}$$

Thus

$$\begin{align}
\{H_L[\lambda_1],H_T[\zeta_2]\}=H_T[\zeta_{12}], \qquad
\zeta_{12}^a=\lambda_1{}^a{}_b \zeta_2^b.
\end{align}$$

#### Lorentz-supersymmetry

$$\begin{align}
\delta_{\lambda_1}H_S[\epsilon_2]
& =\frac{1}{4\pi}\int_{\partial \Sigma}\delta_{\lambda_1}\mathscr{\bar B}\,\epsilon_2 \\
& =\frac{1}{16\pi}\int_{\partial \Sigma}\mathscr{\bar B}\gamma_{ab}\lambda_1^{ab}\epsilon_2.
\end{align}$$

Hence

$$\begin{align}
\{H_L[\lambda_1],H_S[\epsilon_2]\}=H_S[\epsilon_{12}], \qquad
\epsilon_{12}=\frac14 \lambda_1^{ab}\gamma_{ab}\epsilon_2.
\end{align}$$

#### translation-translation

Using $\delta_{\zeta_2}B^{(s)a}=B^{(s)ab}\zeta_{2\,b}$,

$$\begin{align}
\delta_{\zeta_2}H_T[\zeta_1]& =\frac{1}{8\pi}\int_{\partial \Sigma}\delta_{\zeta_2}B^{(s)}_a \,\zeta_1^a \\
& =\frac{1}{8\pi}\int_{\partial \Sigma}B^{(s)}_{ab}\zeta_2^b \zeta_1^a \\
& =\frac{1}{16\pi}\int_{\partial \Sigma}B^{(s)}_{ab}(\zeta_1^a\zeta_2^b-\zeta_2^a\zeta_1^b).
\end{align}$$

Therefore

$$\begin{align}
\{H_T[\zeta_1],H_T[\zeta_2]\}=H_L[\lambda_{12}], \qquad\lambda_{12}^{ab}=-(\zeta_1^a\zeta_2^b-\zeta_2^a\zeta_1^b).
\end{align}$$

#### translation-supersymmetry

$$\begin{align}
\delta_{\zeta_1}H_S[\epsilon_2]& =\frac{1}{4\pi}\int_{\partial \Sigma}\delta_{\zeta_1}\mathscr{\bar B}\,\epsilon_2 \\
& =\frac{1}{8\pi}\int_{\partial \Sigma}\mathscr{\bar B}\gamma_a \zeta_1^a \epsilon_2,
\end{align}$$

so

$$\begin{align}
\{H_T[\zeta_1],H_S[\epsilon_2]\}=H_S[\epsilon_{12}], \qquad\epsilon_{12}=\frac12 \zeta_1^a \gamma_a \epsilon_2.
\end{align}$$

#### supersymmetry-supersymmetry

$$\begin{align}
\delta_{\epsilon_2}H_S[\epsilon_1] & =\frac{1}{4\pi}\int_{\partial \Sigma}\delta_{\epsilon_2}\mathscr{\bar B}\,\epsilon_1 \\
& =\frac{1}{4\pi}\int_{\partial \Sigma}
\left(-\frac14 \bar\epsilon_2 \gamma^{ab}B^{(s)}_{ab}-\frac12 \bar\epsilon_2 \gamma_a B^{(s)a}\right)\epsilon_1 \\
& =-\frac{1}{16\pi}\int_{\partial \Sigma}B^{(s)}_{ab}\,\bar\epsilon_2 \gamma^{ab}\epsilon_1
-\frac{1}{8\pi}\int_{\partial \Sigma}B^{(s)}_a\,\bar\epsilon_2 \gamma^a \epsilon_1.
\end{align}$$

Using the antisymmetry properties of Majorana bilinears, this becomes

$$\begin{align}
\{H_S[\epsilon_1],H_S[\epsilon_2]\}
=H_L[\lambda_{12}]+H_T[\zeta_{12}],
\end{align}$$

with

$$\begin{align}
\lambda_{12}^{ab}=\bar\epsilon_1 \gamma^{ab}\epsilon_2, \qquad
\zeta_{12}^a=\bar\epsilon_1 \gamma^a \epsilon_2.
\end{align}$$

Hence the full boundary gauge-charge algebra is

$$\begin{align}
\{H_L[\lambda_{1}],H_L[\lambda_{2}]\} & =H_L[\lambda _{12}], \\
\{H_L[\lambda_{1}],H_T[\zeta _{2}]\} & =H_T[\zeta _{12}], \\
\{H_L[\lambda _{1}],H_S[\epsilon _{2}]\} & =H_S[\epsilon _{12}], \\
\{H_T[\zeta _{1}],H_T[\zeta _{2}]\} & =H_L[\lambda _{12}], \\
\{H_T[\zeta _{1}],H_S[\epsilon _{2}]\} & =H_S[\epsilon _{12}], \\
\{H_S[\epsilon _{1}],H_S[\epsilon _{2}]\} & =H_L[\lambda _{12}]+H_T[\zeta _{12}].
\end{align}$$

On shell the supertorsion vanishes:

$$\begin{align}
B^{(s)a}=\frac{1}{\beta}F^{(s)a}=0.
\end{align}$$

Therefore

$$\begin{align}
H_T[\zeta]=0
\end{align}$$

and the non-trivial gauge-charge algebra reduces to the $\mathrm{Osp}(1|4)$ Lorentz plus supersymmetry sector without central extension.

#### diffeomorphism-gauge brackets

The diffeomorphism charge is

$$\begin{align}
H_D[\xi]
\approx \frac{1}{16\pi}\int_{\partial \Sigma}B^{(s)}_{IJ}\iota_\xi A^{IJ}
+\frac{\kappa}{4\pi}\int_{\partial \Sigma}\mathscr{\bar B}\iota_\xi \psi.
\end{align}$$

Because diffeomorphisms act by Lie derivatives on all fields and parameters,

$$\begin{align}
[\mathcal L_{\xi_1},\mathcal L_{\xi_2}]=\mathcal L_{[\xi_1,\xi_2]},
\end{align}$$

the Noether charges satisfy

$$\begin{align}
\{H_D[\xi_1],H_D[\xi_2]\}=H_D[\xi_{12}], \qquad \xi_{12}=[\xi_1,\xi_2].
\end{align}$$

For the mixed brackets, one varies the gauge charge by the diffeomorphism vector field and uses that the integral of a total Lie derivative over the closed boundary vanishes when $\xi$ is tangent to $\partial \Sigma$. This gives

$$\begin{align}
\{H_D[\xi],H_L[\lambda]\} & =-H_L[\mathcal L_\xi \lambda], \\
\{H_D[\xi],H_T[\zeta]\} & =H_T[\mathcal L_\xi \zeta], \\
\{H_D[\xi],H_S[\epsilon]\} & =H_S[\mathcal L_\xi \epsilon].
\end{align}$$

Thus the full conserved-charge algebra is the semidirect product of diffeomorphisms with the boundary realization of the $\mathrm{Osp}(1|4)$ gauge algebra.
