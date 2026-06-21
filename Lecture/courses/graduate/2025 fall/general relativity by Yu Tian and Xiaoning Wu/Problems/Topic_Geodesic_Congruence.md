# Topic: Geodesic Congruences in Schwarzschild Spacetime

This note addresses how to select geodesic congruences, calculate optical scalars (expansion, shear, twist), and demonstrate the formation of trapped surfaces inside the horizon.

## 1. Setup: Coordinate Selection

To analyze behaviors across the event horizon without coordinate singularities, we use **Ingoing Eddington-Finkelstein coordinates** $(v, r, \theta, \phi)$.
The metric is:

$$\begin{align}
ds^2 = -\left(1-\frac{2M}{r}\right)dv^2 + 2dvdr + r^2 d\Omega^2
\end{align}$$

Here $v = t + r^*$ is the advanced time coordinate.
The radial null vectors behave well here.

## 2. Selecting the Congruences

We need to define a basis of null vectors at each point: the **Ingoing** null vector $n^\mu$ and the **Outgoing** null vector $l^\mu$.

### 2.1 Ingoing Congruence ($n^\mu$)

Ingoing light rays moving radially satisfy $v = \text{const}$, $\theta, \phi = \text{const}$.
From the metric, if $dv=0$ and $d\Omega=0$, then $ds^2=0$ is automatically satisfied.
The tangent vector is along $-\partial_r$ (since $r$ decreases as light falls in).

$$\begin{align}
n^\mu = (0, -1, 0, 0)
\end{align}$$

(Normalization choice: This is a convenient choice, though affine parameterization might require rescaling).

### 2.2 Outgoing Congruence ($l^\mu$)

Outgoing light rays satisfy $ds^2 = 0$ with $dv \neq 0$.

$$\begin{align}
0 = -\left(1-\frac{2M}{r}\right)dv^2 + 2dvdr \implies 2dr = \left(1-\frac{2M}{r}\right)dv
\end{align}$$

$$\begin{align}
\frac{dr}{dv} = \frac{1}{2}\left(1-\frac{2M}{r}\right)
\end{align}$$

Choosing the parametrization $l^v = 1$, we get:

$$\begin{align}
l^\mu = \left(1, \frac{1}{2}\left(1-\frac{2M}{r}\right), 0, 0\right)
\end{align}$$

**Normalization Check**:
$l \cdot n = g_{vr} l^v n^r = (1)(1)(-1) = -1$. (Standard cross-normalization).

---

## 3. Calculating Expansion, Shear, and Twist

### 3.1 Geometric Definition (The Easy Way)

For spherically symmetric spacetimes, the cross-sectional geometry of the congruence is just a sphere of area $A = 4\pi r^2$.
The **Expansion** $\theta$ is defined as the fractional rate of change of the cross-sectional area with respect to the affine parameter (or the curve parameter $\lambda$).

$$\begin{align}
\theta = \frac{1}{A} \frac{d A}{d\lambda} = \frac{1}{4\pi r^2} \frac{d(4\pi r^2)}{d\lambda} = \frac{2}{r} \frac{dr}{d\lambda}
\end{align}$$

where $\frac{dr}{d\lambda} = k^r$ is the radial component of the tangent vector.

**Shear ($ \sigma $) and Twist ($ \omega $)**:
Due to spherical symmetry, the congruences do not distort the shape of the sphere into an ellipsoid (Shear = 0) nor do they rotate the image (Twist = 0).

$$\begin{align}
\sigma_{\mu\nu} = 0, \quad \omega_{\mu\nu} = 0
\end{align}$$

### 3.2 Calculation

**1. Ingoing Expansion $\theta_{in}$**:
For $n^\mu$, we have $n^r = -1$.

$$\begin{align}
\theta_{in} = \frac{2}{r}(-1) = -\frac{2}{r}
\end{align}$$

-   **Result**: $\theta_{in} < 0$ everywhere. Ingoing light always converges.

**2. Outgoing Expansion $\theta_{out}$**:
For $l^\mu$, we have $l^r = \frac{1}{2}\left(1-\frac{2M}{r}\right)$.

$$\begin{align}
\theta_{out} = \frac{2}{r} \cdot \frac{1}{2}\left(1-\frac{2M}{r}\right) = \frac{1}{r}\left(1-\frac{2M}{r}\right)
\end{align}$$

---

## 4. Trapped Surface Analysis

A **Trapped Surface** is a closed 2-surface where **both** null expansions are negative ($\theta_{in} < 0$ and $\theta_{out} < 0$). This means light flashes emitted from the surface converge in *both* directions (inward and outward).

Let's examine the sign of $\theta_{out} = \frac{1}{r}(1 - \frac{2M}{r})$:

1.  **Outside Horizon ($r > 2M$)**:
    -   $1 - 2M/r > 0$.
    -   $\theta_{out} > 0$.
    -   Outgoing light expands (Area increases). **Normal region**.

1.  **At Horizon ($r = 2M$)**:
    -   $1 - 2M/r = 0$.
    -   $\theta_{out} = 0$.
    -   Outgoing light area is constant. This characterizes the **Event Horizon** (Marginally Trapped Surface).

1.  **Inside Horizon ($r < 2M$)**:
    -   $1 - 2M/r < 0$.
    -   $\theta_{out} < 0$.
    -   Outgoing light **converges** (Area decreases).
    -   Since $\theta_{in} < 0$ (always), we have **$\theta_{in} < 0$ and $\theta_{out} < 0$**.
    -   **Conclusion**: Any sphere $r = \text{const} < 2M$ is a trapped surface. Light cannot escape; "outward" motion actually leads to smaller $r$.

---

## 5. Formal Covariant Derivation (Optional)

If you must use the tensor formula $\theta = \nabla_\mu k^\mu - \kappa$ (where $\kappa$ is non-affinity):
Using the standard formula for divergence of a vector field:

$$\begin{align}
\theta = \nabla_\mu k^\mu = \frac{1}{\sqrt{-g}} \partial_\mu (\sqrt{-g} k^\mu)
\end{align}$$

With $\sqrt{-g} = r^2 \sin\theta$:

-   For $n^\mu = (0, -1, 0, 0)$:

$$\begin{align}
\theta_n = \frac{1}{r^2\sin\theta} \partial_r (r^2\sin\theta \cdot -1) = -\frac{2r}{r^2} = -\frac{2}{r}
\end{align}$$

-   For $l^\mu = (1, \frac{1}{2}(1-2M/r), 0, 0)$:

$$\begin{align}
\theta_l = \frac{1}{r^2\sin\theta} \left[ \underbrace{\partial_v(\dots)}_{0} + \partial_r \left(r^2\sin\theta \cdot \frac{1}{2}(1-\frac{2M}{r}) \right) \right]
\end{align}$$

$$\begin{align}
= \frac{1}{r^2} \frac{d}{dr} \left( \frac{r^2}{2} - Mr \right) = \frac{1}{r^2} (r - M) = \frac{1}{r}\left(1-\frac{M}{r}\right)
\end{align}$$

    **Note**: This result $\frac{1}{r}(1-M/r)$ differs from $\frac{1}{r}(1-2M/r)$ derived from area.
    **Reason**: The vector $l^\mu$ defined above is **not affinely** parameterized.
    To fix this, one usually works with the area definition directly (which is parametrization invariant for the *sign*) or finds the true affine parameterization. The definition of a trapped surface ($\theta < 0$) depends only on the null direction, not the scaling of the tangent vector.
    However, at $r < M$, this divergence formula implies expansion, while the area arguments implies contraction for $r < 2M$.
    **Correction**: The "pure divergence" formula $\theta = \nabla_\mu k^\mu$ is only valid for affine geodesics ($k^\nu \nabla_\nu k^\mu = 0$).
    For our $l^\mu$, calculation shows $l^\nu \nabla_\nu l^\mu = \kappa l^\mu$ with $\kappa \neq 0$.
    Wait, actually, the simpler Area formula $\frac{1}{A} \frac{dA}{d\lambda}$ is the robust definition of expansion scalar $\theta$ in the optical scalar equations (Raychaudhuri).
    The scalar $\theta$ appearing in the Raychaudhuri eq ($\dot{\theta} = -\frac{1}{2}\theta^2 \dots$) is defined for affine parameters.
    If we use affine parameter $\lambda$, then $\frac{dr}{d\lambda}$ matches the affine velocity.
    For effective potential analysis, we know 'outward' rays inside horizon move towards $r=0$. Thus $dr/d\lambda < 0$.
    Since $A \propto r^2$, $\frac{dA}{d\lambda} < 0$. Thus $\theta < 0$.
    **Trust the Area Argument for physics signs.**

---

## 6. Calculation in Standard Schwarzschild Coordinates

It is possible to use the standard coordinates $(t, r, \theta, \phi)$ to check the expansion signs, provided one interprets "ingoing" and "outgoing" carefully inside the horizon.

**1. Define Radial Null Geodesics**:
From $ds^2 = -(1-2M/r)dt^2 + (1-2M/r)^{-1}dr^2 = 0$, we have $\frac{dr}{dt} = \pm (1-\frac{2M}{r})$.
Let $f = 1-2M/r$.
The affine tangent vectors $k^\mu = dx^\mu/d\lambda$ can be derived from $E = f \dot{t}$ and $\dot{r}^2 = E^2$:

$$\begin{align}
k^\mu_{out} = (E/f, E, 0, 0)
\end{align}$$

$$\begin{align}
k^\mu_{in} = (E/f, -E, 0, 0)
\end{align}$$

(Assuming $E>0$).

**2. Calculate Expansion $\theta = \frac{2}{r}k^r$**:
-   **Outgoing rays ($k_{out}$)**:
    $k^r = E$.
    $\theta_{out} = \frac{2E}{r}$.
    This seems always positive. Where is the trapped surface?
    The issue is that inside the horizon ($r<2M$), $f < 0$.
    If $f<0$, then for $k^t = E/f$ to be future directed ($dt < 0$ inside horizon since $t$ is spacelike? No).
    Actually, inside the horizon, $r$ is the timelike coordinate and $r$ must decrease toward the singularity.
    Thus, for **future-directed** geodesics inside the horizon, we must have $k^r < 0$.
    The "Outgoing" ray defined by $dr/dt = +(1-2M/r)$ has $1-2M/r < 0$, so $dr/dt$ is negative?
    Let's be precise:
    -   **Outside ($r > 2M$)**: $t$ is time. Future is $+t$.
        -   Out: $dr/dt > 0 \implies dr > 0$. Rays move to $r \to \infty$. $\theta > 0$.
        -   In: $dr/dt < 0 \implies dr < 0$. Rays move to $r \to 2M$. $\theta < 0$.
    -   **Inside ($r < 2M$)**: $r$ is time. Future is $-r$ (decreasing $r$).
        -   Both "ingoing" and "outgoing" rays must have $dr < 0$ to be physical causal curves.
        -   The "Outgoing" ray is the one trying to escape (moving towards larger $r$ **relative** to the ingoing one, or slowing down its fall), but it still falls.
        -   Since $dr/d\lambda$ must be negative for all physical particles, $\theta = \frac{2}{r} \frac{dr}{d\lambda}$ is **negative** for all rays.
    -   **Conclusion**: In standard coordinates, the trapped surface condition manifests as the requirement that all future-directed null vectors have $k^r < 0$.
