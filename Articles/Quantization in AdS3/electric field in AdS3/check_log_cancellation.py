
from sympy import symbols, hyper, log, series, limit, gamma, pi, oo, sin, cos
import sympy

# Define variables
z = symbols('z') 
eps = symbols('eps', positive=True, real=True) # 1-z
m = symbols('m', integer=True, positive=True)
omega = symbols('omega', real=True)

# Parameters
# Let's take specific values to be concrete
# m_pm = 1 (so m=2 for + sector)
# omega = 0.5 (generic non-quantized)
m_val = 2
m_pm = 1
omega_val = 0.5

a = (m_pm - omega_val + 1) / 2
b = (m_pm + omega_val + 1) / 2
c = 1

print(f"Parameters: a={a}, b={b}, c={c}")
print(f"c - a - b = {c - a - b} (Should be integer for logs)")

# The first solution at z=0 (Regular at infinity)
# S1(z) = hyper([a, b], [c], z)
# Behavior at z=1?
# We know S1(z) ~ C * (1-z)^(-m_pm) ...
# Let's verify this divergence.

# The second solution at z=0 (Logarithmic at infinity)
# For c=1, S2(z) usually behaves like S1(z)*ln(z) + PowerSeries.
# Wait, standard Frobenius method at z=0 with indicial roots 0,0:
# y1 = F(a,b,1,z)
# y2 = y1 * ln(z) + sum(...)
# Let's construct y2 using sympy if possible, or manually.
# Actually, we can check the behavior of y1 * ln(z) near z=1.

# Is y2 regular at z=1?
# y1(z) ~ (1-z)^(-1).
# ln(z) = ln(1 - (1-z)) ~ -(1-z).
# y1 * ln(z) ~ (1-z)^(-1) * (-(1-z)) ~ -1.
# This product is CONSTANT (Regular) at z=1!
# What about the sum(...) part?
# The sum part is usually less singular or similar?

# Let's use sympy to evaluate the limits if possible.
# We'll use analytic continuation formula.

def check_regularity_at_z1():
    # We want to check if there is a linear combination of solutions at z=0
    # that is regular at z=1.
    # The space of solutions is 2D.
    # We know there IS a solution regular at z=1 (from existence theorem).
    # Let's call it y_reg_at_1.
    # We want to know its behavior at z=0.
    
    # y_reg_at_1 = F(a, b, a+b-c+1, 1-z) ... wait, standard hypergeometric solutions around z=1 are:
    # 1. F(a, b, a+b-c+1, 1-z) if a+b-c is not integer...
    # Here parameters at z=1:
    # A = a, B = b, C_prime = a+b-c+1 = (m+1) - 1 + 1 = m+1. (Integer!)
    # So solutions around z=1 are:
    # u1 = F(a, b, m+1, 1-z)  <-- This is the REGULAR solution at z=1.
    # u2 = Logarithmic singularity at z=1.
    
    # So, u1(z) is the solution we want to keep at the origin (z=1).
    # Now we expand u1(z) around z=0.
    # formulas for linear transformation of hypergeometric functions.
    # u1(z) = A * y1(z) + B * y2(z).
    # We need to find A and B.
    # If B is not zero, then u1 contains y2 (the log z term).
    # If A is not zero, then u1 contains y1 (the regular term).
    # Actually y2 has log z. y1 is regular.
    # The boundary condition at z=0 (infinity) is O(r^-1).
    # y1 ~ 1 -> Phi ~ r^-1 (Good)
    # y2 ~ ln z ~ ln r -> Phi ~ r^-1 ln r (Bad?)
    
    # So the question is: Given u1 (regular at z=1), does it contain y2?
    # Generally: Yes.
    # If it contains y2, then it behaves like r^-1 ln r at infinity.
    # This leads to the question: Is r^-1 ln r rejected?
    
    # Let's calculate the coefficient B.
    # Using connection formulas:
    # F(a,b,c,z) vs F(a,b, ..., 1-z)
    # See e.g. Abramowitz Stegun 15.3.
    pass

# We will calculate the coefficient of the log(z) term in the expansion of u1(z) near z=0.
# u1(z) = F(a, b, a+b+1-c, 1-z)  (using parameters defined above)
# Actually, the regular solution at z=1 is F(a, b, a+b-c+1, 1-z)
# Let's call the parameters alpha, beta, gamma_param.
# alpha = a
# beta = b
# gamma_param = a+b-c+1 = a+b.
# u1(z) = F(a, b, a+b, 1-z).
# We want to expand this around z=0.
# Formula 15.3.9 for c=a+b? No, here gamma_param is separate.
# We are expanding F(a,b,a+b, 1-z) in terms of z.
# This corresponds to transformation z -> 1-z.
# The coefficient of the logarithmic term ln z (or ln(1-(1-z)))?
# The expansion around z=0 of F(..., 1-z) involves ln z if integer differences.
# But here differences of indices at z=0?
# Indices at z=0 are 0, 1-c = 0. Degenerate.
# So expansion of u1(z) WILL contain ln z unless coefficient vanishes.
# The coefficient is proportional to sin(pi*(...))?
# Usually related to Gamma functions.

# Coefficient of the singular part (ln z) is related to:
# Gamma(a+b) / (Gamma(a)*Gamma(b)) * ...
# We'll check if this coefficient can be zero.
# If Gamma(a) or Gamma(b) has poles, then 1/Gamma is zero.
# a = (m - omega + 1)/2
# b = (m + omega + 1)/2
# a+b is integer.
# If a or b is a negative integer, then Gamma is infinite -> coefficient zero.
# This is exactly the quantization condition!
# If a = -n, then a is negative integer.
# (m - omega + 1)/2 = -n => m - omega + 1 = -2n => omega = m + 1 + 2n.
# This recovers the spectrum.
# So, for the regular solution at origin (u1) to NOT have the bad ln(r) behavior at infinity,
# we need the quantization.

print("Logic verification:")
print("1. Regular solution at z=1 (origin) exists: U1 = F(a, b, a+b, 1-z).")
print("2. Expand U1 near z=0 (infinity).")
print("3. U1 ~ A * F(a,b,1,z) + B * (F(a,b,1,z)*ln(z) + ...)")
print("4. Boundary condition at infinity requires O(r^-1).")
print("5. F term gives O(r^-1). Log term gives O(r^-1 ln r).")
print("6. If O(r^-1 ln r) is rejected, we must have B=0.")
print("7. B is zero iff 1/Gamma(a) or 1/Gamma(b) is zero.")
print("8. This implies a = -n or b = -n.")
