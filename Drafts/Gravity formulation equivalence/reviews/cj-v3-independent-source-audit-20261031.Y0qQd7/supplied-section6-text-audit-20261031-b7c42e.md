# Archived supplied-text audit of benchmark §6

**Verdict: scoped acceptance, with two notation/normalization clarifications.** No substantive calculation error was found in the reviewed section.

## Status and scope

This file archives the **already completed supplied-text review** of [§6 of the vacuum quantum-equivalence benchmark, then at lines 343–428](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/10 Vacuum quantum equivalence benchmark.md#L343-L428>). It is not a fresh independent source audit. The reviewed snapshot included the convention mapping (6.0), the source-evidence summary, and the localization repair through (6.6)–(6.7).

Only that section was read for this synthesis-text review. No other benchmark section or linked parent CAS artifact was opened, no settled calculation was rerun, and no file was edited. **Creating this archive involved no new reading, review, mathematical derivation, or CAS execution.** The parent has stated that both requested clarifications are being incorporated; their incorporation is not re-inspected or certified here. Existing source-audit, repair, and reflection reports remain unchanged.

## Accepted claims in the reviewed text

1. **Printed versus action-derived symplectic form.** The section correctly distinguishes the printed CJ form \(\omega_{\rm CJ}=d\alpha_{\rm CJ}\) from the action-derived CPS form \(\Omega_{\rm CPS,CJ}=-\omega_{\rm CJ}\), given \(S_{\rm CJ}=-\int(\alpha_{\rm CJ}\cdot\dot x+H)dt\). Its source Hamiltonian convention \(\iota_v\omega_{\rm CJ}=+dH\) is correctly converted.
2. **Reflection and annihilators.** Under \(\theta=-x\), \(\phi(\theta)=-f(-\theta)\), equation (6.0) has the correct reflected forms. The mode relation \(\epsilon_n=-u_{-n}\) preserves the positive-frequency annihilator identification; it does not reverse physical time.
3. **Geometric torus parameter.** The relations \(\tau_s=-\bar\tau_x\) and \(q_s=\bar q_x\) correctly express the reflected geometric chirality. Retaining the source q as an abstract Hamiltonian fugacity is consistent, provided it is not silently identified with the same-symbol geometric q in the x coordinate at nonzero angular potential.
4. **Localization repair.** Equations (6.2)–(6.7) agree with the previously checked supplied-repair audit. This includes the covariant fermionic term \(g_{ij}[(\nabla_kv^i)\psi^k+iD_y\psi^i]\psi^j\), the operators \(K=-A-i\partial_y\), \(M=-A^2-\partial_y^2=(A-i\partial_y)K\), and the real-twist eigenvalue \((m-n\tau_s)/\operatorname{Im}\tau_s\). The constant reduced fixed point, its twisted representative, and the retained classical phase are consistent.
5. **Actual source scope.** The section correctly says that the ordinary-orbit \(c=C+1\) stress two-point calculation is not an independently computed PSL-vacuum correlator. It correctly describes the sphere calculation as reusing the determinant. It also retains the functional-measure, contour, gauge-quotient, field-space-boundary, determinant-phase, and limit-control qualifications needed beyond the repaired local algebra. The printed positivity defect is not treated as a counterexample to the final character.

## Required precision clarification 1: classical Hamiltonian matching

In equation (6.0), explicitly label
\[
H_{\rm CJ}\circ R=H_{\rm cyl}
\]
as a **classical/bare-action statement**, or write \(H_{\rm cyl}^{\rm cl}\). The source function is
\[
H=-\frac{C}{24\pi}\int dx\,\{f,x\}
-\frac{C}{48\pi}\int dx\,f'^2,
\qquad H[f=x]=-\frac C{24}.
\]
The regulated quantum vacuum energy under the source prescription is instead \(-(C+13)/24\). If the benchmark has already defined \(H_{\rm cyl}\) as the classical function above, this is a local clarification rather than a change in its result. The displayed equality must not silently assert a regulator-independent quantum operator identity or confuse the cylinder Hamiltonian with the plane \(L_0\) whose vacuum eigenvalue is zero.

## Required precision clarification 2: bare versus character k

In equation (6.1), rename \(k_{\rm intro}\) to \(k_{\rm intro,bare}\) or \(k_{\rm SO}\), or state explicitly that it means the source's **\(C=24k\) bare-action parameter on PDF page 5**, not the **\(k_\chi=c/24\) character parameter in (1.1), PDF page 3**.

The reviewed factor-four conversion is correct for the bare parameters:
\[
k_{\S3}=4k_{\rm SO}=\frac{\ell}{4G},\qquad
C=6k_{\S3}=24k_{\rm SO}.
\]
Under the source's vacuum identification, however,
\[
k_\chi=\frac c{24}=k_{\rm SO}+\frac{13}{24}.
\]
The introduction overloads k; fixing the reversed footnote alone does not remove that additional bare-versus-quantum distinction.

## Optional presentation points recorded in the completed review

These were not identified as substantive errors:

- Specify \(g=\delta\) for the oscillator-plane positivity counterexample if desired, together with a compatible symplectic orientation.
- At fixed \(\beta\), replace the fundamental loop by \(\cos(2\pi Ny/\beta)\) to display high-frequency negativity explicitly: \(2\pi/\beta\) in the example becomes \(2\pi N/\beta\).

**Final assessment:** the reviewed §6 is sound within its stated conditional scope. Preserve the classical-Hamiltonian and bare-k clarifications; no additional settled calculation needs to be reopened on the basis of this supplied-text review.
