# From (p,q) to coherent-state (z, z*) in the phase-space path integral (harmonic oscillator)

We derive, step by step, how the phase-space path integral of the harmonic oscillator transforms under the linear canonical change of variables from (p,q) to complex coordinates (z,z*), and how this reproduces the coherent-state path integral kernel.

Conventions: [q,p]=i, ħ=1; frequency ω>0.

- Creation/annihilation at the classical level:
  $$
  z \equiv \sqrt{\frac{\omega}{2}}\,q + \frac{i}{\sqrt{2\omega}}\,p,\quad
  z^* \equiv \sqrt{\frac{\omega}{2}}\,q - \frac{i}{\sqrt{2\omega}}\,p,
  $$
  so that $\{z^*,z\}=i$ and $H=\tfrac12 p^2+\tfrac12\omega^2 q^2=\omega z^* z$.

- Symplectic one-form and action:
  $$
  p\,\dot q - H \;\longrightarrow\; \frac{i}{2}\big(z^*\dot z - \dot z^* z\big) - \omega z^* z \;\; +\; \frac{d}{dt}\,\Xi(z,z^*),
  $$
  where $\Xi$ is a total derivative (boundary) term. With the mid-point (Weyl) rule below, one convenient choice is $\Xi=\tfrac{i}{2} z^* z$.

- Liouville measure invariance: $\mathcal Dq\,\mathcal Dp = \mathcal D z\,\mathcal D z^*$ (Jacobian is a constant for this linear symplectic map), provided we use the mid-point discretization.

---

## 1) Start: phase-space kernel and time slicing (mid-point/Weyl)

Consider the phase-space kernel with fixed q endpoints (we will switch to coherent-state endpoints later):
$$
K(x_f,t_f; x_i,t_i) = \int_{q(t_i)=x_i}^{q(t_f)=x_f} \!\mathcal Dq\,\mathcal Dp\;\exp\Big\{ i\int_{t_i}^{t_f} dt\,\big(p\dot q - H(p,q)\big)\Big\}.
$$
Discretize $T=t_f-t_i$ as $N\Delta t$, insert mid-point values $q_{k+1/2}=\tfrac{q_{k+1}+q_k}{2}$, $p_{k+1/2}=p_k$, so the short-time factor is
$$
\exp\Big\{ i\sum_{k=0}^{N-1}\Big[p_k\,(q_{k+1}-q_k) - \Delta t\,H(p_k, q_{k+1/2})\Big]\Big\}.
$$

## 2) Linear canonical transformation to (z,z*)
Define at each slice
$$
 z_k = \sqrt{\tfrac{\omega}{2}}\,q_k + \frac{i}{\sqrt{2\omega}}\,p_k,\qquad
 z_k^* = \sqrt{\tfrac{\omega}{2}}\,q_k - \frac{i}{\sqrt{2\omega}}\,p_k.
$$
Then $\omega z_{k+1/2}^* z_{k+1/2} = \tfrac12 p_k^2 + \tfrac12\omega^2 q_{k+1/2}^2 + \mathcal O(\Delta t^2)$ and one has the discrete identity (mid-point rule):
$$
 p_k\,(q_{k+1}-q_k)
 = \frac{i}{2}\Big(z_{k+1}^* z_k - z_k^* z_{k+1}\Big)
   + \frac{i}{2}\Big(|z_{k+1}|^2 - |z_k|^2\Big).
$$
Summing over k telescopes the last term into a boundary contribution:
$$
 \sum_k p_k\,(q_{k+1}-q_k)
 = \sum_k \frac{i}{2}\Big(z_{k+1}^* z_k - z_k^* z_{k+1}\Big)
   + \frac{i}{2}\Big(|z_N|^2 - |z_0|^2\Big).
$$
Therefore the discretized action becomes
$$
 S_{\text{disc}}
 = \sum_k \Big[\frac{i}{2}\big(z_{k+1}^* z_k - z_k^* z_{k+1}\big)
                 - \Delta t\,\omega\, z_{k+1/2}^* z_{k+1/2}\Big]
   + \frac{i}{2}\Big(|z_N|^2 - |z_0|^2\Big),
$$
which in the continuum limit yields
$$
 S[z,z^*] = \int_{t_i}^{t_f} dt\,\Big[\frac{i}{2}(z^*\dot z - \dot z^* z) - \omega z^* z\Big]
           + \frac{i}{2}\Big(|z(t_f)|^2 - |z(t_i)|^2\Big).
$$
The bulk term is the standard coherent-state symplectic form; the last term is a boundary phase coming from the total derivative.

Measure: since the map is linear symplectic, $\prod_k dq_k dp_k = C\,\prod_k dz_k dz_k^*$ with a constant $C$ that can be absorbed in the overall normalization of the kernel.

---

## 3) Matching boundary conditions: from q-endpoints to coherent-state endpoints
If we keep q-fixed endpoints, the induced boundary conditions for $(z,z^*)$ are mixed and the extra boundary phase must be kept explicitly. More natural is to pass to the coherent-state kernel (fixing $z$ at the endpoints):
$$
K(z_f^*, t_f; z_i, t_i) \equiv \langle z_f|e^{-iH T}|z_i\rangle.
$$
In a time-sliced construction with coherent-state completeness inserted, one finds the well-known factor from overlaps $\langle z_{k+1}|z_k\rangle$ that precisely cancels the above endpoint phase, leaving only the bulk action:
$$
K(z_f^*, z_i; T)
 = \int_{z(t_i)=z_i}^{z(t_f)=z_f} \!\mathcal D^2 z\;\exp\Big\{ i\int_{t_i}^{t_f} dt\,\Big[\frac{i}{2}(z^*\dot z - \dot z^* z) - \omega z^* z\Big] \Big\}.
$$
Equivalently (and most commonly in the literature), one writes the boundary term symmetrically into the action and imposes natural endpoint conditions; both presentations are identical as long as the coherent-state overlaps at the endpoints are accounted for.

Remark on ordering: The mid-point (Weyl) discretization is crucial. With it, linear canonical changes of variables do not produce spurious $\mathcal O(\hbar^2)$ terms; $H=\omega z^* z$ is the Weyl symbol of the harmonic Hamiltonian and matches the operator normal ordering used for coherent states.

---

## 4) Thermal circle and chemical potential (optional)
Euclideanizing $t\to -i\tau$, $S\to -i S_E$, and imposing periodicity $z(\tau+\beta)=z(\tau)$ yields the familiar Gaussian functional determinant and $Z(\beta)=1/(2\sinh(\beta\omega/2))$ (or $1/(1-e^{-\beta\omega})$ with normal ordering). An angular chemical potential or rotation can be implemented as a shift $\partial_\tau\to\partial_\tau-\Omega$ or twisting the boundary condition $z(\beta)=e^{\beta\Omega}z(0)$.

---

## 5) Takeaways (quick reference)
- Linear canonical map (p,q) → (z,z*) with $z=\sqrt{\omega/2}\,q+i p/\sqrt{2\omega}$
  - Bulk symplectic term: $p\dot q \mapsto \tfrac{i}{2}(z^\*\dot z-\dot z^* z)$
  - Hamiltonian: $\tfrac12 p^2+\tfrac12\omega^2 q^2 \mapsto \omega z^* z$
  - Boundary: adds $\tfrac{i}{2}(|z_f|^2-|z_i|^2)$ (canceled by coherent overlaps when using $\langle z_f|\cdots|z_i\rangle$)
  - Measure: invariant (Liouville), with mid-point/Weyl discretization

This shows precisely how the phase-space path integral in (p,q) turns into the coherent-state path integral in (z,z*), and why boundary factors and ordering are consistent.
