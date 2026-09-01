# Verification record

Run from `Articles/Quantization in AdS/gluing`:

```sh
rtk proxy wolframscript -file ym-radial-collar-assembly/verification/radial-collar-checks.wl
```

The script checks exact algebraic or finite-matrix witnesses for:

- the sign of $\partial_xg=-A_xg$;
- radial-gauge reconstruction with conjugated curvature;
- $[\partial_x,D_a]X=[F_{xa},X]$;
- the Lorentzian product-collar Yang--Mills and Bianchi component signs;
- the normal Gauss/constraint sign;
- opposite outward-normal transmission;
- $\partial_xv=vD_x-C_xv$ and its path-ordered comparison solution;
- the crossing Wilson-line transformation; and
- cancellation of twisted CPS boundary charges on transmission.

The analytical proof is in `../calculations.md`. These checks do not prove path-ordered smooth parameter dependence, the all-order normal-jet induction, extension topology, existence of admissible collar tapers, choice independence, arrow completeness, stabilizer classification, orbit bijection or CPS descent on an infinite-dimensional space.

The xAct/xCoba sign check uses the exact product metric $\operatorname{diag}(+1,-1,+1)$ in coordinates $(x,t,s)$ and separately returned four zero residuals for the two tangential Yang--Mills components, the $(x,t,s)$ Bianchi component and the normal/Gauss relation. It is a component calibration, not a general Lie-algebra proof.

Executed on 2026-09-01: `radial-collar-checks.wl` returned **12/12 PASS**, process exit 0. The xAct/xCoba residual check returned **4/4 zero**, with no package-load errors. During script development, two multiline Wolfram expressions placed a leading `+` on the next input line, so that line was parsed as a separate expression and the first run returned 10/12. Moving the binary operators to the preceding lines restored the intended exact expressions; no physics formula or note claim was changed.
