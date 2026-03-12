# Appendix C: Exceptional case involving mode overlaps and logarithmic representations

In the generic analysis of the Proca-Chern-Simons theory, the solution space decomposes into a left-handed sector and a right-handed sector characterized by the shifted masses $\mu_+$ and $\mu_-$. The highest weight primaries possess conformal weights:
$$ (h_+, \bar{h}_+) = \left(\frac{\mu_+}{2} , 1+\frac{\mu_+}{2}\right) $$
$$ (h_-, \bar{h}_-) = \left(1+\frac{\mu_-}{2} , \frac{\mu_-}{2}\right) $$

However, a special situation arises when the difference between the two mass modes allows a descendant of one sector to perfectly match the conformal weights (and consequently, the energy and angular momentum) of the primary mode of the other sector. 

## C.1 The Resonance Condition

Let us attempt to match a descendant of the right-handed mode $A_-$ to the primary of the left-handed mode $A_+$. Applying conformal raising operators $n$ times in the holomorphic and $\bar{n}$ times in the anti-holomorphic sector yields a state with weights:
$$ h_{desc} = h_- + n = 1 + \frac{\mu_-}{2} + n $$
$$ \bar{h}_{desc} = \bar{h}_- + \bar{n} = \frac{\mu_-}{2} + \bar{n} $$
Equating these to $(h_+, \bar{h}_+)$ requires:
$$ 1 + \frac{\mu_-}{2} + n = \frac{\mu_+}{2} \implies \mu_+ - \mu_- = 2(n+1) $$
$$ \frac{\mu_-}{2} + \bar{n} = 1 + \frac{\mu_+}{2} \implies \mu_+ - \mu_- = 2(\bar{n}-1) $$
For both to be simultaneously satisfied, we must have $n+1 = \bar{n}-1$, implying $\bar{n} = n+2$. 

Because $n \ge 0$ is an integer, this critical overlap occurs precisely when the effective masses satisfy the resonance condition:
$$ \mu_+ - \mu_- = 2K, \quad \text{where } K \in \mathbb{Z} \setminus \{0\}. $$
(Note: Assuming $K > 0$, the overlap happens at $n = K-1$ and $\bar{n} = K+1$. For $K < 0$, by a symmetric argument, a descendant of $A_+$ overlaps with the primary of $A_-$).

## C.2 Logarithmic Modes and Jordan Blocks

When $\mu_+ - \mu_- = 2K$, the two linearly independent representations "collide". From the perspective of local differential equations, the indicial roots differ by an integer. In standard Frobenius method analysis, the second linearly independent solution acquires a logarithmic branch.

Physically, because the standard highest-weight primary $f_{+,0,0}^\mu$ and the specialized descendant $(\mathcal{L}_{\xi_{-1}})^{K-1} (\mathcal{L}_{\bar{\xi}_{-1}})^{K+1} f_{-,0,0}^\mu$ become degenerate, the symplectic product matrix becomes non-diagonalizable. To construct a complete, linearly independent set of modes for the phase space, one must introduce a **logarithmic mode** $f_{log}^\mu$. 

Formally, this mode is derived by approaching the resonance dynamically (setting $\mu_+ - \mu_- = 2K + \epsilon$) and taking the limit:
$$ f_{log}^\mu \propto \lim_{\epsilon \to 0} \frac{\alpha f_{primary}^\mu(\epsilon) - \beta f_{descendant}^\mu(\epsilon)}{\epsilon} $$
Because the parameter $\epsilon$ implicitly traces back to the effective mass and geometry dimensions, differentiating with respect to it pulls down explicit coordinates. Thus, the logarithmic mode profile $f_{log}^\mu$ acquires terms proportional to:
1. Explicit coordinate time $t$
2. Logarithmic radial dependence $\ln(1+r^2)$

This phenomenon is the hallmark of a **Logarithmic Conformal Field Theory (LCFT)**. Under the action of the Hamiltonian $H$ (or the dialation operator $L_0$), the logarithmic mode is not a proper eigenstate. Instead, it forms a rank-2 **Jordan Block** with the primary state:
$$ H f_{+, primary} = E f_{+, primary} $$
$$ H f_{+, log} = E f_{+, log} + \mathcal{N} f_{+, primary} $$

## C.3 Unitarity Considerations

In most holographic manifestations (such as Topologically Massive Gravity at the chiral point), the presence of logarithmic modes indicates a breakdown of standard unitarity since the states generating the Jordan block typically entail zero-norm states or negative norms off-diagonal. For the generic continuous values of $\mu_+ - \mu_- \notin 2\mathbb{Z}$, the representations strictly separate into a standard direct sum $\mathcal{H}_+ \oplus \mathcal{H}_-$, preserving full physical unitarity. Therefore, this resonance serves as a specific pathological threshold across the parameter space of $(k, \mu)$.
