---
title: Numerical Methods In Python
date: 2026-07-01
summary: "Python numerical-method notes focused on finite differences, Runge-Kutta ideas, and SciPy ODE solvers."
---

# Numerical Methods In Python

This note collects numerical-method structures that commonly appear in Python scientific computing.

## Finite Differences

Finite differences approximate derivatives from sampled function values.

The basic data are:

- grid spacing and grid regularity;
- centered stencils in the interior;
- one-sided stencils at boundaries;
- truncation order;
- floating-point roundoff scale;
- interpolation polynomial behind endpoint stencils.

Endpoint stencils are naturally derived from Lagrange interpolation.

## Fixed-Step ODE Methods

An initial value problem for ODEs has the form

$$
\begin{align}
\dot y=f(t,y),\qquad y(t_0)=y_0.
\end{align}
$$

Higher-order equations are represented as first-order systems. This makes the same solver interface work for scalar equations, coupled systems, and phase-space dynamics.

Fixed-step Runge-Kutta methods are built from:

- local slope evaluations;
- weighted averages of slopes;
- a fixed step size $h$;
- a local truncation error determined by the order of the method.

Adaptive Runge-Kutta methods add an embedded lower-order estimate, which supplies an error estimate and a step-size update.

## `scipy.integrate.solve_ivp`

`solve_ivp` is SciPy's modern interface for initial value problems.

```python
from scipy.integrate import solve_ivp


def rhs(t, y, omega):
    x, v = y
    return [v, -(omega ** 2) * x]


sol = solve_ivp(
    rhs,
    t_span=(0.0, 10.0),
    y0=[1.0, 0.0],
    args=(2.0,),
    method="RK45",
    rtol=1e-8,
    atol=1e-10,
    dense_output=True,
)
```

Method families:

- `RK45`: default non-stiff solver;
- `DOP853`: high-accuracy non-stiff solver;
- `Radau` or `BDF`: stiff systems;
- event functions: zero-crossing detection and stopping conditions;
- `t_eval`: values at requested sample times;
- `dense_output=True`: continuous interpolant for plotting or post-processing.

## Stability And Accuracy

The reliability of an ODE solution depends on:

- dimensions and scales of the state variables;
- analytic solutions in special cases;
- tolerance or step-size dependence of observables;
- conserved quantities;
- solver status;
- stiffness and the choice of explicit versus implicit method.
