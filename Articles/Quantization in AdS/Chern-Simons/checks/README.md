# Gravity–U(1) verification

The mathematical scope and conventions are in [the calculation](../gravity%20U%281%29%20mixed%20central%20extension.md).

Run from the repository root:

~~~sh
rtk proxy wolframscript -file "Articles/Quantization in AdS/Chern-Simons/checks/gravity_u1_mixed_central.wl"
~~~

The script writes [exact results](gravity_u1_mixed_central.results.json) next to itself and exits unsuccessfully if any residual fails. It contains 39 checks. Arbitrary-mode polynomial identities are symbolic identities; three degree-eight kernels test a bounded ansatz. No bracket is artificially truncated at a maximum Fourier mode. The pure-gauge check verifies the residual against the **nonzero obstruction** in the note; it does not claim tangency.

[The Cartan script](gravity_u1_cartan.wl) records Cartan's identity and the off-shell CS first variation, including the boundary sign. It requires xAct/xTensor and xTras on the Wolfram path:

~~~sh
rtk proxy wolframscript -file "Articles/Quantization in AdS/Chern-Simons/checks/gravity_u1_cartan.wl"
~~~

The session check used the dedicated xAct MCP, profile “core”, with xTras and pipeline “full”: ToCanonical, ContractMetric, ToCanonical, FullSimplification. Its structured result is in [gravity_u1_cartan.results.json](gravity_u1_cartan.results.json). This avoids depending on a shell's xAct search path.

These files verify the stated algebra and boundary example. They do not replace the cohomology and stabilizer arguments or classify unrestricted boundary conditions.
