# Exact complete-hyperbolic BV-complex checks

The [executed source](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/verification/ads-bv-hodge-parent.mo_zlba1/executed-source.py>), [actual 31-check result](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/verification/ads-bv-hodge-parent.mo_zlba1/result.json>), [native exact radial matrices](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/verification/ads-bv-hodge-parent.mo_zlba1/radial-exact.sobj>) and [actual Sage return](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/verification/ads-bv-hodge-parent.mo_zlba1/actual-server-return.json>) are byte-identical copies recorded in the [copy/hash manifest](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/verification/ads-bv-hodge-parent.mo_zlba1/copy-manifest.json>). All thirty-one exact labels pass in Sage 10.9. The return has no error, warning, stderr, transport stderr or truncation. This successful run took 81,304 ms; it was not repeated during archiving.

## Mathematical coverage

Use the Poincare coframe e=(dx,dy,dz)/z, omega=(dy,-dx,0)/z and real gravitational algebra [J,J]=epsilon J, [J,P]=epsilon P, [P,P]=-epsilon J. The implementation independently constructs exterior differentiation, the nonunitary flat gravitational connection, and the Levi-Civita tensor rough Laplacian.

All six internal components in each of form degrees 0,1,2,3 are retained: ranks (6,18,18,6). Factoring out z^t exp(i kx x+i ky y), with t,kx,ky free, turns these finite-order differential identities into rational-function identities, retaining coefficient derivatives. The tests cover D squared, delta squared, H squared, the four full Weitzenboeck identities, and the differential/duality commutators with Delta. They are not just principal-symbol tests.

The separately saved radial indicial matrices set kx=ky=0. Their rational inverses verify the contraction, h squared, Hilbert transpose at the Mellin-dual exponent 2-t, and every nonvacuous graded cyclic sign. Radial powers are **not** L2 states. These checks do not establish the spectrum, a Hilbert domain, a boundary condition, a finite-rank cutoff, or a loop measure; those require separate arguments.

## Replay

The [working source](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/verification/ads_bv_hodge_checks.py>) is self-contained in a fresh Sage process. It creates a unique kernel-export directory and does not overwrite earlier results. Source SHA256 at execution:

`2cb6e8995c638a2832405da4115c0b67883be6e3df92dbd3e302ab17c7a8a270`

For replaying the frozen copy, update its SOURCE constant in a new private copy so the exported source hash identifies the file actually executed. Preserve the frozen artifacts. No Sage definitions from previous calls are required.
