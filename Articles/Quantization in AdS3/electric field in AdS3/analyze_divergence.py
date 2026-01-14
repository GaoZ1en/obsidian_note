
import sympy
from sympy import symbols, hyper, series, gamma, pi, sin, exp, I, oo, simplify, factor

# Define variables
z = symbols('z') # z = 1/(1+r^2). r->0 means z->1.
r = symbols('r', positive=True) 
m = symbols('m', integer=True, positive=True) # Let's assume m > 0 for simplicity
omega = symbols('omega', real=True)

# Parameters for Hypergeometric function
# a = ( |m_pm| - omega + 1 ) / 2
# b = ( |m_pm| + omega + 1 ) / 2
# c = 1
# We focus on one case, say m_pm = m-1 for the + sector.
m_pm = m - 1 # Assume m >= 1
a = (m_pm - omega + 1) / 2
b = (m_pm + omega + 1) / 2
c = 1

# The solution Phi
# Phi = r^m_pm * (1+r^2)^exponent * F(a,b,c, z)
# exponent = (-m_pm - 1)/2
# z = 1/(1+r^2)
# Near r=0, z approx 1 - r^2.
# 1-z approx r^2.

# We need the behavior of F(a,b,c, z) near z=1.
# Formula 15.3.6 in Abramowitz and Stegun (or similar) for c=a+b not integer.
# But here c=1. a+b = m_pm + 1 = integer.
# This corresponds to the logarithmic case.

# Let's use sympy to expand F(a,b,c, z) around z=1.
# Change variable to w = 1-z. z = 1-w.
w = symbols('w', positive=True) # w ~ r^2
Hyp = hyper([a, b], [c], 1-w)

print(f"Analyzing Hypergeometric solution near r=0 (z=1) for m_pm={m_pm}...")
print(f"a = {a}")
print(f"b = {b}")
print(f"c = {c}")
print(f"a+b = {a+b}")
print(f"c - a - b = {c - (a+b)}")

# Since c - a - b = 1 - (m_pm + 1) = -m_pm, which is an integer <= 0.
# This confirms the logarithmic case.
# If m_pm = 0, c-a-b = 0.
# If m_pm > 0, c-a-b is negative integer.
# Asymptotic behavior is governed by the relation between solutions around z=0 and z=1.

# We want to show the leading order behavior.
# F(a, b, c, z) ~ A * (1-z)^{c-a-b} + B  (if not integer difference)
# With integer difference -m_pm:
# It involves (1-z)^{-m_pm} and ln(1-z).
# (1-z)^{-m_pm} ~ (r^2)^{-m_pm} = r^{-2*m_pm}

# Let's ask Sympy for the series expansion if possible, effectively.
# Since symbolic series of hyper might be tricky with generic omega, let's substitute specific values except omega?
# Or relies on known properties.

# Let's perform a check for specific m=2 (m_pm=1) and non-quantized omega.
# m_pm = 1
# a = (2 - omega)/2 = 1 - omega/2
# b = (2 + omega)/2 = 1 + omega/2
# c = 1
# a+b = 2. c-a-b = -1.
# Expect (1-z)^(-1) term.

def check_divergence(m_val_in, omega_val):
    m_pm_val = abs(m_val_in - 1)
    a_val = (m_pm_val - omega_val + 1) / 2
    b_val = (m_pm_val + omega_val + 1) / 2
    c_val = 1
    
    # We evaluate terms near w=0
    # Expected: C1 * w^(-m_pm_val) + ...
    # We can try to compute the coefficient of the divergent term numerically or symbolically?
    
    # Let's evaluate the function at z = 1 - epsilon
    eps = symbols('epsilon', real=True, positive=True)
    val = hyper([a_val, b_val], [c_val], 1-eps)
    
    # Expand in eps
    # Sympy's series expansion for hyper around argument=1 might work.
    try:
        ex = val.series(eps, 0, 1) # Just leading order
        return ex
    except Exception as e:
        return str(e)

print("\n--- Test Case: m=2 (m_pm=1) ---")
print("Trying generic omega=0.5 (Not quantized, should diverge)")
# Quantized w would be 1 + 1 + 2n = 2+2n. e.g. 2, 4, ...
res_generic = check_divergence(2, 0.5)
print(f"Expansion for omega=0.5: {res_generic}")

print("Trying quantized omega=2 (n=0) (Should be regular)")
res_quantized = check_divergence(2, 2.0)
print(f"Expansion for omega=2: {res_quantized}")

print("\n--- Test Case: m=1 (m_pm=0) ---")
# c-a-b = 0. Logarithmic divergence expected for generic omega.
print("Trying generic omega=0.5")
res_m1_generic = check_divergence(1, 0.5)
print(f"Expansion for omega=0.5: {res_m1_generic}")

print("Trying quantized omega=1 (n=0)")
# w = 1 + 0 + 0 = 1.
res_m1_quantized = check_divergence(1, 1.0)
print(f"Expansion for omega=1: {res_m1_quantized}")

