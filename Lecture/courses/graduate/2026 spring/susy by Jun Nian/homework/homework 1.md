# problem 1

prove the identities

$$\begin{align}
[\sigma ^{\mu}\bar{\sigma}^{\nu}+\sigma ^{\nu}\bar{\sigma}^{\mu}]_{\alpha}^{~\beta} & =2\eta ^{\mu \nu}\delta _{\alpha}^{~\beta} \\
[\bar{\sigma}^{\mu}\sigma ^{\nu}+\bar{\sigma}^{\nu}\sigma ^{\mu}]^{\dot{\beta}}_{~\dot{\alpha}} & =2\eta ^{\mu \nu}\delta ^{\dot{\beta}}_{~\dot{\alpha}}
\end{align}$$

where

$$\begin{align}
\sigma ^{\mu} & =(\mathbb{I},\sigma ^{i}),  & \bar{\sigma}^{\mu} & =(\mathbb{I},-\sigma ^{i})
\end{align}$$

## solution

for $\displaystyle{\mu=\nu=0}$,

$$\begin{align}
[\sigma ^{0}\bar{\sigma}^{0}+\sigma ^{0}\bar{\sigma}^{0}]_{\alpha}^{~\beta} & =[\mathbb{II}+\mathbb{II}]_{\alpha}^{~\beta} \\
 & =2\delta _{\alpha}^{~\beta} \\
[\bar{\sigma}^{0}\sigma ^{0}+\bar{\sigma}^{0}\sigma ^{0}]^{\dot{\beta}}_{\dot{\alpha}} & =[\mathbb{II}+\mathbb{II}]^{\dot{\beta}}_{~\dot{\alpha}} \\
 & =2\delta ^{\dot{\beta}}_{~\dot{\alpha}}
\end{align}$$

for $\displaystyle{\mu=0,\nu=i}$

$$\begin{align}
[\sigma ^{0}\bar{\sigma}^{i}+\sigma ^{i}\bar{\sigma}^{0}]_{\alpha}^{~\beta} & =[\mathbb{I}(-\sigma ^{i})+\sigma ^{i}\mathbb{I}]_{\alpha}^{~\beta} \\
 & =0 \\
[\bar{\sigma}^{0}\sigma ^{i}+\bar{\sigma}^{i}\sigma ^{0}]^{\dot{\beta}}_{~\dot{\alpha}} & =[\mathbb{I}\sigma ^{i}+(-\sigma ^{i})\mathbb{I}]^{\dot{\beta}}_{~\dot{\alpha}} \\
 & =0
\end{align}$$

similarly for $\displaystyle{\mu=i,\nu=0}$

$$\begin{align}
[\sigma ^{i}\bar{\sigma}^{0}+\sigma ^{0}\bar{\sigma}^{i}]_{\alpha}^{~\beta} & =[\sigma ^{i}\mathbb{I}+\mathbb{I}(-\sigma ^{i})]_{\alpha}^{~\beta} \\
 & =0 \\
[\bar{\sigma}^{i}\sigma ^{0}+\bar{\sigma}^{0}\sigma ^{i}]^{\dot{\beta}}_{~\dot{\alpha}} & =[(-\sigma ^{i})\mathbb{I}+\mathbb{I}\sigma ^{i}]^{\dot{\beta}}_{~\dot{\alpha}} \\
 & =0
\end{align}$$

for $\displaystyle{\mu=i,\nu=j}$

$$\begin{align}
[\sigma ^{i}\bar{\sigma}^{j}+\sigma ^{j}\bar{\sigma}^{i}]_{\alpha}^{~\beta} & =[-\sigma ^{i}\sigma ^{j}-\sigma ^{j}\sigma ^{i}]_{\alpha}^{~\beta} \\
 & =-\{\sigma ^{i},\sigma ^{j}\}_{\alpha}^{~\beta} \\
 & =-2\delta ^{ij}\delta _{\alpha}^{~\beta} \\
[\bar{\sigma}^{i}\sigma ^{j}+\bar{\sigma}^{j}\sigma ^{i}]^{\dot{\beta}}_{~\dot{\alpha}} & =[-\sigma ^{i}\sigma ^{j}-\sigma ^{j}\sigma ^{i}]^{\dot{\beta}}_{~\dot{\alpha}} \\
 & =-\{\sigma ^{i},\sigma ^{j}\}^{\dot{\beta}}_{~\dot{\alpha}} \\
 & =-2\delta ^{ij}\delta ^{\dot{\beta}}_{~\dot{\alpha}}
\end{align}$$

as a summary

$$\begin{align}
[\sigma ^{\mu}\bar{\sigma}^{\nu}+\sigma ^{\nu}\bar{\sigma}^{\mu}]_{\alpha}^{~\beta} & =2\eta ^{\mu \nu}\delta _{\alpha}^{~\beta} \\
[\bar{\sigma}^{\mu}\sigma ^{\nu}+\bar{\sigma}^{\nu}\sigma ^{\mu}]^{\dot{\beta}}_{~\dot{\alpha}} & =2\eta ^{\mu \nu}\delta ^{\dot{\beta}}_{~\dot{\alpha}}
\end{align}$$

# problem 2

prove that

$$\begin{align}
\psi ^{\dagger}\bar{\sigma}^{\mu}\chi & =-\chi \sigma ^{\mu}\psi ^{\dagger} \\
\psi ^{\dagger}\bar{\sigma}^{\mu}\sigma ^{\nu}\chi ^{\dagger} & =\chi ^{\dagger}\bar{\sigma}^{\nu}\sigma ^{\mu}\psi ^{\dagger}
\end{align}$$

## solution

we have

$$\begin{align}
\psi ^{\dagger}\bar{\sigma}^{\mu}\chi & =\psi ^{\dagger}_{\dot{\alpha}}\bar{\sigma}^{\mu\dot{\alpha}\beta}\chi _{\beta} \\ 
 & =-\chi _{\beta}\bar{\sigma}^{\mu\dot{\alpha}\beta}\psi ^{\dagger}_{\dot{\alpha}} \\
 & =-\chi ^{\beta}\sigma ^{\mu}_{\beta \dot{\alpha}}\psi ^{\dagger \dot{\alpha}} \\
 & =-\chi \sigma ^{\mu}\psi ^{\dagger}
\end{align}$$

and

$$\begin{align}
\psi ^{\dagger}\bar{\sigma}^{\mu}\sigma ^{\nu}\chi ^{\dagger} & =\psi ^{\dagger}_{\dot{\alpha}} \bar{\sigma}^{\mu \dot{\alpha}\beta} \sigma ^{\nu}_{\beta \dot{\gamma}}\chi ^{\dagger \dot{\gamma}} \\
 & =-\chi ^{\dagger \dot{\gamma}}(\bar{\sigma}^{\mu}\sigma ^{\nu})^{\dot{\alpha}}_{~\dot{\gamma}}\psi ^{\dagger}_{\dot{\alpha}} \\
 & =\chi ^{\dagger}_{\dot{\gamma}}(\bar{\sigma}^{\nu}\sigma ^{\mu})^{\dot{\gamma}}_{~\dot{\alpha}}\psi ^{\dagger \dot{\alpha}} \\
 & =\chi ^{\dagger}\bar{\sigma}^{\nu}\sigma ^{\mu}\psi ^{\dagger}
\end{align}$$

# problem 3

for the free Wess-Zumino model

$$\begin{align}
S & =\int \mathrm{d}^{4}x\left[(\partial ^{\mu}\phi ^{*})(\partial _{\mu}\phi)+i\psi ^{\dagger}\bar{\sigma}^{\mu}\partial _{\mu}\psi\right]
\end{align}$$

with the on-shell SUSY transformations

$$\begin{align}
\delta \phi & =\epsilon ^{\alpha}\psi _{\alpha} & \delta \psi _{\alpha} & =-i(\sigma ^{\mu}\epsilon ^{\dagger})_{\alpha}(\partial _{\mu}\phi)
\end{align}$$

show the on-shell SUSY algebra relation

$$\begin{align}
[\delta _{\epsilon_{2}},\delta _{\epsilon_{1}}]\psi _{\alpha} & =\epsilon ^{\mu}P_{\mu}\psi _{\alpha}
\end{align}$$

where $\displaystyle{P_{\mu}}$ is the generator of 4-dimensional translations.

## solution

we have

$$\begin{align}
\delta _{\epsilon_{2}}\delta _{\epsilon_{1}}\psi _{\alpha} & =-i(\sigma ^{\mu}\epsilon_{1}^{\dagger})_{\alpha}\epsilon ^{\beta}_{2}\partial _{\mu}\psi _{\beta} \\
\implies[\delta _{\epsilon_{2}},\delta _{\epsilon_{1}}]\psi _{\alpha} & =-i[(\sigma ^{\mu}\epsilon ^{\dagger}_{1})_{\alpha}\epsilon_{2}^{\beta}-(\sigma ^{\mu}\epsilon_{2}^{\dagger})_{\alpha}\epsilon_{1}^{\beta}]\partial _{\mu}\psi _{\beta}
\end{align}$$

notice that

$$\begin{align}
(\sigma ^{\mu}\epsilon_{1}^{\dagger})_{\alpha}\epsilon _{2}^{\beta}-(\sigma ^{\mu}\epsilon_{2}^{\dagger})_{\alpha}\epsilon_{1}^{\beta} & =-(\epsilon_{2}\sigma ^{\mu}\epsilon_{1}^{\dagger}-\epsilon_{1}\sigma ^{\mu}\epsilon_{2}^{\dagger})\delta _{\alpha}^{~\beta}+(\epsilon_{2}\sigma ^{\nu}\epsilon_{1}^{\dagger}-\epsilon_{1}\sigma ^{\nu}\epsilon_{2}^{\dagger})(\sigma _{\nu}\bar{\sigma}^{\mu})_{\alpha}^{~\beta}
\end{align}$$

in fact, the second term of the RHS gives

$$\begin{align}
(\epsilon_{2}\sigma ^{\nu}\epsilon_{1}^{\dagger}-\epsilon_{1}\sigma ^{\nu}\epsilon_{2}^{\dagger})(\sigma _{\nu}\bar{\sigma}^{\mu})_{\alpha}^{~\beta} & =(\epsilon_{2}^{\gamma}\sigma ^{\nu}_{\gamma \dot{\gamma}}\epsilon_{1}^{\dagger \dot{\gamma}}-\epsilon_{1}^{\gamma}\sigma ^{\nu}_{\gamma \dot{\gamma}}\epsilon_{2}^{\dagger \dot{\gamma}})\sigma _{\nu \alpha \dot{\alpha}}\bar{\sigma}^{\mu \dot{\alpha}\beta} \\
 & =2(\epsilon_{2}^{\gamma}\epsilon _{\gamma \alpha}\epsilon_{1}^{\dagger \dot{\gamma}}\epsilon _{\dot{\gamma}\dot{\alpha}}-\epsilon_{1}^{\gamma}\epsilon _{\gamma \alpha}\epsilon ^{\dagger \dot{\gamma}}_{2}\epsilon _{\dot{\gamma}\dot{\alpha}})\bar{\sigma}^{\mu \dot{\alpha}\beta} \\
 & =2(\epsilon_{2\alpha}\epsilon_{1\dot{\alpha}}^{\dagger}-\epsilon_{1\alpha}\epsilon ^{\dagger}_{2\dot{\alpha}})\bar{\sigma}^{\mu \dot{\alpha}\beta} \\
 & =(\epsilon_{2}\sigma ^{\mu}\epsilon_{1}^{\dagger}-\epsilon_{1}\sigma ^{\mu}\epsilon_{2}^{\dagger})\delta _{\alpha}^{~\beta}+2[(\sigma ^{\mu}\epsilon_{1}^{\dagger})\epsilon_{2}^{\beta}-(\sigma ^{\mu}\epsilon_{2}^{\dagger})_{\alpha}\epsilon_{1}^{\beta}]
\end{align}$$

then

$$\begin{align}
[\delta _{\epsilon_{2}},\delta _{\epsilon_{1}}]\psi _{\alpha} & =-i[-(\epsilon_{2}\sigma ^{\mu}\epsilon_{1}^{\dagger}-\epsilon_{1}\sigma ^{\mu}\epsilon_{2}^{\dagger})\delta _{\alpha}^{~\beta}+(\epsilon_{2}\sigma ^{\nu}\epsilon_{1}^{\dagger}-\epsilon_{1}\sigma ^{\nu}\epsilon_{2}^{\dagger})(\sigma _{\nu}\bar{\sigma}^{\mu})_{\alpha}^{~\beta}]\partial _{\mu}\psi _{\beta} \\
 & \approx\epsilon ^{\mu}P_{\mu}\psi
\end{align}$$

here $\displaystyle{\approx}$ means the equality holds on-shell, which means we have used the eom for fermion $\displaystyle{\bar{\sigma}^{\mu}\partial _{\mu}\psi=0}$. and $\displaystyle{\epsilon ^{\mu}=-\epsilon_{2}\sigma ^{\mu}\epsilon_{1}^{\dagger}+\epsilon_{1}\sigma ^{\mu}\epsilon_{2}^{\dagger}}$.