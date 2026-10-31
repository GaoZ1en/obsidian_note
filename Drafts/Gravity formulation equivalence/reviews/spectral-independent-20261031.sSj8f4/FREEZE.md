# Independent derivation freeze

The files below are frozen before receiving any candidate finite-density formula or other new agent's output from the parent. The parent was told the leading block result and the connection-first versus U-first Hessian distinction while work continued. The parent replied that its independent ordering analysis agreed and requested this freeze; no candidate numerical coefficient or formula was supplied.

The mathematical derivation used only [the supplied source note](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/16 Nonlinear BV map and finite density transport.md>), plus the required repository rules, local workflow and project orientation. No new review or upcoming main note was read. No old file was changed.

## Primary independently derived results

For ℓ=2N+1, m=ℓ², d=ℓ³, A=P fP, B=P f⁻¹P and f=1+ε cos x¹:

- Actual projected full Berezinian: (det B/det A)^{3m}; exact log −6d log((1+sqrt(1−ε²))/2)−3m log(1−[((1−sqrt(1−ε²))/(1+sqrt(1−ε²)))]^{ℓ+1}).
- Actual odd-bracket defect: AB−1, with ε²/4 on each k₁=±N edge. Hence the projected map is not canonical, even though its log-Berezinian agrees with the naive trace through order ε^{4N+2}.
- Generator-first finite canonical map: full Berezinian (det A)^{−6m}, no symplectic defect.
- Naive finite geometric BRST: Q_N²c₁=−5c_{−2}c₁c₂ at N=2, giving a classical master-equation counterexample.
- Generator-first map, inverse projected polar chart, original retained connection Gaussian, and prescribed normalized Lorentz linear fiber: J=(det B)^{6m}(det A)^{−9m/2}.
- Independently compressed dynamical metric/diffeomorphism norm density: J_dyn=(det B)^{3m}(det P f⁵P)^{−3m/2}.
- Their log-ratio is m(9ε²+45ε⁴/8+33ε⁶/8+O(ε⁸)). This body Gaussian/coordinate result is not an interacting BV pushforward or a continuum anomaly.

## Evidence and replay

- [Analytic derivation](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/spectral-independent-20261031.sSj8f4/derivation.md>) defines every finite prescription and boundary.
- [Wolfram executable](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/spectral-independent-20261031.sSj8f4/spectral_check.wl>) runs in a fresh kernel via Get. [Actual output](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/spectral-independent-20261031.sSj8f4/wolfram-result.txt>) contains 78 exact passing labels, no messages, and all coefficient tables through eighth order. [Native WXF](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/spectral-independent-20261031.sSj8f4/wolfram-result.wxf>) and [tool return](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/spectral-independent-20261031.sSj8f4/wolfram-tool-return.json>) are archived too.
- [Native Sage executable](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/spectral-independent-20261031.sSj8f4/grassmann_check.py>) independently checks full 24ℓ-even/24ℓ-odd matrices and exact exterior-algebra ghost nilpotency. [Actual JSON](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/spectral-independent-20261031.sSj8f4/sage-result.json>) has 25 passing labels; [text output](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/spectral-independent-20261031.sSj8f4/sage-result.txt>) and [tool return](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/spectral-independent-20261031.sSj8f4/sage-tool-return.json>) are retained.

The scripts export fresh outputs into unique kernel-result directories; rerunning does not overwrite the frozen archived output files. Initial exploratory Wolfram execution had 66 passing labels, then 12 joint-density labels were added. One initial Sage execution failed only at report metadata because SAGE_VERSION was not imported; the import was fixed and the full executable rerun successfully. That failed execution is not counted as a check.

No further independent subagent was available at delegation depth one. Two different CAS implementations were used, but they are machine checks of this agent's derivation, not a separately commissioned fresh researcher review.

## SHA-256 at freeze

```text
5f4985af2fb768645b46d455f9356005771286eb3bc655d8f2f319faa379b854  derivation.md
2083f5fc9ff0826928a869620ceb650e31a07bfc5d225d9ad709246bf397497a  spectral_check.wl
5f6b188a1dc517ecdb6ffe992425e4af187bc214987374fef114aba9379086af  grassmann_check.py
1deb21a4e25dff4618122d840bc3d2aa0e3a8a7841ae2ff81883cf7d4089c6f8  wolfram-result.txt
b91954fbf3f2d3415b2ca21f517633d3fe2a6ff6c5243483c202f550e2d2171b  wolfram-result.wxf
1d59e1c7a8407b47dc89e06925ad41c66a78f2acf6a8473de6ad9935c1e18222  sage-result.json
0f8a3189fd1571d3a5ee1e8837a9495d1e7d9ccdd8c0f3638a7b59778c31e8ce  sage-result.txt
e7c2359c8c7de10ce9fc7812d5a46d585a8169cf1fbd7f6542925f8a741a6051  wolfram-tool-return.json
c9a81875ef86d309a7164a6e635d36070ac94fc520eb164efa0279401533c9e3  sage-tool-return.json
```
