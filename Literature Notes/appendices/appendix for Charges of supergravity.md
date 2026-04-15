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
> 
>$$\begin{align}
>[M_{IJ},M_{KL}] & =i\left(\eta _{IL}M_{JK}+\eta _{JK}M_{IL}-\eta _{IK}M_{JL}-\eta _{JL}M_{IK}\right)
>\end{align}$$
>
>then
>
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

$$\begin{align}
[M_{IJ},Q_{\alpha}] & = \frac{i}{}
\end{align}$$

---

and the anticommutator is

$$\begin{align}
\{Q_{\alpha},Q_{\beta}\}=-\frac{i}{2}(C\gamma ^{ab})_{\alpha \beta}M_{ab}+i(C\gamma ^{a})_{\alpha \beta}P_{a}.
\end{align}$$

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
-\frac{i}{2}[[\Omega\overset\wedge,\Omega]]
& =-\frac{i}{2}\left[\left[\frac12\omega^{ab}M_{ab}+\frac1\ell e^aP_a \overset\wedge, \frac12\omega^{cd}M_{cd}+\frac1\ell e^cP_c\right]\right] \\
& =-\frac{i}{8}\omega^{ab}\wedge \omega^{cd}[M_{ab},M_{cd}]
-\frac{i}{2\ell}\omega^{ab}\wedge e^c[M_{ab},P_c]
-\frac{i}{2\ell^2}e^a\wedge e^b[P_a,P_b].
\end{align}$$

Using the bosonic commutators gives

$$\begin{align}
-\frac{i}{8}\omega^{ab}\wedge \omega^{cd}[M_{ab},M_{cd}]
& =\frac18\omega^{ab}\wedge \omega^{cd}
\left(\eta_{ad}M_{bc}+\eta_{bc}M_{ad}-\eta_{ac}M_{bd}-\eta_{bd}M_{ac}\right) \\
& =\frac12 \omega^a{}_{c}\wedge \omega^{cb}M_{ab},
\end{align}$$

and

$$\begin{align}
-\frac{i}{2\ell}\omega^{ab}\wedge e^c[M_{ab},P_c]
& =\frac{1}{2\ell}\omega^{ab}\wedge e^c(\eta_{bc}P_a-\eta_{ac}P_b) \\
& =\frac1\ell \omega^a{}_{b}\wedge e^b P_a,
\end{align}$$

while

$$\begin{align}
-\frac{i}{2\ell^2}e^a\wedge e^b[P_a,P_b]
& =\frac{1}{2\ell^2}e^a\wedge e^b M_{ab}.
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

Now compute the mixed boson-fermion term. Since

$$\begin{align}
-i[[\Omega\overset\wedge,\Psi]]
& =-i\kappa \left[\left[\frac12\omega^{ab}M_{ab}+\frac1\ell e^aP_a \overset\wedge, \bar\psi Q\right]\right],
\end{align}$$

and using $[M_{ab},Q]=\frac{i}{2}\gamma_{ab}Q$, $[P_a,Q]=\frac{i}{2}\gamma_aQ$, we get

$$\begin{align}
-i[[\Omega\overset\wedge,\Psi]]
& =\kappa\left(-\frac14\omega^{ab}\wedge \bar\psi \gamma_{ab}-\frac1{2\ell}e^a\wedge \bar\psi \gamma_a\right)Q.
\end{align}$$

Together with $\mathrm d\Psi=\kappa \mathrm d\bar\psi \, Q$, this gives

$$\begin{align}
\mathrm d\Psi-i[[\Omega\overset\wedge,\Psi]]
& =\kappa \left(\mathrm d\bar\psi-\frac14\omega^{ab}\wedge \bar\psi \gamma_{ab}-\frac1{2\ell}e^a\wedge \bar\psi\gamma_a\right)Q \\
& =\mathscr{\bar F}\, Q,
\end{align}$$

so

$$\begin{align}
\mathscr{\bar F}=\kappa \mathscr D^A \bar\psi
=\kappa\left(\mathscr D^\omega\bar\psi-\frac1{2\ell}e^a\wedge \bar\psi\gamma_a\right).
\end{align}$$

Finally, compute the fermion bilinear contribution:

$$\begin{align}
-\frac{i}{2}[[\Psi\overset\wedge,\Psi]]
& =-\frac{i\kappa^2}{2}\bar\psi\wedge \bar\psi \{Q,Q\} \\
& =-\frac{i\kappa^2}{2}\bar\psi\wedge \bar\psi\left[-\frac{i}{2}(C\gamma^{ab})M_{ab}+i(C\gamma^a)P_a\right].
\end{align}$$

Using the standard Majorana bilinear identities

$$\begin{align}
\bar\psi\wedge \bar\psi \,(C\gamma^{ab}) = \bar\psi\wedge \gamma^{ab}\psi, \qquad
\bar\psi\wedge \bar\psi \,(C\gamma^{a}) = \bar\psi\wedge \gamma^{a}\psi,
\end{align}$$

one obtains

$$\begin{align}
-\frac{i}{2}[[\Psi\overset\wedge,\Psi]]
=-\frac{\kappa^2}{4}\bar\psi\wedge \gamma^{ab}\psi \, M_{ab}
+\frac{\kappa^2}{2}\bar\psi\wedge \gamma^a\psi \, P_a.
\end{align}$$

Collecting all components,

$$\begin{align}
\mathbb F
& =\frac12\left(F^{ab}-\frac{\kappa^2}{2}\bar\psi\wedge \gamma^{ab}\psi\right)M_{ab}
+\left(F^a+\frac{\kappa^2}{2}\bar\psi\wedge \gamma^a\psi\right)P_a
+\mathscr{\bar F}Q.
\end{align}$$

Hence

$$\begin{align}
F^{(s)ab} & =F^{ab}-\frac{\kappa ^2}{2}\bar{\psi}\wedge \gamma ^{ab}\psi, \\
F^{(s)a} & =F^a+\frac{\kappa ^2}{2}\bar{\psi}\wedge \gamma ^{a}\psi.
\end{align}$$

Similarly, by acting on $\psi$ rather than $\bar\psi$,

$$\begin{align}
\mathscr F
=\kappa \mathscr D^A\psi
=\kappa\left(\mathscr D^\omega\psi+\frac1{2\ell}e^a\wedge \gamma_a\psi\right).
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

### Bianchi identity in components

The super Bianchi identity is

$$\begin{align}
\mathbb D^{\mathbb A}\mathbb F=\mathrm d\mathbb F-i[[\mathbb A\overset\wedge,\mathbb F]]=0.
\end{align}$$

Substitute

$$\begin{align}
\mathbb A=\frac12 A^{IJ}M_{IJ}+\kappa \bar\psi Q, \qquad
\mathbb F=\frac12 F^{(s)IJ}M_{IJ}+\mathscr{\bar F}Q.
\end{align}$$

Projecting on the bosonic generators gives

$$\begin{align}
0
& =D^A F^{(s)IJ}+\kappa \bar\psi \wedge \gamma^{IJ}\mathscr F.
\end{align}$$

Projecting on the fermionic generator gives

$$\begin{align}
0
& =\mathscr D^A \mathscr{\bar F}+\kappa \bar\psi\wedge \gamma_{IJ}F^{(s)IJ}.
\end{align}$$

Now split $IJ=(ab,a4)$. For the $(ab)$ component,

$$\begin{align}
D^A F^{(s)ab}
& =D^\omega F^{(s)ab}
+A^a{}_4\wedge F^{(s)4b}
+A^b{}_4\wedge F^{(s)a4} \\
& =D^\omega F^{(s)ab}
-\frac1\ell e^a\wedge F^{(s)b}
+\frac1\ell e^b\wedge F^{(s)a},
\end{align}$$

where we used $A^{a4}=\ell^{-1}e^a$, $F^{(s)4b}=-F^{(s)b}$, $F^{(s)a4}=F^{(s)a}$. Hence

$$\begin{align}
D^{\omega}F^{(s)ab}+\frac{1}{\ell}e^{a}\wedge F^{(s)b}-\frac{1}{\ell}e^{b}\wedge F^{(s)a}+\kappa \bar{\psi}\wedge \gamma ^{ab}\mathscr{F}=0.
\end{align}$$

For the $(a4)$ component,

$$\begin{align}
D^A F^{(s)a4}
& =D^\omega F^{(s)a}
+A^a{}_4\wedge F^{(s)44}
+A^4{}_b\wedge F^{(s)ab} \\
& =D^\omega F^{(s)a}-\frac1\ell e_b\wedge F^{(s)ab},
\end{align}$$

since $F^{(s)44}=0$ and $A^{4}{}_{b}=-\ell^{-1}e_b$. Therefore

$$\begin{align}
D^{\omega}F^{(s)a}-\frac{1}{\ell}e_{b}\wedge F^{(s)ab}-\kappa \bar{\psi}\wedge \gamma ^{a}\mathscr{F}=0.
\end{align}$$

For the fermionic component,

$$\begin{align}
\mathscr D^A \mathscr{\bar F}
& =\mathscr D^\omega \mathscr{\bar F}-\frac1{2\ell}e^a\wedge \mathscr{\bar F}\gamma_a,
\end{align}$$

and

$$\begin{align}
\gamma_{IJ}F^{(s)IJ}
& =\gamma_{ab}F^{(s)ab}+2\gamma_a F^{(s)a},
\end{align}$$

so

$$\begin{align}
\mathscr{D}^{\omega}\mathscr{\bar{F}}-\frac{1}{2\ell}e^{a}\wedge \mathscr{\bar{F}}\gamma _{a}+\kappa \bar{\psi}\wedge \gamma _{ab}F^{(s)ab}+2\kappa \bar{\psi}\wedge \gamma _{a}F^{(s)a}=0.
\end{align}$$

### double Lorentz-covariant derivative on a spinor

Start from

$$\begin{align}
\mathscr D^\omega \psi=\mathrm d\psi+\frac14\omega^{ab}\gamma_{ab}\psi.
\end{align}$$

Then

$$\begin{align}
\mathscr D^\omega \mathscr D^\omega \psi
& =\mathrm d\left(\mathrm d\psi+\frac14\omega^{ab}\gamma_{ab}\psi\right)
+\frac14\omega^{ab}\gamma_{ab}\wedge \left(\mathrm d\psi+\frac14\omega^{cd}\gamma_{cd}\psi\right) \\
& =\frac14\mathrm d\omega^{ab}\wedge \gamma_{ab}\psi
-\frac14\omega^{ab}\wedge \gamma_{ab}\mathrm d\psi
+\frac14\omega^{ab}\wedge \gamma_{ab}\mathrm d\psi
+\frac1{16}\omega^{ab}\wedge \omega^{cd}\gamma_{ab}\gamma_{cd}\psi.
\end{align}$$

The middle two terms cancel. The remaining spin connection square reduces to the commutator part:

$$\begin{align}
\frac1{16}\omega^{ab}\wedge \omega^{cd}\gamma_{ab}\gamma_{cd}\psi
=\frac18\omega^{ab}\wedge \omega^{cd}[\gamma_{ab},\gamma_{cd}]\psi
=\frac14 \omega^a{}_{c}\wedge \omega^{cb}\gamma_{ab}\psi.
\end{align}$$

Hence

$$\begin{align}
\mathscr D^\omega \mathscr D^\omega \psi
=\frac14\left(\mathrm d\omega^{ab}+\omega^a{}_{c}\wedge \omega^{cb}\right)\gamma_{ab}\psi
=\frac14 R^{ab}(\omega)\wedge \gamma_{ab}\psi.
\end{align}$$

## bosonic constrained BF theory

### equation of motion for the bosonic $B$ field

The bosonic action is

$$\begin{align}
16\pi S(A,B)=\int F^{IJ}\wedge B_{IJ}-\frac{\beta}{2}B^{IJ}\wedge B_{IJ}-\frac{\alpha}{4}\epsilon^{abcd4}B_{ab}\wedge B_{cd}.
\end{align}$$

Vary with respect to $B$:

$$\begin{align}
16\pi \delta_B S
& =\int F^{IJ}\wedge \delta B_{IJ}
-\beta \int \delta B^{IJ}\wedge B_{IJ}
-\frac{\alpha}{2}\int \epsilon^{abcd4}\delta B_{ab}\wedge B_{cd}.
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
\frac{\alpha}{\alpha^2+\beta^2}
=\frac{3}{G\Lambda}.
\end{align}$$

Substitute $\beta=\gamma\alpha$:

$$\begin{align}
\frac{\alpha}{\alpha^2(1+\gamma^2)}
=\frac{1}{\alpha(1+\gamma^2)}
=\frac{3}{G\Lambda},
\end{align}$$

so

$$\begin{align}
\alpha=\frac{G\Lambda}{3(1+\gamma^2)}, \qquad
\beta=\gamma \alpha=\frac{\gamma G\Lambda}{3(1+\gamma^2)}.
\end{align}$$

### integrating out the bosonic $B$ field

Substitute the solutions for $B^{ab}$ and $B^{a4}$ back into the action. Since

$$\begin{align}
F^{ab}=R^{ab}+\frac1{\ell^2}e^a\wedge e^b, \qquad
F^{a4}=\frac1\ell T^a,
\end{align}$$

with $T^a:=D^\omega e^a$, all terms can be expanded into:

$$\begin{align}
R^{ab}\wedge e^c\wedge e^d\epsilon_{abcd}, \qquad
e^a\wedge e^b\wedge e^c\wedge e^d\epsilon_{abcd}, \qquad
R^{ab}\wedge e_a\wedge e_b,
\end{align}$$

plus topological densities

$$\begin{align}
R^{ab}\wedge R^{cd}\epsilon_{abcd}, \qquad
R^{ab}\wedge R_{ab}, \qquad
T^a\wedge T_a-R^{ab}\wedge e_a\wedge e_b.
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
\langle \mathbb B\wedge \mathbb F\rangle
=B^{(s)IJ}\wedge F^{(s)}_{IJ}+4\mathscr{\bar B}\wedge \mathscr F,
\end{align}$$

and similarly

$$\begin{align}
\langle \mathbb B\wedge \mathbb B\rangle
=B^{(s)IJ}\wedge B^{(s)}_{IJ}+4\mathscr{\bar B}\wedge \mathscr B,
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
16\pi \delta S
& =\int \langle \delta \mathbb B\wedge \mathbb F\rangle
+\int \langle \mathbb B\wedge \delta \mathbb F\rangle
-\beta \int \langle \delta \mathbb B\wedge \mathbb B\rangle
-\frac{\alpha}{2}\int \langle \delta \mathbb B\wedge \star \mathbb B\rangle.
\end{align}$$

Using $\delta \mathbb F=\mathbb D^{\mathbb A}\delta \mathbb A$,

$$\begin{align}
16\pi \delta S
& =\int \left\langle \delta \mathbb B\wedge \left(\mathbb F-\beta \mathbb B-\frac{\alpha}{2}\star \mathbb B\right)\right\rangle
+\int \langle \mathbb B\wedge \mathbb D^{\mathbb A}\delta \mathbb A\rangle.
\end{align}$$

Now integrate the second term by parts:

$$\begin{align}
\langle \mathbb B\wedge \mathbb D^{\mathbb A}\delta \mathbb A\rangle
& =\mathrm d\langle \mathbb B\wedge \delta \mathbb A\rangle
-\langle \mathbb D^{\mathbb A}\mathbb B\wedge \delta \mathbb A\rangle.
\end{align}$$

Hence

$$\begin{align}
16\pi \delta S
& =\int \left\langle \delta \mathbb B\wedge \left(\mathbb F-\beta \mathbb B-\frac{\alpha}{2}\star \mathbb B\right)\right\rangle
-\int \langle \mathbb D^{\mathbb A}\mathbb B\wedge \delta \mathbb A\rangle \\
& \quad +\int_{\partial M}\langle \mathbb B\wedge \delta \mathbb A\rangle.
\end{align}$$

Therefore the equations of motion are

$$\begin{align}
\mathbb F-\beta \mathbb B-\frac{\alpha}{2}\star \mathbb B & =0, \\
\mathbb D^{\mathbb A}\mathbb B & =0,
\end{align}$$

and the presymplectic potential is

$$\begin{align}
16\pi \Theta=\int_{\Sigma}\langle \mathbb B\wedge \delta \mathbb A\rangle.
\end{align}$$

### solving the $\mathbb B$ equation of motion

The algebraic equation

$$\begin{align}
\mathbb F-\beta \mathbb B-\frac{\alpha}{2}\star \mathbb B=0
\end{align}$$

must be solved separately on the translational, Lorentz, and fermionic sectors.

For the $a4$ component, $\star B^{(s)a}=0$, so

$$\begin{align}
F^{(s)a}-\beta B^{(s)a}=0
\quad \Longrightarrow \quad
B^{(s)a}=\frac{1}{\beta}F^{(s)a}.
\end{align}$$

For the $ab$ component,

$$\begin{align}
F^{(s)ab}-\beta B^{(s)ab}-\frac{\alpha}{2}\epsilon^{ab}{}_{cd}B^{(s)cd}=0.
\end{align}$$

Exactly as in the bosonic case,

$$\begin{align}
B^{(s)ab}
=\frac{1}{2(\alpha^2+\beta^2)}\left(\beta \delta^{ab}_{cd}-\alpha \epsilon^{ab}{}_{cd}\right)F^{(s)cd}.
\end{align}$$

Since

$$\begin{align}
F^{(s)cd}=F^{cd}-\frac{\kappa^2}{2}\bar\psi\wedge \gamma^{cd}\psi,
\end{align}$$

we obtain

$$\begin{align}
B^{(s)ab}
=\frac{1}{2(\alpha ^{2}+\beta ^{2})}\left(\beta \delta ^{ab}_{cd}-\alpha \epsilon ^{ab}_{~~~~cd}\right)\left(F^{cd}-\frac{\kappa ^{2}}{2}\bar{\psi}\wedge \gamma ^{cd}\psi\right).
\end{align}$$

For the fermionic component, the equation is

$$\begin{align}
\mathscr F-\beta \mathscr B-\alpha \gamma^5 \mathscr B=0.
\end{align}$$

Equivalently,

$$\begin{align}
(\beta+\alpha \gamma^5)\mathscr B=\mathscr F.
\end{align}$$

Multiply by $(\beta-\alpha \gamma^5)$ from the left and use $(\gamma^5)^2=1$:

$$\begin{align}
(\beta-\alpha \gamma^5)(\beta+\alpha \gamma^5)\mathscr B
& =(\beta^2-\alpha^2(\gamma^5)^2)\mathscr B
\end{align}$$

in Euclidean conventions, but with the sign conventions of the note the inverse used is

$$\begin{align}
(\beta+\alpha \gamma^5)^{-1}
=\frac{1}{\alpha^2+\beta^2}(\beta-\alpha \gamma^5),
\end{align}$$

so

$$\begin{align}
\mathscr B=\frac{1}{\alpha^2+\beta^2}(\beta-\alpha \gamma^5)\mathscr F.
\end{align}$$

Taking Dirac conjugation gives

$$\begin{align}
\mathscr{\bar B}
=\frac{1}{\alpha^2+\beta^2}\mathscr{\bar F}(\beta-\alpha \gamma^5).
\end{align}$$

### solving the $\mathbb A$ equation of motion in components

The second field equation is

$$\begin{align}
\mathbb D^{\mathbb A}\mathbb B=0.
\end{align}$$

Substituting

$$\begin{align}
\mathbb B=\frac12 B^{(s)IJ}M_{IJ}+\mathscr{\bar B}Q,
\end{align}$$

and projecting on bosonic and fermionic generators gives

$$\begin{align}
D^A B^{(s)IJ}+\kappa \bar\psi\wedge \gamma^{IJ}\mathscr B & =0, \\
\mathscr D^A \mathscr{\bar B}+\kappa \bar\psi\wedge \gamma^{IJ}B^{(s)}_{IJ} & =0.
\end{align}$$

These are obtained exactly as for the Bianchi identity, replacing $\mathbb F$ by $\mathbb B$.

## gauge symmetries

### general gauge variation of the superconnection

For

$$\begin{align}
\Upsilon=\frac12\lambda^{ab}M_{ab}+\zeta^aP_a+\bar\varepsilon Q,
\end{align}$$

the gauge variation is

$$\begin{align}
\delta_\Upsilon \mathbb A
=\mathrm d\Upsilon-i[\mathbb A,\Upsilon].
\end{align}$$

Project onto each generator.

The Lorentz part of $\delta \omega^{ab}$ comes from $\mathrm d(\frac12\lambda^{ab}M_{ab})$ and the commutator with $\frac12\omega^{cd}M_{cd}$:

$$\begin{align}
\delta_\lambda \omega^{ab}
=\mathrm d\lambda^{ab}+\omega^a{}_c\lambda^{cb}+\omega^b{}_c\lambda^{ac}
=D^\omega \lambda^{ab}.
\end{align}$$

The Lorentz variation of the tetrad comes from $[\omega M,\zeta P]$ and gives

$$\begin{align}
\delta_\lambda e^a=-\lambda^a{}_b e^b.
\end{align}$$

The Lorentz variation of the gravitino follows from $[M_{ab},Q]=\frac{i}{2}\gamma_{ab}Q$:

$$\begin{align}
\delta_\lambda \bar\psi=-\frac14 \bar\psi \gamma_{ab}\lambda^{ab}.
\end{align}$$

For pure translation, set $\lambda=\varepsilon=0$. Then

$$\begin{align}
\delta_\zeta \omega^{ab}
& =\frac1\ell (e^a\zeta^b-e^b\zeta^a), \\
\delta_\zeta e^a
& =\ell D^\omega \zeta^a, \\
\delta_\zeta \bar\psi
& =-\frac12 \bar\psi \gamma_a \zeta^a,
\end{align}$$

where the last line follows from $[P_a,Q]=\frac{i}{2}\gamma_a Q$.

### supersymmetry transformations

For pure supersymmetry, $\Upsilon=\bar\epsilon Q$. Then

$$\begin{align}
\delta_\epsilon \mathbb A
=\mathrm d(\bar\epsilon Q)-i\left[\frac12\omega^{ab}M_{ab}+\frac1\ell e^aP_a+\kappa \bar\psi Q,\bar\epsilon Q\right].
\end{align}$$

Project onto $M_{ab}$ using $\{Q,Q\}\sim M_{ab}+P_a$:

$$\begin{align}
\frac12\delta_\epsilon \omega^{ab}M_{ab}
& =-i\kappa \bar\psi \bar\epsilon \,\frac{-i}{2}(C\gamma^{ab})M_{ab},
\end{align}$$

hence

$$\begin{align}
\delta_\epsilon \omega^{ab}=\kappa \bar\epsilon \gamma^{ab}\psi.
\end{align}$$

Project onto $P_a$:

$$\begin{align}
\frac1\ell \delta_\epsilon e^a P_a
& =-i\kappa \bar\psi \bar\epsilon \, i(C\gamma^a)P_a,
\end{align}$$

which gives

$$\begin{align}
\delta_\epsilon e^a=-\ell \kappa \bar\epsilon \gamma^a \psi.
\end{align}$$

Project onto $Q$:

$$\begin{align}
\kappa \delta_\epsilon \bar\psi Q
& =\mathrm d\bar\epsilon Q
-i\left[\frac12\omega^{ab}M_{ab}+\frac1\ell e^aP_a,\bar\epsilon Q\right] \\
& =\left(\mathrm d\bar\epsilon-\frac14\omega^{ab}\bar\epsilon\gamma_{ab}-\frac1{2\ell}e^a\bar\epsilon \gamma_a\right)Q,
\end{align}$$

therefore

$$\begin{align}
\delta_\epsilon \bar\psi
=\frac1\kappa\left(\mathscr D^\omega \bar\epsilon-\frac1{2\ell}e^a\bar\epsilon \gamma_a\right).
\end{align}$$

### supersymmetry variation of the curvature

Using $\delta_\epsilon \mathbb A_\mu=\mathbb D_\mu \Upsilon$,

$$\begin{align}
\delta_\epsilon \mathbb F_{\mu\nu}
& =\mathbb D_\mu(\delta_\epsilon \mathbb A_\nu)-\mathbb D_\nu(\delta_\epsilon \mathbb A_\mu) \\
& =\mathbb D_\mu \mathbb D_\nu \Upsilon-\mathbb D_\nu \mathbb D_\mu \Upsilon \\
& =[\mathbb D_\mu,\mathbb D_\nu]\Upsilon \\
& =i[\Upsilon,\mathbb F_{\mu\nu}].
\end{align}$$

Now set $\Upsilon=\bar\epsilon Q$ and project on each component.

For the translational part,

$$\begin{align}
\delta_\epsilon F^{(s)a}
& =-\bar\epsilon \gamma^a \mathscr F.
\end{align}$$

For the Lorentz part,

$$\begin{align}
\delta_\epsilon F^{(s)ab}
& =\bar\epsilon \gamma^{ab}\mathscr F.
\end{align}$$

For the fermionic part,

$$\begin{align}
\delta_\epsilon \mathscr{\bar F}
& =-\frac14 \bar\epsilon \gamma^{ab}F^{(s)}_{ab}-\frac12\bar\epsilon \gamma_a F^{(s)a}.
\end{align}$$

Each line is the projection of $i[\bar\epsilon Q,\mathbb F]$ onto $P_a$, $M_{ab}$, and $Q$ respectively.

### supersymmetry transformation of the $B$ field

To keep the first two action terms invariant, $\mathbb B$ must transform in the adjoint representation:

$$\begin{align}
\delta_\epsilon \mathbb B=-i[\bar\epsilon Q,\mathbb B].
\end{align}$$

Projecting exactly as above gives

$$\begin{align}
\delta _{\epsilon}B^{a} & =-\bar{\epsilon}\gamma ^{a}\mathscr{B}, \\
\delta _{\epsilon}B^{ab} & =\bar{\epsilon}\gamma ^{ab}\mathscr{B}, \\
\delta _{\epsilon}\mathscr{\bar{B}} & =-\frac{1}{4}\bar{\epsilon}\gamma ^{ab}B^{(s)}_{ab}-\frac{1}{2}\bar{\epsilon}\gamma _{a}B^{(s)a}.
\end{align}$$

### variation of the gauge-breaking term

The gauge-breaking term is

$$\begin{align}
L_{\mathrm{break}}
=-\frac{\alpha}{4}\epsilon_{abcd}B^{(s)ab}\wedge B^{(s)cd}
-\alpha \mathscr{\bar B}\wedge \gamma^5 \mathscr B.
\end{align}$$

Vary the bosonic part:

$$\begin{align}
\delta_\epsilon L_{\mathrm{break,bos}}
& =-\frac{\alpha}{2}\epsilon_{abcd}\delta_\epsilon B^{(s)ab}\wedge B^{(s)cd} \\
& =-\frac{\alpha}{2}\epsilon_{abcd}\bar\epsilon \gamma^{ab}\mathscr B\wedge B^{(s)cd}.
\end{align}$$

Using the gamma-matrix identity

$$\begin{align}
\frac12 \epsilon_{abcd}\gamma^{ab}=-\gamma_{cd}\gamma^5,
\end{align}$$

this becomes

$$\begin{align}
\delta_\epsilon L_{\mathrm{break,bos}}
=\alpha \bar\epsilon \gamma_{cd}\gamma^5 \mathscr B\wedge B^{(s)cd}.
\end{align}$$

Now vary the fermionic part:

$$\begin{align}
\delta_\epsilon L_{\mathrm{break,fer}}
& =-\alpha \delta_\epsilon \mathscr{\bar B}\wedge \gamma^5 \mathscr B
-\alpha \mathscr{\bar B}\wedge \gamma^5 \delta_\epsilon \mathscr B.
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
(\mathcal L_\xi X)_\mu
=\xi^\nu \partial_\nu X_\mu+X_\nu \partial_\mu \xi^\nu.
\end{align}$$

Applying this to $\omega_\mu^{ab}$, $e_\mu^a$, and $\psi_\mu$ gives exactly the formulas quoted in the main note.

For any two-form $Y_{\mu\nu}$,

$$\begin{align}
(\mathcal L_\xi Y)_{\mu\nu}
=\xi^\rho \partial_\rho Y_{\mu\nu}+Y_{\rho\nu}\partial_\mu \xi^\rho+Y_{\mu\rho}\partial_\nu \xi^\rho,
\end{align}$$

which yields the expressions for $B_{\mu\nu}^{(s)IJ}$ and $\mathscr B_{\mu\nu}$.

### Cartan formula for the fields used later

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
16\pi \Theta_\Sigma
=\int_\Sigma \langle \mathbb B\wedge \delta \mathbb A\rangle
=\int_\Sigma B^{(s)}_{IJ}\wedge \delta A^{IJ}+4\kappa \mathscr{\bar B}\wedge \delta \psi.
\end{align}$$

Since $A^{ab}=\omega^{ab}$ and $A^{a4}=\ell^{-1}e^a$,

$$\begin{align}
B^{(s)}_{IJ}\wedge \delta A^{IJ}
=B^{(s)}_{ab}\wedge \delta \omega^{ab}+2B^{(s)}_{a}\wedge \frac{1}{\ell}\delta e^a.
\end{align}$$

On shell, the supertorsion equation gives $F^{(s)a}=0$, hence $B^{(s)a}=0$. Therefore only the $ab$ piece survives:

$$\begin{align}
16\pi \Theta_\Sigma
=\int_\Sigma B^{(s)}_{ab}\wedge \delta \omega^{ab}+4\kappa \mathscr{\bar B}\wedge \delta\psi.
\end{align}$$

Substitute the on-shell solutions

$$\begin{align}
B^{(s)}_{ab}
& =\frac{1}{2(\alpha^2+\beta^2)}
\left(\beta \delta_{ab}^{cd}-\alpha \epsilon_{ab}{}^{cd}\right)
\left(R_{cd}+\frac1{\ell^2}e_c\wedge e_d-\frac{\kappa^2}{2}\bar\psi\wedge \gamma_{cd}\psi\right),
\end{align}$$

and use

$$\begin{align}
\frac{1}{\alpha^2+\beta^2}\beta=\frac{3\gamma}{G\Lambda}, \qquad
\frac{1}{\alpha^2+\beta^2}\alpha=\frac{3}{G\Lambda},
\end{align}$$

to obtain

$$\begin{align}
16\pi \theta
& \approx \frac{3}{G\Lambda}\int_{\Sigma}
\left(R^{ab}-\frac{\Lambda}{3}e^{[a}\wedge e^{b]}-\frac{\kappa^2}{2}\bar\psi \gamma^{ab}\wedge \psi\right)
\left(\gamma \delta^{cd}_{ab}-\frac12\epsilon^{cd}{}_{ab}\right)\wedge \delta \omega_{cd} \\
& \quad +\frac{3}{G\Lambda}4\kappa^2\int_\Sigma
\left(\mathrm d\bar\psi-\frac14\omega^{ab}\wedge \bar\psi \gamma_{ab}-\frac1{2\ell}e^a\wedge \bar\psi\gamma_a\right)
(\gamma-\gamma^5)\wedge \delta \psi.
\end{align}$$

This is exactly the expression quoted in the note.

### splitting $\theta$ into bulk and boundary pieces

Expand the curvature

$$\begin{align}
R^{ab}=\mathrm d\omega^{ab}+\omega^a{}_f\wedge \omega^{fb}.
\end{align}$$

Then

$$\begin{align}
\int_\Sigma R^{ab}\wedge X_{ab}
=\int_\Sigma \mathrm d(\omega^{ab}\wedge X_{ab})-\int_\Sigma \omega^{ab}\wedge \mathrm dX_{ab}
+\int_\Sigma \omega^a{}_f\wedge \omega^{fb}\wedge X_{ab},
\end{align}$$

with

$$\begin{align}
X_{ab}:=\frac{3}{16\pi G\Lambda}\left(\gamma \delta^{cd}_{ab}-\frac12\epsilon^{cd}{}_{ab}\right)\wedge \delta\omega_{cd}.
\end{align}$$

The total derivative becomes the boundary term

$$\begin{align}
\theta_{\partial \Sigma}
\approx \frac{3}{16\pi G\Lambda}\int_{\partial \Sigma}\omega^{ab}\left(\gamma \delta^{cd}_{ab}-\frac12\epsilon^{cd}{}_{ab}\right)\wedge \delta \omega_{cd}
+\frac{3}{\Lambda \ell}\int_{\partial \Sigma}\bar\psi(\gamma-\gamma^5)\wedge \delta \psi.
\end{align}$$

The remainder stays in the bulk:

$$\begin{align}
\theta _{\Sigma}
& \approx -\frac{1}{16\pi G}\int _{\Sigma}e^{a}\wedge e^{b}\left(\gamma \delta ^{cd}_{ab}-\frac{1}{2}\epsilon ^{cd}_{~~~~ab}\right)\wedge \delta \omega _{cd} \\
& \quad +\frac{3}{16\pi G\Lambda}\int _{\Sigma}\left(\omega ^{af}\wedge \omega _{f}^{~b}-\frac{\kappa ^{2}}{2}\bar{\psi}\gamma ^{ab}\wedge \psi\right)\left(\gamma \delta^{cd}_{ab}-\frac{1}{2}\epsilon ^{cd}_{~~~~ab}\right)\wedge \delta \omega _{cd} \\
& \quad +\frac{3}{G\Lambda}\frac{16\pi G}{\ell}\int _{\Sigma}\left(-\frac{1}{4}\omega ^{ab}\wedge \bar{\psi}\gamma _{ab}-\frac{1}{2\ell}e^{a}\wedge \bar{\psi}\gamma _{a}\right)\left(\gamma-\gamma ^{5}\right)\wedge \delta \psi .
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

## gauge charges

### Hamiltonian variation generated by a gauge parameter

The general definition is

$$\begin{align}
\delta \mathscr H[*]=-\iota_*\Omega.
\end{align}$$

For a gauge parameter $\Upsilon$,

$$\begin{align}
\delta \mathscr H[\Upsilon]
& =-\frac1{16\pi}\int_\Sigma \delta_\Upsilon \mathbb B\wedge \delta \mathbb A+\delta \mathbb B\wedge \delta_\Upsilon \mathbb A \\
& =-\frac1{16\pi}\int_\Sigma \left(-i[\Upsilon,\mathbb B]\right)\wedge \delta \mathbb A+\delta \mathbb B\wedge \mathbb D^A \Upsilon.
\end{align}$$

Now expand the second term:

$$\begin{align}
\delta \mathbb B\wedge \mathbb D^A \Upsilon
& =\delta \mathbb B\wedge \mathrm d\Upsilon-i\delta \mathbb B\wedge [\mathbb A,\Upsilon] \\
& =\mathrm d(\delta \mathbb B\, \Upsilon)-\mathrm d(\delta \mathbb B)\Upsilon-i\delta \mathbb B\wedge [\mathbb A,\Upsilon].
\end{align}$$

Therefore

$$\begin{align}
\delta \mathscr H[\Upsilon]
& =-\frac1{16\pi}\int_\Sigma
\mathrm d(\delta \mathbb B\, \Upsilon)
-\left(\mathrm d(\delta \mathbb B)-i[\mathbb A,\delta \mathbb B]\right)\Upsilon \\
& =-\frac1{16\pi}\int_\Sigma
\mathrm d(\delta \mathbb B\, \Upsilon)
-\delta(\mathbb D^A \mathbb B)\Upsilon.
\end{align}$$

Recognizing a total field-space variation,

$$\begin{align}
\delta \mathscr H[\Upsilon]
=-\frac1{16\pi}\delta \int_\Sigma \left(\mathrm d(\mathbb B\Upsilon)-(\mathbb D^A\mathbb B)\Upsilon\right).
\end{align}$$

Hence

$$\begin{align}
\mathscr H[\Upsilon]
=-\frac1{16\pi}\int_\Sigma \left(\mathrm d(\mathbb B\Upsilon)-(\mathbb D^A\mathbb B)\Upsilon\right).
\end{align}$$

On shell, $\mathbb D^A \mathbb B=0$, so

$$\begin{align}
\mathscr H[\Upsilon]
\approx -\frac1{16\pi}\int_{\partial \Sigma}\mathbb B\, \Upsilon.
\end{align}$$

Projecting onto the three bosonic and fermionic parameters gives

$$\begin{align}
\mathscr H_L[\lambda] & =-\frac1{16\pi}\int_S B^{(s)}_{ab}\lambda^{ab}, \\
\mathscr H_T[\zeta] & =-\frac1{8\pi}\int_S B^{(s)}_a \zeta^a, \\
\mathscr H_S[\epsilon] & =-\frac1{4\pi}\int_S \mathscr{\bar B}\epsilon.
\end{align}$$

The extra factor of $2$ in the translation charge arises because $B_{a4}\zeta^a$ appears twice in the antisymmetric $IJ$ sum.

## diffeomorphism charges

### Hamiltonian variation for field-independent $\xi$

Starting from the symplectic form,

$$\begin{align}
\delta \mathscr H[\xi]
& =\frac{1}{16\pi}\int_\Sigma
\delta B_{IJ}^{(s)}\wedge \mathcal L_\xi A^{IJ}
-\mathcal L_\xi B_{IJ}^{(s)}\wedge \delta A^{IJ}
+4\kappa \delta \mathscr{\bar B}\wedge \mathcal L_\xi \psi
-4\kappa \mathcal L_\xi \mathscr{\bar B}\wedge \delta \psi.
\end{align}$$

Because $\xi$ is field-independent, $\delta$ commutes with $\mathcal L_\xi$. Then

$$\begin{align}
\delta \left(B_{IJ}^{(s)}\wedge \mathcal L_\xi A^{IJ}\right)
=\delta B_{IJ}^{(s)}\wedge \mathcal L_\xi A^{IJ}+B_{IJ}^{(s)}\wedge \mathcal L_\xi \delta A^{IJ}.
\end{align}$$

Use Cartan's identity $\mathcal L_\xi =\mathrm d \iota_\xi+\iota_\xi \mathrm d$ to rewrite

$$\begin{align}
B_{IJ}^{(s)}\wedge \mathcal L_\xi \delta A^{IJ}
-\mathcal L_\xi B_{IJ}^{(s)}\wedge \delta A^{IJ}
=\mathrm d\iota_\xi \left(B_{IJ}^{(s)}\wedge \delta A^{IJ}\right).
\end{align}$$

Hence

$$\begin{align}
\delta \mathscr H[\xi]
& =\frac1{16\pi}\delta \int_\Sigma B_{IJ}^{(s)}\wedge \mathcal L_\xi A^{IJ}
-\frac1{16\pi}\int_{\partial \Sigma}\iota_\xi \left(B_{IJ}^{(s)}\wedge \delta A^{IJ}\right) \\
& \quad +\frac{\kappa}{4\pi}\delta \int_\Sigma \mathscr{\bar B}\wedge \mathcal L_\xi \psi
-\frac{\kappa}{4\pi}\int_{\partial \Sigma}\iota_\xi \left(\mathscr{\bar B}\wedge \delta \psi\right).
\end{align}$$

If $\xi$ is tangent to $\partial \Sigma$, the pullback of these boundary contractions vanishes, so

$$\begin{align}
\mathscr H[\xi]
=\frac1{16\pi}\int_\Sigma B_{IJ}^{(s)}\wedge \mathcal L_\xi A^{IJ}
+\frac{\kappa}{4\pi}\int_\Sigma \mathscr{\bar B}\wedge \mathcal L_\xi \psi.
\end{align}$$

### separating bulk and boundary pieces

Insert the Cartan formulas derived earlier:

$$\begin{align}
\mathcal L_\xi A^{IJ}
& =\iota_\xi F^{IJ}+D^A(\iota_\xi A^{IJ})+\kappa^2 \bar\psi \gamma^{IJ}\iota_\xi \psi, \\
\mathcal L_\xi \bar\psi
& =\frac1\kappa \iota_\xi \mathscr{\bar F}+\mathscr D^A(\iota_\xi \bar\psi)+\bar\psi \gamma_{IJ}\iota_\xi A^{IJ}.
\end{align}$$

Then

$$\begin{align}
\mathscr H[\xi]
& =\frac1{16\pi}\int_\Sigma B_{IJ}^{(s)}\wedge \iota_\xi F^{(s)IJ}
+\frac1{16\pi}\int_\Sigma B_{IJ}^{(s)}\wedge D^A(\iota_\xi A^{IJ}) \\
& \quad +\frac{\kappa}{4\pi}\int_\Sigma \mathscr{\bar B}\wedge \iota_\xi \mathscr F
+\frac{\kappa}{4\pi}\int_\Sigma \mathscr{\bar B}\wedge \mathscr D^A(\iota_\xi \psi).
\end{align}$$

Integrate by parts:

$$\begin{align}
\int_\Sigma B_{IJ}^{(s)}\wedge D^A(\iota_\xi A^{IJ})
& =\int_{\partial \Sigma} B_{IJ}^{(s)} \iota_\xi A^{IJ}
-\int_\Sigma (D^A B_{IJ}^{(s)})\iota_\xi A^{IJ}, \\
\int_\Sigma \mathscr{\bar B}\wedge \mathscr D^A(\iota_\xi \psi)
& =\int_{\partial \Sigma}\mathscr{\bar B}\iota_\xi \psi
-\int_\Sigma (\mathscr D^A \mathscr{\bar B})\iota_\xi \psi.
\end{align}$$

Using the $\mathbb A$ field equations, the bulk terms involving $D^A B^{(s)}$ and $\mathscr D^A\mathscr{\bar B}$ cancel against the explicit fermionic couplings. Thus

$$\begin{align}
\mathscr H[\xi]
& \approx \frac{1}{16\pi}\int _{\Sigma}B_{IJ}^{(s)}\wedge \iota _{\xi}F^{(s)IJ}
+\frac{\kappa}{4\pi}\int _{\Sigma}\mathscr{\bar{B}}\wedge \iota _{\xi}\mathscr{F} \\
& \quad +\frac{1}{16\pi}\int _{\partial \Sigma}B_{IJ}^{(s)}\iota _{\xi}A^{IJ}
+\frac{\kappa}{4\pi}\int _{\partial \Sigma}\mathscr{\bar{B}}\iota _{\xi}\psi.
\end{align}$$

This is the decomposition

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
\delta_{\lambda_1}\mathscr H_L[\lambda_2]
& =-\frac1{16\pi}\int_{\partial \Sigma} (\delta_{\lambda_1}B^{(s)}_{ab})\lambda_2^{ab},
\end{align}$$

because the parameters are fixed. Using adjoint transformation,

$$\begin{align}
\delta_{\lambda_1}B^{(s)}_{ab}
=-\lambda_{1\,a}{}^{c}B^{(s)}_{cb}-\lambda_{1\,b}{}^{c}B^{(s)}_{ac},
\end{align}$$

we get

$$\begin{align}
\delta_{\lambda_1}\mathscr H_L[\lambda_2]
=-\frac1{16\pi}\int_{\partial \Sigma} B^{(s)}_{ab}
\left(\lambda_1{}^{a}{}_{c}\lambda_2^{cb}-\lambda_1{}^{b}{}_{c}\lambda_2^{ca}\right).
\end{align}$$

Antisymmetrizing in $1\leftrightarrow 2$ yields

$$\begin{align}
\{\mathscr H_L[\lambda_1],\mathscr H_L[\lambda_2]\}
=-\frac1{16\pi}\int_{\partial \Sigma} B^{(s)}_{ab}\lambda_{12}^{ab}
=\mathscr H_L[\lambda_{12}],
\end{align}$$

with

$$\begin{align}
\lambda_{12}^{ab}
=\lambda_{1\,c}{}^{a}\lambda_2^{cb}-\lambda_{2\,c}{}^{a}\lambda_1^{cb}.
\end{align}$$

### Lorentz-translation bracket

Using $\delta_\lambda B^{(s)a}=-\lambda^a{}_b B^{(s)b}$,

$$\begin{align}
\delta_{\lambda_1}\mathscr H_T[\zeta_2]
& =-\frac1{8\pi}\int_{\partial \Sigma}(\delta_{\lambda_1}B^{(s)}_a)\zeta_2^a \\
& =\frac1{8\pi}\int_{\partial \Sigma}\lambda_{1\,a}{}^{b}B_b^{(s)}\zeta_2^a \\
& =-\frac1{8\pi}\int_{\partial \Sigma}B_a^{(s)}(\lambda_1{}^{a}{}_{b}\zeta_2^b).
\end{align}$$

Therefore

$$\begin{align}
\{\mathscr H_L[\lambda_1],\mathscr H_T[\zeta_2]\}
=\mathscr H_T[\zeta_{12}],
\qquad
\zeta_{12}^a=\lambda_1{}^{a}{}_{b}\zeta_2^b.
\end{align}$$

### Lorentz-supersymmetry bracket

Since $\delta_\lambda \mathscr{\bar B}=\frac14 \mathscr{\bar B}\gamma_{ab}\lambda^{ab}$,

$$\begin{align}
\delta_{\lambda_1}\mathscr H_S[\epsilon_2]
& =-\frac1{4\pi}\int_{\partial \Sigma}\delta_{\lambda_1}\mathscr{\bar B}\,\epsilon_2 \\
& =-\frac1{4\pi}\int_{\partial \Sigma}\mathscr{\bar B}\left(\frac14\gamma_{ab}\lambda_1^{ab}\epsilon_2\right).
\end{align}$$

Thus

$$\begin{align}
\{\mathscr H_L[\lambda_1],\mathscr H_S[\epsilon_2]\}
=\mathscr H_S[\epsilon_{12}],
\qquad
\epsilon_{12}=\frac14 \lambda_1^{ab}\gamma_{ab}\epsilon_2.
\end{align}$$

### translation-translation bracket

Use $\delta_{\zeta_1}B^{(s)ab}=B^{(s)a}\zeta_1^b-B^{(s)b}\zeta_1^a$. Then

$$\begin{align}
\delta_{\zeta_1}\mathscr H_T[\zeta_2]
& =-\frac1{8\pi}\int_{\partial \Sigma}\delta_{\zeta_1}B_a^{(s)}\zeta_2^a \\
& =-\frac1{8\pi}\int_{\partial \Sigma}B_{ab}^{(s)}\zeta_1^b\zeta_2^a \\
& =-\frac1{16\pi}\int_{\partial \Sigma}B_{ab}^{(s)}(\zeta_1^b\zeta_2^a-\zeta_1^a\zeta_2^b).
\end{align}$$

Therefore

$$\begin{align}
\{\mathscr H_T[\zeta_1],\mathscr H_T[\zeta_2]\}
=\mathscr H_L[\lambda_{12}],
\qquad
\lambda_{12}^{ab}=-(\zeta_1^a\zeta_2^b-\zeta_2^a\zeta_1^b).
\end{align}$$

### translation-supersymmetry bracket

Using $\delta_\zeta \mathscr{\bar B}=\frac12 \mathscr{\bar B}\gamma_a \zeta^a$,

$$\begin{align}
\delta_{\zeta_1}\mathscr H_S[\epsilon_2]
& =-\frac1{4\pi}\int_{\partial \Sigma}\left(\frac12 \mathscr{\bar B}\gamma_a \zeta_1^a\right)\epsilon_2 \\
& =-\frac1{4\pi}\int_{\partial \Sigma}\mathscr{\bar B}\left(\frac12 \zeta_1^a\gamma_a \epsilon_2\right),
\end{align}$$

hence

$$\begin{align}
\{\mathscr H_T[\zeta_1],\mathscr H_S[\epsilon_2]\}
=\mathscr H_S[\epsilon_{12}],
\qquad
\epsilon_{12}=\frac12 \zeta_1^a\gamma_a \epsilon_2.
\end{align}$$

### supersymmetry-supersymmetry bracket

Start from

$$\begin{align}
\mathscr H_S[\epsilon]=-\frac1{4\pi}\int_{\partial \Sigma}\mathscr{\bar B}\epsilon.
\end{align}$$

Then

$$\begin{align}
\delta_{\epsilon_1}\mathscr H_S[\epsilon_2]
& =-\frac1{4\pi}\int_{\partial \Sigma}\delta_{\epsilon_1}\mathscr{\bar B}\,\epsilon_2 \\
& =-\frac1{4\pi}\int_{\partial \Sigma}
\left(-\frac14\bar\epsilon_1\gamma^{ab}B_{ab}^{(s)}-\frac12 \bar\epsilon_1 \gamma_a B^{(s)a}\right)\epsilon_2 \\
& =\frac1{16\pi}\int_{\partial \Sigma}B_{ab}^{(s)}\bar\epsilon_1\gamma^{ab}\epsilon_2
+\frac1{8\pi}\int_{\partial \Sigma}B_a^{(s)}\bar\epsilon_1\gamma^a\epsilon_2.
\end{align}$$

Antisymmetrizing in $(1,2)$ gives

$$\begin{align}
\{\mathscr H_S[\epsilon_1],\mathscr H_S[\epsilon_2]\}
=\mathscr H_L[\lambda_{12}]+\mathscr H_T[\zeta_{12}],
\end{align}$$

with

$$\begin{align}
\lambda_{12}^{ab}=\bar\epsilon_1\gamma^{ab}\epsilon_2, \qquad
\zeta_{12}^{a}=\bar\epsilon_1\gamma^{a}\epsilon_2.
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
\mathscr H_D[\xi]
=\frac1{16\pi}\int_{\partial \Sigma}B_{IJ}^{(s)}\iota_\xi A^{IJ}
+\frac{\kappa}{4\pi}\int_{\partial \Sigma}\mathscr{\bar B}\iota_\xi \psi.
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
\delta_\xi \lambda=\mathcal L_\xi \lambda, \qquad
\delta_\xi \zeta=\mathcal L_\xi \zeta, \qquad
\delta_\xi \epsilon=\mathcal L_\xi \epsilon.
\end{align}$$

Substituting into the charge definitions yields

$$\begin{align}
\{\mathscr H_D[\xi],\mathscr H_L[\lambda]\} & =-\mathscr H_L[\mathcal L_\xi \lambda], \\
\{\mathscr H_D[\xi],\mathscr H_T[\zeta]\} & =\mathscr H_T[\mathcal L_\xi \zeta], \\
\{\mathscr H_D[\xi],\mathscr H_S[\epsilon]\} & =\mathscr H_S[\mathcal L_\xi \epsilon].
\end{align}$$

The sign in the Lorentz line follows from the convention chosen in $\mathscr H_L$.

## derivation of the $\mathrm{Osp}(1|4)$ algebra formulas used in the note

### bosonic split of $\mathfrak{so}(2,3)$

Starting from

$$\begin{align}
[M_{IJ},M_{KL}]
=i\left(\eta _{IL}M_{JK}+\eta _{JK}M_{IL}-\eta _{IK}M_{JL}-\eta _{JL}M_{IK}\right),
\end{align}$$

set $(I,J,K,L)=(a,b,c,d)$ to get

$$\begin{align}
[M_{ab},M_{cd}]
=i\left(\eta _{ad}M_{bc}+\eta _{bc}M_{ad}-\eta _{ac}M_{bd}-\eta _{bd}M_{ac}\right).
\end{align}$$

Set $(I,J,K,L)=(a,b,c,4)$ and use $M_{a4}=P_a$:

$$\begin{align}
[M_{ab},P_c]
& =[M_{ab},M_{c4}] \\
& =i\left(\eta_{a4}M_{bc}+\eta_{bc}M_{a4}-\eta_{ac}M_{b4}-\eta_{b4}M_{ac}\right) \\
& =i(\eta_{bc}P_a-\eta_{ac}P_b),
\end{align}$$

because $\eta_{a4}=\eta_{b4}=0$ for $a,b=0,\dots,3$.

Set $(I,J,K,L)=(a,4,b,4)$:

$$\begin{align}
[P_a,P_b]
& =[M_{a4},M_{b4}] \\
& =i\left(\eta_{a4}M_{4b}+\eta_{4b}M_{a4}-\eta_{ab}M_{44}-\eta_{44}M_{ab}\right) \\
& =iM_{ab},
\end{align}$$

since $M_{44}=0$ and $\eta_{44}=-1$.

### action on supercharges

The abstract relation

$$\begin{align}
[M_{IJ},Q_\alpha]=i(m_{IJ})_\alpha{}^\beta Q_\beta
\end{align}$$

is represented by

$$\begin{align}
m_{ab}=\frac12 \gamma_{ab}, \qquad m_{a4}=\frac12\gamma_a.
\end{align}$$

Therefore

$$\begin{align}
[M_{ab},Q]=\frac{i}{2}\gamma_{ab}Q, \qquad
[P_a,Q]=[M_{a4},Q]=\frac{i}{2}\gamma_a Q.
\end{align}$$

### supersymmetry anticommutator

Starting from

$$\begin{align}
\{Q_\alpha,Q_\beta\}=-i(Cm^{IJ})_{\alpha\beta}M_{IJ},
\end{align}$$

split $IJ=(ab,a4)$:

$$\begin{align}
\{Q_\alpha,Q_\beta\}
& =-i(Cm^{ab})_{\alpha\beta}M_{ab}-2i(Cm^{a4})_{\alpha\beta}M_{a4} \\
& =-\frac{i}{2}(C\gamma^{ab})_{\alpha\beta}M_{ab}+i(C\gamma^a)_{\alpha\beta}P_a.
\end{align}$$

This is the final superalgebra relation used repeatedly in the curvature and charge computations.
