# Runge-Kutta

$$\tag{1.1}
\begin{align}
\begin{cases}
\dot{y}=f(t,y) & t\in[a,b] \\
y(a)=y_{0}
\end{cases}
\end{align}
$$

define $\displaystyle{h=\frac{a-b}{n}}$

$$\tag{1.2}
\begin{align}
\frac{y(t_{i+1})-y(t_{i})}{h} = y'(t_{i}+\theta h) \\
\implies y(t_{i+1})=y(t_{i})+hk _{\mathrm{ave}}
\end{align}
$$

## Euler formula

here we choose $\displaystyle{k _{\mathrm{ave}}=\frac{K_{1}+K_{2}}{2}}$

$$\tag{1.3}
\begin{align}
y_{i+1} & =y_{i}+\frac{h}{2}(K_{1}+K_{2})
\end{align}
$$

the problem is that we do not know $\displaystyle{K_{2}}$. the method is that we first calculate $\displaystyle{K_{1}=f(t_{i},y_{i})}$, then we have $\displaystyle{K_{2}=f(t_{i+1},\bar{y}_{i+1})}$, where $\displaystyle{\bar{y}_{i+1}=y_{i}+hK_{1}}$.

Euler formula is acturally 2ed order Runge-Kutta method.

the basic idea of Runge-Kutta method is to use weighted avarage of slope to minimize the error. in general we have

$$\tag{1.4}
\begin{align}
y_{i+1} & =y_{i}+h\sum ^{N}_{m=1}\lambda _{m}K_{m} \\
K_{1} & =f(t_{i},y_{i}) \\
K_{m} & =f\left( t_{i}+\alpha _{m} h,y_{i}+h\sum ^{m-1}_{j=1}\beta _{mj}K_{j} \right), & m=2,3\dots N
\end{align}
$$

where $\displaystyle{\lambda _{m},\alpha _{m},\beta _{m,j}}$ are constants.



## 2ed order Runge-Kutta

$$\tag{1.5}
\begin{align}
y_{i+1} & =y_{i}+h(\lambda _{1}K_{1}+\lambda _{2}K_{2}) \\
K_{1} & =f(t_{i},y_{i}) \\
K_{2} & =f(t_{i}+\alpha h,y_{i}+\beta hK_{1})
\end{align}
$$

take a Taylor expansion

$$\tag{1.6}
\begin{align}
y_{i+1} & =y_{i}+\lambda _{1}hf(t_{i}+y_{i})+\lambda_{2}h\left(f(t_{i},y_{i})+\frac{\partial f}{\partial t}\alpha h+\frac{\partial f}{\partial y}\beta hK_{1} \right) \\
 & +\frac{1}{2}\lambda _{2}h\left(\frac{\partial ^{2}f}{\partial t^{2}}\alpha ^{2}h^{2}+\frac{\partial ^{2}f}{\partial y^{2}}\beta ^{2}h^{2}K_{1}^{2}+2\frac{\partial ^{2}f}{\partial t\partial y}\alpha \beta h^{2}K_{1}\right)
\end{align}
$$

let $\displaystyle{\alpha=\beta=p}$, we have

$$\tag{1.7}
\begin{align}
y_{i+1} & =y_{i}+hf(t_{i},y_{i})(\lambda_{1}+\lambda_{2})+\frac{1}{2} \frac{\partial f}{\partial t}h^{2}+\frac{1}{2} \frac{\partial f}{\partial y}K_{1}h^{2} \\
 & \begin{cases}
\lambda _{1}+\lambda _{2}=1 \\
\lambda_{2}p=\frac{1}{2}
\end{cases}
\end{align}
$$

1. $\displaystyle{\lambda _{1}=\lambda _{2}=\frac{1}{2},p=1}$, we got the Euler formula.
2. $\displaystyle{\lambda _{1}=0,\lambda _{2}=1,p=\frac{1}{2}}$, we got the middle point formula


## 3rd and 4st order Runge-Kutta

3rd order is similar to the 2nd order

$$\tag{1.8}
\begin{align}
y_{i+1} & = y_{i}+h(\lambda _{1}K_{1}+\lambda _{2}K_{2}+\lambda _{3}K_{3}) \\
K_{1} & =f(t_{i},y_{i}) \\
K_{2} & =f(t_{i}+ph,y_{i}+phK_{1}) \\
K_{3} & =f(t_{i}+qh,y_{i}+qh(rK_{1}+sK_{2}))
\end{align}
$$

after a long derivation, we have

$$\tag{1.9}
\begin{align}
r+s & =1 \\
\lambda _{1}+\lambda _{2}+\lambda _{3} & =1 \\
\lambda _{2}p+\lambda _{3}q & =\frac{1}{2} \\
\lambda _{2}p^{2}+\lambda _{3}q^{2} & =\frac{1}{3} \\
\lambda _{3}pqs & =\frac{1}{6}
\end{align}
$$

a useful formula is to choose 

$$\tag{1.10}
\begin{align}
y_{i+1} & =y_{i}+\frac{h}{6}(K_{1}+4K_{2}+K_{3}) \\
K_{1} & =f(t_{i},y_{i}) \\
K_{2} & =f\left( t_{i}+\frac{h}{2},y_{i}+\frac{h}{2}K_{1} \right) \\
K_{3} & =f\left( t_{i}+h,y_{i}+h(-K_{1}+2K_{2}) \right)
\end{align}
$$

and a 4st order method is

$$\tag{1.11}
\begin{align}
y_{i+1} & =y_{i}+\frac{1}{6}h(K_{1}+2K_{2}+2K_{3}+K_{4}) \\
K_{1} & =f(t_{i},y_{i}) \\
K_{2} & =f\left( t_{i}+\frac{h}{2},y_{i}+\frac{hK_{1}}{2} \right) \\
K_{3} & =f\left( t_{i}+\frac{h}{2},y_{i}+\frac{hK_{2}}{2} \right) \\
K_{4} & =f(t_{i}+h,y_{i}+hK_{3})
\end{align}
$$

# Runge-Kutta method with variable step size

## Error Estimation Approach

The most common implementation uses embedded Runge-Kutta formulas (like Dormand-Prince or Fehlberg methods) that compute two approximations of different orders:

$$y_{n+1}^{(p)} \approx \text{pth-order approximation}$$
$$y_{n+1}^{(p+1)} \approx \text{(p+1)th-order approximation}$$

The local error is estimated as:

$$\varepsilon \approx \|y_{n+1}^{(p+1)} - y_{n+1}^{(p)}\|$$

## Step Size Adjustment Algorithm

1. Compute solution at next step using two RK formulas of orders $p$ and $p+1$
2. Estimate error $\varepsilon$
3. Compare with tolerance $\text{tol}$
4. Adjust step size using:

$$h_{\text{new}} = h_{\text{old}} \cdot \left(\frac{\text{tol}}{\varepsilon}\right)^{1/(p+1)}$$

5. Accept step if $\varepsilon \leq \text{tol}$, otherwise reject and retry with $h_{\text{new}}$

The formula incorporates a safety factor (typically 0.8-0.9) and may include bounds on maximum step size changes to avoid oscillatory behavior.

# initial value problem

$$\tag{1.1}
\begin{align}
\frac{\mathrm{d}^{2}x}{\mathrm{d}t^{2}}+\omega ^{2}x=0
\end{align}
$$

rewrite

$$\tag{1.2}
\begin{align}
y & =\begin{pmatrix}
x \\
\frac{\mathrm{d}x}{\mathrm{d}t}
\end{pmatrix}=\begin{pmatrix}
y_{1} \\
y_{2}
\end{pmatrix}
\end{align}
$$

then the ode (1.1) can be expressed as

$$\tag{1.3}
\begin{align}
\dot{y} & =\begin{pmatrix}
y_{2} \\
-\omega ^{2}y_{1}
\end{pmatrix}
\end{align}
$$

then we will use 4st order Runge-Kutta method to solve this 1st order ode.

# scipy

## Core Functionality
`scipy.integrate.solve_ivp` is SciPy's modern implementation for solving initial value problems (IVPs) of ordinary differential equations (ODEs):

$$\frac{d\mathbf{y}}{dt} = \mathbf{f}(t, \mathbf{y}), \quad \mathbf{y}(t_0) = \mathbf{y}_0$$

Where $\mathbf{y}$ can be a vector (system of ODEs).

## Function Signature
```python
scipy.integrate.solve_ivp(fun, t_span, y0, method='RK45', t_eval=None, 
                          dense_output=False, events=None, vectorized=False,
                          args=None, **options)
```

## Integration Methods

`solve_ivp` supports multiple numerical integration methods:

1. **`'RK45'`** (default): Explicit Runge-Kutta method of order 5(4) - the Dormand-Prince method with adaptive step size control and error estimation using the 4th-order approximation
   
2. **`'RK23'`**: Explicit Runge-Kutta method of order 3(2) - Bogacki-Shampine formula with adaptive step size

3. **`'DOP853'`**: Explicit Runge-Kutta method of order 8 - appropriate for high-precision requirements

4. **`'Radau'`**: Implicit Runge-Kutta method of the Radau IIA family of order 5 - suitable for stiff problems

5. **`'BDF'`**: Implicit multi-step variable-order (1 to 5) method based on backward differentiation formulas - good for stiff problems

6. **`'LSODA'`**: Adams/BDF method with automatic stiffness detection and method switching - versatile for mixed stiff/non-stiff problems

## Key Parameters

### Essential Parameters
- **`fun`**: Function defining the ODE system, with signature `fun(t, y, *args)`
- **`t_span`**: Tuple defining integration interval `(t0, tf)`
- **`y0`**: Initial state vector (array-like)

### Output Control
- **`t_eval`**: Specific time points to evaluate solution at
- **`dense_output`**: When `True`, returns a continuous solution function
- **`vectorized`**: Set to `True` if `fun` can handle vectorized calls

### Tolerances and Error Control
```python
solve_ivp(fun, t_span, y0, method='RK45', rtol=1e-3, atol=1e-6)
```

- **`rtol`**: Relative tolerance for error control
- **`atol`**: Absolute tolerance for error control

## Event Detection
`solve_ivp` can detect events during integration:

```python
def event_function(t, y):
    # Return scalar that changes sign at the event
    return y[0]  # Event when first component crosses zero

# Event has signature: event_function(t, y)
# Additional parameters:
# - terminal=False/True (stop integration at event)
# - direction=0/±1 (detect zero-crossing direction)
solve_ivp(fun, t_span, y0, events=event_function)
```

## Return Object
The function returns an `OdeResult` object with attributes:

- **`t`**: Time points
- **`y`**: Solution values at corresponding times, shape (n, len(t))
- **`sol`**: Continuous solution function (if `dense_output=True`)
- **`t_events`**: List of event times for each event function
- **`y_events`**: List of solution values at event times
- **`nfev`**: Number of function evaluations
- **`njev`**: Number of Jacobian evaluations
- **`nlu`**: Number of LU decompositions
- **`status`**: Reason for algorithm termination
- **`message`**: Human-readable termination explanation
- **`success`**: Boolean indicating successful integration

## Example Implementation

```python
import numpy as np
from scipy.integrate import solve_ivp
import matplotlib.pyplot as plt

# Define the ODE system (example: damped oscillator)
def oscillator(t, y, omega0, gamma):
    """y[0] is position, y[1] is velocity"""
    return [y[1], -2*gamma*y[1] - omega0**2*y[0]]

# Parameters
omega0 = 2.0  # Natural frequency
gamma = 0.25  # Damping factor
y0 = [1.0, 0.0]  # Initial condition: position=1, velocity=0
t_span = (0, 10)  # Integration interval

# Solve using default RK45 method
sol = solve_ivp(
    fun=oscillator, 
    t_span=t_span, 
    y0=y0, 
    args=(omega0, gamma),
    method='Radau',
    rtol=1e-6,
    atol=1e-9,
    dense_output=True
)

# Create dense output for smooth plotting
t_dense = np.linspace(t_span[0], t_span[1], 500)
y_dense = sol.sol(t_dense)

# Plot results
plt.figure(figsize=(10, 6))
plt.plot(t_dense, y_dense[0], 'b-', label='Position')
plt.plot(t_dense, y_dense[1], 'r-', label='Velocity')
plt.plot(sol.t, sol.y[0], 'bo', alpha=0.3, label='RK45 steps (position)')
plt.xlabel('Time')
plt.legend()
plt.grid(True)
plt.title('Damped Oscillator Solution')
plt.show()
```

## Method Selection Guidelines

- **Non-stiff problems**:
  - `'RK45'` (default): Good balance of efficiency and accuracy
  - `'DOP853'`: For high precision requirements

- **Stiff problems**:
  - `'Radau'`: Implicit method for moderate stiffness
  - `'BDF'`: For very stiff problems
  - `'LSODA'`: When stiffness varies or is unknown

## Performance Considerations

1. **Jacobian specification**: For stiff methods (`'Radau'`, `'BDF'`), supply the Jacobian matrix using the `jac` parameter for better performance

2. **Step size control**: Adjust `rtol` and `atol` based on problem scale and precision needs

3. **Vectorization**: Set `vectorized=True` if your ODE function supports array inputs for parallel evaluation

4. **Sparse Jacobian**: For large sparse systems, provide sparse Jacobian matrices

## Relation to Other SciPy ODE Solvers

`solve_ivp` is the modern replacement for older SciPy ODE solvers:
- More flexible than `odeint` (which uses LSODA internally)
- Offers more methods and better control than legacy solvers
- Returns a more comprehensive result object

