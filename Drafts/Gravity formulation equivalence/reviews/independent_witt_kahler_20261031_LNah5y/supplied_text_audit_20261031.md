# Supplied-text audit addendum: homogeneous descent, trace norm, and CPS factor

**Verdict: the audited claims are correct under their stated scope. No substantive gap or sign error was found in §§3–5 or the requested §1/§7 normalization and conditional canonical-line statements.** This is a subsequent audit of supplied text, not another independent derivation. No parent file was edited and no existing CAS suite was rerun.

## Text and conventions inspected

- [Integrated report, §§3–5](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/11 Projective vacuum curvature and global lifts.md#L132-L250>).
- [Integrated report, CPS normalization](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/11 Projective vacuum curvature and global lifts.md#L54-L60>).
- [Integrated report, model/conditional canonical lines](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/11 Projective vacuum curvature and global lifts.md#L312-L360>).
- [Authoritative CPS definitions](</Users/koishi/Documents/Note/Articles/Quantization in AdS/perturbation/formalism.md#L7-L83>), read before checking the CPS bridge.

## 1. Actual smooth Fréchet descent

The quotient/adjoint proof in [§3.1](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/11 Projective vacuum curvature and global lifts.md#L152-L176>) does what is needed. The action for modes at most one is the genuine representation on the quotient by the closed subalgebra of those modes, so no boundary case is omitted. Taking weighted adjoints supplies the remaining equivariance identities. Integration occurs on the actual smooth quotient representation, not on an assumed norm-smooth Hilbert representation.

The stated linear coefficient bound gives a continuous bilinear map on rapid sequences. For equivariant functions, the vertical terms in `ds + Lambda(theta)s` cancel because the restriction of Lambda is the isotropy representation. Together with H-equivariance this gives an actual smooth associated tangent connection. The torsion identity, reality, and weighted adjoints establish the claimed real Levi-Civita connection. The text correctly separates the parallel almost-complex structure and vanishing Nijenhuis tensor from the additional actual-complex-atlas input needed to call the connection Chern.

## 2. The new uniform trace-norm argument is sufficient

The correction identity in [§5](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/11 Projective vacuum curvature and global lifts.md#L226-L243>) is consistent with the connection coefficients:
\[
d_m(j)=-m(m^2-1)(2j+m)/w_{j+m},\qquad \Lambda_m=A_m+D_m.
\]
For \(m\ge r\), write \(M=m+r\). On \(j>2M\), all compressed-adjoint intermediate targets stay positive. The compressed adjoint representation contributes zero curvature there, and the remaining coefficient is exactly
\[
m d_m(j)+(j+r)[d_m(j)-d_m(j-r)]-M d_{m-r}(j).
\]
Every argument \(u\in[j-r,j]\) obeys \(u>j/2\), while \(m<j/2\). Direct estimates of the displayed rational function give uniform constants in
\[
|d_m(u)|\le K m^3j^{-2},\qquad |d'_m(u)|\le K m^3j^{-3}.
\]
The three terms above are bounded respectively by constants times \(m^4/j^2\), \(rm^3/j^2\), and \(M(m-r)^3/j^2\), hence by \(KM^4/j^2\). The normalized weight ratio is uniformly bounded on this region. Summing gives \(O(M^3)\). In the lower region, at most \(O(M)\) columns have coefficients \(O(M^2)\), including the retained/truncated intermediate targets. The adjoint relation handles \(m<r\).

Thus the claimed trace norm bound is genuinely uniform in both modes. Rapid smooth Fourier decay gives absolute trace-norm convergence of the double curvature series. This is not merely a fixed-mode asymptotic argument. It does not claim norm smoothness of the Hilbert connection or justify tracing the individual unbounded summands; the report expressly avoids both claims.

## 3. CPS normalization and curvature signs

Take the already-derived orbit integral in [§1](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/11 Projective vacuum curvature and global lifts.md#L54-L60>) as the classical input. At \(f=x\), with tangent coefficient \(\delta f(e_m)=i e^{imx}\),
\[
(\delta f'\wedge\delta f'')(e_m,e_{-m})=2im^3,\qquad
(\delta f\wedge\delta f')(e_m,e_{-m})=2im.
\]
The integral and its prefactor therefore give
\[
\Omega_C(e_m,e_{-m})=-\frac{iC}{12}(m^3-m)
=\frac C{12}\omega(e_m,e_{-m}).
\]
Consequently the report's factor is correct:
\[
\operatorname{Tr}R=\frac{13i}{6}\omega=\frac{26i}{C}\Omega_C.
\]
In particular, the factor is 26, not 13. The minus sign in the actual conjugation \(\overline e_m=-e_{-m}\) is consistently retained.

With the stated weight-minus-one line convention, \(F_{L_c}=-i\Omega_c\). Hence
\[
F_{L_{-26}}=\operatorname{Tr}R,\qquad
F_{L_{13}}=-\tfrac12\operatorname{Tr}R,\qquad
F_{L_C\otimes L_{13}}=-i\Omega_{C+13}.
\]
The canonical cotangent determinant, if actually constructed as the dual of the prescribed positive tangent determinant, has curvature \(-\operatorname{Tr}R\); its square root has curvature \(-\tfrac12\operatorname{Tr}R\). These are exactly the signs displayed in [§7](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/11 Projective vacuum curvature and global lifts.md#L316-L336>).

## 4. Scope of the conditional canonical line

The report correctly distinguishes the constructed curvature-matching model lines from their unproved identification with a canonical determinant and half-form. It does not infer the latter merely from trace-class curvature, contractibility, or a central coefficient. The additional relative lift and the possible change of acting central extension for a half-line are kept explicit. The stated exclusion of a positive-energy representation or gravitational quantum-charge theorem from this line construction is appropriate.

This audit does not reprove the separate global cocycle/root construction in §6, nor the classical reduction producing the input orbit integral. It checks the supplied local-to-smooth analytic argument and the requested normalization/dualization interface. The parent's fresh five-residual Sage check is not relabeled here as an independent calculation.
