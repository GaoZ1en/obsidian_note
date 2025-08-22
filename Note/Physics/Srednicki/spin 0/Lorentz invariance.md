a Lorentz transformation is a linear, homogeneous change of coordiantes from $\displaystyle{x^{\mu}}$ to $\displaystyle{x'^{\mu}}$,

$$\tag{1.1}\begin{align}
x'^{\mu} & =\Lambda ^{\mu}_{~\nu}x^{\nu}
\end{align}$$

that preserve $\displaystyle{x^{2}=\eta _{\mu \nu}x^{\mu}x^{\nu}}$, which gives

$$\tag{1.2}\begin{align}
\eta _{\mu \nu}\Lambda ^{\mu}_{~\rho}\Lambda ^{\nu}_{~\sigma} & =\eta _{\rho \sigma}
\end{align}$$

here we adopt the $\displaystyle{\eta _{\mu \nu}=\mathrm{diag}(-1,+1,\dots,+1)}$. the set of all Lorentz transformation forms a group. the inverse transformation satisfies $\displaystyle{(\Lambda ^{-1})^{\rho}_{~\nu}\Lambda ^{\nu}_{~\mu}=\delta ^{\rho}_{~\mu}\implies(\Lambda ^{-1})^{\rho}_{~\nu}=\Lambda _{\nu}^{~\rho}}$. thus

$$\tag{1.3}\begin{align}
\eta ^{\rho \sigma}\Lambda ^{\mu}_{~\rho}\Lambda ^{\nu}_{~\sigma} & =\eta ^{\mu \nu}
\end{align}$$

consider an infinitesimal Lorentz transformation

$$\tag{1.4}\begin{align}
\Lambda ^{\mu}_{~\nu} & =\delta ^{\mu}_{~\nu}+\delta \omega ^{\mu}_{~\nu}
\end{align}$$

then

$$\tag{1.5}\begin{align}
\eta _{\mu \nu}(\delta ^{\mu}_{~\rho}+\delta \omega ^{\mu}_{~\rho})(\delta ^{\nu}_{~\sigma}+\delta \omega ^{\nu}_{~\sigma})& =\eta _{\rho \sigma} \\
\implies \delta \omega _{\rho \sigma}=-\delta \omega _{\sigma \rho}
\end{align}$$

giving $\displaystyle{\frac{d(d-1)}{2}}$ independent generators that decompose into $\displaystyle{\frac{(d-1)(d-2)}{2}}$ rotations and $\displaystyle{d-1}$ boosts. The full Lorentz group $\displaystyle{\mathrm{O}(1,d-1)}$ consists of four disconnected components classified by $\displaystyle{\det \Lambda=\pm1}$ (proper/improper) and $\displaystyle{\Lambda ^{0}_{~0}\gtrless\pm1}$ (orthochronous/non-orthochronous), where only the proper orthochronous subgroup $\displaystyle{\mathrm{SO}^{+}(1,3)}$ can be reached by compounding infinitesimal transformations, while the other components require discrete symmetries, parity $\displaystyle{\mathcal{P}}$ and time reversal $\displaystyle{\mathcal{T}}$ to access the full group structure $\displaystyle{\mathrm{O}(1,d-1)=\left\{I,\mathcal{P},\mathcal{T},\mathcal{PT}\right\}\times \mathrm{SO}^{+}(1,d-1)}$

$$\tag{1.6}\begin{align}
\mathcal{P}^{\mu}_{~\nu} & =(\mathcal{P}^{-1})^{\mu}_{~\nu}=\begin{pmatrix}
+1 &  &  &  \\
 & -1 &  &  \\
 &  & -1 &  \\
 &  &  & -1
\end{pmatrix} \\
\mathcal{T}^{\mu}_{~~~\nu} & =(\mathcal{T}^{-1})^{\mu}_{~\nu}=\begin{pmatrix}
-1 &  &  &  \\
 & +1 &  &  \\
 &  & +1 &  \\
 &  &  & +1
\end{pmatrix}
\end{align}$$

generally, when a theory is said to be Lorentz invariant, this means under the proper orthochronous subgroup $\displaystyle{\mathrm{SO}^{+}(1,d-1)}$ only. parity and time reversal are treated separately. 

in quantum theory, symmetries are represented by unitary (or antiunitary) operators. we associate a unitary operator $\displaystyle{U(\Lambda)}$ to each proper, orthochronous Lorentz transformation $\displaystyle{\Lambda}$, and these operators must obey the composition rule

$$\tag{1.7}\begin{align}
U(\Lambda'\Lambda) & =U(\Lambda')U(\Lambda)
\end{align}$$

for an infinitesimal transformation, we can write

$$\tag{1.8}\begin{align}
U(1+\delta \omega) & =I+\frac{i}{2}\delta \omega _{\mu \nu}M^{\mu \nu}
\end{align}$$

where $\displaystyle{M^{\mu \nu}=-M^{\nu \mu}}$ are the generators of the Lorentz group. consider $\displaystyle{U(\Lambda)^{-1}U(\Lambda')U(\Lambda)=U(\Lambda ^{-1}\Lambda'\Lambda)}$, and let $\displaystyle{\Lambda'=1+\delta \omega'}$, then

$$\tag{1.9}\begin{align}
U(\Lambda)^{-1}U(\Lambda')U(\Lambda) & =U(\Lambda ^{-1}\Lambda'\Lambda) \\
U(\Lambda)^{-1}\left( 1+\frac{i}{2}\delta \omega _{\mu \nu}M^{\mu \nu} \right)U(\Lambda) & =U(\Lambda ^{-1}(1+\delta \omega)\Lambda) \\
 I+\frac{i}{2}\delta \omega _{\mu \nu}U(\Lambda)^{-1}M^{\mu \nu}U(\Lambda)& =U(1+\Lambda ^{-1}\delta \omega \Lambda) \\
 & =I+\frac{i}{2}(\Lambda ^{-1}\delta \omega \Lambda)_{\mu \nu}M^{\mu \nu} \\
 & =I+\frac{i}{2}\Lambda ^{\rho}_{~\mu}\Lambda ^{\sigma}_{~\nu}\delta \omega _{\rho \sigma}M^{\mu \nu} \\
\implies U(\Lambda)^{-1}M^{\mu \nu}U(\Lambda) & =\Lambda ^{\mu}_{~\rho}\Lambda ^{\nu}_{~\sigma}M^{\rho \sigma}
\end{align}$$

similarly, we have

$$\tag{1.10}\begin{align}
U(\Lambda)^{-1}P^{\mu}U(\Lambda) & =\Lambda ^{\mu}_{~\nu}P^{\nu}
\end{align}$$

let $\displaystyle{\Lambda=1+\delta \omega}$ in (1.9), we get

$$\tag{1.11}\begin{align}
\left( 1-\frac{i}{2}\delta \omega _{\rho \sigma}M^{\rho \sigma} \right)M^{\mu \nu}\left( 1+\frac{i}{2}\delta \omega _{\lambda \tau}M^{\lambda \tau} \right) & =(\delta ^{\mu}_{~\rho}+\delta \omega ^{\mu}_{~\rho})(\delta ^{\nu}_{~\sigma}+\delta \omega ^{\nu}_{~\sigma})M^{\rho \sigma} \\
\frac{i}{2}\delta \omega _{\rho \sigma}[M^{\mu \nu},M^{\rho \sigma}] & =\delta ^{\mu}_{~\rho}\delta \omega ^{\nu}_{~\sigma}M^{\rho \sigma}+\delta ^{\nu}_{~\sigma}\delta \omega ^{\mu}_{~\rho}M^{\rho \sigma}
\end{align}$$