## vielbein and spin connection

in order to define action of fermions in curved spacetime, we need to introduce vielbein and spin connection

in quantum field theory the fermions lie in a four dimensional representation of the Lorentz group $\displaystyle{\mathrm{SO}(3,1)}$ give by the gamma matrices which span a Clifford algebra with the following anticommuting rules as

$$
\tag{?.1}
\begin{align}
\left\{\gamma^{a},\gamma^{b}\right\}=2\eta^{ab}
\end{align}
$$

one defines the gamma matrices in the curved spacetime as

$$
\tag{?.2}
\begin{align}
\gamma^{\mu}(x) & =\gamma^{a}e^{\mu}_{a}
\end{align}
$$

where $\displaystyle{\gamma^{\mu}}$ depend on the coordinates, $\displaystyle{\mu}$ is the index in the spacetime and $\displaystyle{a}$ is the index in the flat spacetime. $\displaystyle{e^{\mu}_{a}}$ are called vielbein/tetrad and satisfy the relation

$$
\tag{?.3}
\begin{align}
g^{\mu \nu}=e^{\mu}_{a}e^{\nu}_{b}\eta^{ab}
\end{align}
$$

and then $\displaystyle{\gamma^{\mu}}$ satisfy a generalized Clifford algebra with anticommuting relation

$$
\tag{?.4}
\begin{align}
\left\{\gamma^{\mu},\gamma^{\nu}\right\}=2g^{\mu \nu}
\end{align}
$$

one requires further that the operations of parallel transport and projection on flat and curved spacetime indices commute, one arrives (just like the Christoffel symbol in the ordinary approach of general relativity)

$$
\tag{?.5}
\begin{align}
D_{\mu}e^{a}_{\nu}=\partial_{\mu}e^{a}_{\nu}-\Gamma^{\rho}_{\mu \nu}e^{a}_{\rho}-\omega^{a}_{\mu b}e^{b}_{\nu}=0
\end{align}
$$

where $\displaystyle{\omega^{a}_{~\mu b}}$ is the spin connection

$$
\tag{?.6}
\begin{align}
\omega^{a~b}_{~\mu}=e^{a}_{\nu}\Gamma^{\nu}_{~\mu \sigma}e^{\sigma b}+e^{a}_{\nu}\partial_{\mu}e^{\nu b}
\end{align}
$$

then the covariant derivative of a Dirac fermion in the curved spacetime is written as

$$
\tag{?.7}
\begin{align}
D_{\mu}\Psi=\partial_{\mu}\Psi-\frac{i}{4}\omega^{a~b}_{~\mu}\sigma_{ab}\Psi
\end{align}
$$

where $\displaystyle{\sigma^{ab}=\frac{i}{2}[\gamma^{a},\gamma^{b}]}$.
