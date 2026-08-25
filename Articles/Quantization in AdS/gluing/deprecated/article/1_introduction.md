# Introduction

Cutting a field theory into spatial regions replaces one system by theories with artificial boundaries. Quantizing the regions separately is straightforward once regional boundary conditions are chosen, but it leaves a second question: how can one couple the resulting regional quantum theories so that the joined theory is recovered? In this paper we study one concrete answer for free scalar fields. We retain the product of regional Hilbert spaces and add a quadratic interaction between the two interface traces.

This prescription is a finite-coupling, or penalty, realization of gluing. We do not claim that an interface penalty is a general or intrinsic definition of QFT gluing. Its advantage is narrower and computational: the coupled theory remains Gaussian, so its continuum normal modes, finite-mode Hamiltonians, spectra, and vacuum covariances can all be compared within one framework. The weak-coupling endpoint gives the chosen decoupled regional theories, while the strong-coupling target suppresses the trace mismatch. These endpoint statements do not by themselves imply an identification of continuum Fock representations.

The regulator is part of the quantum problem. A regional mode truncation removes high-frequency oscillators that still contribute to the response of the boundary trace. Using the continuum interface coupling unchanged at every cutoff therefore gives a distorted low-energy secular equation. We compensate for the omitted response by a cutoff-dependent coupling. In matrix notation the construction follows the chain

$$
(\mathcal P_i,\Omega_i)
\longrightarrow
\mathcal H_i
\longrightarrow
\mathcal H_L\otimes\mathcal H_R
\longrightarrow
H_N
\longrightarrow
\text{matched spectrum and covariance}.
$$

The cut interval is the main benchmark. Its finite-coupling spectrum is obtained analytically before any truncation is introduced. We then quantize the two Neumann half intervals, truncate their regional modes, add the interface interaction, and match the missing boundary response. The spectral comparison separates a direct hard projection from a response-matched penalty. Finally, because spectral agreement alone does not determine a quantum state, the same finite Hamiltonian is used to test cross-interface and one-sided interface-to-bulk equal-time vacuum correlators against independent joined-theory references.

Section $\ref{sec:regional-quantum-gluing}$ develops the regional scalar theory, its covariant phase space and canonical quantization, the interface interaction on the quantized regional theory, and the general response-matching rule. Section $\ref{sec:two-intervals}$ applies that setup to $[-L,0]\cup[0,L]$, proceeding from the exact continuum spectrum to the regulated Hamiltonian, response-matched coupling, spectrum reconstruction, and vacuum correlators. Section $\ref{sec:conclusion}$ summarizes the verified scope. Appendix $\ref{app:four-regions}$ collects the four-region compositional check, and Appendix $\ref{app:global-ads2}$ gives a global $\mathrm{AdS}_2$ benchmark.
