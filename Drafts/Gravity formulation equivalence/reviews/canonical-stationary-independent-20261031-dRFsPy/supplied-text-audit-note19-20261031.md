# Supplied-text audit of note19 — separate from the frozen independent derivation

## Verdict and scope

**The requested claims in §§3–4 and §6 are correct in the continuous-finite-jet formal category.** I find no wrong sign, missing quartic Magnus term, or erroneous Schur factor in the supplied text. The finite-jet estimates in §5 are sufficient to construct an all-orders **formal** map; they do not need a uniform bound in polynomial order or convergence of the full graded series.

Two small precision improvements are recommended below: explicitly define the notation `v_{3,t}`, and specify the topology/category meant by the completed graded formal powers. Neither is a counterexample to the theorem when the text is read in its intended finite-jet sense.

This is a **subsequent supplied-text audit**, requested after the independent proof and evidence were frozen. It is not represented as an independent derivation of the supplied gravitational map. The prior [frozen proof](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/canonical-stationary-independent-20261031-dRFsPy/proof.md>), its source files, outputs, and [manifest](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/canonical-stationary-independent-20261031-dRFsPy/freeze_manifest.json>) have not been changed. No other current reviewer report was read.

Audited source: [note19](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/19 Retained BV canonical transport on complete AdS.md>), 428 lines at the time of reading, SHA256:

```text
c8b23c76b1e7526b4cf4c284f01778ac9a8d5fbdfd9baafbb6fd75903ff034f9
```

The audit focuses on the stationary theorem, flow direction/time ordering, equations (26)–(29), the inference from §5 finite-jet estimates to formal all-orders transport, and the exact example. It does not freshly verify all 48 gravitational component identities in §2 or independently reprove every complete-manifold boundary estimate in §5.

## 1. Flow direction and ordering: correct

At [note19:252–266](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/19 Retained BV canonical transport on complete AdS.md#L252-L266>), equation (23) is

\[
\dot U_tF=(U_tF,\gamma_t)_P=A_{\gamma_t}U_tF,
\qquad A_{\gamma_t}F=(F,\gamma_t)_P.
\]

Thus `dot U=A_gamma U`, **not** `dot U=U A_gamma`. It follows immediately that `U_tS_tree,0` solves the same initial-value equation as `S_tree,t`, so the direction in equation (24),

\[
\mathcal K^*S_{\rm CS,tree}=S_{g,\rm tree},
\]

is correct. Because `A_gamma` is an even derivation of both the commutative product and the antibracket, the filtered evolution preserves both operations.

For an unambiguous ordinary point-flow description, define

\[
\dot f_t^A=(\gamma_t,z^A)_P\circ f_t,
\qquad f_0=\mathrm{id}.
\]

Then

\[
f_t^*S_{\mathrm{tree},t}=S_{\mathrm{tree},0},\qquad
U_t=(f_t^{-1})^*.
\]

Indeed `d(f_t^*)/dt=f_t^*X_gamma`, with `X_gamma F=(gamma,F)=−A_gamma F`, and differentiating its inverse gives `dot U=A_gamma U`. This confirms the time-ordering warning at line 266. The inverse of a time-dependent flow is not, in general, the flow obtained merely by negating the vector field at the same time.

**Optional clarity improvement:** display this `f_t` equation alongside line 266. Earlier [note19:35–42](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/19 Retained BV canonical transport on complete AdS.md#L35-L42>) calls `−Γ_t` the left generator of the same *action evolution*, whereas the left point flow transporting the moving action backward uses `+γ_t`. These are consistent, but writing the point-flow equation would prevent a reader from confusing the two statements.

The stationary proof at [note19:230–247](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/19 Retained BV canonical transport on complete AdS.md#L230-L247>) correctly keeps the UV contribution. The constraints `v=0, ∂_uS=0`, together with `Qv=±∂_uS` and `Q²v=0`, are the decisive mechanism. The critical-locus qualification at lines 249–250 is also correct.

## 2. General cyclic Schur formula (26): correct

Use `v=v_{3,t}` for the cubic cyclic gradient. Let `K` denote the graded quadratic Hessian on the fixed UV Lagrangian. To degree two the stationary equation is

\[
K(y_2,\ell)+\mathcal B(\ell,v)=0,
\qquad y_2=-h_Tv.
\]

Therefore the quartic stationary action is

\[
\begin{aligned}
W_4
&=V_{4,t}|_P+\mathcal B(y_2,v)+\tfrac12K(y_2,y_2)\\
&=V_{4,t}|_P+\tfrac12\mathcal B(y_2,v)\\
&=V_{4,t}|_P-\tfrac12\mathcal B(v,h_Tv).
\end{aligned}
\]

The last transposition has positive cyclic sign for total degrees `2` and `1`. It is important that the displayed operator is `h_T`, with the coefficient ghost-parity convention, rather than raw `h`.

No extra explicit UV projection is missing: `h_TP=0`, the retained/UV pairing is orthogonal, and the expression automatically takes the UV source components. No physical-only Hessian is being substituted.

At the CS endpoint `v_0=[x,x]/2`, this gives `−B([x,x],h_T[x,x])/8`, confirming the factor and sign. The general formula does not require the cubic vertex to be the CS Lie bracket vertex; an arbitrary admissible cubic cyclic gradient works.

**Concrete notation improvement:** at [note19:270–286](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/19 Retained BV canonical transport on complete AdS.md#L270-L286>), only `v_i` for endpoint indices `i=0,1` is explicitly defined before `v_{3,t}` appears in (26). Add

\[
v_{3,t}:=\nabla_{\mathcal B}V_{3,t}=(1-t)v_0+t v_1.
\]

This is a definition repair, not a change of formula (26).

## 3. Quartic logarithm (28) and endpoint identity (29): correct

From equation (27), write

\[
\begin{aligned}
\gamma_{3,t}&=a:=\Gamma_3|_P,\\
\gamma_{4,t}&=t\Gamma_4|_P
-D\Gamma_3(x)\left[h_T((1-t)v_0+t v_1)\right].
\end{aligned}
\]

The Hamiltonian derivation associated with a degree-`n` generator raises polynomial degree by `n−2`. Thus the only potential order-four Hamiltonian contribution from the second Magnus term is the commutator of two cubic Hamiltonian derivations. Here both equal `A_a`, independent of time, and

\[
[A_a,A_a]=0.
\]

All commutators involving `gamma_4` first affect the degree-five Hamiltonian. Consequently, through degree four,

\[
\begin{aligned}
\mathcal H_3&=a,\\
\mathcal H_4&=\int_0^1\gamma_{4,t}\,dt\\
&=\tfrac12\Gamma_4|_P
-\tfrac12D\Gamma_3(x)[h_T(v_0+v_1)].
\end{aligned}
\]

This is exactly [equation (28), note19:291–307](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/19 Retained BV canonical transport on complete AdS.md#L291-L307>). In particular, `Γ_4` is the coefficient of `t` in the time-dependent full generator, not itself the time-one quartic logarithm. The factor `1/2` is necessary.

Expanding `exp(A_H)S_CS,tree` then gives precisely [equation (29), note19:310–319](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/19 Retained BV canonical transport on complete AdS.md#L310-L319>), including the positive term

\[
\tfrac12((S_{2,P},\mathcal H_3)_P,\mathcal H_3)_P.
\]

No nonzero quartic commutator or sign correction is missing. If the cubic generator had depended nontrivially on time, this Magnus simplification would not follow; the text explicitly uses the necessary time independence.

## 4. Why finite jets support the formal all-order claim

The inference in [note19:349–367](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/19 Retained BV canonical transport on complete AdS.md#L349-L367>) is valid in the following precise category.

Let `Z=PE` with its retained L2 norm and strong odd pairing. A formal map is a sequence of continuous graded-symmetric multilinear Taylor coefficients,

\[
K=\mathrm{id}+\sum_{m\ge2}K_m,
\qquad K_m:Z^m\longrightarrow Z.
\]

A formal functional is a sequence of continuous scalar homogeneous polynomials. The completion is a **product over polynomial degree**, so convergence of the sum on a neighborhood is not required.

The estimate (33) implies that every finite stationary jet is a continuous multilinear map on `Z`, even though intermediate outputs may require higher Sobolev seminorms. The fixed spectral band turns each required input Sobolev norm into an L2 bound. The same scalar bounds for a generator coefficient make its derivative a bounded covector-valued polynomial; the strong odd pairing turns it into a continuous retained Hamiltonian vector polynomial.

Since `gamma` begins in degree three, its Hamiltonian vector field begins in degree two, and its derivation raises the polynomial filtration strictly. At any specified output degree, the recursion for (23) involves only finitely many lower coefficients and finitely many time integrals. It defines a unique formal automorphism and a unique filtered inverse. Its product- and bracket-preservation follow coefficientwise from the corresponding derivation identities.

There is no requirement of bounds uniform in `n`, no need for an all-Sobolev inverse-function theorem, and no hidden finite-rank assumption in this formal argument. These are tree compositions of defined continuous multilinear operators, not loop traces or determinant contractions.

Time integration requires that the finite jets depend continuously/integrably on `t`. That is available here: the dilation construction and the homogeneous expansion of the resolvent make every fixed-order coefficient polynomial in `t` (or, more generally, uniformly smooth on the compact isotopy interval). It would be helpful to state explicitly that the constants in (33) may be chosen uniformly for `t∈[0,1]`; this is supported by the supplied construction rather than a new hypothesis of unknown validity.

### Concrete formal-topology precision issue

At [note19:365–367](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/19 Retained BV canonical transport on complete AdS.md#L365-L367>), the phrase “completed in exterior powers” and “symmetric formal powers” does not specify a tensor topology. On an infinite-dimensional retained band, bounded multilinear forms are automatically compatible with continuous-multilinear/projective tensor conventions; they are **not** automatically continuous linear functionals on Hilbert tensor completions. Even a bounded quadratic pairing can fail that stronger Hilbert-tensor property without a Hilbert–Schmidt condition.

Recommended clarification:

> Formal functionals are the product over degree of continuous graded homogeneous polynomial jets on the retained Hilbert band `Z`. Their degree-`n` coefficients are continuous linear functionals on the completed projective graded-symmetric tensor power of `Z`; formal map coefficients are continuous linear maps from that tensor power to `Z`. No Hilbert-tensor, nuclearity, or analytic convergence assertion is made.

Here the projective tensor power is taken on the **input space `Z`**, followed by its continuous dual for scalar functionals. It should not be confused with the projective tensor power of `Z′`, which would impose a different, generally stronger restriction on the polynomial coefficients.

With that explicit reading, the all-order formal conclusion at [note19:5](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/19 Retained BV canonical transport on complete AdS.md#L5>) is supported by the finite-jet estimates. Without fixing the category, the word “completed” could be overread; this is the only substantive precision risk found in the requested formal-infinite-rank inference.

The convergence limitations at [note19:367–369](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/19 Retained BV canonical transport on complete AdS.md#L367-L369>) are correctly stated and are not contradicted by the formal claim.

## 5. Exact example in §6: correct, including both signs

[Note19:371–414](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/19 Retained BV canonical transport on complete AdS.md#L371-L414>) agrees with the independently frozen finite example and its separately checked inverse orientation:

\[
S_t=\tfrac12(u+r^2)^2+e^{tu}pc+sd-2(v-tbc)rd,
\quad\Gamma=bcu,
\]

\[
y_t=-r^2-te^{-tr^2}pc,
\quad S_{\rm eff,t}=e^{-tr^2}pc+sd+2tbcrd,
\quad\gamma=-bcr^2.
\]

The surviving UV bracket is `+2bcrd`. The right-action retained map has

\[
c\mapsto e^{-tr^2}c,\quad b\mapsto e^{tr^2}b,
\quad s\mapsto s+2tbcr,
\]

and its pullback sends the initial effective action to the time-`t` action. Projecting the full right-action map after `j_0` omits the `s` shift and has defect `+2tr e^{-tr²}c`, exactly as (38) states. The Hessian and its nilpotent inverse in (35) are also correct.

No new kernel run is needed: these are precisely the identities already checked in the [frozen native output](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/canonical-stationary-independent-20261031-dRFsPy/sage_actual_output.txt>), [independent bitmask output](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/canonical-stationary-independent-20261031-dRFsPy/bitmask_actual_output.txt>), and [supplementary right-action output](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/canonical-stationary-independent-20261031-dRFsPy/inverse_actual_output.txt>). This reuse is explicitly a supplied-text comparison against existing evidence, not a new independent computation.

## Bottom line

- **No substantive formula correction requested** for (23), (26), (28), (29), or §6.
- **Recommend defining `v_{3,t}` explicitly.**
- **Recommend specifying the continuous-jet/projective formal completion**, and optionally the uniform-in-time finite-jet bound and explicit left point-flow equation.
- The proof supports formal all-orders retained classical transport, not a convergent graded flow or a quantum/measure statement. The supplied text already makes those exclusions.
